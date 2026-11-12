.class Lorg/bouncycastle/pqc/crypto/picnic/Signature2;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;
    }
.end annotation


# instance fields
.field challengeC:[I

.field challengeHash:[B

.field challengeP:[I

.field cvInfo:[B

.field cvInfoLen:I

.field iSeedInfo:[B

.field iSeedInfoLen:I

.field proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

.field salt:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeHash:[B

    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeP:[I

    iget p1, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    new-array p1, p1, [Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    return-void
.end method
