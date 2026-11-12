#!/system/bin/sh
# Explicit one-time install/restore via OEM privileged service. Never runs at boot.
# The existing init service owns the permanent daemon. Backup survives app uninstall.
set -u
ACTION=${1:-}; PAYLOAD=${2:-}; RESULT=${3:-}
TARGET=/system/bin/gocsdk
SAFE=/data/local/06link-oem-bt
BACKUP=$SAFE/gocsdk.stock
ORIGINAL_SHA=
PATCH_SHA=1f0c60e5d292ef9be94b92fe530d8550846dea614234c6d324eb1c740387b130
NEXT=/system/bin/.06link-gocsdk.next
OLD=/system/bin/.06link-gocsdk.previous
XDSN=/data/data/com.nforetek.bt/cache/.xdsn
LOCKED=0; REMOUNTED=0; STOPPED=0; SWAPPED=0; COMMITTED=0; STAGED=0; LINKED=0; FINAL_STATUS=
sha() { busybox sha256sum "$1" 2>/dev/null | busybox awk '{print $1}'; }
status() { echo "$1" > "$RESULT.new"; chmod 644 "$RESULT.new"; mv -f "$RESULT.new" "$RESULT"; }
fail() { FINAL_STATUS="failed:$1"; [ "$LOCKED" = 1 ] || status "$FINAL_STATUS"; exit 1; }
# Android 5.1 toolbox ls prints mode, numeric uid, numeric gid (no nlink).
# This E01 BusyBox does not include stat. Reject unrecognized metadata layouts.
metadata() {
 ls -ldn "$1" 2>/dev/null | busybox awk '
 length($1)==10 && $2 ~ /^[0-9]+$/ && $3 ~ /^[0-9]+$/ {
   m=$1; v=0;
   for(i=2;i<=10;i++) {
     c=substr(m,i,1);bit=(i%3==2?4:(i%3==0?2:1));group=int((i-2)/3);
     if(c=="r"||c=="w"||c=="x"||c=="s"||c=="t")v+=bit*(group==0?64:(group==1?8:1));
   }
   c=substr(m,4,1);if(c=="s"||c=="S")v+=2048;
   c=substr(m,7,1);if(c=="s"||c=="S")v+=1024;
   c=substr(m,10,1);if(c=="t"||c=="T")v+=512;
   printf "%s:%s:%o\n",$2,$3,v;found=1;
 } END {if(!found)exit 1}'
}
label() { ls -Zd "$1" 2>/dev/null | busybox tr ' ' '\n' | busybox grep ':object_r:' | busybox head -n 1; }
identity_valid() {
 [ -f "$1" ] && [ ! -L "$1" ] && [ "$(busybox wc -c < "$1")" -eq 26 ] && LC_ALL=C busybox grep -Eq '^[A-Za-z0-9]{24}:$' "$1"
}
# Most processes are unrelated. Read comm with the shell builtin before spawning readlink.
# Retain the full scan for the one-time foreign-owner check below.
goc_processes() {
 for p in /proc/[0-9]*; do
  name=
  { IFS= read -r name < "$p/comm"; } 2>/dev/null || continue
  case "$name" in gocsdk*) echo "$p";; esac
 done
}
initialized() {
 [ "$(getprop init.svc.gocsdk)" = running ] || return 1
 for p in $(goc_processes); do
  if [ "$(busybox readlink "$p/exe" 2>/dev/null)" = "$TARGET" ] && [ "$(busybox readlink "$p/cwd" 2>/dev/null)" = /data/goc ]; then
   [ -z "${1:-}" ] || [ "$(sha "$p/exe")" = "$1" ] || continue
   return 0
  fi
 done
 return 1
}
wait_ready() {
 n=0
 while [ "$n" -lt 25 ]; do
  if initialized "$1"; then
   if ! identity_valid "$XDSN" && identity_valid "$SAFE/identity" && [ ! -e "$XDSN" ] && [ ! -L "$XDSN" ]; then busybox ln "$SAFE/identity" "$XDSN" 2>/dev/null || true; fi
   [ "$1" = "$PATCH_SHA" ] || return 0
   if identity_valid "$XDSN" && busybox grep -q '/dev/socket/goc_spp' /proc/net/unix; then return 0; fi
  fi
  sleep 1; n=$((n+1))
 done
 return 1
}
cleanup() {
 rc=$?; trap - 0 1 2 15
 [ "$COMMITTED" = 1 ] || [ -n "$FINAL_STATUS" ] || FINAL_STATUS="failed:transaction-interrupted"
 status 'working:finishing'
 if [ "$COMMITTED" = 0 ] && [ "$STOPPED" = 1 ]; then
  status 'working:rolling-back' 
  /system/bin/stop gocsdk
  if [ "$SWAPPED" = 1 ]; then
   # Revert atomically to the exact previous inode; do not overwrite a live binary.
   if [ "$(sha "$OLD")" = "$BEFORE" ]; then
    mv -f "$OLD" "$TARGET" || FINAL_STATUS='failed:rollback-rename; keep vehicle parked and restore from backup'
    sync
   else FINAL_STATUS='failed:rollback-file-missing; restore from backup'; fi
  fi
  /system/bin/start gocsdk
  wait_ready "$BEFORE" || FINAL_STATUS='failed:rollback-readiness; restart vehicle only after restoring original file'
 fi
 [ "$STAGED" = 0 ] || rm -f "$NEXT"
 if [ "$LINKED" = 1 ] && { [ "$COMMITTED" = 1 ] || [ "$SWAPPED" = 0 ]; }; then rm -f "$OLD"; fi
 if [ "$COMMITTED" = 1 ]; then rm -f "$SAFE/identity"; fi
 if [ "$REMOUNTED" = 1 ]; then
  mount -o remount,ro /system || { FINAL_STATUS='failed:system-remount-ro'; rc=1; }
  opts=$(busybox awk '$2=="/system" {print $4}' /proc/mounts)
  case ",$opts," in *,ro,*) ;; *) FINAL_STATUS='failed:system-still-writable';rc=1;; esac
 fi
 if [ "$LOCKED" = 1 ]; then
  rmdir "$SAFE/lock" 2>/dev/null || { FINAL_STATUS='failed:operation-lock-cleanup'; rc=1; }
 fi
 if [ -n "$FINAL_STATUS" ]; then status "$FINAL_STATUS"; fi
 exit "$rc"
}
case "$ACTION" in install|restore) ;; *) exit 2;; esac
case "$RESULT" in /data/user/0/com.sixlink.car/files/oem-bt-permanent/result-*|/data/data/com.sixlink.car/files/oem-bt-permanent/result-*) ;; *) exit 2;; esac
TOKEN=${RESULT##*/result-}
[ "${#TOKEN}" = 32 ] || exit 2
case "$TOKEN" in *[!a-f0-9]*) exit 2;; esac
case "$(id)" in uid=0*) ;; *) fail 'root-service-required';; esac
[ "$(getprop ro.product.model)" = E01 ] && [ "$(getprop ro.product.device)" = BX11QJ ] && [ "$(getprop ro.build.version.sdk)" = 22 ] || fail 'unsupported-device'
[ -f "$TARGET" ] && [ ! -L "$TARGET" ] || fail 'unexpected-system-file'
BEFORE=$(sha "$TARGET")
# Identify bytes for copy/rollback verification, not a factory-version whitelist.
[ "${#BEFORE}" = 64 ] || fail 'system-file-unreadable'
case "$BEFORE" in *[!a-f0-9]*) fail 'system-hash-unavailable';; esac
[ ! -L "$SAFE" ] || fail 'unsafe-backup-directory'
if [ -e "$SAFE" ]; then
 [ "$(metadata "$SAFE")" = 0:0:700 ] || fail 'unsafe-backup-owner'
