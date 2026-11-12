.class public final Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient;
.super Ljava/lang/Object;
.source "RemoteMfiAuthenticationClient.kt"

# interfaces
.implements Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$CertificateInfo;,
        Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$Companion;,
        Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$HttpResponse;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRemoteMfiAuthenticationClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemoteMfiAuthenticationClient.kt\ncom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,357:1\n1#2:358\n1088#3,2:359\n*S KotlinDebug\n*F\n+ 1 RemoteMfiAuthenticationClient.kt\ncom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient\n*L\n264#1:359,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u0000 82\u00020\u0001:\u0003678B9\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0006\u0010\u0011\u001a\u00020\u0012J\u0008\u0010\u0013\u001a\u00020\u0006H\u0016J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0006H\u0016J\u0008\u0010\u001b\u001a\u00020\u001cH\u0016J\u0010\u0010\u001d\u001a\u00020\u00192\u0006\u0010\u001e\u001a\u00020\u0019H\u0016J\u0008\u0010\u001f\u001a\u00020\u0010H\u0002J\u0010\u0010 \u001a\u00020\u001c2\u0006\u0010!\u001a\u00020\u0019H\u0002J\u0018\u0010\"\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\u00192\u0006\u0010$\u001a\u00020\u0006H\u0002J*\u0010%\u001a\u00020\u00032\u0006\u0010&\u001a\u00020\u00032\u0006\u0010\'\u001a\u00020\u00032\u0008\u0010(\u001a\u0004\u0018\u00010\u00032\u0006\u0010)\u001a\u00020*H\u0002J\"\u0010+\u001a\u00020,2\u0006\u0010&\u001a\u00020\u00032\u0006\u0010\'\u001a\u00020\u00032\u0008\u0010(\u001a\u0004\u0018\u00010\u0003H\u0002J\u0010\u0010-\u001a\u00020\u00032\u0006\u0010.\u001a\u00020/H\u0002J\u0018\u00100\u001a\u00020\u00192\u0006\u0010!\u001a\u00020\u00032\u0006\u00101\u001a\u00020\u0003H\u0002J\u0010\u00102\u001a\u00020\u00192\u0006\u00103\u001a\u00020\u0003H\u0002J\u0010\u00104\u001a\u00020*2\u0006\u00105\u001a\u00020\u0006H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u00020\u00158VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u00069"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient;",
        "Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;",
        "serverAddress",
        "",
        "token",
        "connectTimeoutMillis",
        "",
        "readTimeoutMillis",
        "maximumAttempts",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;III)V",
        "baseAddress",
        "bearerToken",
        "operationLock",
        "",
        "certificateInfo",
        "Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$CertificateInfo;",
        "reset",
        "",
        "protocolMajor",
        "certificateType",
        "Lcom/shilapi/xcertplay/mfi/MfiCertificateType;",
        "getCertificateType",
        "()Lcom/shilapi/xcertplay/mfi/MfiCertificateType;",
        "readCertificate",
        "",
        "maximumOutputLength",
        "baaCertificates",
        "Lcom/shilapi/xcertplay/mfi/BaaCertificatePair;",
        "signChallenge",
        "challenge",
        "loadCertificateInfo",
        "parseBaaCertificatePackage",
        "encoded",
        "readU32",
        "bytes",
        "offset",
        "request",
        "method",
        "path",
        "requestBody",
        "retry",
        "",
        "execute",
        "Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$HttpResponse;",
        "readUtf8Limited",
        "input",
        "Ljava/io/InputStream;",
        "decodeBase64",
        "field",
        "decodeSha256",
        "hex",
        "isRetryable",
        "statusCode",
        "CertificateInfo",
        "HttpResponse",
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
.field private static final BAA_PACKAGE_HEADER_BYTES:I = 0x8

.field private static final CERTIFICATE_PATH:Ljava/lang/String; = "/mfi/certificate"

.field public static final Companion:Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$Companion;

.field private static final DEFAULT_CONNECT_TIMEOUT_MILLIS:I = 0x1388

