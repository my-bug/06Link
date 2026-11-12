.class public Lorg/bouncycastle/tls/PRFAlgorithm;
.super Ljava/lang/Object;


# static fields
.field public static final ssl_prf_legacy:I = 0x0

.field public static final tls13_hkdf_sha256:I = 0x4

.field public static final tls13_hkdf_sha384:I = 0x5

.field public static final tls13_hkdf_sm3:I = 0x7

.field public static final tls_prf_gostr3411_2012_256:I = 0x8

.field public static final tls_prf_legacy:I = 0x1

.field public static final tls_prf_sha256:I = 0x2

.field public static final tls_prf_sha384:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getName(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string p0, "UNKNOWN"

    return-object p0

    :pswitch_1
    const-string p0, "tls_prf_gostr3411_2012_256"

    return-object p0

    :pswitch_2
    const-string p0, "tls13_hkdf_sm3"

    return-object p0

    :pswitch_3
    const-string p0, "tls13_hkdf_sha384"

    return-object p0

    :pswitch_4
    const-string p0, "tls13_hkdf_sha256"

    return-object p0

    :pswitch_5
    const-string p0, "tls_prf_sha384"

    return-object p0

    :pswitch_6
    const-string p0, "tls_prf_sha256"

    return-object p0

    :pswitch_7
    const-string p0, "tls_prf_legacy"

    return-object p0

    :pswitch_8
    const-string p0, "ssl_prf_legacy"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getText(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lorg/bouncycastle/tls/PRFAlgorithm;->getName(I)Ljava/lang/String;

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
