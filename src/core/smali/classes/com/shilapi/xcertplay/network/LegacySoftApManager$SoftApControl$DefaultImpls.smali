.class public final Lcom/shilapi/xcertplay/network/LegacySoftApManager$SoftApControl$DefaultImpls;
.super Ljava/lang/Object;
.source "LegacySoftApManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/network/LegacySoftApManager$SoftApControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static now(Lcom/shilapi/xcertplay/network/LegacySoftApManager$SoftApControl;)J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 175
    # invokes: Lcom/shilapi/xcertplay/network/LegacySoftApManager$SoftApControl$-CC;->$default$now(Lcom/shilapi/xcertplay/network/LegacySoftApManager$SoftApControl;)J
    invoke-static {p0}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$SoftApControl$-CC;->access$now$jd(Lcom/shilapi/xcertplay/network/LegacySoftApManager$SoftApControl;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static sleep(Lcom/shilapi/xcertplay/network/LegacySoftApManager$SoftApControl;J)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 176
    # invokes: Lcom/shilapi/xcertplay/network/LegacySoftApManager$SoftApControl$-CC;->$default$sleep(Lcom/shilapi/xcertplay/network/LegacySoftApManager$SoftApControl;J)V
    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$SoftApControl$-CC;->access$sleep$jd(Lcom/shilapi/xcertplay/network/LegacySoftApManager$SoftApControl;J)V

    return-void
.end method
