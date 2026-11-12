.class public final Lcom/shilapi/xcertplay/transport/Iap2LinkChannel$Companion;
.super Ljava/lang/Object;
.source "Iap2LinkChannel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIap2LinkChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Iap2LinkChannel.kt\ncom/shilapi/xcertplay/transport/Iap2LinkChannel$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,376:1\n1#2:377\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016J\u000e\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016J\u000e\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016J\u0008\u0010\u0019\u001a\u00020\u0007H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/Iap2LinkChannel$Companion;",
        "",
        "<init>",
        "()V",
        "RECEIVE_CHUNK_BYTES",
        "",
        "RECEIVE_POLL_MILLIS",
        "",
        "MINIMUM_RECEIVE_POLL_MILLIS",
        "CLOSE_JOIN_MILLIS",
        "NANOS_PER_MILLISECOND",
        "MAX_WAIT_MILLIS",
        "MAX_PENDING_COMMANDS",
        "MAX_PENDING_COMMAND_BYTES",
        "MAX_PENDING_CONTROLS",
        "MAX_PENDING_CONTROL_BYTES",
        "WIRED_LINK_CONFIG",
        "Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;",
        "WIRELESS_LINK_CONFIG",
        "open",
        "Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;",
        "underlying",
        "Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;",
        "openWireless",
        "openTunnel",
        "nowMillis",
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

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$nowMillis(Lcom/shilapi/xcertplay/transport/Iap2LinkChannel$Companion;)J
    .locals 2

    .line 330
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel$Companion;->nowMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private final nowMillis()J
    .locals 4

    .line 373
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public final open(Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;)Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;
    .locals 4

    const-string/jumbo v0, "underlying"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 354
    new-instance v0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;

    # getter for: Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->WIRED_LINK_CONFIG:Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;
    invoke-static {}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->access$getWIRED_LINK_CONFIG$cp()Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;-><init>(Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 355
    # getter for: Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->worker:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->access$getWorker$p(Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;)Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-object v0
.end method

.method public final openTunnel(Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;)Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;
    .locals 4

    const-string/jumbo v0, "underlying"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 370
    new-instance v0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;

    # getter for: Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->WIRED_LINK_CONFIG:Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;
    invoke-static {}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->access$getWIRED_LINK_CONFIG$cp()Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;-><init>(Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 371
    # getter for: Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->worker:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->access$getWorker$p(Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;)Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-object v0
.end method

.method public final openWireless(Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;)Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;
    .locals 4

    const-string/jumbo v0, "underlying"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    new-instance v0, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;

    # getter for: Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->WIRELESS_LINK_CONFIG:Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;
    invoke-static {}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->access$getWIRELESS_LINK_CONFIG$cp()Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;-><init>(Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 363
    # getter for: Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->worker:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->access$getWorker$p(Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;)Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-object v0
.end method
