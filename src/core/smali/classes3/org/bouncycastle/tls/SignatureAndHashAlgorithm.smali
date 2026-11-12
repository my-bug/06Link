.class public Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;
.super Ljava/lang/Object;


# static fields
.field public static final ecdsa_brainpoolP256r1tls13_sha256:Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

.field public static final ecdsa_brainpoolP384r1tls13_sha384:Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

.field public static final ecdsa_brainpoolP512r1tls13_sha512:Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

.field public static final ed25519:Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

.field public static final ed448:Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

.field public static final gostr34102012_256:Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

.field public static final gostr34102012_512:Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

.field public static final rsa_pss_pss_sha256:Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

.field public static final rsa_pss_pss_sha384:Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

.field public static final rsa_pss_pss_sha512:Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

.field public static final rsa_pss_rsae_sha256:Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

.field public static final rsa_pss_rsae_sha384:Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

.field public static final rsa_pss_rsae_sha512:Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;


# instance fields
.field protected final hash:S

.field protected final signature:S


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x81a

    invoke-static {v0}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->create(I)Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->ecdsa_brainpoolP256r1tls13_sha256:Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    const/16 v0, 0x81b

    invoke-static {v0}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->create(I)Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->ecdsa_brainpoolP384r1tls13_sha384:Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    const/16 v0, 0x81c

    invoke-static {v0}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->create(I)Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->ecdsa_brainpoolP512r1tls13_sha512:Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    const/16 v0, 0x807

    invoke-static {v0}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->create(I)Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->ed25519:Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    const/16 v0, 0x808

    invoke-static {v0}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->create(I)Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->ed448:Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    const/16 v0, 0x40

    const/16 v1, 0x8

    invoke-static {v1, v0}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->create(SS)Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->gostr34102012_256:Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    const/16 v0, 0x41

    invoke-static {v1, v0}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->create(SS)Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->gostr34102012_512:Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    const/16 v0, 0x804

    invoke-static {v0}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->create(I)Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->rsa_pss_rsae_sha256:Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    const/16 v0, 0x805

    invoke-static {v0}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->create(I)Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->rsa_pss_rsae_sha384:Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    const/16 v0, 0x806

    invoke-static {v0}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->create(I)Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->rsa_pss_rsae_sha512:Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    const/16 v0, 0x809

    invoke-static {v0}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->create(I)Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->rsa_pss_pss_sha256:Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    const/16 v0, 0x80a

    invoke-static {v0}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->create(I)Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->rsa_pss_pss_sha384:Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    const/16 v0, 0x80b

    invoke-static {v0}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->create(I)Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->rsa_pss_pss_sha512:Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    return-void
.end method

.method public constructor <init>(SS)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit16 v0, p1, 0xff

    if-ne v0, p1, :cond_1

    and-int/lit16 v0, p2, 0xff

    if-ne v0, p2, :cond_0

    iput-short p1, p0, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->hash:S

    iput-short p2, p0, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->signature:S

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'signature\' should be a uint8"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'hash\' should be a uint8"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static create(I)Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;
    .locals 1

    invoke-static {p0}, Lorg/bouncycastle/tls/SignatureScheme;->getHashAlgorithm(I)S

    move-result v0

    invoke-static {p0}, Lorg/bouncycastle/tls/SignatureScheme;->getSignatureAlgorithm(I)S

    move-result p0

    invoke-static {v0, p0}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->create(SS)Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    move-result-object p0

    return-object p0
.end method

.method private static create(SS)Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;
    .locals 1

    new-instance v0, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;-><init>(SS)V

    return-object v0
.end method

.method public static getInstance(SS)Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;
    .locals 1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    invoke-static {p0, p1}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->create(SS)Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->getInstanceIntrinsic(S)Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    move-result-object p0

    return-object p0
.end method

.method private static getInstanceIntrinsic(S)Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;
    .locals 1

    const/16 v0, 0x40

    if-eq p0, v0, :cond_1

    const/16 v0, 0x41

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/16 v0, 0x8

    invoke-static {v0, p0}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->create(SS)Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    move-result-object p0

    return-object p0

    :pswitch_0
    sget-object p0, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->ecdsa_brainpoolP512r1tls13_sha512:Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    return-object p0

    :pswitch_1
    sget-object p0, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->ecdsa_brainpoolP384r1tls13_sha384:Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    return-object p0

    :pswitch_2
    sget-object p0, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->ecdsa_brainpoolP256r1tls13_sha256:Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    return-object p0

    :pswitch_3
    sget-object p0, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->rsa_pss_pss_sha512:Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    return-object p0

    :pswitch_4
    sget-object p0, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->rsa_pss_pss_sha384:Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    return-object p0

    :pswitch_5
    sget-object p0, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->rsa_pss_pss_sha256:Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    return-object p0

    :pswitch_6
    sget-object p0, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->ed448:Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    return-object p0

    :pswitch_7
    sget-object p0, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->ed25519:Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    return-object p0

    :pswitch_8
    sget-object p0, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->rsa_pss_rsae_sha512:Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    return-object p0

    :pswitch_9
    sget-object p0, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->rsa_pss_rsae_sha384:Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    return-object p0

    :pswitch_a
    sget-object p0, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->rsa_pss_rsae_sha256:Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    return-object p0

    :cond_0
    sget-object p0, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->gostr34102012_512:Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    return-object p0

    :cond_1
    sget-object p0, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->gostr34102012_256:Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1a
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parse(Ljava/io/InputStream;)Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v0

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result p0

    invoke-static {v0, p0}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->getInstance(SS)Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->getHash()S

    move-result v0

    invoke-static {v0, p1}, Lorg/bouncycastle/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->getSignature()S

    move-result v0

    invoke-static {v0, p1}, Lorg/bouncycastle/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    invoke-virtual {p1}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->getHash()S

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->getHash()S

    move-result v2

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->getSignature()S

    move-result p1

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->getSignature()S

    move-result v0

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public getHash()S
    .locals 1

    iget-short v0, p0, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->hash:S

    return v0
.end method

.method public getSignature()S
    .locals 1

    iget-short v0, p0, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->signature:S

    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->getHash()S

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->getSignature()S

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-short v1, p0, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->hash:S

    invoke-static {v1}, Lorg/bouncycastle/tls/HashAlgorithm;->getText(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->signature:S

    invoke-static {v1}, Lorg/bouncycastle/tls/SignatureAlgorithm;->getText(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
