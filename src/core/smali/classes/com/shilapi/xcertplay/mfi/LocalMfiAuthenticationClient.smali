.class public final Lcom/shilapi/xcertplay/mfi/LocalMfiAuthenticationClient;
.super Ljava/lang/Object;
.source "LocalMfiAuthenticationClient.kt"

# interfaces
.implements Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/mfi/LocalMfiAuthenticationClient$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLocalMfiAuthenticationClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocalMfiAuthenticationClient.kt\ncom/shilapi/xcertplay/mfi/LocalMfiAuthenticationClient\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,106:1\n1#2:107\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010\u0002\n\u0002\u0008\t\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B-\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0008\u0010\u000c\u001a\u00020\u0008H\u0016J\u0010\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u0008H\u0016J\u0010\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0005H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/mfi/LocalMfiAuthenticationClient;",
        "Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;",
        "privateKey",
        "Ljava/security/PrivateKey;",
        "certificate",
        "",
        "onSignature",
        "Lkotlin/Function1;",
        "",
        "",
        "<init>",
        "(Ljava/security/PrivateKey;[BLkotlin/jvm/functions/Function1;)V",
        "protocolMajor",
        "readCertificate",
        "maximumOutputLength",
        "signChallenge",
        "challenge",
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
.field public static final Companion:Lcom/shilapi/xcertplay/mfi/LocalMfiAuthenticationClient$Companion;

.field public static final DIRECTORY:Ljava/lang/String; = "offline-mfi"

.field private static final MAX_FILE_BYTES:I = 0x4000


# instance fields
.field private final certificate:[B

.field private final onSignature:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final privateKey:Ljava/security/PrivateKey;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/mfi/LocalMfiAuthenticationClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/mfi/LocalMfiAuthenticationClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/mfi/LocalMfiAuthenticationClient;->Companion:Lcom/shilapi/xcertplay/mfi/LocalMfiAuthenticationClient$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/security/PrivateKey;[BLkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/PrivateKey;",
            "[B",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/shilapi/xcertplay/mfi/LocalMfiAuthenticationClient;->privateKey:Ljava/security/PrivateKey;

    .line 20
    iput-object p2, p0, Lcom/shilapi/xcertplay/mfi/LocalMfiAuthenticationClient;->certificate:[B

    .line 21
    iput-object p3, p0, Lcom/shilapi/xcertplay/mfi/LocalMfiAuthenticationClient;->onSignature:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/security/PrivateKey;[BLkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/mfi/LocalMfiAuthenticationClient;-><init>(Ljava/security/PrivateKey;[BLkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public baaCertificates()Lcom/shilapi/xcertplay/mfi/BaaCertificatePair;
    .locals 1

    .line 18
    invoke-static {p0}, Lcom/shilapi/xcertplay/mfi/MfiAuthenticator$-CC;->$default$baaCertificates(Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;)Lcom/shilapi/xcertplay/mfi/BaaCertificatePair;

    move-result-object v0

    return-object v0
.end method

.method public getCertificateType()Lcom/shilapi/xcertplay/mfi/MfiCertificateType;
    .locals 1

    .line 18
    invoke-static {p0}, Lcom/shilapi/xcertplay/mfi/MfiAuthenticator$-CC;->$default$getCertificateType(Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;)Lcom/shilapi/xcertplay/mfi/MfiCertificateType;

    move-result-object v0

    return-object v0
.end method

.method public protocolMajor()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public readCertificate(I)[B
    .locals 2

    if-lez p1, :cond_0

    .line 26
    iget-object v0, p0, Lcom/shilapi/xcertplay/mfi/LocalMfiAuthenticationClient;->certificate:[B

    array-length v1, v0

    if-gt v1, p1, :cond_0

    .line 29
    array-length p1, v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    const-string v0, "copyOf(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Local certificate exceeds the requested output limit"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public signChallenge([B)[B
    .locals 3

    const-string v0, "challenge"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 35
    const-string v0, "NONEwithECDSA"

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/shilapi/xcertplay/mfi/LocalMfiAuthenticationClient;->privateKey:Ljava/security/PrivateKey;

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 37
    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V

    .line 38
    sget-object v1, Lcom/shilapi/xcertplay/mfi/LocalMfiAuthenticationClient;->Companion:Lcom/shilapi/xcertplay/mfi/LocalMfiAuthenticationClient$Companion;

    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v0

    const-string/jumbo v2, "sign(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/shilapi/xcertplay/mfi/LocalMfiAuthenticationClient$Companion;->derToRaw$shared_release([B)[B

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/shilapi/xcertplay/mfi/LocalMfiAuthenticationClient;->onSignature:Lkotlin/jvm/functions/Function1;

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 33
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Local MFi v3 expects a 32-byte digest"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
