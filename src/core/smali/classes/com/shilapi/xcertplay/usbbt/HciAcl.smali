.class public final Lcom/shilapi/xcertplay/usbbt/HciAcl;
.super Ljava/lang/Object;
.source "HciAcl.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/usbbt/HciAcl$Packet;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHciAcl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HciAcl.kt\ncom/shilapi/xcertplay/usbbt/HciAcl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,71:1\n1#2:72\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0013B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u0008J\u0010\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u0008J$\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00102\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\u0005R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/usbbt/HciAcl;",
        "",
        "<init>",
        "()V",
        "PB_CONTINUATION",
        "",
        "PB_FIRST_FLUSHABLE",
        "build",
        "",
        "handle",
        "boundary",
        "data",
        "parse",
        "Lcom/shilapi/xcertplay/usbbt/HciAcl$Packet;",
        "packet",
        "fragment",
        "",
        "l2capFrame",
        "maxAclData",
        "Packet",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/usbbt/HciAcl;

.field public static final PB_CONTINUATION:I = 0x1

.field public static final PB_FIRST_FLUSHABLE:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/usbbt/HciAcl;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/usbbt/HciAcl;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/usbbt/HciAcl;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/HciAcl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build(II[B)[B
    .locals 5

    const-string v0, "data"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    array-length v0, p3

    const v1, 0xffff

    if-gt v0, v1, :cond_0

    and-int/lit16 p1, p1, 0xfff

    const/4 v0, 0x3

    and-int/2addr p2, v0

    shl-int/lit8 p2, p2, 0xc

    or-int/2addr p1, p2

    and-int/lit16 p2, p1, 0xff

    int-to-byte p2, p2

    ushr-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    .line 22
    array-length v1, p3

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    array-length v2, p3

    ushr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    const/4 v3, 0x4

    new-array v3, v3, [B

    const/4 v4, 0x0

    aput-byte p2, v3, v4

    const/4 p2, 0x1

    aput-byte p1, v3, p2

    const/4 p1, 0x2

    aput-byte v1, v3, p1

    aput-byte v2, v3, v0

    invoke-static {v3, p3}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p1

    return-object p1

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ACL data too long"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final fragment(I[BI)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BI)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    const-string v0, "l2capFrame"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez p3, :cond_2

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 39
    :goto_0
    array-length v2, p2

    add-int v3, v1, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 40
    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    if-nez v1, :cond_0

    const/4 v4, 0x2

    goto :goto_1

    :cond_0
    const/4 v4, 0x1

    :goto_1
    invoke-static {p2, v1, v2}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v1

    invoke-virtual {p0, p1, v4, v1}, Lcom/shilapi/xcertplay/usbbt/HciAcl;->build(II[B)[B

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 42
    array-length v1, p2

    if-lt v2, v1, :cond_1

    .line 43
    check-cast v0, Ljava/util/List;

    return-object v0

    :cond_1
    move v1, v2

    goto :goto_0

    .line 35
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ACL buffer size"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final parse([B)Lcom/shilapi/xcertplay/usbbt/HciAcl$Packet;
    .locals 6

    const-string v0, "packet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 27
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    const/4 v3, 0x2

    .line 28
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x3

    aget-byte v5, p1, v4

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v3, v5

    .line 29
    array-length v5, p1

    add-int/2addr v3, v2

    if-ge v5, v3, :cond_1

    return-object v1

    .line 30
    :cond_1
    new-instance v1, Lcom/shilapi/xcertplay/usbbt/HciAcl$Packet;

    and-int/lit16 v5, v0, 0xfff

    ushr-int/lit8 v0, v0, 0xc

    and-int/2addr v0, v4

    invoke-static {p1, v2, v3}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object p1

    invoke-direct {v1, v5, v0, p1}, Lcom/shilapi/xcertplay/usbbt/HciAcl$Packet;-><init>(II[B)V

    return-object v1
.end method
