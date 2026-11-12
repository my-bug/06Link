.class public final Lcom/shilapi/xcertplay/airplay/PeerHeartbeat$Companion;
.super Ljava/lang/Object;
.source "PeerHeartbeat.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/airplay/PeerHeartbeat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0008\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u000e\u0010\n\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/airplay/PeerHeartbeat$Companion;",
        "",
        "<init>",
        "()V",
        "testSilenceUntilMs",
        "",
        "getTestSilenceUntilMs",
        "()J",
        "setTestSilenceUntilMs",
        "(J)V",
        "WARN_AFTER_MS",
        "LOSE_AFTER_MS",
        "CHECK_INTERVAL_MS",
        "shared_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/airplay/PeerHeartbeat$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTestSilenceUntilMs()J
    .locals 2

    .line 57
    # getter for: Lcom/shilapi/xcertplay/airplay/PeerHeartbeat;->testSilenceUntilMs:J
    invoke-static {}, Lcom/shilapi/xcertplay/airplay/PeerHeartbeat;->access$getTestSilenceUntilMs$cp()J

    move-result-wide v0

    return-wide v0
.end method

.method public final setTestSilenceUntilMs(J)V
    .locals 0

    .line 57
    invoke-static {p1, p2}, Lcom/shilapi/xcertplay/airplay/PeerHeartbeat;->access$setTestSilenceUntilMs$cp(J)V

    return-void
.end method
