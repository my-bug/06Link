.class public final Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList$Companion;
.super Ljava/lang/Object;
.source "Iap2Wire.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0014\u0010\n\u001a\u00020\u00072\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cJ\u001f\u0010\n\u001a\u00020\u00072\u0012\u0010\u000b\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\r0\u000e\"\u00020\r\u00a2\u0006\u0002\u0010\u000fJ\u000e\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0012R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList$Companion;",
        "",
        "<init>",
        "()V",
        "MAX_BODY_BYTES",
        "",
        "EMPTY",
        "Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;",
        "getEMPTY",
        "()Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;",
        "of",
        "parameters",
        "",
        "Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;",
        "",
        "([Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;)Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;",
        "parse",
        "encoded",
        "",
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

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEMPTY()Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;
    .locals 1

    .line 85
    # getter for: Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;->EMPTY:Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;
    invoke-static {}, Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;->access$getEMPTY$cp()Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;

    move-result-object v0

    return-object v0
.end method

.method public final of(Ljava/lang/Iterable;)Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;",
            ">;)",
            "Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;"
        }
    .end annotation

    const-string v0, "parameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    new-instance v0, Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;-><init>(Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final varargs of([Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;)Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;
    .locals 1

    const-string v0, "parameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-static {p1}, Lkotlin/collections/ArraysKt;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList$Companion;->of(Ljava/lang/Iterable;)Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;

    move-result-object p1

    return-object p1
.end method

.method public final parse([B)Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;
    .locals 7

    const-string v0, "encoded"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 97
    :goto_0
    array-length v2, p1

    const/4 v3, 0x0

    if-ge v1, v2, :cond_2

    .line 98
    array-length v2, p1

    sub-int/2addr v2, v1

    const/4 v4, 0x2

    const/4 v5, 0x4

    if-lt v2, v5, :cond_1

    .line 101
    sget-object v2, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->INSTANCE:Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;

    invoke-virtual {v2, p1, v1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->readU16([BI)I

    move-result v2

    if-lt v2, v5, :cond_0

    .line 102
    array-length v5, p1

    sub-int/2addr v5, v1

    if-gt v2, v5, :cond_0

    .line 105
    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    new-instance v4, Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;

    .line 106
    sget-object v5, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->INSTANCE:Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;

    add-int/lit8 v6, v1, 0x2

    invoke-virtual {v5, p1, v6}, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->readU16([BI)I

    move-result v5

    add-int/lit8 v6, v1, 0x4

    add-int/2addr v1, v2

    .line 109
    invoke-static {p1, v6, v1}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v2

    .line 105
    invoke-direct {v4, v5, v2}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;-><init>(I[B)V

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 103
    :cond_0
    new-instance p1, Lcom/shilapi/xcertplay/iap2/wire/Iap2ProtocolException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid CSM parameter length "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, v3, v4, v3}, Lcom/shilapi/xcertplay/iap2/wire/Iap2ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1

    .line 99
    :cond_1
    new-instance p1, Lcom/shilapi/xcertplay/iap2/wire/Iap2ProtocolException;

    const-string v0, "Truncated CSM parameter header"

    invoke-direct {p1, v0, v3, v4, v3}, Lcom/shilapi/xcertplay/iap2/wire/Iap2ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1

    .line 114
    :cond_2
    new-instance p1, Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;

    check-cast v0, Ljava/util/List;

    invoke-direct {p1, v0, v3}, Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;-><init>(Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method
