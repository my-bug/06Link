.class public final Lcom/shilapi/xcertplay/usbbt/L2capReassembler;
.super Ljava/lang/Object;
.source "HciAcl.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0011\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\n\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u000b\u001a\u00020\u000cJ\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0003R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R*\u0010\u0006\u001a\u001e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00080\u0007j\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0008`\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/usbbt/L2capReassembler;",
        "",
        "maxFrame",
        "",
        "<init>",
        "(I)V",
        "partial",
        "Ljava/util/HashMap;",
        "",
        "Lkotlin/collections/HashMap;",
        "accept",
        "packet",
        "Lcom/shilapi/xcertplay/usbbt/HciAcl$Packet;",
        "forget",
        "",
        "handle",
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


# instance fields
.field private final maxFrame:I

.field private final partial:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/shilapi/xcertplay/usbbt/L2capReassembler;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/shilapi/xcertplay/usbbt/L2capReassembler;->maxFrame:I

    .line 52
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/usbbt/L2capReassembler;->partial:Ljava/util/HashMap;

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const p1, 0x10003

    .line 51
    :cond_0
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/usbbt/L2capReassembler;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/shilapi/xcertplay/usbbt/HciAcl$Packet;)[B
    .locals 5

    const-string v0, "packet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciAcl$Packet;->getBoundary()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 57
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/L2capReassembler;->partial:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciAcl$Packet;->getHandle()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciAcl$Packet;->getData()[B

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object v0

    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciAcl$Packet;->getData()[B

    move-result-object v0

    .line 60
    :goto_0
    array-length v3, v0

    const/4 v4, 0x4

    if-ge v3, v4, :cond_2

    iget-object v2, p0, Lcom/shilapi/xcertplay/usbbt/L2capReassembler;->partial:Ljava/util/HashMap;

    check-cast v2, Ljava/util/Map;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciAcl$Packet;->getHandle()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_2
    const/4 v3, 0x0

    .line 61
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    add-int/2addr v2, v4

    .line 62
    iget v3, p0, Lcom/shilapi/xcertplay/usbbt/L2capReassembler;->maxFrame:I

    if-le v2, v3, :cond_3

    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/L2capReassembler;->partial:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciAcl$Packet;->getHandle()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    .line 64
    :cond_3
    array-length v3, v0

    if-ge v3, v2, :cond_4

    iget-object v2, p0, Lcom/shilapi/xcertplay/usbbt/L2capReassembler;->partial:Ljava/util/HashMap;

    check-cast v2, Ljava/util/Map;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciAcl$Packet;->getHandle()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    .line 65
    :cond_4
    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/L2capReassembler;->partial:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciAcl$Packet;->getHandle()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    const-string v0, "copyOf(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final forget(I)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/L2capReassembler;->partial:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
