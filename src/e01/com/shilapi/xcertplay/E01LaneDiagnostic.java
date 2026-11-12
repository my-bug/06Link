package com.shilapi.xcertplay;

/** Passive metadata observations only. This helper never changes capabilities or writes OEM data.
 * Call under the cluster lock. Formatting is worker-only; accept() keeps bounded numeric state.
 * Field evidence: validation/lane-info-20261018/research/mib2q, fixed commit ab3317c.
 */
final class E01LaneDiagnostic {
    private static final int MAX_BYTES = 8192, MAX_LANES = 8, MAX_ANGLES = 16, MAX_FIELDS = 16;
    private static final long INTERVAL_MS = 60000;
    private boolean advertised;
    private int descriptionCapacity, eventCapacity;
    private String capabilitySource = "not-built";
    private long capabilityGeneration;
    private long routeFrames, maneuverFrames, laneFrames, badFrames, oversizedFrames, revision;
    private long emittedRevision = -1, lastEmit = Long.MIN_VALUE;
    private int routeIndex = -1, routeTotal = -1, routeShowing = -1, routeState = -1;
    private int eventIndex = -1, laneGroups, descriptions, unknownFields, badFields, overflow;
    private int shownOnCount, shownOffCount;
    private boolean ended;
    private final int[] fieldIds = new int[MAX_FIELDS], fieldLengths = new int[MAX_FIELDS];
    private int fieldCount;
    private final Lane[] lanes = new Lane[MAX_LANES];
    private static final class Lane {
        int position = -1, status = -1, highlight = 1000, angleCount, angleTotal;
        final int[] angles = new int[MAX_ANGLES];
        void clear() { position = status = -1; highlight = 1000; angleCount = angleTotal = 0; }
    }

    E01LaneDiagnostic(boolean advertised, int descriptionCapacity, int eventCapacity) {
        this.advertised = advertised; this.descriptionCapacity = descriptionCapacity; this.eventCapacity = eventCapacity;
        for (int i = 0; i < MAX_LANES; i++) lanes[i] = new Lane();
    }

    /** Cluster-lock caller supplies the completed Identification snapshot, never a phone ACK. */
    void setCapability(boolean advertised, int descriptionCapacity, int eventCapacity, String source, long generation) {
        if (ended) return;
        if (this.advertised != advertised || this.descriptionCapacity != descriptionCapacity
                || this.eventCapacity != eventCapacity || this.capabilityGeneration != generation
                || !this.capabilitySource.equals(source)) revision++;
        this.advertised = advertised;
        this.descriptionCapacity = descriptionCapacity;
        this.eventCapacity = eventCapacity;
        this.capabilitySource = source;
        this.capabilityGeneration = generation;
    }

    void accept(int id, byte[] data) {
        if (ended || (id != 0x5201 && id != 0x5202 && id != 0x5204)) return;
        if (id == 0x5201) routeFrames++; else if (id == 0x5202) maneuverFrames++; else laneFrames++;
        revision++;
        if (data == null || data.length > MAX_BYTES) { if (data != null) oversizedFrames++; else badFrames++; return; }
        if (!valid(data, 0, data.length)) { badFrames++; return; }
        if (id == 0x5202) return;
        if (id == 0x5201) {
            for (int p = 0; p < data.length; p += u16(data,p)) {
                int size = u16(data,p), tag = u16(data,p+2), value = p+4, n = size-4;
                if (tag == 0x10) { if (n == 2) routeIndex = u16(data,value); else badFields++; }
                else if (tag == 0x11) { if (n == 2) routeTotal = u16(data,value); else badFields++; }
                else if (tag == 0x12) {
                    if (n == 1) { routeShowing = data[value]&255; if (routeShowing == 1) shownOnCount++; else if (routeShowing == 0) shownOffCount++; }
                    else badFields++;
                } else if (tag == 1 && n == 1) routeState = data[value]&255;
            }
            return;
        }
        // Validate all nested containers before changing the last accepted event snapshot.
        for (int p=0; p<data.length; p+=u16(data,p)) {
            if (u16(data,p+2)==2 && !valid(data,p+4,p+u16(data,p))) { badFrames++; return; }
        }
        eventIndex=-1; laneGroups=descriptions=unknownFields=fieldCount=0;
        for (Lane lane:lanes) lane.clear();
        for (int p=0; p<data.length; p+=u16(data,p)) {
            int size=u16(data,p), tag=u16(data,p+2), n=size-4, v=p+4;
            remember(tag,n);
            if (tag==1) { if(n==1)eventIndex=data[v]&255; else if(n==2)eventIndex=u16(data,v); else badFields++; }
            else if(tag==2) parseLanes(data,v,p+size);
            else if(tag==3) descriptions+=n; // Length only: this field may contain road/navigation text.
            else if(tag!=0) unknownFields++;
        }
    }

