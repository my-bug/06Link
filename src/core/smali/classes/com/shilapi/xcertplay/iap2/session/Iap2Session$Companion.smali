.class public final Lcom/shilapi/xcertplay/iap2/session/Iap2Session$Companion;
.super Ljava/lang/Object;
.source "Iap2Session.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/iap2/session/Iap2Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J.\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0014\u0008\u0002\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000e0\rJ.\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0014\u0008\u0002\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000e0\rJ.\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0014\u0008\u0002\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000e0\rJ.\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0014\u0008\u0002\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000e0\rR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/iap2/session/Iap2Session$Companion;",
        "",
        "<init>",
        "()V",
        "DEFAULT_SEND_TIMEOUT_MILLIS",
        "",
        "open",
        "Lcom/shilapi/xcertplay/iap2/session/Iap2Session;",
        "underlying",
        "Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;",
        "traceContext",
        "",
        "onTrace",
        "Lkotlin/Function1;",
        "",
        "openWireless",
        "openTunnel",
        "wrap",
        "channel",
        "Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;",
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
.method public static synthetic $r8$lambda$2vVVVZAF5E9NJXho8SK5pB_1wU4(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/iap2/session/Iap2Session$Companion;->openTunnel$lambda$2(Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$JwEvLgOeoRRF1FGIy9JXggFUyx8(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/iap2/session/Iap2Session$Companion;->wrap$lambda$3(Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$a6PXlmcykhkYDqHKqlexznwpihs(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/iap2/session/Iap2Session$Companion;->openWireless$lambda$1(Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xklR3gY8LBWrYJe1iMD-hHkcrEY(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/iap2/session/Iap2Session$Companion;->open$lambda$0(Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/iap2/session/Iap2Session$Companion;-><init>()V

    return-void
.end method

.method public static synthetic open$default(Lcom/shilapi/xcertplay/iap2/session/Iap2Session$Companion;Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/shilapi/xcertplay/iap2/session/Iap2Session;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 120
    const-string/jumbo p2, "wired"

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 121
    new-instance p3, Lcom/shilapi/xcertplay/iap2/session/Iap2Session$Companion$$ExternalSyntheticLambda0;

    invoke-direct {p3}, Lcom/shilapi/xcertplay/iap2/session/Iap2Session$Companion$$ExternalSyntheticLambda0;-><init>()V

    .line 118
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/iap2/session/Iap2Session$Companion;->open(Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/iap2/session/Iap2Session;

    move-result-object p0

    return-object p0
.end method

.method private static final open$lambda$0(Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic openTunnel$default(Lcom/shilapi/xcertplay/iap2/session/Iap2Session$Companion;Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/shilapi/xcertplay/iap2/session/Iap2Session;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 134
    const-string/jumbo p2, "wireless-tunnel"

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 135
    new-instance p3, Lcom/shilapi/xcertplay/iap2/session/Iap2Session$Companion$$ExternalSyntheticLambda1;

    invoke-direct {p3}, Lcom/shilapi/xcertplay/iap2/session/Iap2Session$Companion$$ExternalSyntheticLambda1;-><init>()V

    .line 132
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/iap2/session/Iap2Session$Companion;->openTunnel(Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/iap2/session/Iap2Session;

    move-result-object p0

    return-object p0
.end method

.method private static final openTunnel$lambda$2(Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic openWireless$default(Lcom/shilapi/xcertplay/iap2/session/Iap2Session$Companion;Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/shilapi/xcertplay/iap2/session/Iap2Session;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 127
    const-string/jumbo p2, "wireless"

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 128
    new-instance p3, Lcom/shilapi/xcertplay/iap2/session/Iap2Session$Companion$$ExternalSyntheticLambda2;

    invoke-direct {p3}, Lcom/shilapi/xcertplay/iap2/session/Iap2Session$Companion$$ExternalSyntheticLambda2;-><init>()V

    .line 125
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/iap2/session/Iap2Session$Companion;->openWireless(Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/iap2/session/Iap2Session;

    move-result-object p0

    return-object p0
.end method

.method private static final openWireless$lambda$1(Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic wrap$default(Lcom/shilapi/xcertplay/iap2/session/Iap2Session$Companion;Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/shilapi/xcertplay/iap2/session/Iap2Session;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 141
    const-string p2, "iap2"

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 142
    new-instance p3, Lcom/shilapi/xcertplay/iap2/session/Iap2Session$Companion$$ExternalSyntheticLambda3;

    invoke-direct {p3}, Lcom/shilapi/xcertplay/iap2/session/Iap2Session$Companion$$ExternalSyntheticLambda3;-><init>()V

    .line 139
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/iap2/session/Iap2Session$Companion;->wrap(Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/iap2/session/Iap2Session;

    move-result-object p0

    return-object p0
.end method

.method private static final wrap$lambda$3(Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final open(Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/iap2/session/Iap2Session;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/shilapi/xcertplay/iap2/session/Iap2Session;"
        }
    .end annotation

    const-string/jumbo v0, "underlying"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "traceContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onTrace"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    new-instance v0, Lcom/shilapi/xcertplay/iap2/session/Iap2Session;

    sget-object v1, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->Companion:Lcom/shilapi/xcertplay/transport/Iap2CsmChannel$Companion;

    invoke-virtual {v1, p1}, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel$Companion;->open(Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;)Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/shilapi/xcertplay/iap2/session/Iap2Session;-><init>(Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final openTunnel(Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/iap2/session/Iap2Session;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/shilapi/xcertplay/iap2/session/Iap2Session;"
        }
    .end annotation

    const-string/jumbo v0, "underlying"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "traceContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onTrace"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    new-instance v0, Lcom/shilapi/xcertplay/iap2/session/Iap2Session;

    sget-object v1, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->Companion:Lcom/shilapi/xcertplay/transport/Iap2CsmChannel$Companion;

    invoke-virtual {v1, p1}, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel$Companion;->openTunnel(Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;)Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/shilapi/xcertplay/iap2/session/Iap2Session;-><init>(Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final openWireless(Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/iap2/session/Iap2Session;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/shilapi/xcertplay/iap2/session/Iap2Session;"
        }
    .end annotation

    const-string/jumbo v0, "underlying"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "traceContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onTrace"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    new-instance v0, Lcom/shilapi/xcertplay/iap2/session/Iap2Session;

    sget-object v1, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->Companion:Lcom/shilapi/xcertplay/transport/Iap2CsmChannel$Companion;

    invoke-virtual {v1, p1}, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel$Companion;->openWireless(Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;)Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/shilapi/xcertplay/iap2/session/Iap2Session;-><init>(Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final wrap(Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/iap2/session/Iap2Session;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/shilapi/xcertplay/iap2/session/Iap2Session;"
        }
    .end annotation

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "traceContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onTrace"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    new-instance v0, Lcom/shilapi/xcertplay/iap2/session/Iap2Session;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/shilapi/xcertplay/iap2/session/Iap2Session;-><init>(Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
