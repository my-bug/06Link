.class Lorg/bouncycastle/pqc/crypto/picnic/View;
.super Ljava/lang/Object;


# instance fields
.field final communicatedBits:[B

.field final inputShare:[I

.field final outputShare:[I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/View;->communicatedBits:[B

    iget p1, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/View;->outputShare:[I

    return-void
.end method
