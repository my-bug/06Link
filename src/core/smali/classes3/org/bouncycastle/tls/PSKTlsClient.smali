.class public Lorg/bouncycastle/tls/PSKTlsClient;
.super Lorg/bouncycastle/tls/AbstractTlsClient;


# static fields
.field private static final DEFAULT_CIPHER_SUITES:[I


# instance fields
.field protected pskIdentity:Lorg/bouncycastle/tls/TlsPSKIdentity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/tls/PSKTlsClient;->DEFAULT_CIPHER_SUITES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0xccac
        0xc037
        0xc035
        0xccad
        0xaa
        0xb2
        0x90
    .end array-data
.end method

.method public constructor <init>(Lorg/bouncycastle/tls/crypto/TlsCrypto;Lorg/bouncycastle/tls/TlsPSKIdentity;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/AbstractTlsClient;-><init>(Lorg/bouncycastle/tls/crypto/TlsCrypto;)V

    iput-object p2, p0, Lorg/bouncycastle/tls/PSKTlsClient;->pskIdentity:Lorg/bouncycastle/tls/TlsPSKIdentity;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/tls/crypto/TlsCrypto;[B[B)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/tls/BasicTlsPSKIdentity;

    invoke-direct {v0, p2, p3}, Lorg/bouncycastle/tls/BasicTlsPSKIdentity;-><init>([B[B)V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/tls/PSKTlsClient;-><init>(Lorg/bouncycastle/tls/crypto/TlsCrypto;Lorg/bouncycastle/tls/TlsPSKIdentity;)V

    return-void
.end method


# virtual methods
.method public getAuthentication()Lorg/bouncycastle/tls/TlsAuthentication;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method public getPSKIdentity()Lorg/bouncycastle/tls/TlsPSKIdentity;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/PSKTlsClient;->pskIdentity:Lorg/bouncycastle/tls/TlsPSKIdentity;

    return-object v0
.end method

.method protected getSupportedCipherSuites()[I
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/tls/PSKTlsClient;->getCrypto()Lorg/bouncycastle/tls/crypto/TlsCrypto;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/tls/PSKTlsClient;->DEFAULT_CIPHER_SUITES:[I

    invoke-static {v0, v1}, Lorg/bouncycastle/tls/TlsUtils;->getSupportedCipherSuites(Lorg/bouncycastle/tls/crypto/TlsCrypto;[I)[I

    move-result-object v0

    return-object v0
.end method

.method protected getSupportedVersions()[Lorg/bouncycastle/tls/ProtocolVersion;
    .locals 1

    sget-object v0, Lorg/bouncycastle/tls/ProtocolVersion;->TLSv12:Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/ProtocolVersion;->only()[Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v0

    return-object v0
.end method
