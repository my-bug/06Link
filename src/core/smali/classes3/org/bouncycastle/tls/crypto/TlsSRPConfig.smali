.class public Lorg/bouncycastle/tls/crypto/TlsSRPConfig;
.super Ljava/lang/Object;


# instance fields
.field protected explicitNG:[Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExplicitNG()[Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/TlsSRPConfig;->explicitNG:[Ljava/math/BigInteger;

    invoke-virtual {v0}, [Ljava/math/BigInteger;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/math/BigInteger;

    return-object v0
.end method

.method public setExplicitNG([Ljava/math/BigInteger;)V
    .locals 0

    invoke-virtual {p1}, [Ljava/math/BigInteger;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/math/BigInteger;

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/TlsSRPConfig;->explicitNG:[Ljava/math/BigInteger;

    return-void
.end method
