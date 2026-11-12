.class public final Lcom/shilapi/xcertplay/iap2/message/Iap2AuthenticationMessages;
.super Ljava/lang/Object;
.source "Iap2Messages.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIap2Messages.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Iap2Messages.kt\ncom/shilapi/xcertplay/iap2/message/Iap2AuthenticationMessages\n+ 2 Iap2Messages.kt\ncom/shilapi/xcertplay/iap2/message/Iap2Messages\n*L\n1#1,322:1\n16#2:323\n21#2:324\n16#2:325\n*S KotlinDebug\n*F\n+ 1 Iap2Messages.kt\ncom/shilapi/xcertplay/iap2/message/Iap2AuthenticationMessages\n*L\n213#1:323\n232#1:324\n239#1:325\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\n\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0007J\u0016\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u0007J\u000e\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u0007J\u000e\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u0005\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/iap2/message/Iap2AuthenticationMessages;",
        "",
        "<init>",
        "()V",
        "accessoryCertificate",
        "Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;",
        "certificate",
        "",
        "accessoryCertificateBody",
        "body",
        "baaCertificatePackage",
        "leaf",
        "intermediate",
        "response",
        "signature",
        "challenge",
        "frame",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/iap2/message/Iap2AuthenticationMessages;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/iap2/message/Iap2AuthenticationMessages;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/iap2/message/Iap2AuthenticationMessages;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/iap2/message/Iap2AuthenticationMessages;->INSTANCE:Lcom/shilapi/xcertplay/iap2/message/Iap2AuthenticationMessages;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accessoryCertificate([B)Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;
    .locals 2

    const-string v0, "certificate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    sget-object v0, Lcom/shilapi/xcertplay/iap2/message/Iap2Messages;->INSTANCE:Lcom/shilapi/xcertplay/iap2/message/Iap2Messages;

    sget-object v0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoints;->INSTANCE:Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoints;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoints;->getAUTHENTICATION_CERTIFICATE()Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoint;

    move-result-object v0

    .line 323
    sget-object v1, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->Companion:Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder$Companion;

    invoke-virtual {v1, v0}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder$Companion;->of(Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoint;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    move-result-object v0

    const/4 v1, 0x0

    .line 214
    invoke-virtual {v0, v1, p1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->bytes(I[B)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    .line 323
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->build()Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;

    move-result-object p1

    return-object p1
.end method

.method public final accessoryCertificateBody([B)Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;
    .locals 2

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    sget-object v0, Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;->Companion:Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList$Companion;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList$Companion;->parse([B)Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;

    .line 223
    new-instance v0, Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;

    sget-object v1, Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoints;->INSTANCE:Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoints;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoints;->getAUTHENTICATION_CERTIFICATE()Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoint;->getId()I

    move-result v1

    invoke-direct {v0, v1, p1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;-><init>(I[B)V

    return-object v0
.end method

.method public final baaCertificatePackage([B[B)Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;
    .locals 2

    const-string v0, "leaf"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intermediate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    sget-object v0, Lcom/shilapi/xcertplay/iap2/message/Iap2Messages;->INSTANCE:Lcom/shilapi/xcertplay/iap2/message/Iap2Messages;

    sget-object v0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoints;->INSTANCE:Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoints;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoints;->getAUTHENTICATION_CERTIFICATE()Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoint;->getId()I

    move-result v0

    .line 324
    sget-object v1, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->Companion:Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder$Companion;

    invoke-virtual {v1, v0}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder$Companion;->opaque(I)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    move-result-object v0

    const/4 v1, 0x0

    .line 233
    invoke-virtual {v0, v1, p1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->bytes(I[B)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    const/4 p1, 0x1

    .line 234
    invoke-virtual {v0, p1, p1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->u8(II)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    const/4 p1, 0x2

    .line 235
    invoke-virtual {v0, p1, p2}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->bytes(I[B)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    .line 324
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->build()Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;

    move-result-object p1

    return-object p1
.end method

.method public final challenge(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)[B
    .locals 2

    const-string v0, "frame"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;->getMessageId()I

    move-result v0

    sget-object v1, Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoints;->INSTANCE:Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoints;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoints;->getREQUEST_AUTHENTICATION_CHALLENGE_RESPONSE()Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoint;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 247
    sget-object v0, Lcom/shilapi/xcertplay/iap2/message/Iap2Messages;->INSTANCE:Lcom/shilapi/xcertplay/iap2/message/Iap2Messages;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/iap2/message/Iap2Messages;->reader(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->bytes(I)[B

    move-result-object p1

    return-object p1

    .line 245
    :cond_0
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;->getMessageId()I

    move-result p1

    const/16 v0, 0x10

    invoke-static {v0}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "toString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected RequestAuthenticationChallengeResponse, got 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 244
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final response([B)Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;
    .locals 2

    const-string/jumbo v0, "signature"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    sget-object v0, Lcom/shilapi/xcertplay/iap2/message/Iap2Messages;->INSTANCE:Lcom/shilapi/xcertplay/iap2/message/Iap2Messages;

    sget-object v0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoints;->INSTANCE:Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoints;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoints;->getAUTHENTICATION_RESPONSE()Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoint;

    move-result-object v0

    .line 325
    sget-object v1, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->Companion:Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder$Companion;

    invoke-virtual {v1, v0}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder$Companion;->of(Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoint;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    move-result-object v0

    const/4 v1, 0x0

    .line 240
    invoke-virtual {v0, v1, p1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->bytes(I[B)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    .line 325
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->build()Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;

    move-result-object p1

    return-object p1
.end method