else mkdir "$SAFE" && chmod 700 "$SAFE" || fail 'backup-directory'; fi
mkdir "$SAFE/lock" 2>/dev/null || fail 'operation-already-running'
LOCKED=1;trap cleanup 0 1 2 15
status 'working:checking'
[ ! -e "$NEXT" ] && [ ! -L "$NEXT" ] && [ ! -e "$OLD" ] && [ ! -L "$OLD" ] || fail 'previous-transaction-needs-inspection'
# Preserve this car's first backup across reinstall/restore and APK uninstall.
if [ -e "$BACKUP" ] || [ -L "$BACKUP" ]; then
 [ -f "$BACKUP" ] && [ -s "$BACKUP" ] && [ ! -L "$BACKUP" ] || fail 'original-backup-unreadable'
 ORIGINAL_SHA=$(sha "$BACKUP")
 [ "${#ORIGINAL_SHA}" = 64 ] || fail 'original-backup-unreadable'
 case "$ORIGINAL_SHA" in *[!a-f0-9]*) fail 'original-backup-unreadable';; esac
 [ "$ORIGINAL_SHA" != "$PATCH_SHA" ] || fail 'backup-is-compatible-component'
else
 [ "$ACTION" = install ] && [ "$BEFORE" != "$PATCH_SHA" ] || fail 'original-backup-missing'
 ORIGINAL_SHA=$BEFORE
