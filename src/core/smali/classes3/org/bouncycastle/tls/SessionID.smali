.class public final Lorg/bouncycastle/tls/SessionID;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final id:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tls/SessionID;->id:[B

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/SessionID;->id:[B

    check-cast p1, Lorg/bouncycastle/tls/SessionID;

    iget-object p1, p1, Lorg/bouncycastle/tls/SessionID;->id:[B

    invoke-static {v0, p1}, Lorg/bouncycastle/util/Arrays;->compareUnsigned([B[B)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/bouncycastle/tls/SessionID;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lorg/bouncycastle/tls/SessionID;

    iget-object v0, p0, Lorg/bouncycastle/tls/SessionID;->id:[B

    iget-object p1, p1, Lorg/bouncycastle/tls/SessionID;->id:[B

    invoke-static {v0, p1}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result p1

    return p1
.end method

.method public getBytes()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/SessionID;->id:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/SessionID;->id:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/SessionID;->id:[B

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/Hex;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
