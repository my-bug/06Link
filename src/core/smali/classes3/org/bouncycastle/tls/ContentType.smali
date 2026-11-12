.class public Lorg/bouncycastle/tls/ContentType;
.super Ljava/lang/Object;


# static fields
.field public static final alert:S = 0x15s

.field public static final application_data:S = 0x17s

.field public static final change_cipher_spec:S = 0x14s

.field public static final handshake:S = 0x16s

.field public static final heartbeat:S = 0x18s

.field public static final tls12_cid:S = 0x19s


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getName(S)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "UNKNOWN"

    return-object p0

    :pswitch_0
    const-string p0, "tls12_cid"

    return-object p0

    :pswitch_1
    const-string p0, "heartbeat"

    return-object p0

    :pswitch_2
    const-string p0, "application_data"

    return-object p0

    :pswitch_3
    const-string p0, "handshake"

    return-object p0

    :pswitch_4
    const-string p0, "alert"

    return-object p0

    :pswitch_5
    const-string p0, "change_cipher_spec"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x14
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

    invoke-static {p0}, Lorg/bouncycastle/tls/ContentType;->getName(S)Ljava/lang/String;

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
