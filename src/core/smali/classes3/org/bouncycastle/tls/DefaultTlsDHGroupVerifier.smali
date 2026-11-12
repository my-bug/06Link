.class public Lorg/bouncycastle/tls/DefaultTlsDHGroupVerifier;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/tls/TlsDHGroupVerifier;


# static fields
.field private static final DEFAULT_GROUPS:Ljava/util/Vector;

.field public static final DEFAULT_MINIMUM_PRIME_BITS:I = 0x800


# instance fields
.field protected groups:Ljava/util/Vector;

.field protected minimumPrimeBits:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lorg/bouncycastle/tls/DefaultTlsDHGroupVerifier;->DEFAULT_GROUPS:Ljava/util/Vector;

    sget-object v0, Lorg/bouncycastle/tls/crypto/DHStandardGroups;->rfc3526_2048:Lorg/bouncycastle/tls/crypto/DHGroup;

    invoke-static {v0}, Lorg/bouncycastle/tls/DefaultTlsDHGroupVerifier;->addDefaultGroup(Lorg/bouncycastle/tls/crypto/DHGroup;)V

    sget-object v0, Lorg/bouncycastle/tls/crypto/DHStandardGroups;->rfc3526_3072:Lorg/bouncycastle/tls/crypto/DHGroup;

    invoke-static {v0}, Lorg/bouncycastle/tls/DefaultTlsDHGroupVerifier;->addDefaultGroup(Lorg/bouncycastle/tls/crypto/DHGroup;)V

    sget-object v0, Lorg/bouncycastle/tls/crypto/DHStandardGroups;->rfc3526_4096:Lorg/bouncycastle/tls/crypto/DHGroup;

    invoke-static {v0}, Lorg/bouncycastle/tls/DefaultTlsDHGroupVerifier;->addDefaultGroup(Lorg/bouncycastle/tls/crypto/DHGroup;)V

    sget-object v0, Lorg/bouncycastle/tls/crypto/DHStandardGroups;->rfc3526_6144:Lorg/bouncycastle/tls/crypto/DHGroup;

    invoke-static {v0}, Lorg/bouncycastle/tls/DefaultTlsDHGroupVerifier;->addDefaultGroup(Lorg/bouncycastle/tls/crypto/DHGroup;)V

    sget-object v0, Lorg/bouncycastle/tls/crypto/DHStandardGroups;->rfc3526_8192:Lorg/bouncycastle/tls/crypto/DHGroup;

    invoke-static {v0}, Lorg/bouncycastle/tls/DefaultTlsDHGroupVerifier;->addDefaultGroup(Lorg/bouncycastle/tls/crypto/DHGroup;)V

    sget-object v0, Lorg/bouncycastle/tls/crypto/DHStandardGroups;->rfc7919_ffdhe2048:Lorg/bouncycastle/tls/crypto/DHGroup;

    invoke-static {v0}, Lorg/bouncycastle/tls/DefaultTlsDHGroupVerifier;->addDefaultGroup(Lorg/bouncycastle/tls/crypto/DHGroup;)V

    sget-object v0, Lorg/bouncycastle/tls/crypto/DHStandardGroups;->rfc7919_ffdhe3072:Lorg/bouncycastle/tls/crypto/DHGroup;

    invoke-static {v0}, Lorg/bouncycastle/tls/DefaultTlsDHGroupVerifier;->addDefaultGroup(Lorg/bouncycastle/tls/crypto/DHGroup;)V

    sget-object v0, Lorg/bouncycastle/tls/crypto/DHStandardGroups;->rfc7919_ffdhe4096:Lorg/bouncycastle/tls/crypto/DHGroup;

    invoke-static {v0}, Lorg/bouncycastle/tls/DefaultTlsDHGroupVerifier;->addDefaultGroup(Lorg/bouncycastle/tls/crypto/DHGroup;)V

    sget-object v0, Lorg/bouncycastle/tls/crypto/DHStandardGroups;->rfc7919_ffdhe6144:Lorg/bouncycastle/tls/crypto/DHGroup;

    invoke-static {v0}, Lorg/bouncycastle/tls/DefaultTlsDHGroupVerifier;->addDefaultGroup(Lorg/bouncycastle/tls/crypto/DHGroup;)V

    sget-object v0, Lorg/bouncycastle/tls/crypto/DHStandardGroups;->rfc7919_ffdhe8192:Lorg/bouncycastle/tls/crypto/DHGroup;

    invoke-static {v0}, Lorg/bouncycastle/tls/DefaultTlsDHGroupVerifier;->addDefaultGroup(Lorg/bouncycastle/tls/crypto/DHGroup;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x800

    invoke-direct {p0, v0}, Lorg/bouncycastle/tls/DefaultTlsDHGroupVerifier;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    sget-object v0, Lorg/bouncycastle/tls/DefaultTlsDHGroupVerifier;->DEFAULT_GROUPS:Ljava/util/Vector;

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/tls/DefaultTlsDHGroupVerifier;-><init>(Ljava/util/Vector;I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, p1}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bouncycastle/tls/DefaultTlsDHGroupVerifier;->groups:Ljava/util/Vector;

    iput p2, p0, Lorg/bouncycastle/tls/DefaultTlsDHGroupVerifier;->minimumPrimeBits:I

    return-void
.end method

.method private static addDefaultGroup(Lorg/bouncycastle/tls/crypto/DHGroup;)V
    .locals 1

    sget-object v0, Lorg/bouncycastle/tls/DefaultTlsDHGroupVerifier;->DEFAULT_GROUPS:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public accept(Lorg/bouncycastle/tls/crypto/DHGroup;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/DefaultTlsDHGroupVerifier;->checkMinimumPrimeBits(Lorg/bouncycastle/tls/crypto/DHGroup;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/DefaultTlsDHGroupVerifier;->checkGroup(Lorg/bouncycastle/tls/crypto/DHGroup;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected areGroupsEqual(Lorg/bouncycastle/tls/crypto/DHGroup;Lorg/bouncycastle/tls/crypto/DHGroup;)Z
    .locals 2

    if-eq p1, p2, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/tls/crypto/DHGroup;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p2}, Lorg/bouncycastle/tls/crypto/DHGroup;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/tls/DefaultTlsDHGroupVerifier;->areParametersEqual(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/tls/crypto/DHGroup;->getG()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p2}, Lorg/bouncycastle/tls/crypto/DHGroup;->getG()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/tls/DefaultTlsDHGroupVerifier;->areParametersEqual(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected areParametersEqual(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z
    .locals 0

    if-eq p1, p2, :cond_1

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected checkGroup(Lorg/bouncycastle/tls/crypto/DHGroup;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/tls/DefaultTlsDHGroupVerifier;->groups:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/tls/DefaultTlsDHGroupVerifier;->groups:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/tls/crypto/DHGroup;

    invoke-virtual {p0, p1, v2}, Lorg/bouncycastle/tls/DefaultTlsDHGroupVerifier;->areGroupsEqual(Lorg/bouncycastle/tls/crypto/DHGroup;Lorg/bouncycastle/tls/crypto/DHGroup;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected checkMinimumPrimeBits(Lorg/bouncycastle/tls/crypto/DHGroup;)Z
    .locals 1

    invoke-virtual {p1}, Lorg/bouncycastle/tls/crypto/DHGroup;->getP()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    invoke-virtual {p0}, Lorg/bouncycastle/tls/DefaultTlsDHGroupVerifier;->getMinimumPrimeBits()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getMinimumPrimeBits()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/tls/DefaultTlsDHGroupVerifier;->minimumPrimeBits:I

    return v0
.end method
