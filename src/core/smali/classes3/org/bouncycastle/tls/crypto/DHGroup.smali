.class public Lorg/bouncycastle/tls/crypto/DHGroup;
.super Ljava/lang/Object;


# instance fields
.field private final g:Ljava/math/BigInteger;

.field private final l:I

.field private final p:Ljava/math/BigInteger;

.field private final q:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/DHGroup;->p:Ljava/math/BigInteger;

    iput-object p3, p0, Lorg/bouncycastle/tls/crypto/DHGroup;->g:Ljava/math/BigInteger;

    iput-object p2, p0, Lorg/bouncycastle/tls/crypto/DHGroup;->q:Ljava/math/BigInteger;

    iput p4, p0, Lorg/bouncycastle/tls/crypto/DHGroup;->l:I

    return-void
.end method


# virtual methods
.method public getG()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/DHGroup;->g:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getL()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/tls/crypto/DHGroup;->l:I

    return v0
.end method

.method public getP()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/DHGroup;->p:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getQ()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/DHGroup;->q:Ljava/math/BigInteger;

    return-object v0
.end method
