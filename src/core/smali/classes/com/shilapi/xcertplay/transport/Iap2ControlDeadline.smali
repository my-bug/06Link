.class public final Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;
.super Ljava/lang/Object;
.source "Iap2ControlDeadline.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0008\u0002\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0006\u0010\u000b\u001a\u00020\u000cJ\u0006\u0010\r\u001a\u00020\u0003R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;",
        "",
        "timeoutMillis",
        "",
        "clockNanos",
        "Lkotlin/Function0;",
        "<init>",
        "(JLkotlin/jvm/functions/Function0;)V",
        "unlimited",
        "",
        "startedNanos",
        "authenticated",
        "",
        "remainingMillis",
        "Companion",
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
.field public static final Companion:Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline$Companion;

.field public static final HANDSHAKE_MILLIS:J = 0xea60L

.field public static final MAX_POLL_MILLIS:J = 0x7530L


# instance fields
.field private authenticated:Z

.field private final clockNanos:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final startedNanos:J

.field private final timeoutMillis:J

.field private final unlimited:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;->Companion:Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline$Companion;

    return-void
.end method

.method public constructor <init>(JLkotlin/jvm/functions/Function0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "clockNanos"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-wide p1, p0, Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;->timeoutMillis:J

    .line 6
    iput-object p3, p0, Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;->clockNanos:Lkotlin/jvm/functions/Function0;

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    iput-boolean p1, p0, Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;->unlimited:Z

    .line 9
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;->startedNanos:J

    return-void
.end method

.method public synthetic constructor <init>(JLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 6
    sget-object p3, Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline$1;->INSTANCE:Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline$1;

    check-cast p3, Lkotlin/jvm/functions/Function0;

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;-><init>(JLkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public final authenticated()V
    .locals 1

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;->authenticated:Z

    return-void
.end method

.method public final remainingMillis()J
    .locals 11

    .line 13
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;->unlimited:Z

    const-wide/16 v1, 0x7530

    if-eqz v0, :cond_0

    iget-boolean v3, p0, Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;->authenticated:Z

    if-eqz v3, :cond_0

    return-wide v1

    :cond_0
    if-eqz v0, :cond_1

    const-wide/32 v3, 0xea60

    goto :goto_0

    .line 14
    :cond_1
    iget-wide v3, p0, Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;->timeoutMillis:J

    .line 15
    :goto_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;->clockNanos:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;->startedNanos:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x0

    invoke-static {v5, v6, v7, v8}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v5

    const v0, 0xf4240

    int-to-long v9, v0

    mul-long v3, v3, v9

    sub-long/2addr v3, v5

    cmp-long v0, v3, v7

    if-gtz v0, :cond_2

    return-wide v7

    :cond_2
    const v0, 0xf423f

    int-to-long v5, v0

    add-long/2addr v3, v5

    .line 18
    div-long/2addr v3, v9

    invoke-static {v3, v4, v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtMost(JJ)J

    move-result-wide v0

    return-wide v0
.end method
