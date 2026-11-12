.class public final Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer;
.super Ljava/lang/Object;
.source "Iap2CsmFramer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$Companion;,
        Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$ReceiveBuffer;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIap2CsmFramer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Iap2CsmFramer.kt\ncom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,175:1\n1#2:176\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0008\u0003\u0018\u0000 \u00102\u00020\u0001:\u0002\u000f\u0010B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\t\u001a\u00020\nJ\u0016\u0010\u000b\u001a\u00020\u000c2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u000eH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer;",
        "",
        "<init>",
        "()V",
        "receive",
        "Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$ReceiveBuffer;",
        "offer",
        "",
        "Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;",
        "chunk",
        "",
        "drain",
        "",
        "frames",
        "",
        "ReceiveBuffer",
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
.field public static final Companion:Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$Companion;

.field public static final HEADER_BYTES:I = 0x6

.field public static final MAX_BODY_BYTES:I = 0xfff9

.field public static final MAX_FRAME_BYTES:I = 0xffff

.field public static final MAX_LINK_CHUNK_BYTES:I = 0xfff5

.field public static final MAX_PARAM_BYTES:I = 0xffff

.field public static final MIN_FRAME_BYTES:I = 0x6

.field public static final START:I = 0x4040

.field private static final START_HIGH:B = 0x40t

.field private static final START_LOW:B = 0x40t


# instance fields
.field private final receive:Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$ReceiveBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer;->Companion:Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$ReceiveBuffer;

    const v1, 0xffff

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$ReceiveBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer;->receive:Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$ReceiveBuffer;

    return-void
.end method

.method private final drain(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;",
            ">;)V"
        }
    .end annotation

    .line 37
    :goto_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer;->receive:Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$ReceiveBuffer;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$ReceiveBuffer;->getSize()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer;->receive:Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$ReceiveBuffer;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$ReceiveBuffer;->hasStart()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer;->receive:Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$ReceiveBuffer;

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$ReceiveBuffer;->discard(I)V

    goto :goto_0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer;->receive:Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$ReceiveBuffer;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$ReceiveBuffer;->getSize()I

    move-result v0

    const/4 v3, 0x6

    if-ge v0, v3, :cond_1

    goto :goto_1

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer;->receive:Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$ReceiveBuffer;

    invoke-virtual {v0, v2}, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$ReceiveBuffer;->u16(I)I

    move-result v0

    if-ge v0, v3, :cond_2

    .line 42
    iget-object v0, p0, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer;->receive:Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$ReceiveBuffer;

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$ReceiveBuffer;->discard(I)V

    goto :goto_0

    .line 45
    :cond_2
    iget-object v1, p0, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer;->receive:Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$ReceiveBuffer;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$ReceiveBuffer;->getSize()I

    move-result v1

    if-ge v1, v0, :cond_3

    :goto_1
    return-void

    .line 47
    :cond_3
    iget-object v1, p0, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer;->receive:Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$ReceiveBuffer;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$ReceiveBuffer;->u16(I)I

    move-result v1

    .line 48
    iget-object v2, p0, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer;->receive:Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$ReceiveBuffer;

    invoke-virtual {v2, v3, v0}, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$ReceiveBuffer;->copyOfRange(II)[B

    move-result-object v2

    .line 49
    iget-object v3, p0, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer;->receive:Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$ReceiveBuffer;

    invoke-virtual {v3, v0}, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$ReceiveBuffer;->discard(I)V

    .line 50
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    new-instance v3, Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;

    invoke-direct {v3, v1, v2}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;-><init>(I[B)V

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public final offer([B)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;",
            ">;"
        }
    .end annotation

    const-string v0, "chunk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    array-length v0, p1

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 22
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 24
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 25
    move-object v2, v0

    check-cast v2, Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer;->drain(Ljava/util/List;)V

    .line 26
    array-length v2, p1

    sub-int/2addr v2, v1

    iget-object v3, p0, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer;->receive:Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$ReceiveBuffer;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$ReceiveBuffer;->remainingCapacity()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-lez v2, :cond_1

    .line 28
    iget-object v3, p0, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer;->receive:Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$ReceiveBuffer;

    invoke-virtual {v3, p1, v1, v2}, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$ReceiveBuffer;->append([BII)V

    add-int/2addr v1, v2

    goto :goto_0

    .line 27
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "CSM receive buffer could not make progress"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_2
    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer;->drain(Ljava/util/List;)V

    return-object v0
.end method
