.class public final Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;
.super Ljava/lang/Object;
.source "Iap2Wire.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIap2Wire.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Iap2Wire.kt\ncom/shilapi/xcertplay/iap2/wire/Iap2ParameterList\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,152:1\n1761#2,3:153\n295#2,2:156\n774#2:158\n865#2,2:159\n*S KotlinDebug\n*F\n+ 1 Iap2Wire.kt\ncom/shilapi/xcertplay/iap2/wire/Iap2ParameterList\n*L\n55#1:153,3\n57#1:156,2\n62#1:158\n62#1:159,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0005\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\u0017\u0008\u0002\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0006\u0010\u000b\u001a\u00020\u000cJ\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003J\u0011\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0008H\u0086\u0002J\u000e\u0010\u0010\u001a\u00020\u000c2\u0006\u0010\u0011\u001a\u00020\u0008J\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0011\u001a\u00020\u0008J\u0018\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0015J\u0014\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0011\u001a\u00020\u0008J\u0006\u0010\u0017\u001a\u00020\u0018J\u0013\u0010\u0019\u001a\u00020\u000c2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u001b\u001a\u00020\u0008H\u0016R\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0007\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;",
        "",
        "parameters",
        "",
        "Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;",
        "<init>",
        "(Ljava/util/List;)V",
        "size",
        "",
        "getSize",
        "()I",
        "isEmpty",
        "",
        "asList",
        "get",
        "index",
        "has",
        "id",
        "first",
        "require",
        "description",
        "",
        "all",
        "encode",
        "",
        "equals",
        "other",
        "hashCode",
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
.field public static final Companion:Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList$Companion;

.field private static final EMPTY:Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;

.field private static final MAX_BODY_BYTES:I = 0xfff9


# instance fields
.field private final parameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;->Companion:Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList$Companion;

    .line 85
    new-instance v0, Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;->EMPTY:Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;",
            ">;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;->parameters:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$getEMPTY$cp()Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;
    .locals 1

    .line 44
    sget-object v0, Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;->EMPTY:Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;

    return-object v0
.end method

.method public static synthetic require$default(Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;ILjava/lang/String;ILjava/lang/Object;)Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/16 p2, 0x10

    .line 59
    invoke-static {p2}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "toString(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x4

    const/16 p4, 0x30

    invoke-static {p2, p3, p4}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "parameter 0x"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;->require(ILjava/lang/String;)Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final all(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;->parameters:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 158
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 159
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;

    .line 62
    invoke-virtual {v3}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;->getId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 159
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 160
    :cond_1
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public final asList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;->parameters:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final encode()[B
    .locals 6

    .line 65
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 66
    iget-object v1, p0, Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;->parameters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;

    .line 67
    sget-object v3, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer;->Companion:Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$Companion;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;->getId()I

    move-result v4

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;->payloadView$shared_release()[B

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$Companion;->encodeParam(I[B)[B

    move-result-object v2

    .line 68
    array-length v3, v2

    const v4, 0xfff9

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    sub-int/2addr v4, v5

    if-gt v3, v4, :cond_0

    .line 71
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Encoded CSM parameters exceed the 65529-byte message body limit"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string/jumbo v1, "toByteArray(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 77
    instance-of v0, p1, Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;->parameters:Ljava/util/List;

    check-cast p1, Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;

    iget-object p1, p1, Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;->parameters:Ljava/util/List;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final first(I)Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;->parameters:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 156
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;

    .line 57
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 157
    :goto_0
    check-cast v1, Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;

    return-object v1
.end method

.method public final get(I)Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;->parameters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;

    return-object p1
.end method

.method public final getSize()I
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;->parameters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final has(I)Z
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;->parameters:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 153
    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 154
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;

    .line 55
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;->getId()I

    move-result v1

    if-ne v1, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;->parameters:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;->parameters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final require(ILjava/lang/String;)Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;
    .locals 2

    const-string v0, "description"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;->first(I)Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Lcom/shilapi/xcertplay/iap2/wire/Iap2ProtocolException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Missing required "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p1, p2, v1, v0, v1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1
.end method
