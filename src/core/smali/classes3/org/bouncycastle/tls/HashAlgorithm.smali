.class public Lorg/bouncycastle/tls/HashAlgorithm;
.super Ljava/lang/Object;


# static fields
.field public static final Intrinsic:S = 0x8s

.field public static final md5:S = 0x1s

.field public static final none:S = 0x0s

.field public static final sha1:S = 0x2s

.field public static final sha224:S = 0x3s

.field public static final sha256:S = 0x4s

.field public static final sha384:S = 0x5s

.field public static final sha512:S = 0x6s


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getName(S)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string p0, "UNKNOWN"

    return-object p0

    :pswitch_1
    const-string p0, "Intrinsic"

    return-object p0

    :pswitch_2
    const-string p0, "sha512"

    return-object p0

    :pswitch_3
    const-string p0, "sha384"

    return-object p0

    :pswitch_4
    const-string p0, "sha256"

    return-object p0

    :pswitch_5
    const-string p0, "sha224"

    return-object p0

    :pswitch_6
    const-string p0, "sha1"

    return-object p0

    :pswitch_7
    const-string p0, "md5"

    return-object p0

    :pswitch_8
    const-string p0, "none"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getOutputSize(S)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    :pswitch_0
    const/16 p0, 0x40

    return p0

    :pswitch_1
    const/16 p0, 0x30

    return p0

    :pswitch_2
    const/16 p0, 0x20

    return p0

    :pswitch_3
    const/16 p0, 0x1c

    return p0

    :pswitch_4
    const/16 p0, 0x14

    return p0

    :pswitch_5
    const/16 p0, 0x10

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
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

    invoke-static {p0}, Lorg/bouncycastle/tls/HashAlgorithm;->getName(S)Ljava/lang/String;

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

.method public static isPrivate(S)Z
    .locals 1

    const/16 v0, 0xe0

    if-gt v0, p0, :cond_0

    const/16 v0, 0xff

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isRecognized(S)Z
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_1
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