.field private static final DEFAULT_MAXIMUM_ATTEMPTS:I = 0x2

.field private static final DEFAULT_READ_TIMEOUT_MILLIS:I = 0x2710

.field private static final JSON_CONTENT_TYPE:Ljava/lang/String; = "application/json; charset=utf-8"

.field private static final MAXIMUM_CHALLENGE_BYTES:I = 0x80

.field private static final MAXIMUM_HTTP_BODY_BYTES:I = 0x200000

.field private static final MAXIMUM_RESPONSE_BYTES:I = 0xfff5

.field private static final MINIMUM_CHALLENGE_BYTES:I = 0x1

.field private static final RESET_PATH:Ljava/lang/String; = "/mfi/reset"

.field private static final SHA256_BYTES:I = 0x20

.field private static final SHA256_HEX_LENGTH:I = 0x40

.field private static final SIGN_PATH:Ljava/lang/String; = "/mfi/sign"


# instance fields
.field private final baseAddress:Ljava/lang/String;

.field private final bearerToken:Ljava/lang/String;

.field private certificateInfo:Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$CertificateInfo;

.field private final connectTimeoutMillis:I

.field private final maximumAttempts:I

.field private final operationLock:Ljava/lang/Object;

.field private final readTimeoutMillis:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient;->Companion:Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 3

    const-string v0, "serverAddress"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p3, p0, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient;->connectTimeoutMillis:I

    .line 18
    iput p4, p0, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient;->readTimeoutMillis:I

    .line 19
    iput p5, p0, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient;->maximumAttempts:I

    .line 34
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x2f

    aput-char v2, v0, v1

    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->trimEnd(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient;->baseAddress:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 35
    move-object v2, p2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    iput-object p2, p0, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient;->bearerToken:Ljava/lang/String;

    .line 36
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient;->operationLock:Ljava/lang/Object;

    .line 40
    move-object p2, p1

    check-cast p2, Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_6

    .line 41
    const-string p2, "http://"

    const/4 v2, 0x2

    invoke-static {p1, p2, v1, v2, v0}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "https://"

    invoke-static {p1, p2, v1, v2, v0}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Remote MFI server address must use http:// or https://"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    if-lez p3, :cond_5

    if-lez p4, :cond_4

    if-lez p5, :cond_3

    return-void

    .line 46
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maximumAttempts must be positive"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 45
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "readTimeoutMillis must be positive"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "connectTimeoutMillis must be positive"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Remote MFI server address must not be blank"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    const/4 p2, 0x0

    :cond_0
    move-object v2, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    const/16 p3, 0x1388

    const/16 v3, 0x1388

    goto :goto_0

    :cond_1
    move v3, p3

    :goto_0
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    const/16 p4, 0x2710

    const/16 v4, 0x2710

    goto :goto_1

    :cond_2
    move v4, p4

    :goto_1
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_3

    const/4 p5, 0x2

    const/4 v5, 0x2

    goto :goto_2

    :cond_3
    move v5, p5

    :goto_2
    move-object v0, p0

    move-object v1, p1

    .line 14
    invoke-direct/range {v0 .. v5}, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    return-void
.end method

.method private final decodeBase64(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 3

    .line 258
    :try_start_0
    invoke-static {}, Lj$/util/Base64;->getDecoder()Lj$/util/Base64$Decoder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lj$/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object p1

    .line 257
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 260
    new-instance v0, Lcom/shilapi/xcertplay/mfi/MfiInvalidDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Remote "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not valid base64"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v0, p2, p1}, Lcom/shilapi/xcertplay/mfi/MfiInvalidDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final decodeSha256(Ljava/lang/String;)[B
    .locals 6

    .line 264
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 359
    :goto_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/16 v4, 0x10

    if-ge v2, v3, :cond_0

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 264
    invoke-static {v3, v4}, Lkotlin/text/CharsKt;->digitToIntOrNull(CI)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x20

    .line 267
    new-array v2, v0, [B

    :goto_1
    if-ge v1, v0, :cond_1

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v5, v3, 0x2

    .line 268
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "substring(...)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v2

    .line 265
    :cond_2
    new-instance p1, Lcom/shilapi/xcertplay/mfi/MfiInvalidDataException;

    const-string v0, "certificateSha256 must contain 64 hexadecimal characters"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p1, v0, v1, v2, v1}, Lcom/shilapi/xcertplay/mfi/MfiInvalidDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private final execute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$HttpResponse;
    .locals 5

    .line 216
    const-string v0, "application/json; charset=utf-8"

    .line 0
    const-string v1, "Bearer "

    .line 216
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient;->baseAddress:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p2

    const-string v2, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/net/HttpURLConnection;

    .line 218
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 219
    iget p1, p0, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient;->connectTimeoutMillis:I

    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 220
    iget p1, p0, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient;->readTimeoutMillis:I

    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 p1, 0x0

    .line 221
    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 222
    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 223
    const-string p1, "Accept"

    invoke-virtual {p2, p1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object p1, p0, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient;->bearerToken:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string v2, "Authorization"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    if-eqz p3, :cond_1

    .line 226
    sget-object v1, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v2, "UTF_8"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p3

    const-string v1, "getBytes(...)"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 227
    invoke-virtual {p2, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 228
    const-string v1, "Content-Type"

    invoke-virtual {p2, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    array-length v0, p3

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 230
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    move-object v1, v0

    check-cast v1, Ljava/io/OutputStream;

    invoke-virtual {v1, p3}, Ljava/io/OutputStream;->write([B)V

    sget-object p3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p3

    :try_start_4
    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3

    .line 232
    :cond_1
    :goto_0
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p3

    const/16 v0, 0xc8

    if-gt v0, p3, :cond_2

    const/16 v0, 0x12c

    if-ge p3, v0, :cond_2

    .line 233
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_3

    .line 234
    check-cast v0, Ljava/io/Closeable;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :try_start_5
    move-object v1, v0

    check-cast v1, Ljava/io/InputStream;

    invoke-direct {p0, v1}, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient;->readUtf8Limited(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-object p1, v1

    goto :goto_2

    :catchall_2
    move-exception p1

    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p3

    :try_start_8
    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3

    :cond_3
    :goto_2
    if-nez p1, :cond_4

    const-string p1, ""

    .line 235
    :cond_4
    new-instance v0, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$HttpResponse;

    invoke-direct {v0, p3, p1}, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$HttpResponse;-><init>(ILjava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 237
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v0

    :catchall_4
    move-exception p1

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    throw p1
.end method

.method private final isRetryable(I)Z
    .locals 1

    const/16 v0, 0x198

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1ad

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1f4

    if-gt v0, p1, :cond_0

    const/16 v0, 0x258

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private final loadCertificateInfo()Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$CertificateInfo;
    .locals 11

    .line 110
    iget-object v0, p0, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient;->certificateInfo:Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$CertificateInfo;

    if-eqz v0, :cond_0

    return-object v0

    .line 113
    :cond_0
    const-string v0, "/mfi/certificate"

    const/4 v1, 0x1

    .line 111
    const-string v2, "GET"

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v3, v1}, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 117
    sget-object v1, Lcom/shilapi/xcertplay/mfi/RemoteMfiJson;->INSTANCE:Lcom/shilapi/xcertplay/mfi/RemoteMfiJson;

    const-string v2, "protocolMajor"

    invoke-virtual {v1, v0, v2}, Lcom/shilapi/xcertplay/mfi/RemoteMfiJson;->integer(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const/4 v1, 0x2

    if-ltz v6, :cond_9

    const/16 v2, 0x100

    if-ge v6, v2, :cond_9

    .line 121
    sget-object v2, Lcom/shilapi/xcertplay/mfi/RemoteMfiJson;->INSTANCE:Lcom/shilapi/xcertplay/mfi/RemoteMfiJson;

    const-string/jumbo v4, "type"

    invoke-virtual {v2, v0, v4}, Lcom/shilapi/xcertplay/mfi/RemoteMfiJson;->optionalString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "mfi"

    if-nez v2, :cond_1

    move-object v2, v4

    .line 122
    :cond_1
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "toLowerCase(...)"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v2, Lcom/shilapi/xcertplay/mfi/MfiCertificateType;->MFI:Lcom/shilapi/xcertplay/mfi/MfiCertificateType;

    :goto_0
    move-object v5, v2

    goto :goto_1

    .line 124
    :cond_2
    const-string v4, "baa"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    sget-object v2, Lcom/shilapi/xcertplay/mfi/MfiCertificateType;->BAA:Lcom/shilapi/xcertplay/mfi/MfiCertificateType;

    goto :goto_0

    .line 128
    :goto_1
    sget-object v2, Lcom/shilapi/xcertplay/mfi/RemoteMfiJson;->INSTANCE:Lcom/shilapi/xcertplay/mfi/RemoteMfiJson;

    const-string v4, "certificate"

    invoke-virtual {v2, v0, v4}, Lcom/shilapi/xcertplay/mfi/RemoteMfiJson;->string(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 127
    invoke-direct {p0, v2, v4}, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient;->decodeBase64(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 131
    array-length v4, v2

    if-eqz v4, :cond_7

    array-length v4, v2

    const v7, 0xfff5

    if-gt v4, v7, :cond_7

    .line 134
    sget-object v4, Lcom/shilapi/xcertplay/mfi/RemoteMfiJson;->INSTANCE:Lcom/shilapi/xcertplay/mfi/RemoteMfiJson;

    const-string v8, "certificateSha256"

    invoke-virtual {v4, v0, v8}, Lcom/shilapi/xcertplay/mfi/RemoteMfiJson;->string(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient;->decodeSha256(Ljava/lang/String;)[B

    move-result-object v0

    .line 135
    const-string v4, "SHA-256"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v4

    .line 136
    invoke-static {v0, v4}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 139
    sget-object v0, Lcom/shilapi/xcertplay/mfi/MfiCertificateType;->BAA:Lcom/shilapi/xcertplay/mfi/MfiCertificateType;

    if-ne v5, v0, :cond_3

    .line 140
    invoke-direct {p0, v2}, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient;->parseBaaCertificatePackage([B)Lcom/shilapi/xcertplay/mfi/BaaCertificatePair;

    move-result-object v0

    move-object v9, v0

    goto :goto_2

    :cond_3
    move-object v9, v3

    .line 144
    :goto_2
    const-string v0, "copyOf(...)"

    if-eqz v9, :cond_4

    .line 145
    sget-object v4, Lcom/shilapi/xcertplay/iap2/message/Iap2AuthenticationMessages;->INSTANCE:Lcom/shilapi/xcertplay/iap2/message/Iap2AuthenticationMessages;

    .line 146
    invoke-virtual {v9}, Lcom/shilapi/xcertplay/mfi/BaaCertificatePair;->getLeaf()[B

    move-result-object v8

    .line 147
    invoke-virtual {v9}, Lcom/shilapi/xcertplay/mfi/BaaCertificatePair;->getIntermediate()[B

    move-result-object v10

    .line 145
    invoke-virtual {v4, v8, v10}, Lcom/shilapi/xcertplay/iap2/message/Iap2AuthenticationMessages;->baaCertificatePackage([B[B)Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;

    move-result-object v4

    .line 148
    invoke-virtual {v4}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;->getPayload()[B

    move-result-object v4

    goto :goto_3

    .line 150
    :cond_4
    array-length v4, v2

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_3
    move-object v8, v4

    .line 152
    array-length v4, v8

    if-gt v4, v7, :cond_5

    .line 155
    new-instance v4, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$CertificateInfo;

    .line 158
    array-length v1, v2

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v7

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    invoke-direct/range {v4 .. v9}, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$CertificateInfo;-><init>(Lcom/shilapi/xcertplay/mfi/MfiCertificateType;I[B[BLcom/shilapi/xcertplay/mfi/BaaCertificatePair;)V

    .line 161
    iput-object v4, p0, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient;->certificateInfo:Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$CertificateInfo;

    return-object v4

    .line 153
    :cond_5
    new-instance v0, Lcom/shilapi/xcertplay/mfi/MfiInvalidDataException;

    const-string v2, "Remote iAP2 certificate payload is too large"

    invoke-direct {v0, v2, v3, v1, v3}, Lcom/shilapi/xcertplay/mfi/MfiInvalidDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    .line 137
    :cond_6
    new-instance v0, Lcom/shilapi/xcertplay/mfi/MfiInvalidDataException;

    const-string v2, "Remote certificate SHA-256 does not match certificateSha256"

    invoke-direct {v0, v2, v3, v1, v3}, Lcom/shilapi/xcertplay/mfi/MfiInvalidDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    .line 132
    :cond_7
    new-instance v0, Lcom/shilapi/xcertplay/mfi/MfiInvalidDataException;

    array-length v2, v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid remote certificate length "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3, v1, v3}, Lcom/shilapi/xcertplay/mfi/MfiInvalidDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    .line 125
    :cond_8
    new-instance v0, Lcom/shilapi/xcertplay/mfi/MfiInvalidDataException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unsupported remote MFI certificate type \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3, v1, v3}, Lcom/shilapi/xcertplay/mfi/MfiInvalidDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    .line 119
    :cond_9
    new-instance v0, Lcom/shilapi/xcertplay/mfi/MfiInvalidDataException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Invalid remote MFI protocol major "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3, v1, v3}, Lcom/shilapi/xcertplay/mfi/MfiInvalidDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method private final parseBaaCertificatePackage([B)Lcom/shilapi/xcertplay/mfi/BaaCertificatePair;
    .locals 6

    .line 165
    array-length v0, p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-lt v0, v3, :cond_1

    const/4 v0, 0x0

    .line 168
    invoke-direct {p0, p1, v0}, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient;->readU32([BI)I

    move-result v0

    const/4 v4, 0x4

    .line 169
    invoke-direct {p0, p1, v4}, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient;->readU32([BI)I

    move-result v4

    if-lez v0, :cond_0

    if-lez v4, :cond_0

    add-int/2addr v0, v3

    add-int/2addr v4, v0

    .line 171
    array-length v5, p1

    if-ne v4, v5, :cond_0

    .line 175
    new-instance v1, Lcom/shilapi/xcertplay/mfi/BaaCertificatePair;

    .line 176
    invoke-static {p1, v3, v0}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v2

    .line 177
    array-length v3, p1

    invoke-static {p1, v0, v3}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object p1

    .line 175
    invoke-direct {v1, v2, p1}, Lcom/shilapi/xcertplay/mfi/BaaCertificatePair;-><init>([B[B)V

    return-object v1

    .line 172
    :cond_0
    new-instance p1, Lcom/shilapi/xcertplay/mfi/MfiInvalidDataException;

    const-string v0, "BAA certificate package has invalid lengths"

    invoke-direct {p1, v0, v2, v1, v2}, Lcom/shilapi/xcertplay/mfi/MfiInvalidDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1

    .line 166
    :cond_1
    new-instance p1, Lcom/shilapi/xcertplay/mfi/MfiInvalidDataException;

    const-string v0, "BAA certificate package is too short"

    invoke-direct {p1, v0, v2, v1, v2}, Lcom/shilapi/xcertplay/mfi/MfiInvalidDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1
.end method

.method private final readU32([BI)I
    .locals 2

    .line 182
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p2, 0x1

    .line 183
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    .line 184
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x3

    .line 185
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    return p1
.end method

.method private final readUtf8Limited(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6

    .line 242
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x2000

    .line 243
    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 246
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-ltz v4, :cond_1

    add-int/2addr v3, v4

    const/high16 v5, 0x200000

    if-gt v3, v5, :cond_0

    .line 252
    invoke-virtual {v0, v1, v2, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 250
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Remote MFI response exceeds 2097152 bytes"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 254
    :cond_1
    sget-object p1, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "toString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    if-eqz p4, :cond_0

    .line 194
    iget p4, p0, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient;->maximumAttempts:I

    goto :goto_0

    :cond_0
    const/4 p4, 0x1

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    :goto_1
    if-ge v1, p4, :cond_6

    .line 197
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient;->execute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$HttpResponse;

    move-result-object v2

    .line 198
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$HttpResponse;->getStatusCode()I

    move-result v3

    const/16 v4, 0xc8

    if-gt v4, v3, :cond_1

    const/16 v4, 0x12c

    if-ge v3, v4, :cond_1

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$HttpResponse;->getBody()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 199
    :cond_1
    sget-object v3, Lcom/shilapi/xcertplay/mfi/RemoteMfiJson;->INSTANCE:Lcom/shilapi/xcertplay/mfi/RemoteMfiJson;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$HttpResponse;->getBody()Ljava/lang/String;

    move-result-object v4

    const-string v5, "detail"

    invoke-virtual {v3, v4, v5}, Lcom/shilapi/xcertplay/mfi/RemoteMfiJson;->optionalString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 200
    move-object v4, v3

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    move-object v3, v0

    :goto_2
    if-eqz v3, :cond_3

    goto :goto_3

    .line 201
    :cond_3
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$HttpResponse;->getStatusCode()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HTTP "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 202
    :goto_3
    new-instance v4, Lcom/shilapi/xcertplay/mfi/RemoteMfiHttpException;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$HttpResponse;->getStatusCode()I

    move-result v5

    invoke-direct {v4, v5, v3}, Lcom/shilapi/xcertplay/mfi/RemoteMfiHttpException;-><init>(ILjava/lang/String;)V

    add-int/lit8 v3, v1, 0x1

    if-ge v3, p4, :cond_4

    .line 203
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$HttpResponse;->getStatusCode()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient;->isRetryable(I)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v2, v4

    goto :goto_4

    :cond_4
    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    add-int/lit8 v3, v1, 0x1

    if-ge v3, p4, :cond_5

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 208
    :cond_5
    new-instance p1, Lcom/shilapi/xcertplay/mfi/RemoteMfiException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Remote MFI request failed: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast v2, Ljava/lang/Throwable;

    invoke-direct {p1, p2, v2}, Lcom/shilapi/xcertplay/mfi/RemoteMfiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 212
    :cond_6
    new-instance p1, Lcom/shilapi/xcertplay/mfi/RemoteMfiException;

    const-string p2, "Remote MFI request failed"

    check-cast v2, Ljava/lang/Throwable;

    invoke-direct {p1, p2, v2}, Lcom/shilapi/xcertplay/mfi/RemoteMfiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method


# virtual methods
.method public baaCertificates()Lcom/shilapi/xcertplay/mfi/BaaCertificatePair;
    .locals 5

    .line 83
    iget-object v0, p0, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient;->operationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 84
    :try_start_0
    invoke-direct {p0}, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient;->loadCertificateInfo()Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$CertificateInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$CertificateInfo;->getBaaCertificates()Lcom/shilapi/xcertplay/mfi/BaaCertificatePair;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 83
    monitor-exit v0

    return-object v1

    .line 85
    :cond_0
    :try_start_1
    new-instance v1, Lcom/shilapi/xcertplay/mfi/MfiInvalidDataException;

    const-string v2, "Remote MFI service is not using BAA certificates"

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3, v4}, Lcom/shilapi/xcertplay/mfi/MfiInvalidDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    .line 83
    monitor-exit v0

    throw v1
.end method

.method public getCertificateType()Lcom/shilapi/xcertplay/mfi/MfiCertificateType;
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient;->operationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 67
    :try_start_0
    invoke-direct {p0}, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient;->loadCertificateInfo()Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$CertificateInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$CertificateInfo;->getType()Lcom/shilapi/xcertplay/mfi/MfiCertificateType;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public protocolMajor()I
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient;->operationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 62
    :try_start_0
    invoke-direct {p0}, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient;->loadCertificateInfo()Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$CertificateInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$CertificateInfo;->getProtocolMajor()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public readCertificate(I)[B
    .locals 5

    const-string v0, "Remote certificate length "

    .line 70
    iget-object v1, p0, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient;->operationLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    if-gt v2, p1, :cond_1

    const v3, 0xfff6

    if-ge p1, v3, :cond_1

    .line 74
    :try_start_0
    invoke-direct {p0}, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient;->loadCertificateInfo()Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$CertificateInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$CertificateInfo;->getIap2Certificate()[B

    move-result-object v3

    .line 75
    array-length v4, v3

    if-gt v2, v4, :cond_0

    if-gt v4, p1, :cond_0

    .line 80
    array-length p1, v3

    invoke-static {v3, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    const-string v0, "copyOf(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit v1

    return-object p1

    .line 76
    :cond_0
    :try_start_1
    new-instance v2, Lcom/shilapi/xcertplay/mfi/MfiInvalidDataException;

    .line 77
    array-length v3, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is outside 1.."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v3, 0x0

    .line 76
    invoke-direct {v2, p1, v3, v0, v3}, Lcom/shilapi/xcertplay/mfi/MfiInvalidDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v2

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 72
    :cond_1
    const-string p1, "maximumOutputLength must be in 1..65525"

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    :goto_0
    monitor-exit v1

    throw p1
.end method

.method public final reset()V
    .locals 5

    .line 50
    iget-object v0, p0, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient;->operationLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 51
    :try_start_0
    iput-object v1, p0, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient;->certificateInfo:Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$CertificateInfo;

    .line 53
    const-string v1, "POST"

    .line 54
    const-string v2, "/mfi/reset"

    .line 55
    const-string/jumbo v3, "{}"

    const/4 v4, 0x0

    .line 52
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 59
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public signChallenge([B)[B
    .locals 10

    const-string v0, "Invalid remote signature length "

    const-string/jumbo v1, "{\"challenge\":\""

    const-string v2, "challenge"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iget-object v2, p0, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient;->operationLock:Ljava/lang/Object;

    monitor-enter v2

    .line 89
    :try_start_0
    array-length v3, p1

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-gt v5, v3, :cond_1

    const/16 v7, 0x81

    if-ge v3, v7, :cond_1

    .line 94
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "toString(...)"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lj$/util/Base64;->getEncoder()Lj$/util/Base64$Encoder;

    move-result-object v7

    array-length v8, p1

    invoke-static {p1, v8}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    const-string v8, "copyOf(...)"

    invoke-static {p1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Lj$/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object p1

    .line 97
    const-string v7, "POST"

    .line 98
    const-string v8, "/mfi/sign"

    .line 99
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\",\"requestId\":\""

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"}"

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 96
    invoke-direct {p0, v7, v8, p1, v5}, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 102
    sget-object v1, Lcom/shilapi/xcertplay/mfi/RemoteMfiJson;->INSTANCE:Lcom/shilapi/xcertplay/mfi/RemoteMfiJson;

    const-string/jumbo v3, "signature"

    invoke-virtual {v1, p1, v3}, Lcom/shilapi/xcertplay/mfi/RemoteMfiJson;->string(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "signature"

    invoke-direct {p0, p1, v1}, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient;->decodeBase64(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    .line 103
    array-length v1, p1

    if-eqz v1, :cond_0

    array-length v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v3, 0xfff5

    if-gt v1, v3, :cond_0

    .line 88
    monitor-exit v2

    return-object p1

    .line 104
    :cond_0
    :try_start_1
    new-instance v1, Lcom/shilapi/xcertplay/mfi/MfiInvalidDataException;

    array-length p1, p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v6, v4, v6}, Lcom/shilapi/xcertplay/mfi/MfiInvalidDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1

    .line 90
    :cond_1
    new-instance p1, Lcom/shilapi/xcertplay/mfi/MfiInvalidDataException;

    .line 91
    const-string v0, "challenge must be 1..128 bytes"

    .line 90
    invoke-direct {p1, v0, v6, v4, v6}, Lcom/shilapi/xcertplay/mfi/MfiInvalidDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 88
    monitor-exit v2

    throw p1
.end method
