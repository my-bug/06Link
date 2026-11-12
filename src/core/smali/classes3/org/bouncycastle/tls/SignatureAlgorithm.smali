.class public Lorg/bouncycastle/tls/SignatureAlgorithm;
.super Ljava/lang/Object;


# static fields
.field public static final anonymous:S = 0x0s

.field public static final dsa:S = 0x2s

.field public static final ecdsa:S = 0x3s

.field public static final ecdsa_brainpoolP256r1tls13_sha256:S = 0x1as

.field public static final ecdsa_brainpoolP384r1tls13_sha384:S = 0x1bs

.field public static final ecdsa_brainpoolP512r1tls13_sha512:S = 0x1cs

.field public static final ed25519:S = 0x7s

.field public static final ed448:S = 0x8s

.field public static final gostr34102012_256:S = 0x40s

.field public static final gostr34102012_512:S = 0x41s

.field public static final rsa:S = 0x1s

.field public static final rsa_pss_pss_sha256:S = 0x9s

.field public static final rsa_pss_pss_sha384:S = 0xas

.field public static final rsa_pss_pss_sha512:S = 0xbs

.field public static final rsa_pss_rsae_sha256:S = 0x4s

.field public static final rsa_pss_rsae_sha384:S = 0x5s

.field public static final rsa_pss_rsae_sha512:S = 0x6s


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClientCertificateType(S)S
    .locals 2

    const/16 v0, 0x40

    if-eq p0, v0, :cond_1

    const/16 v1, 0x41

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    :pswitch_0
    return v0

    :pswitch_1
    const/4 p0, 0x2

    return p0

    :pswitch_2
    const/4 p0, 0x1

    return p0

    :cond_0
    const/16 p0, 0x44

    return p0

    :cond_1
    const/16 p0, 0x43

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static getName(S)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x40

    if-eq p0, v0, :cond_1

    const/16 v0, 0x41

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const-string p0, "UNKNOWN"

    return-object p0

    :pswitch_0
    const-string p0, "ecdsa_brainpoolP512r1tls13_sha512"

    return-object p0

    :pswitch_1
    const-string p0, "ecdsa_brainpoolP384r1tls13_sha384"

    return-object p0

    :pswitch_2
    const-string p0, "ecdsa_brainpoolP256r1tls13_sha256"

    return-object p0

    :pswitch_3
    const-string p0, "rsa_pss_pss_sha512"

    return-object p0

    :pswitch_4
    const-string p0, "rsa_pss_pss_sha384"

    return-object p0

    :pswitch_5
    const-string p0, "rsa_pss_pss_sha256"

    return-object p0

    :pswitch_6
    const-string p0, "ed448"

    return-object p0

    :pswitch_7
    const-string p0, "ed25519"

    return-object p0

    :pswitch_8
    const-string p0, "rsa_pss_rsae_sha512"

    return-object p0

    :pswitch_9
    const-string p0, "rsa_pss_rsae_sha384"

    return-object p0

    :pswitch_a
    const-string p0, "rsa_pss_rsae_sha256"

    return-object p0

    :pswitch_b
    const-string p0, "ecdsa"

    return-object p0

    :pswitch_c
    const-string p0, "dsa"

    return-object p0

    :pswitch_d
    const-string p0, "rsa"

    return-object p0

    :pswitch_e
    const-string p0, "anonymous"

    return-object p0

    :cond_0
    const-string p0, "gostr34102012_512"

    return-object p0

    :cond_1
    const-string p0, "gostr34102012_256"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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

.method public static getText(S)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lorg/bouncycastle/tls/SignatureAlgorithm;->getName(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isRecognized(S)Z
    .locals 1

    const/16 v0, 0x40

    if-eq p0, v0, :cond_0

    const/16 v0, 0x41

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/4 p0, 0x0

    return p0

    :cond_0
    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1a
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
