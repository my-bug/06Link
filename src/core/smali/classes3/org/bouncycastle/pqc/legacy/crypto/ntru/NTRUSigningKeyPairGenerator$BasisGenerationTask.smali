.class Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator$BasisGenerationTask;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BasisGenerationTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator$BasisGenerationTask;->this$0:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator;Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator$BasisGenerationTask;-><init>(Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator$BasisGenerationTask;->call()Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;

    move-result-object v0

    return-object v0
.end method

.method public call()Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator$BasisGenerationTask;->this$0:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator;->generateBoundedBasis()Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;

    move-result-object v0

    return-object v0
.end method
