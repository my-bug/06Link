.class public abstract Lorg/bouncycastle/jsse/BCSNIServerName;
.super Ljava/lang/Object;


# instance fields
.field private final encoded:[B

.field private final nameType:I


# direct methods
.method protected constructor <init>(I[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->isValidUint8(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    iput p1, p0, Lorg/bouncycastle/jsse/BCSNIServerName;->nameType:I

    invoke-static {p2}, Lorg/bouncycastle/tls/TlsUtils;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jsse/BCSNIServerName;->encoded:[B

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "\'encoded\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'nameType\' should be between 0 and 255"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/bouncycastle/jsse/BCSNIServerName;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/bouncycastle/jsse/BCSNIServerName;

    iget v1, p0, Lorg/bouncycastle/jsse/BCSNIServerName;->nameType:I

    iget v3, p1, Lorg/bouncycastle/jsse/BCSNIServerName;->nameType:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/jsse/BCSNIServerName;->encoded:[B

    iget-object p1, p1, Lorg/bouncycastle/jsse/BCSNIServerName;->encoded:[B

    invoke-static {v1, p1}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final getEncoded()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/BCSNIServerName;->encoded:[B

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public final getType()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/jsse/BCSNIServerName;->nameType:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/bouncycastle/jsse/BCSNIServerName;->nameType:I

    iget-object v1, p0, Lorg/bouncycastle/jsse/BCSNIServerName;->encoded:[B

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/bouncycastle/jsse/BCSNIServerName;->nameType:I

    int-to-short v1, v1

    invoke-static {v1}, Lorg/bouncycastle/tls/NameType;->getText(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/bouncycastle/jsse/BCSNIServerName;->encoded:[B

    invoke-static {v1}, Lorg/bouncycastle/util/encoders/Hex;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
