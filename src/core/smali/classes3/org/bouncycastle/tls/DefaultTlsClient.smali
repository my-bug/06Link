.class public abstract Lorg/bouncycastle/tls/DefaultTlsClient;
.super Lorg/bouncycastle/tls/AbstractTlsClient;


# static fields
.field private static final DEFAULT_CIPHER_SUITES:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/tls/DefaultTlsClient;->DEFAULT_CIPHER_SUITES:[I

    return-void

    :array_0
    .array-data 4
        0x1303
        0x1301
        0xcca9
        0xc02b
        0xc023
        0xc009
        0xcca8
        0xc02f
        0xc027
        0xc013
        0xccaa
        0x9e
        0x67
        0x33
    .end array-data
.end method

.method public constructor <init>(Lorg/bouncycastle/tls/crypto/TlsCrypto;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/AbstractTlsClient;-><init>(Lorg/bouncycastle/tls/crypto/TlsCrypto;)V

    return-void
.end method


# virtual methods
.method protected getSupportedCipherSuites()[I
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/tls/DefaultTlsClient;->getCrypto()Lorg/bouncycastle/tls/crypto/TlsCrypto;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/tls/DefaultTlsClient;->DEFAULT_CIPHER_SUITES:[I

    invoke-static {v0, v1}, Lorg/bouncycastle/tls/TlsUtils;->getSupportedCipherSuites(Lorg/bouncycastle/tls/crypto/TlsCrypto;[I)[I

    move-result-object v0

    return-object v0
.end method
