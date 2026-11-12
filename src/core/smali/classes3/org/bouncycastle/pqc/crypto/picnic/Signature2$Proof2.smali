.class public Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/picnic/Signature2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proof2"
.end annotation


# instance fields
.field C:[B

.field aux:[B

.field input:[B

.field msgs:[B

.field seedInfo:[B

.field seedInfoLen:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->seedInfo:[B

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->seedInfoLen:I

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->C:[B

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->input:[B

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->aux:[B

    iget p1, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->msgs:[B

    return-void
.end method
