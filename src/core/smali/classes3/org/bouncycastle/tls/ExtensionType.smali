.class public Lorg/bouncycastle/tls/ExtensionType;
.super Ljava/lang/Object;


# static fields
.field public static final application_layer_protocol_negotiation:I = 0x10

.field public static final cached_info:I = 0x19

.field public static final cert_type:I = 0x9

.field public static final certificate_authorities:I = 0x2f

.field public static final client_authz:I = 0x7

.field public static final client_certificate_type:I = 0x13

.field public static final client_certificate_url:I = 0x2

.field public static final compress_certificate:I = 0x1b

.field public static final connection_id:I = 0x36

.field public static final cookie:I = 0x2c

.field public static final early_data:I = 0x2a

.field public static final ec_point_formats:I = 0xb

.field public static final encrypt_then_mac:I = 0x16

.field public static final extended_master_secret:I = 0x17

.field public static final heartbeat:I = 0xf

.field public static final key_share:I = 0x33

.field public static final max_fragment_length:I = 0x1

.field public static final oid_filters:I = 0x30

.field public static final padding:I = 0x15

.field public static final post_handshake_auth:I = 0x31

.field public static final pre_shared_key:I = 0x29

.field public static final psk_key_exchange_modes:I = 0x2d

.field public static final record_size_limit:I = 0x1c

.field public static final renegotiation_info:I = 0xff01

.field public static final server_authz:I = 0x8

.field public static final server_certificate_type:I = 0x14

.field public static final server_name:I = 0x0

.field public static final session_ticket:I = 0x23

.field public static final signature_algorithms:I = 0xd

.field public static final signature_algorithms_cert:I = 0x32

.field public static final signed_certificate_timestamp:I = 0x12

.field public static final srp:I = 0xc

.field public static final status_request:I = 0x5

.field public static final status_request_v2:I = 0x11

.field public static final supported_groups:I = 0xa

.field public static final supported_versions:I = 0x2b

.field public static final token_binding:I = 0x18

.field public static final truncated_hmac:I = 0x4

.field public static final trusted_ca_keys:I = 0x3

.field public static final use_srtp:I = 0xe

.field public static final user_mapping:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getName(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x1b

    if-eq p0, v0, :cond_4

    const/16 v0, 0x1c

    if-eq p0, v0, :cond_3

    const/16 v0, 0x23

    if-eq p0, v0, :cond_2

    const/16 v0, 0x36

    if-eq p0, v0, :cond_1

    const v0, 0xff01

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    const-string p0, "UNKNOWN"

    return-object p0

    :pswitch_0
    const-string p0, "key_share"

    return-object p0

    :pswitch_1
    const-string p0, "signature_algorithms_cert"

    return-object p0

    :pswitch_2
    const-string p0, "post_handshake_auth"

    return-object p0

    :pswitch_3
    const-string p0, "oid_filters"

    return-object p0

    :pswitch_4
    const-string p0, "certificate_authorities"

    return-object p0

    :pswitch_5
    const-string p0, "psk_key_exchange_modes"

    return-object p0

    :pswitch_6
    const-string p0, "cookie"

    return-object p0

    :pswitch_7
    const-string p0, "supported_versions"

    return-object p0

    :pswitch_8
    const-string p0, "early_data"

    return-object p0

    :pswitch_9
    const-string p0, "pre_shared_key"

    return-object p0

    :pswitch_a
    const-string p0, "cached_info"

    return-object p0

    :pswitch_b
    const-string p0, "token_binding"

    return-object p0

    :pswitch_c
    const-string p0, "extended_master_secret"

    return-object p0

    :pswitch_d
    const-string p0, "encrypt_then_mac"

    return-object p0

    :pswitch_e
    const-string p0, "padding"

    return-object p0

    :pswitch_f
    const-string p0, "server_certificate_type"

    return-object p0

    :pswitch_10
    const-string p0, "client_certificate_type"

    return-object p0

    :pswitch_11
    const-string p0, "signed_certificate_timestamp"

    return-object p0

    :pswitch_12
    const-string p0, "status_request_v2"

    return-object p0

    :pswitch_13
    const-string p0, "application_layer_protocol_negotiation"

    return-object p0

    :pswitch_14
    const-string p0, "heartbeat"

    return-object p0

    :pswitch_15
    const-string p0, "use_srtp"

    return-object p0

    :pswitch_16
    const-string p0, "signature_algorithms"

    return-object p0

    :pswitch_17
    const-string p0, "srp"

    return-object p0

    :pswitch_18
    const-string p0, "ec_point_formats"

    return-object p0

    :pswitch_19
    const-string p0, "supported_groups"

    return-object p0

    :pswitch_1a
    const-string p0, "cert_type"

    return-object p0

    :pswitch_1b
    const-string p0, "server_authz"

    return-object p0

    :pswitch_1c
    const-string p0, "client_authz"

    return-object p0

    :pswitch_1d
    const-string p0, "user_mapping"

    return-object p0

    :pswitch_1e
    const-string p0, "status_request"

    return-object p0

    :pswitch_1f
    const-string p0, "truncated_hmac"

    return-object p0

    :pswitch_20
    const-string p0, "trusted_ca_keys"

    return-object p0

    :pswitch_21
    const-string p0, "client_certificate_url"

    return-object p0

    :pswitch_22
    const-string p0, "max_fragment_length"

    return-object p0

    :pswitch_23
    const-string p0, "server_name"

    return-object p0

    :cond_0
    const-string p0, "renegotiation_info"

    return-object p0

    :cond_1
    const-string p0, "connection_id"

    return-object p0

    :cond_2
    const-string p0, "session_ticket"

    return-object p0

    :cond_3
    const-string p0, "record_size_limit"

    return-object p0

    :cond_4
    const-string p0, "compress_certificate"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x29
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2f
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getText(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lorg/bouncycastle/tls/ExtensionType;->getName(I)Ljava/lang/String;

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

.method public static isRecognized(I)Z
    .locals 1

    const/16 v0, 0x1b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x23

    if-eq p0, v0, :cond_0

    const/16 v0, 0x36

    if-eq p0, v0, :cond_0

    const v0, 0xff01

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

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
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x29
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
