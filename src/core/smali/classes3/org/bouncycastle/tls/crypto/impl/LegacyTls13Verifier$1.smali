.class Lorg/bouncycastle/tls/crypto/impl/LegacyTls13Verifier$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/tls/crypto/TlsStreamVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/tls/crypto/impl/LegacyTls13Verifier;->getStreamVerifier(Lorg/bouncycastle/tls/DigitallySigned;)Lorg/bouncycastle/tls/crypto/TlsStreamVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/tls/crypto/impl/LegacyTls13Verifier;

.field final synthetic val$signature:[B


# direct methods
.method constructor <init>(Lorg/bouncycastle/tls/crypto/impl/LegacyTls13Verifier;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/LegacyTls13Verifier$1;->this$0:Lorg/bouncycastle/tls/crypto/impl/LegacyTls13Verifier;

    iput-object p2, p0, Lorg/bouncycastle/tls/crypto/impl/LegacyTls13Verifier$1;->val$signature:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/LegacyTls13Verifier$1;->this$0:Lorg/bouncycastle/tls/crypto/impl/LegacyTls13Verifier;

    # getter for: Lorg/bouncycastle/tls/crypto/impl/LegacyTls13Verifier;->tls13Verifier:Lorg/bouncycastle/tls/crypto/Tls13Verifier;
    invoke-static {v0}, Lorg/bouncycastle/tls/crypto/impl/LegacyTls13Verifier;->access$000(Lorg/bouncycastle/tls/crypto/impl/LegacyTls13Verifier;)Lorg/bouncycastle/tls/crypto/Tls13Verifier;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/tls/crypto/Tls13Verifier;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public isVerified()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/LegacyTls13Verifier$1;->this$0:Lorg/bouncycastle/tls/crypto/impl/LegacyTls13Verifier;

    # getter for: Lorg/bouncycastle/tls/crypto/impl/LegacyTls13Verifier;->tls13Verifier:Lorg/bouncycastle/tls/crypto/Tls13Verifier;
    invoke-static {v0}, Lorg/bouncycastle/tls/crypto/impl/LegacyTls13Verifier;->access$000(Lorg/bouncycastle/tls/crypto/impl/LegacyTls13Verifier;)Lorg/bouncycastle/tls/crypto/Tls13Verifier;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/LegacyTls13Verifier$1;->val$signature:[B

    invoke-interface {v0, v1}, Lorg/bouncycastle/tls/crypto/Tls13Verifier;->verifySignature([B)Z

    move-result v0

    return v0
.end method
