.class public Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/picnic/Signature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proof"
.end annotation


# instance fields
.field final communicatedBits:[B

.field final inputShare:[I

.field final seed1:[B

.field final seed2:[B

.field final view3Commitment:[B

.field final view3UnruhG:[B


# direct methods
.method constructor <init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed1:[B

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed2:[B

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->inputShare:[I

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->communicatedBits:[B

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->view3Commitment:[B

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithInputBytes:I

    if-lez v0, :cond_0

    iget p1, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithInputBytes:I

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->view3UnruhG:[B

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->view3UnruhG:[B

    return-void
.end method