fi
if [ "$ACTION" = install ]; then
 case "$PAYLOAD" in /data/user/0/com.sixlink.car/files/oem-bt-permanent/gocsdk|/data/data/com.sixlink.car/files/oem-bt-permanent/gocsdk) ;; *) fail 'invalid-payload-path';; esac
 [ "$(sha "$PAYLOAD")" = "$PATCH_SHA" ] || fail 'payload-hash'
 DESIRED=$PATCH_SHA; SOURCE=$PAYLOAD
else DESIRED=$ORIGINAL_SHA; SOURCE=$BACKUP; fi
if [ "$BEFORE" = "$DESIRED" ]; then
 if [ "$DESIRED" = "$PATCH_SHA" ]; then [ "$(sha "$BACKUP")" = "$ORIGINAL_SHA" ] && [ -f "$SAFE/metadata" ] || fail 'original-backup-missing'; fi
 wait_ready "$DESIRED" || fail 'existing-component-not-ready'
 FINAL_STATUS="ready:$ACTION";COMMITTED=1;exit 0
fi
# An app-owned guardian must be released BEFORE this script is launched.
[ ! -e /data/local/tmp/06link-oem-bt1.guard/lease ] || fail 'temporary-owner-still-active'
for p in /proc/[0-9]*; do
 exe=$(busybox readlink "$p/exe" 2>/dev/null)
 case "$exe" in "$TARGET"|'') ;; */gocsdk|*/gocsdk\ \(deleted\)) fail 'another-native-owner';; esac
done
if [ "$ACTION" = install ]; then initialized && identity_valid "$XDSN" || fail 'factory-not-ready'; fi
MOUNT=$(busybox awk '$2=="/system" {print $1" "$3" "$4}' /proc/mounts)
set -- $MOUNT
[ "$#" = 3 ] && [ "$2" = ext4 ] || fail 'unsupported-system-mount'
case "$1" in /dev/block/dm-*) fail 'verified-system-mount';; esac
case "$(getprop ro.boot.veritymode)" in enforcing|eio) fail 'verified-system';; esac
OPTIONS=$3
META_OLD=$(metadata "$TARGET") || fail 'metadata-unavailable'
UID_OLD=$(echo "$META_OLD" | busybox awk -F: '{print $1}'); GID_OLD=$(echo "$META_OLD" | busybox awk -F: '{print $2}'); MODE_OLD=$(echo "$META_OLD" | busybox awk -F: '{print $3}'); LABEL_OLD=$(label "$TARGET")
case "$UID_OLD:$GID_OLD:$MODE_OLD" in *[!0-9:]*) fail 'invalid-metadata';; esac
if [ "$(getenforce 2>/dev/null)" != Disabled ]; then
 case "$LABEL_OLD" in u:object_r:*:s0) ;; *) fail 'missing-selinux-label';; esac
 command -v chcon >/dev/null || fail 'chcon-unavailable'
