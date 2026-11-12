.class public final Lcom/shilapi/xcertplay/hud/BydHudProtocol;
.super Ljava/lang/Object;
.source "BydHudProtocol.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000bJ\u000e\u0010\u000e\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bR\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/hud/BydHudProtocol;",
        "",
        "<init>",
        "()V",
        "SERVICE_TOPIC",
        "",
        "NAVIGATION_TOPIC",
        "REPEAT_MILLIS",
        "serviceStarted",
        "",
        "code",
        "",
        "bindRetryDelayMillis",
        "failures",
        "eventAccepted",
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


# static fields
.field public static final INSTANCE:Lcom/shilapi/xcertplay/hud/BydHudProtocol;

.field public static final NAVIGATION_TOPIC:J = 0x4010a00018001L

.field public static final REPEAT_MILLIS:J = 0x12cL

.field public static final SERVICE_TOPIC:J = 0xb010a00010000L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/hud/BydHudProtocol;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/hud/BydHudProtocol;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/hud/BydHudProtocol;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydHudProtocol;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bindRetryDelayMillis(I)J
    .locals 4

    if-gtz p1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x6

    .line 16
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const-wide/16 v0, 0x3e8

    shl-long/2addr v0, p1

    const-wide/32 v2, 0xea60

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final eventAccepted(I)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final serviceStarted(I)Z
    .locals 1

    if-eqz p1, :cond_1

    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
