.class Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/KeyEncoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->engineDoFinal([BII)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;

.field final synthetic val$isX25519:Z


# direct methods
.method constructor <init>(Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;Z)V
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

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher$1;->this$0:Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;

    iput-boolean p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher$1;->val$isX25519:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEncoded(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher$1;->val$isX25519:Z

    if-eqz v0, :cond_0

    check-cast p1, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;->getEncoded()[B

    move-result-object p1

    return-object p1

    :cond_0
    check-cast p1, Lorg/bouncycastle/crypto/params/X448PublicKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/X448PublicKeyParameters;->getEncoded()[B

    move-result-object p1

    return-object p1
.end method