fi
# Root-only first backup belongs to THIS car. Never replace it on later installs.
status 'working:backup'
if [ ! -e "$BACKUP" ] && [ ! -L "$BACKUP" ]; then
 [ "$BEFORE" = "$ORIGINAL_SHA" ] || fail 'original-backup-missing'
 busybox cp -p "$TARGET" "$SAFE/original.new" && [ "$(sha "$SAFE/original.new")" = "$ORIGINAL_SHA" ] || fail 'backup-copy'
 { echo "$UID_OLD"; echo "$GID_OLD"; echo "$MODE_OLD"; echo "$LABEL_OLD"; } > "$SAFE/metadata"
 mv "$SAFE/original.new" "$BACKUP" || fail 'backup-publish'
 sync
fi
[ -f "$BACKUP" ] && [ ! -L "$BACKUP" ] && [ "$(sha "$BACKUP")" = "$ORIGINAL_SHA" ] || fail 'backup-hash'
[ "$(sha "$SOURCE")" = "$DESIRED" ] || fail 'source-hash'
# An interrupted first backup may have published the binary before metadata.
# Recover missing metadata only while the live file still equals THIS backup.
if [ ! -s "$SAFE/metadata" ]; then
 [ "$BEFORE" = "$ORIGINAL_SHA" ] || fail 'backup-metadata'
 { echo "$UID_OLD"; echo "$GID_OLD"; echo "$MODE_OLD"; echo "$LABEL_OLD"; } > "$SAFE/metadata.new" || fail 'backup-metadata-write'
 mv "$SAFE/metadata.new" "$SAFE/metadata" || fail 'backup-metadata-publish'
 sync
fi
# Preserve metadata recorded at the FIRST install, also when restoring.
UID_OLD=$(busybox sed -n '1p' "$SAFE/metadata"); GID_OLD=$(busybox sed -n '2p' "$SAFE/metadata"); MODE_OLD=$(busybox sed -n '3p' "$SAFE/metadata"); LABEL_OLD=$(busybox sed -n '4p' "$SAFE/metadata")
[ -n "$UID_OLD" ] && [ -n "$GID_OLD" ] && [ -n "$MODE_OLD" ] || fail 'backup-metadata'
rm -f "$SAFE/identity"
if identity_valid "$XDSN"; then busybox ln "$XDSN" "$SAFE/identity" || fail 'identity-preserve'; fi
case ",$OPTIONS," in *,ro,*) mount -o remount,rw /system || fail 'remount-refused';REMOUNTED=1;; esac
status 'working:staging'
STAGED=1
busybox cp "$SOURCE" "$NEXT" && [ "$(sha "$NEXT")" = "$DESIRED" ] || fail 'stage-hash'
chown "$UID_OLD:$GID_OLD" "$NEXT" && chmod "$MODE_OLD" "$NEXT" || fail 'stage-metadata'
[ -z "$LABEL_OLD" ] || chcon "$LABEL_OLD" "$NEXT" || fail 'stage-label'
[ "$(metadata "$NEXT")" = "$UID_OLD:$GID_OLD:$MODE_OLD" ] || fail 'stage-metadata-verification'
[ -z "$LABEL_OLD" ] || [ "$(label "$NEXT")" = "$LABEL_OLD" ] || fail 'stage-label-verification'
busybox ln "$TARGET" "$OLD" || fail 'rollback-link'
LINKED=1
sync
status 'working:restarting-bluetooth-once'
STOPPED=1
/system/bin/stop gocsdk || fail 'stop-failed'
n=0
while [ "$n" -lt 12 ]; do
 alive=0
 for p in $(goc_processes); do [ "$(busybox readlink "$p/exe" 2>/dev/null)" = "$TARGET" ] && alive=1; done
 [ "$alive" = 0 ] && [ "$(getprop init.svc.gocsdk)" = stopped ] && break
 sleep 1;n=$((n+1))
done
[ "$n" -lt 12 ] || fail 'stop-timeout'
# Each possible power-loss point still leaves an executable at TARGET.
mv -f "$NEXT" "$TARGET" || fail 'atomic-publish'
SWAPPED=1;sync
status 'working:starting'
/system/bin/start gocsdk || fail 'start-failed'
wait_ready "$DESIRED" || fail 'new-component-not-ready'
[ "$(sha "$TARGET")" = "$DESIRED" ] || fail 'installed-hash'
COMMITTED=1
FINAL_STATUS="ready:$ACTION"
exit 0
