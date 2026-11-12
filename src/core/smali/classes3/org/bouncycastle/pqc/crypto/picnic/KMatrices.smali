.class Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;
.super Ljava/lang/Object;


# instance fields
.field private columns:I

.field private data:[I

.field private nmatrices:I

.field private rows:I


# direct methods
.method public constructor <init>(III[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;->nmatrices:I

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;->rows:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;->columns:I

    iput-object p4, p0, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;->data:[I

    return-void
.end method


# virtual methods
.method public getColumns()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;->columns:I

    return v0
.end method

.method public getData()[I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;->data:[I

    return-object v0
.end method

.method public getNmatrices()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;->nmatrices:I

    return v0
.end method

.method public getRows()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;->rows:I

    return v0
.end method

.method public getSize()I
    .locals 2

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;->rows:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;->columns:I

    mul-int v0, v0, v1

    return v0
.end method
