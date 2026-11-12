.class public Lorg/bouncycastle/tls/ClientCertificateType;
.super Ljava/lang/Object;


# static fields
.field public static final dss_ephemeral_dh_RESERVED:S = 0x6s

.field public static final dss_fixed_dh:S = 0x4s

.field public static final dss_sign:S = 0x2s

.field public static final ecdsa_fixed_ecdh:S = 0x42s

.field public static final ecdsa_sign:S = 0x40s

.field public static final fortezza_dms_RESERVED:S = 0x14s

.field public static final gost_sign256:S = 0x43s

.field public static final gost_sign512:S = 0x44s

.field public static final rsa_ephemeral_dh_RESERVED:S = 0x5s

.field public static final rsa_fixed_dh:S = 0x3s

.field public static final rsa_fixed_ecdh:S = 0x41s

.field public static final rsa_sign:S = 0x1s


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getName(S)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x14

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const-string p0, "UNKNOWN"

    return-object p0

    :pswitch_0
    const-string p0, "gost_sign512"

    return-object p0

    :pswitch_1
    const-string p0, "gost_sign256"

    return-object p0

    :pswitch_2
    const-string p0, "ecdsa_fixed_ecdh"

    return-object p0

    :pswitch_3
    const-string p0, "rsa_fixed_ecdh"

    return-object p0

    :pswitch_4
    const-string p0, "ecdsa_sign"

    return-object p0

    :pswitch_5
    const-string p0, "dss_ephemeral_dh_RESERVED"

    return-object p0

    :pswitch_6
    const-string p0, "rsa_ephemeral_dh_RESERVED"

    return-object p0

    :pswitch_7
    const-string p0, "dss_fixed_dh"

    return-object p0

    :pswitch_8
    const-string p0, "rsa_fixed_dh"

    return-object p0

    :pswitch_9
    const-string p0, "dss_sign"

    return-object p0

    :pswitch_a
    const-string p0, "rsa_sign"

    return-object p0

    :cond_0
    const-string p0, "fortezza_dms_RESERVED"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x40
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getText(S)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lorg/bouncycastle/tls/ClientCertificateType;->getName(S)Ljava/lang/String;

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
