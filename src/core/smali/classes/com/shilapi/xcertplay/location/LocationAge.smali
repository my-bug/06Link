.class public final Lcom/shilapi/xcertplay/location/LocationAge;
.super Ljava/lang/Object;
.source "AndroidCarPlayLocationProvider.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0007\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J5\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/location/LocationAge;",
        "",
        "<init>",
        "()V",
        "millis",
        "",
        "fixElapsedNanos",
        "receivedElapsedMillis",
        "fixWallMillis",
        "nowElapsedMillis",
        "nowWallMillis",
        "(JLjava/lang/Long;JJJ)J",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/location/LocationAge;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/location/LocationAge;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/location/LocationAge;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/location/LocationAge;->INSTANCE:Lcom/shilapi/xcertplay/location/LocationAge;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final millis(JLjava/lang/Long;JJJ)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const-wide/32 p3, 0xf4240

    .line 179
    div-long/2addr p1, p3

    :goto_0
    sub-long/2addr p6, p1

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_1

    .line 180
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    goto :goto_0

    :cond_1
    sub-long p6, p8, p4

    .line 182
    :goto_1
    invoke-static {p6, p7, v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide p1

    return-wide p1
.end method
