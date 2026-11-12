.class public Lorg/bouncycastle/tls/PSKTlsServer;
.super Lorg/bouncycastle/tls/AbstractTlsServer;


# static fields
.field private static final DEFAULT_CIPHER_SUITES:[I


# instance fields
.field protected pskIdentityManager:Lorg/bouncycastle/tls/TlsPSKIdentityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/tls/PSKTlsServer;->DEFAULT_CIPHER_SUITES:[I

    return-void

    :array_0
    .array-data 4
        0xccac
        0xc038
        0xc037
        0xc036
        0xc035
        0xccad
        0xab
        0xaa
        0xb3
        0xb2
        0x91
        0x90
    .end array-data
.end method

.method public constructor <init>(Lorg/bouncycastle/tls/crypto/TlsCrypto;Lorg/bouncycastle/tls/TlsPSKIdentityManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/AbstractTlsServer;-><init>(Lorg/bouncycastle/tls/crypto/TlsCrypto;)V

    iput-object p2, p0, Lorg/bouncycastle/tls/PSKTlsServer;->pskIdentityManager:Lorg/bouncycastle/tls/TlsPSKIdentityManager;

    return-void
.end method


# virtual methods
.method public getCredentials()Lorg/bouncycastle/tls/TlsCredentials;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/PSKTlsServer;->context:Lorg/bouncycastle/tls/TlsServerContext;

    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsServerContext;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getKeyExchangeAlgorithm()I

    move-result v0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Lorg/bouncycastle/tls/PSKTlsServer;->getRSAEncryptionCredentials()Lorg/bouncycastle/tls/TlsCredentialedDecryptor;

    move-result-object v0

    return-object v0

    :cond_0
    :pswitch_1
    const/4 v0, 0x0

    return-object v0

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPSKIdentityManager()Lorg/bouncycastle/tls/TlsPSKIdentityManager;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/PSKTlsServer;->pskIdentityManager:Lorg/bouncycastle/tls/TlsPSKIdentityManager;

    return-object v0
.end method

.method protected getRSAEncryptionCredentials()Lorg/bouncycastle/tls/TlsCredentialedDecryptor;
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

.method protected getSupportedCipherSuites()[I
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/tls/PSKTlsServer;->getCrypto()Lorg/bouncycastle/tls/crypto/TlsCrypto;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/tls/PSKTlsServer;->DEFAULT_CIPHER_SUITES:[I

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
