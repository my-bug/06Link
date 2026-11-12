.class Lorg/bouncycastle/crypto/CryptoServicesRegistrar$2;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/SecureRandomProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->setSecureRandom(Ljava/security/SecureRandom;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$secureRandom:Ljava/security/SecureRandom;


# direct methods
.method constructor <init>(Ljava/security/SecureRandom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/crypto/CryptoServicesRegistrar$2;->val$secureRandom:Ljava/security/SecureRandom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/security/SecureRandom;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/CryptoServicesRegistrar$2;->val$secureRandom:Ljava/security/SecureRandom;

    return-object v0
.end method