    private void parseLanes(byte[] data,int start,int end) {
        int slot=-1;
        for(int p=start;p<end;p+=u16(data,p)) {
            int size=u16(data,p), tag=u16(data,p+2), n=size-4,v=p+4;
            remember(0x10000|tag,n); // Namespace distinguishes nested fields from message fields.
            if(tag==0) { slot=laneGroups++; if(slot>=MAX_LANES) {overflow++; continue;} }
            else if(tag>=1&&tag<=3&&slot<0) { slot=laneGroups++; } // Missing position stays unknown, never inferred.
            if(tag>3) {unknownFields++; continue;}
            if(slot<0||slot>=MAX_LANES)continue;
            Lane lane=lanes[slot];
            if(tag==0) {if(n==1)lane.position=data[v]&255;else if(n==2)lane.position=u16(data,v);else badFields++;}
            else if(tag==1) {if(n==1)lane.status=data[v]&255;else badFields++;}
            else if(tag==2) {
                if(n==0 || (n>1 && (n&1)!=0)) {badFields++;continue;}
                for(int q=0;q<n;q+=(n==1?1:2)) {
                    int angle=n==1?(int)data[v+q]:(short)u16(data,v+q);
                    lane.angleTotal++;
                    if(lane.angleCount<MAX_ANGLES)lane.angles[lane.angleCount++]=angle;else overflow++;
                }
            } else if(tag==3) {if(n==1)lane.highlight=data[v];else if(n==2)lane.highlight=(short)u16(data,v);else badFields++;}
        }
    }

    private void remember(int id,int n) {if(fieldCount<MAX_FIELDS){fieldIds[fieldCount]=id;fieldLengths[fieldCount++]=n;} }

    /** Existing worker only: one batch/minute, <=3 lines, each <=512 chars for LogPolicy. */
    String[] poll(long now, boolean end) {
        if(ended)return null;
        if(!end && lastEmit!=Long.MIN_VALUE && (now-lastEmit<INTERVAL_MS || emittedRevision==revision))return null;
        lastEmit=now; emittedRevision=revision; ended=end;
        StringBuilder b=new StringBuilder(480);
        b.append("[车道诊断] ").append(end?"结束":"观察")
            .append(" cap5204=").append(advertised).append(" capDesc=").append(descriptionCapacity).append(" capEvents=").append(eventCapacity)
            .append(" capSource=").append(capabilitySource).append(" capGen=").append(capabilityGeneration)
            .append(" subscribe=未观测 routeRx=").append(routeFrames).append(" maneuverRx=").append(maneuverFrames)
            .append(" laneRx=").append(laneFrames).append(" malformed=").append(badFrames).append(" oversize=").append(oversizedFrames)
            .append(" state=").append(routeState).append(" index=").append(routeIndex).append(" total=").append(routeTotal)
            .append(" showing=").append(routeShowing).append(" on/off=").append(shownOnCount).append('/').append(shownOffCount)
            .append(" mapped=false");
        if(!advertised)b.append(" 未声明车道能力，未收到不代表手机不支持");
        if(laneFrames==0)return new String[]{b.toString()};
        StringBuilder schema=new StringBuilder(480);
        schema.append("[车道诊断] 结构 latestEvent=").append(eventIndex).append(" groups=").append(laneGroups)
            .append(" badFields=").append(badFields).append(" overflow=").append(overflow)
            .append(" unknown=").append(unknownFields).append(" descBytes=").append(descriptions).append(" schema=");
        for(int i=0;i<fieldCount;i++){if(i>0)schema.append(',');schema.append(Integer.toHexString(fieldIds[i])).append(':').append(fieldLengths[i]);}
        // Raw numeric lane metadata only. 4 angles per lane are sampled; true received count
        // and total truncation are explicit. No road/description/unknown body is included.
        StringBuilder slots=new StringBuilder(480);
        slots.append("[车道诊断] 槽位 event=").append(eventIndex).append(" [pos,status,highlight,angleTotal:前4角度]=");
        for(int i=0;i<Math.min(MAX_LANES,laneGroups);i++) {
            if(i>0)slots.append(';');Lane lane=lanes[i];
            slots.append('[').append(lane.position).append(',').append(lane.status).append(',').append(lane.highlight)
                .append(',').append(lane.angleTotal).append(':');
            for(int k=0;k<Math.min(4,lane.angleCount);k++){if(k>0)slots.append(',');slots.append(lane.angles[k]);}slots.append(']');
        }
        return new String[]{b.toString(),schema.toString(),slots.toString()};
    }

    private static boolean valid(byte[] b,int start,int end) {
        for(int p=start;p<end;){if(end-p<4)return false;int n=u16(b,p);if(n<4||n>end-p)return false;p+=n;}return true;
    }
    private static int u16(byte[] b,int i){return ((b[i]&255)<<8)|(b[i+1]&255);}
}
