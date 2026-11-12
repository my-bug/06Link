.class public final Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader$Companion;
.super Ljava/lang/Object;
.source "Iap2BodyReader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\tJ\u0016\u0010\u0004\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader$Companion;",
        "",
        "<init>",
        "()V",
        "of",
        "Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;",
        "frame",
        "Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;",
        "body",
        "Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;",
        "endpoint",
        "Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoint;",
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

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final of(Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoint;Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;
    .locals 2

    const-string v0, "endpoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "frame"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;->getMessageId()I

    move-result v0

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoint;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 193
    invoke-virtual {p0, p2}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader$Companion;->of(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;

    move-result-object p1

    return-object p1

    .line 191
    :cond_0
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;->getMessageId()I

    move-result p2

    const/16 v0, 0x10

    invoke-static {v0}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "toString(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoint;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Frame 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 190
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final of(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;
    .locals 2

    const-string v0, "frame"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    new-instance v0, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;

    sget-object v1, Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;->Companion:Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList$Companion;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;->getPayload()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList$Companion;->parse([B)Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;-><init>(Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final of(Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;
    .locals 2

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    new-instance v0, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;-><init>(Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
