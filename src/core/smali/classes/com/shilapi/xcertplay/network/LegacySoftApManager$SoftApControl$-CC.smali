.class public final synthetic Lcom/shilapi/xcertplay/network/LegacySoftApManager$SoftApControl$-CC;
.super Ljava/lang/Object;
.source "LegacySoftApManager.kt"


# direct methods
.method public static $default$now(Lcom/shilapi/xcertplay/network/LegacySoftApManager$SoftApControl;)J
    .locals 2
    .param p0, "_this"    # Lcom/shilapi/xcertplay/network/LegacySoftApManager$SoftApControl;

    .line 175
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static $default$sleep(Lcom/shilapi/xcertplay/network/LegacySoftApManager$SoftApControl;J)V
    .locals 0
    .param p0, "_this"    # Lcom/shilapi/xcertplay/network/LegacySoftApManager$SoftApControl;

    .line 176
    invoke-static {p1, p2}, Landroid/os/SystemClock;->sleep(J)V

    return-void
.end method

.method public static synthetic access$now$jd(Lcom/shilapi/xcertplay/network/LegacySoftApManager$SoftApControl;)J
    .locals 2

    .line 168
    invoke-static {p0}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$SoftApControl$-CC;->$default$now(Lcom/shilapi/xcertplay/network/LegacySoftApManager$SoftApControl;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic access$sleep$jd(Lcom/shilapi/xcertplay/network/LegacySoftApManager$SoftApControl;J)V
    .locals 0

    .line 168
    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$SoftApControl$-CC;->$default$sleep(Lcom/shilapi/xcertplay/network/LegacySoftApManager$SoftApControl;J)V

    return-void
.end method
