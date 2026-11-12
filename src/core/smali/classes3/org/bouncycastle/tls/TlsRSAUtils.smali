.class public abstract Lorg/bouncycastle/tls/TlsRSAUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateEncryptedPreMasterSecret(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/crypto/TlsCertificate;Ljava/io/OutputStream;)Lorg/bouncycastle/tls/crypto/TlsSecret;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lorg/bouncycastle/tls/crypto/TlsCertificate;->createEncryptor(I)Lorg/bouncycastle/tls/crypto/TlsEncryptor;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/tls/TlsUtils;->generateEncryptedPreMasterSecret(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/crypto/TlsEncryptor;Ljava/io/OutputStream;)Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object p0

    return-object p0
.end method
