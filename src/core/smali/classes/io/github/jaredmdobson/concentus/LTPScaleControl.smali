.class Lio/github/jaredmdobson/concentus/LTPScaleControl;
.super Ljava/lang/Object;
.source "LTPScaleControl.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static silk_LTP_scale_ctrl(Lio/github/jaredmdobson/concentus/SilkChannelEncoder;Lio/github/jaredmdobson/concentus/SilkEncoderControl;I)V
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 46
    iget p2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->PacketLoss_perc:I

    iget v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nFramesPerPacket:I

    add-int/2addr p2, v1

    .line 47
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget v2, p1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->LTPredCodGain_Q7:I

    .line 48
    invoke-static {p2, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result p2

    const/16 v2, 0x33

    invoke-static {p2, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result p2

    const/4 v2, 0x2

    .line 47
    invoke-static {p2, v0, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LIMIT(III)I

    move-result p2

    int-to-byte p2, p2

    iput-byte p2, v1, Lio/github/jaredmdobson/concentus/SideInfoIndices;->LTP_scaleIndex:B

    goto :goto_0

    .line 51
    :cond_0
    iget-object p2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iput-byte v0, p2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->LTP_scaleIndex:B

    .line 53
    :goto_0
    sget-object p2, Lio/github/jaredmdobson/concentus/SilkTables;->silk_LTPScales_table_Q14:[S

    iget-object p0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-byte p0, p0, Lio/github/jaredmdobson/concentus/SideInfoIndices;->LTP_scaleIndex:B

    aget-short p0, p2, p0

    iput p0, p1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->LTP_scale_Q14:I

    return-void
.end method
