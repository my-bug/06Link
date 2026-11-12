.class public Lorg/bouncycastle/tls/TlsExtensionsUtils;
.super Ljava/lang/Object;


# static fields
.field public static final EXT_application_layer_protocol_negotiation:Ljava/lang/Integer;

.field public static final EXT_certificate_authorities:Ljava/lang/Integer;

.field public static final EXT_client_certificate_type:Ljava/lang/Integer;

.field public static final EXT_client_certificate_url:Ljava/lang/Integer;

.field public static final EXT_compress_certificate:Ljava/lang/Integer;

.field public static final EXT_connection_id:Ljava/lang/Integer;

.field public static final EXT_cookie:Ljava/lang/Integer;

.field public static final EXT_early_data:Ljava/lang/Integer;

.field public static final EXT_ec_point_formats:Ljava/lang/Integer;

.field public static final EXT_encrypt_then_mac:Ljava/lang/Integer;

.field public static final EXT_extended_master_secret:Ljava/lang/Integer;

.field public static final EXT_heartbeat:Ljava/lang/Integer;

.field public static final EXT_key_share:Ljava/lang/Integer;

.field public static final EXT_max_fragment_length:Ljava/lang/Integer;

.field public static final EXT_oid_filters:Ljava/lang/Integer;

.field public static final EXT_padding:Ljava/lang/Integer;

.field public static final EXT_post_handshake_auth:Ljava/lang/Integer;

.field public static final EXT_pre_shared_key:Ljava/lang/Integer;

.field public static final EXT_psk_key_exchange_modes:Ljava/lang/Integer;

.field public static final EXT_record_size_limit:Ljava/lang/Integer;

.field public static final EXT_server_certificate_type:Ljava/lang/Integer;

.field public static final EXT_server_name:Ljava/lang/Integer;

.field public static final EXT_signature_algorithms:Ljava/lang/Integer;

.field public static final EXT_signature_algorithms_cert:Ljava/lang/Integer;

.field public static final EXT_status_request:Ljava/lang/Integer;

.field public static final EXT_status_request_v2:Ljava/lang/Integer;

.field public static final EXT_supported_groups:Ljava/lang/Integer;

.field public static final EXT_supported_versions:Ljava/lang/Integer;

.field public static final EXT_truncated_hmac:Ljava/lang/Integer;

.field public static final EXT_trusted_ca_keys:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_application_layer_protocol_negotiation:Ljava/lang/Integer;

    const/16 v0, 0x2f

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_certificate_authorities:Ljava/lang/Integer;

    const/16 v0, 0x13

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_client_certificate_type:Ljava/lang/Integer;

    const/4 v0, 0x2

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_client_certificate_url:Ljava/lang/Integer;

    const/16 v0, 0x1b

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_compress_certificate:Ljava/lang/Integer;

    const/16 v0, 0x36

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_connection_id:Ljava/lang/Integer;

    const/16 v0, 0x2c

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_cookie:Ljava/lang/Integer;

    const/16 v0, 0x2a

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_early_data:Ljava/lang/Integer;

    const/16 v0, 0xb

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_ec_point_formats:Ljava/lang/Integer;

    const/16 v0, 0x16

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_encrypt_then_mac:Ljava/lang/Integer;

    const/16 v0, 0x17

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_extended_master_secret:Ljava/lang/Integer;

    const/16 v0, 0xf

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_heartbeat:Ljava/lang/Integer;

    const/16 v0, 0x33

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_key_share:Ljava/lang/Integer;

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_max_fragment_length:Ljava/lang/Integer;

    const/16 v0, 0x30

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_oid_filters:Ljava/lang/Integer;

    const/16 v0, 0x15

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_padding:Ljava/lang/Integer;

    const/16 v0, 0x31

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_post_handshake_auth:Ljava/lang/Integer;

    const/16 v0, 0x29

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_pre_shared_key:Ljava/lang/Integer;

    const/16 v0, 0x2d

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_psk_key_exchange_modes:Ljava/lang/Integer;

    const/16 v0, 0x1c

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_record_size_limit:Ljava/lang/Integer;

    const/16 v0, 0x14

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_server_certificate_type:Ljava/lang/Integer;

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_server_name:Ljava/lang/Integer;

    const/16 v0, 0xd

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_signature_algorithms:Ljava/lang/Integer;

    const/16 v0, 0x32

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_signature_algorithms_cert:Ljava/lang/Integer;

    const/4 v0, 0x5

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_status_request:Ljava/lang/Integer;

    const/16 v0, 0x11

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_status_request_v2:Ljava/lang/Integer;

    const/16 v0, 0xa

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_supported_groups:Ljava/lang/Integer;

    const/16 v0, 0x2b

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_supported_versions:Ljava/lang/Integer;

    const/4 v0, 0x4

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_truncated_hmac:Ljava/lang/Integer;

    const/4 v0, 0x3

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_trusted_ca_keys:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addALPNExtensionClient(Ljava/util/Hashtable;Ljava/util/Vector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_application_layer_protocol_negotiation:Ljava/lang/Integer;

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->createALPNExtensionClient(Ljava/util/Vector;)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addALPNExtensionServer(Ljava/util/Hashtable;Lorg/bouncycastle/tls/ProtocolName;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_application_layer_protocol_negotiation:Ljava/lang/Integer;

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->createALPNExtensionServer(Lorg/bouncycastle/tls/ProtocolName;)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addCertificateAuthoritiesExtension(Ljava/util/Hashtable;Ljava/util/Vector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_certificate_authorities:Ljava/lang/Integer;

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->createCertificateAuthoritiesExtension(Ljava/util/Vector;)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addClientCertificateTypeExtensionClient(Ljava/util/Hashtable;[S)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_client_certificate_type:Ljava/lang/Integer;

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->createCertificateTypeExtensionClient([S)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addClientCertificateTypeExtensionServer(Ljava/util/Hashtable;S)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_client_certificate_type:Ljava/lang/Integer;

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->createCertificateTypeExtensionServer(S)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addClientCertificateURLExtension(Ljava/util/Hashtable;)V
    .locals 2

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_client_certificate_url:Ljava/lang/Integer;

    invoke-static {}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->createClientCertificateURLExtension()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addCompressCertificateExtension(Ljava/util/Hashtable;[I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_compress_certificate:Ljava/lang/Integer;

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->createCompressCertificateExtension([I)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addConnectionIDExtension(Ljava/util/Hashtable;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_connection_id:Ljava/lang/Integer;

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->createConnectionIDExtension([B)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addCookieExtension(Ljava/util/Hashtable;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_cookie:Ljava/lang/Integer;

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->createCookieExtension([B)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addEarlyDataIndication(Ljava/util/Hashtable;)V
    .locals 2

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_early_data:Ljava/lang/Integer;

    invoke-static {}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->createEarlyDataIndication()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addEarlyDataMaxSize(Ljava/util/Hashtable;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_early_data:Ljava/lang/Integer;

    invoke-static {p1, p2}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->createEarlyDataMaxSize(J)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addEmptyExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)V
    .locals 1

    invoke-static {}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->createEmptyExtensionData()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addEncryptThenMACExtension(Ljava/util/Hashtable;)V
    .locals 2

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_encrypt_then_mac:Ljava/lang/Integer;

    invoke-static {}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->createEncryptThenMACExtension()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addExtendedMasterSecretExtension(Ljava/util/Hashtable;)V
    .locals 2

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_extended_master_secret:Ljava/lang/Integer;

    invoke-static {}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->createExtendedMasterSecretExtension()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addHeartbeatExtension(Ljava/util/Hashtable;Lorg/bouncycastle/tls/HeartbeatExtension;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_heartbeat:Ljava/lang/Integer;

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->createHeartbeatExtension(Lorg/bouncycastle/tls/HeartbeatExtension;)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addKeyShareClientHello(Ljava/util/Hashtable;Ljava/util/Vector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_key_share:Ljava/lang/Integer;

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->createKeyShareClientHello(Ljava/util/Vector;)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addKeyShareHelloRetryRequest(Ljava/util/Hashtable;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_key_share:Ljava/lang/Integer;

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->createKeyShareHelloRetryRequest(I)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addKeyShareServerHello(Ljava/util/Hashtable;Lorg/bouncycastle/tls/KeyShareEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_key_share:Ljava/lang/Integer;

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->createKeyShareServerHello(Lorg/bouncycastle/tls/KeyShareEntry;)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addMaxFragmentLengthExtension(Ljava/util/Hashtable;S)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_max_fragment_length:Ljava/lang/Integer;

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->createMaxFragmentLengthExtension(S)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addOIDFiltersExtension(Ljava/util/Hashtable;Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_oid_filters:Ljava/lang/Integer;

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->createOIDFiltersExtension(Ljava/util/Hashtable;)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addPSKKeyExchangeModesExtension(Ljava/util/Hashtable;[S)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_psk_key_exchange_modes:Ljava/lang/Integer;

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->createPSKKeyExchangeModesExtension([S)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addPaddingExtension(Ljava/util/Hashtable;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_padding:Ljava/lang/Integer;

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->createPaddingExtension(I)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addPostHandshakeAuthExtension(Ljava/util/Hashtable;)V
    .locals 2

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_post_handshake_auth:Ljava/lang/Integer;

    invoke-static {}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->createPostHandshakeAuthExtension()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addPreSharedKeyClientHello(Ljava/util/Hashtable;Lorg/bouncycastle/tls/OfferedPsks;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_pre_shared_key:Ljava/lang/Integer;

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->createPreSharedKeyClientHello(Lorg/bouncycastle/tls/OfferedPsks;)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addPreSharedKeyServerHello(Ljava/util/Hashtable;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_pre_shared_key:Ljava/lang/Integer;

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->createPreSharedKeyServerHello(I)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addRecordSizeLimitExtension(Ljava/util/Hashtable;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_record_size_limit:Ljava/lang/Integer;

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->createRecordSizeLimitExtension(I)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addServerCertificateTypeExtensionClient(Ljava/util/Hashtable;[S)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_server_certificate_type:Ljava/lang/Integer;

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->createCertificateTypeExtensionClient([S)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addServerCertificateTypeExtensionServer(Ljava/util/Hashtable;S)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_server_certificate_type:Ljava/lang/Integer;

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->createCertificateTypeExtensionServer(S)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addServerNameExtensionClient(Ljava/util/Hashtable;Ljava/util/Vector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_server_name:Ljava/lang/Integer;

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->createServerNameExtensionClient(Ljava/util/Vector;)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addServerNameExtensionServer(Ljava/util/Hashtable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_server_name:Ljava/lang/Integer;

    invoke-static {}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->createServerNameExtensionServer()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addSignatureAlgorithmsCertExtension(Ljava/util/Hashtable;Ljava/util/Vector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_signature_algorithms_cert:Ljava/lang/Integer;

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->createSignatureAlgorithmsCertExtension(Ljava/util/Vector;)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addSignatureAlgorithmsExtension(Ljava/util/Hashtable;Ljava/util/Vector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_signature_algorithms:Ljava/lang/Integer;

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->createSignatureAlgorithmsExtension(Ljava/util/Vector;)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addStatusRequestExtension(Ljava/util/Hashtable;Lorg/bouncycastle/tls/CertificateStatusRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_status_request:Ljava/lang/Integer;

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->createStatusRequestExtension(Lorg/bouncycastle/tls/CertificateStatusRequest;)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addStatusRequestV2Extension(Ljava/util/Hashtable;Ljava/util/Vector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_status_request_v2:Ljava/lang/Integer;

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->createStatusRequestV2Extension(Ljava/util/Vector;)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addSupportedGroupsExtension(Ljava/util/Hashtable;Ljava/util/Vector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_supported_groups:Ljava/lang/Integer;

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->createSupportedGroupsExtension(Ljava/util/Vector;)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addSupportedPointFormatsExtension(Ljava/util/Hashtable;[S)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_ec_point_formats:Ljava/lang/Integer;

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->createSupportedPointFormatsExtension([S)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addSupportedVersionsExtensionClient(Ljava/util/Hashtable;[Lorg/bouncycastle/tls/ProtocolVersion;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_supported_versions:Ljava/lang/Integer;

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->createSupportedVersionsExtensionClient([Lorg/bouncycastle/tls/ProtocolVersion;)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addSupportedVersionsExtensionServer(Ljava/util/Hashtable;Lorg/bouncycastle/tls/ProtocolVersion;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_supported_versions:Ljava/lang/Integer;

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->createSupportedVersionsExtensionServer(Lorg/bouncycastle/tls/ProtocolVersion;)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addTruncatedHMacExtension(Ljava/util/Hashtable;)V
    .locals 2

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_truncated_hmac:Ljava/lang/Integer;

    invoke-static {}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->createTruncatedHMacExtension()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addTrustedCAKeysExtensionClient(Ljava/util/Hashtable;Ljava/util/Vector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_trusted_ca_keys:Ljava/lang/Integer;

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->createTrustedCAKeysExtensionClient(Ljava/util/Vector;)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addTrustedCAKeysExtensionServer(Ljava/util/Hashtable;)V
    .locals 2

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_trusted_ca_keys:Ljava/lang/Integer;

    invoke-static {}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->createTrustedCAKeysExtensionServer()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static createALPNExtensionClient(Ljava/util/Vector;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lorg/bouncycastle/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/tls/ProtocolName;

    invoke-virtual {v2, v0}, Lorg/bouncycastle/tls/ProtocolName;->encode(Ljava/io/OutputStream;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->patchOpaque16(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static createALPNExtensionServer(Lorg/bouncycastle/tls/ProtocolName;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->createALPNExtensionClient(Ljava/util/Vector;)[B

    move-result-object p0

    return-object p0
.end method

.method public static createCertificateAuthoritiesExtension(Ljava/util/Vector;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lorg/bouncycastle/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/x500/X500Name;

    const-string v3, "DER"

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/x500/X500Name;->getEncoded(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2, v0}, Lorg/bouncycastle/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->patchOpaque16(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static createCertificateTypeExtensionClient([S)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->isNullOrEmpty([S)Z

    move-result v0

    if-nez v0, :cond_0

    array-length v0, p0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->encodeUint8ArrayWithUint8Length([S)[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public static createCertificateTypeExtensionServer(S)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->encodeUint8(S)[B

    move-result-object p0

    return-object p0
.end method

.method public static createClientCertificateURLExtension()[B
    .locals 1

    invoke-static {}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->createEmptyExtensionData()[B

    move-result-object v0

    return-object v0
.end method

.method public static createCompressCertificateExtension([I)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->isNullOrEmpty([I)Z

    move-result v0

    if-nez v0, :cond_0

    array-length v0, p0

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_0

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->encodeUint16ArrayWithUint8Length([I)[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public static createConnectionIDExtension([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->encodeOpaque8([B)[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public static createCookieExtension([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->isNullOrEmpty([B)Z

    move-result v0

    if-nez v0, :cond_0

    array-length v0, p0

    const/high16 v1, 0x10000

    if-ge v0, v1, :cond_0

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->encodeOpaque16([B)[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public static createEarlyDataIndication()[B
    .locals 1

    invoke-static {}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->createEmptyExtensionData()[B

    move-result-object v0

    return-object v0
.end method

.method public static createEarlyDataMaxSize(J)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/bouncycastle/tls/TlsUtils;->encodeUint32(J)[B

    move-result-object p0

    return-object p0
.end method

.method public static createEmptyExtensionData()[B
    .locals 1

    sget-object v0, Lorg/bouncycastle/tls/TlsUtils;->EMPTY_BYTES:[B

    return-object v0
.end method

.method public static createEncryptThenMACExtension()[B
    .locals 1

    invoke-static {}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->createEmptyExtensionData()[B

    move-result-object v0

    return-object v0
.end method

.method public static createExtendedMasterSecretExtension()[B
    .locals 1

    invoke-static {}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->createEmptyExtensionData()[B

    move-result-object v0

    return-object v0
.end method

.method public static createHeartbeatExtension(Lorg/bouncycastle/tls/HeartbeatExtension;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/tls/HeartbeatExtension;->encode(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public static createKeyShareClientHello(Ljava/util/Vector;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {v0, v1}, Lorg/bouncycastle/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/tls/KeyShareEntry;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/tls/KeyShareEntry;->encode(Ljava/io/OutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->patchOpaque16(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->encodeUint16(I)[B

    move-result-object p0

    return-object p0
.end method

.method public static createKeyShareHelloRetryRequest(I)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->encodeUint16(I)[B

    move-result-object p0

    return-object p0
.end method

.method public static createKeyShareServerHello(Lorg/bouncycastle/tls/KeyShareEntry;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/tls/KeyShareEntry;->encode(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public static createMaxFragmentLengthExtension(S)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->encodeUint8(S)[B

    move-result-object p0

    return-object p0
.end method

.method public static createOIDFiltersExtension(Ljava/util/Hashtable;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lorg/bouncycastle/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    const-string v4, "DER"

    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getEncoded(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2, v0}, Lorg/bouncycastle/tls/TlsUtils;->writeOpaque8([BLjava/io/OutputStream;)V

    invoke-static {v3, v0}, Lorg/bouncycastle/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_1
    invoke-static {v0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->patchOpaque16(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method public static createPSKKeyExchangeModesExtension([S)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->isNullOrEmpty([S)Z

    move-result v0

    if-nez v0, :cond_0

    array-length v0, p0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->encodeUint8ArrayWithUint8Length([S)[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public static createPaddingExtension(I)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->checkUint16(I)V

    new-array p0, p0, [B

    return-object p0
.end method

.method public static createPostHandshakeAuthExtension()[B
    .locals 1

    invoke-static {}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->createEmptyExtensionData()[B

    move-result-object v0

    return-object v0
.end method

.method public static createPreSharedKeyClientHello(Lorg/bouncycastle/tls/OfferedPsks;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/tls/OfferedPsks;->encode(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public static createPreSharedKeyServerHello(I)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->encodeUint16(I)[B

    move-result-object p0

    return-object p0
.end method

.method public static createRecordSizeLimitExtension(I)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x40

    if-lt p0, v0, :cond_0

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->encodeUint16(I)[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public static createServerNameExtensionClient(Ljava/util/Vector;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Lorg/bouncycastle/tls/ServerNameList;

    invoke-direct {v1, p0}, Lorg/bouncycastle/tls/ServerNameList;-><init>(Ljava/util/Vector;)V

    invoke-virtual {v1, v0}, Lorg/bouncycastle/tls/ServerNameList;->encode(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public static createServerNameExtensionServer()[B
    .locals 1

    invoke-static {}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->createEmptyExtensionData()[B

    move-result-object v0

    return-object v0
.end method

.method public static createSignatureAlgorithmsCertExtension(Ljava/util/Vector;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->createSignatureAlgorithmsExtension(Ljava/util/Vector;)[B

    move-result-object p0

    return-object p0
.end method

.method public static createSignatureAlgorithmsExtension(Ljava/util/Vector;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p0, v0}, Lorg/bouncycastle/tls/TlsUtils;->encodeSupportedSignatureAlgorithms(Ljava/util/Vector;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static createStatusRequestExtension(Lorg/bouncycastle/tls/CertificateStatusRequest;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/tls/CertificateStatusRequest;->encode(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public static createStatusRequestV2Extension(Ljava/util/Vector;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lorg/bouncycastle/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/tls/CertificateStatusRequestItemV2;

    invoke-virtual {v2, v0}, Lorg/bouncycastle/tls/CertificateStatusRequestItemV2;->encode(Ljava/io/OutputStream;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->patchOpaque16(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static createSupportedGroupsExtension(Ljava/util/Vector;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lorg/bouncycastle/tls/TlsUtils;->encodeUint16ArrayWithUint16Length([I)[B

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static createSupportedPointFormatsExtension([S)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {p0, v0}, Lorg/bouncycastle/util/Arrays;->contains([SS)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {p0, v0}, Lorg/bouncycastle/util/Arrays;->prepend([SS)[S

    move-result-object p0

    :cond_1
    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->encodeUint8ArrayWithUint8Length([S)[B

    move-result-object p0

    return-object p0
.end method

.method public static createSupportedVersionsExtensionClient([Lorg/bouncycastle/tls/ProtocolVersion;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->isNullOrEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    array-length v0, p0

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_1

    array-length v0, p0

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [B

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/tls/TlsUtils;->writeUint8(I[BI)V

    :goto_0
    if-ge v3, v0, :cond_0

    aget-object v1, p0, v3

    mul-int/lit8 v4, v3, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-static {v1, v2, v4}, Lorg/bouncycastle/tls/TlsUtils;->writeVersion(Lorg/bouncycastle/tls/ProtocolVersion;[BI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2

    :cond_1
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static createSupportedVersionsExtensionServer(Lorg/bouncycastle/tls/ProtocolVersion;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->encodeVersion(Lorg/bouncycastle/tls/ProtocolVersion;)[B

    move-result-object p0

    return-object p0
.end method

.method public static createTruncatedHMacExtension()[B
    .locals 1

    invoke-static {}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->createEmptyExtensionData()[B

    move-result-object v0

    return-object v0
.end method

.method public static createTrustedCAKeysExtensionClient(Ljava/util/Vector;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lorg/bouncycastle/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    if-eqz p0, :cond_0

    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/tls/TrustedAuthority;

    invoke-virtual {v2, v0}, Lorg/bouncycastle/tls/TrustedAuthority;->encode(Ljava/io/OutputStream;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->patchOpaque16(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method public static createTrustedCAKeysExtensionServer()[B
    .locals 1

    invoke-static {}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->createEmptyExtensionData()[B

    move-result-object v0

    return-object v0
.end method

.method public static ensureExtensionsInitialised(Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .locals 0

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/Hashtable;

    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    :cond_0
    return-object p0
.end method

.method public static getALPNExtensionClient(Ljava/util/Hashtable;)Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_application_layer_protocol_negotiation:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/bouncycastle/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->readALPNExtensionClient([B)Ljava/util/Vector;

    move-result-object p0

    return-object p0
.end method

.method public static getALPNExtensionServer(Ljava/util/Hashtable;)Lorg/bouncycastle/tls/ProtocolName;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_application_layer_protocol_negotiation:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/bouncycastle/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->readALPNExtensionServer([B)Lorg/bouncycastle/tls/ProtocolName;

    move-result-object p0

    return-object p0
.end method

.method public static getCertificateAuthoritiesExtension(Ljava/util/Hashtable;)Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_certificate_authorities:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/bouncycastle/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->readCertificateAuthoritiesExtension([B)Ljava/util/Vector;

    move-result-object p0

    return-object p0
.end method

.method public static getClientCertificateTypeExtensionClient(Ljava/util/Hashtable;)[S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_client_certificate_type:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/bouncycastle/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->readCertificateTypeExtensionClient([B)[S

    move-result-object p0

    return-object p0
.end method

.method public static getClientCertificateTypeExtensionServer(Ljava/util/Hashtable;)S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_client_certificate_type:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/bouncycastle/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->readCertificateTypeExtensionServer([B)S

    move-result p0

    return p0
.end method

.method public static getClientCertificateTypeExtensionServer(Ljava/util/Hashtable;S)S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_client_certificate_type:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/bouncycastle/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p0

    if-nez p0, :cond_0

    return p1

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->readCertificateTypeExtensionServer([B)S

    move-result p0

    return p0
.end method

.method public static getCompressCertificateExtension(Ljava/util/Hashtable;)[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_compress_certificate:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/bouncycastle/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->readCompressCertificateExtension([B)[I

    move-result-object p0

    return-object p0
.end method

.method public static getConnectionIDExtension(Ljava/util/Hashtable;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_connection_id:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/bouncycastle/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->readConnectionIDExtension([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static getCookieExtension(Ljava/util/Hashtable;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_cookie:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/bouncycastle/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->readCookieExtension([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static getEarlyDataMaxSize(Ljava/util/Hashtable;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_early_data:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/bouncycastle/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->readEarlyDataMaxSize([B)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getHeartbeatExtension(Ljava/util/Hashtable;)Lorg/bouncycastle/tls/HeartbeatExtension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_heartbeat:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/bouncycastle/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->readHeartbeatExtension([B)Lorg/bouncycastle/tls/HeartbeatExtension;

    move-result-object p0

    return-object p0
.end method

.method public static getKeyShareClientHello(Ljava/util/Hashtable;)Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_key_share:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/bouncycastle/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->readKeyShareClientHello([B)Ljava/util/Vector;

    move-result-object p0

    return-object p0
.end method

.method public static getKeyShareHelloRetryRequest(Ljava/util/Hashtable;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_key_share:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/bouncycastle/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->readKeyShareHelloRetryRequest([B)I

    move-result p0

    return p0
.end method

.method public static getKeyShareServerHello(Ljava/util/Hashtable;)Lorg/bouncycastle/tls/KeyShareEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_key_share:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/bouncycastle/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->readKeyShareServerHello([B)Lorg/bouncycastle/tls/KeyShareEntry;

    move-result-object p0

    return-object p0
.end method

.method public static getMaxFragmentLengthExtension(Ljava/util/Hashtable;)S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_max_fragment_length:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/bouncycastle/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->readMaxFragmentLengthExtension([B)S

    move-result p0

    return p0
.end method

.method public static getOIDFiltersExtension(Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_oid_filters:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/bouncycastle/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->readOIDFiltersExtension([B)Ljava/util/Hashtable;

    move-result-object p0

    return-object p0
.end method

.method public static getPSKKeyExchangeModesExtension(Ljava/util/Hashtable;)[S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_psk_key_exchange_modes:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/bouncycastle/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->readPSKKeyExchangeModesExtension([B)[S

    move-result-object p0

    return-object p0
.end method

.method public static getPaddingExtension(Ljava/util/Hashtable;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_padding:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/bouncycastle/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->readPaddingExtension([B)I

    move-result p0

    return p0
.end method

.method public static getPreSharedKeyClientHello(Ljava/util/Hashtable;)Lorg/bouncycastle/tls/OfferedPsks;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_pre_shared_key:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/bouncycastle/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->readPreSharedKeyClientHello([B)Lorg/bouncycastle/tls/OfferedPsks;

    move-result-object p0

    return-object p0
.end method

.method public static getPreSharedKeyServerHello(Ljava/util/Hashtable;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_pre_shared_key:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/bouncycastle/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->readPreSharedKeyServerHello([B)I

    move-result p0

    return p0
.end method

.method public static getRecordSizeLimitExtension(Ljava/util/Hashtable;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_record_size_limit:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/bouncycastle/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->readRecordSizeLimitExtension([B)I

    move-result p0

    return p0
.end method

.method public static getServerCertificateTypeExtensionClient(Ljava/util/Hashtable;)[S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_server_certificate_type:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/bouncycastle/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->readCertificateTypeExtensionClient([B)[S

    move-result-object p0

    return-object p0
.end method

.method public static getServerCertificateTypeExtensionServer(Ljava/util/Hashtable;)S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_server_certificate_type:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/bouncycastle/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->readCertificateTypeExtensionServer([B)S

    move-result p0

    return p0
.end method

.method public static getServerCertificateTypeExtensionServer(Ljava/util/Hashtable;S)S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_server_certificate_type:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/bouncycastle/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p0

    if-nez p0, :cond_0

    return p1

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->readCertificateTypeExtensionServer([B)S

    move-result p0

    return p0
.end method

.method public static getServerNameExtensionClient(Ljava/util/Hashtable;)Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_server_name:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/bouncycastle/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->readServerNameExtensionClient([B)Ljava/util/Vector;

    move-result-object p0

    return-object p0
.end method

.method public static getSignatureAlgorithmsCertExtension(Ljava/util/Hashtable;)Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_signature_algorithms_cert:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/bouncycastle/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->readSignatureAlgorithmsCertExtension([B)Ljava/util/Vector;

    move-result-object p0

    return-object p0
.end method

.method public static getSignatureAlgorithmsExtension(Ljava/util/Hashtable;)Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_signature_algorithms:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/bouncycastle/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->readSignatureAlgorithmsExtension([B)Ljava/util/Vector;

    move-result-object p0

    return-object p0
.end method

.method public static getStatusRequestExtension(Ljava/util/Hashtable;)Lorg/bouncycastle/tls/CertificateStatusRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_status_request:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/bouncycastle/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->readStatusRequestExtension([B)Lorg/bouncycastle/tls/CertificateStatusRequest;

    move-result-object p0

    return-object p0
.end method

.method public static getStatusRequestV2Extension(Ljava/util/Hashtable;)Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_status_request_v2:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/bouncycastle/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->readStatusRequestV2Extension([B)Ljava/util/Vector;

    move-result-object p0

    return-object p0
.end method

.method public static getSupportedGroupsExtension(Ljava/util/Hashtable;)[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_supported_groups:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/bouncycastle/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->readSupportedGroupsExtension([B)[I

    move-result-object p0

    return-object p0
.end method

.method public static getSupportedPointFormatsExtension(Ljava/util/Hashtable;)[S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_ec_point_formats:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/bouncycastle/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->readSupportedPointFormatsExtension([B)[S

    move-result-object p0

    return-object p0
.end method

.method public static getSupportedVersionsExtensionClient(Ljava/util/Hashtable;)[Lorg/bouncycastle/tls/ProtocolVersion;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_supported_versions:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/bouncycastle/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->readSupportedVersionsExtensionClient([B)[Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object p0

    return-object p0
.end method

.method public static getSupportedVersionsExtensionServer(Ljava/util/Hashtable;)Lorg/bouncycastle/tls/ProtocolVersion;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_supported_versions:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/bouncycastle/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->readSupportedVersionsExtensionServer([B)Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object p0

    return-object p0
.end method

.method public static getTrustedCAKeysExtensionClient(Ljava/util/Hashtable;)Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_trusted_ca_keys:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/bouncycastle/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->readTrustedCAKeysExtensionClient([B)Ljava/util/Vector;

    move-result-object p0

    return-object p0
.end method

.method public static hasClientCertificateURLExtension(Ljava/util/Hashtable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_client_certificate_url:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/bouncycastle/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->readClientCertificateURLExtension([B)Z

    move-result p0

    return p0
.end method

.method public static hasEarlyDataIndication(Ljava/util/Hashtable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_early_data:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/bouncycastle/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->readEarlyDataIndication([B)Z

    move-result p0

    return p0
.end method

.method public static hasEncryptThenMACExtension(Ljava/util/Hashtable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_encrypt_then_mac:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/bouncycastle/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->readEncryptThenMACExtension([B)Z

    move-result p0

    return p0
.end method

.method public static hasExtendedMasterSecretExtension(Ljava/util/Hashtable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_extended_master_secret:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/bouncycastle/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->readExtendedMasterSecretExtension([B)Z

    move-result p0

    return p0
.end method

.method public static hasPostHandshakeAuthExtension(Ljava/util/Hashtable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_post_handshake_auth:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/bouncycastle/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->readPostHandshakeAuthExtension([B)Z

    move-result p0

    return p0
.end method

.method public static hasServerNameExtensionServer(Ljava/util/Hashtable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_server_name:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/bouncycastle/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->readServerNameExtensionServer([B)Z

    move-result p0

    return p0
.end method

.method public static hasTruncatedHMacExtension(Ljava/util/Hashtable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_truncated_hmac:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/bouncycastle/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->readTruncatedHMacExtension([B)Z

    move-result p0

    return p0
.end method

.method public static hasTrustedCAKeysExtensionServer(Ljava/util/Hashtable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_trusted_ca_keys:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/bouncycastle/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->readTrustedCAKeysExtensionServer([B)Z

    move-result p0

    return p0
.end method

.method private static patchOpaque16(Ljava/io/ByteArrayOutputStream;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->checkUint16(I)V

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lorg/bouncycastle/tls/TlsUtils;->writeUint16(I[BI)V

    return-object p0
.end method

.method public static readALPNExtensionClient([B)Ljava/util/Vector;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v1

    array-length p0, p0

    add-int/lit8 p0, p0, -0x2

    if-ne v1, p0, :cond_1

    new-instance p0, Ljava/util/Vector;

    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {v0}, Lorg/bouncycastle/tls/ProtocolName;->parse(Ljava/io/InputStream;)Lorg/bouncycastle/tls/ProtocolName;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'extensionData\' cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static readALPNExtensionServer([B)Lorg/bouncycastle/tls/ProtocolName;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->readALPNExtensionClient([B)Ljava/util/Vector;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/tls/ProtocolName;

    return-object p0

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public static readCertificateAuthoritiesExtension([B)Ljava/util/Vector;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_3

    array-length v0, p0

    const/4 v1, 0x5

    const/16 v2, 0x32

    if-lt v0, v1, :cond_2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v1

    array-length p0, p0

    add-int/lit8 p0, p0, -0x2

    if-ne v1, p0, :cond_1

    new-instance p0, Ljava/util/Vector;

    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/bouncycastle/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;I)[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/tls/TlsUtils;->readASN1Object([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/bouncycastle/tls/TlsUtils;->requireDEREncoding(Lorg/bouncycastle/asn1/ASN1Object;[B)V

    invoke-virtual {p0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p0, v2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_2
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p0, v2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'extensionData\' cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static readCertificateTypeExtensionClient([B)[S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->decodeUint8ArrayWithUint8Length([B)[S

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public static readCertificateTypeExtensionServer([B)S
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->decodeUint8([B)S

    move-result p0

    return p0
.end method

.method public static readClientCertificateURLExtension([B)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->readEmptyExtensionData([B)Z

    move-result p0

    return p0
.end method

.method public static readCompressCertificateExtension([B)[I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->decodeUint16ArrayWithUint8Length([B)[I

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public static readConnectionIDExtension([B)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->decodeOpaque8([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static readCookieExtension([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/bouncycastle/tls/TlsUtils;->decodeOpaque16([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static readEarlyDataIndication([B)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->readEmptyExtensionData([B)Z

    move-result p0

    return p0
.end method

.method public static readEarlyDataMaxSize([B)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->decodeUint32([B)J

    move-result-wide v0

    return-wide v0
.end method

.method private static readEmptyExtensionData([B)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_1

    array-length p0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x2f

    invoke-direct {p0, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'extensionData\' cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static readEncryptThenMACExtension([B)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->readEmptyExtensionData([B)Z

    move-result p0

    return p0
.end method

.method public static readExtendedMasterSecretExtension([B)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->readEmptyExtensionData([B)Z

    move-result p0

    return p0
.end method

.method public static readHeartbeatExtension([B)Lorg/bouncycastle/tls/HeartbeatExtension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lorg/bouncycastle/tls/HeartbeatExtension;->parse(Ljava/io/InputStream;)Lorg/bouncycastle/tls/HeartbeatExtension;

    move-result-object p0

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'extensionData\' cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static readKeyShareClientHello([B)Ljava/util/Vector;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v1

    array-length p0, p0

    add-int/lit8 p0, p0, -0x2

    if-ne v1, p0, :cond_1

    new-instance p0, Ljava/util/Vector;

    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {v0}, Lorg/bouncycastle/tls/KeyShareEntry;->parse(Ljava/io/InputStream;)Lorg/bouncycastle/tls/KeyShareEntry;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'extensionData\' cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static readKeyShareHelloRetryRequest([B)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->decodeUint16([B)I

    move-result p0

    return p0
.end method

.method public static readKeyShareServerHello([B)Lorg/bouncycastle/tls/KeyShareEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lorg/bouncycastle/tls/KeyShareEntry;->parse(Ljava/io/InputStream;)Lorg/bouncycastle/tls/KeyShareEntry;

    move-result-object p0

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'extensionData\' cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static readMaxFragmentLengthExtension([B)S
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->decodeUint8([B)S

    move-result p0

    return p0
.end method

.method public static readOIDFiltersExtension([B)Ljava/util/Hashtable;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_4

    array-length v0, p0

    const/16 v1, 0x32

    const/4 v2, 0x2

    if-lt v0, v2, :cond_3

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v3

    array-length p0, p0

    sub-int/2addr p0, v2

    if-ne v3, p0, :cond_2

    new-instance p0, Ljava/util/Hashtable;

    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/bouncycastle/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;I)[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/tls/TlsUtils;->readASN1Object([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/bouncycastle/tls/TlsUtils;->requireDEREncoding(Lorg/bouncycastle/asn1/ASN1Object;[B)V

    invoke-virtual {p0, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x2f

    invoke-direct {p0, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_1
    return-object p0

    :cond_2
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p0, v1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_3
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p0, v1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'extensionData\' cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static readPSKKeyExchangeModesExtension([B)[S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->decodeUint8ArrayWithUint8Length([B)[S

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public static readPaddingExtension([B)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-byte v2, p0, v0

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    array-length p0, p0

    return p0

    :cond_1
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x2f

    invoke-direct {p0, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'extensionData\' cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static readPostHandshakeAuthExtension([B)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->readEmptyExtensionData([B)Z

    move-result p0

    return p0
.end method

.method public static readPreSharedKeyClientHello([B)Lorg/bouncycastle/tls/OfferedPsks;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lorg/bouncycastle/tls/OfferedPsks;->parse(Ljava/io/InputStream;)Lorg/bouncycastle/tls/OfferedPsks;

    move-result-object p0

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'extensionData\' cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static readPreSharedKeyServerHello([B)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->decodeUint16([B)I

    move-result p0

    return p0
.end method

.method public static readRecordSizeLimitExtension([B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->decodeUint16([B)I

    move-result p0

    const/16 v0, 0x40

    if-lt p0, v0, :cond_0

    return p0

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x2f

    invoke-direct {p0, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public static readServerNameExtensionClient([B)Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lorg/bouncycastle/tls/ServerNameList;->parse(Ljava/io/InputStream;)Lorg/bouncycastle/tls/ServerNameList;

    move-result-object p0

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    invoke-virtual {p0}, Lorg/bouncycastle/tls/ServerNameList;->getServerNameList()Ljava/util/Vector;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'extensionData\' cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static readServerNameExtensionServer([B)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->readEmptyExtensionData([B)Z

    move-result p0

    return p0
.end method

.method public static readSignatureAlgorithmsCertExtension([B)Ljava/util/Vector;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->readSignatureAlgorithmsExtension([B)Ljava/util/Vector;

    move-result-object p0

    return-object p0
.end method

.method public static readSignatureAlgorithmsExtension([B)Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->parseSupportedSignatureAlgorithms(Ljava/io/InputStream;)Ljava/util/Vector;

    move-result-object p0

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'extensionData\' cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static readStatusRequestExtension([B)Lorg/bouncycastle/tls/CertificateStatusRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lorg/bouncycastle/tls/CertificateStatusRequest;->parse(Ljava/io/InputStream;)Lorg/bouncycastle/tls/CertificateStatusRequest;

    move-result-object p0

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'extensionData\' cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static readStatusRequestV2Extension([B)Ljava/util/Vector;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_3

    array-length v0, p0

    const/4 v1, 0x3

    const/16 v2, 0x32

    if-lt v0, v1, :cond_2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v1

    array-length p0, p0

    add-int/lit8 p0, p0, -0x2

    if-ne v1, p0, :cond_1

    new-instance p0, Ljava/util/Vector;

    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {v0}, Lorg/bouncycastle/tls/CertificateStatusRequestItemV2;->parse(Ljava/io/InputStream;)Lorg/bouncycastle/tls/CertificateStatusRequestItemV2;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p0, v2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_2
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p0, v2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'extensionData\' cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static readSupportedGroupsExtension([B)[I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result p0

    const/4 v1, 0x2

    if-lt p0, v1, :cond_0

    and-int/lit8 v2, p0, 0x1

    if-nez v2, :cond_0

    div-int/2addr p0, v1

    invoke-static {p0, v0}, Lorg/bouncycastle/tls/TlsUtils;->readUint16Array(ILjava/io/InputStream;)[I

    move-result-object p0

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    return-object p0

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'extensionData\' cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static readSupportedPointFormatsExtension([B)[S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->decodeUint8ArrayWithUint8Length([B)[S

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/bouncycastle/util/Arrays;->contains([SS)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x2f

    invoke-direct {p0, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public static readSupportedVersionsExtensionClient([B)[Lorg/bouncycastle/tls/ProtocolVersion;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_3

    array-length v0, p0

    const/4 v1, 0x3

    const/16 v2, 0x32

    if-lt v0, v1, :cond_2

    array-length v0, p0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_2

    array-length v0, p0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/bouncycastle/tls/TlsUtils;->readUint8([BI)S

    move-result v1

    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_1

    div-int/lit8 v1, v1, 0x2

    new-array v2, v1, [Lorg/bouncycastle/tls/ProtocolVersion;

    :goto_0
    if-ge v0, v1, :cond_0

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-static {p0, v3}, Lorg/bouncycastle/tls/TlsUtils;->readVersion([BI)Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2

    :cond_1
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p0, v2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_2
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p0, v2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'extensionData\' cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static readSupportedVersionsExtensionServer([B)Lorg/bouncycastle/tls/ProtocolVersion;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_1

    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/bouncycastle/tls/TlsUtils;->readVersion([BI)Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'extensionData\' cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static readTruncatedHMacExtension([B)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->readEmptyExtensionData([B)Z

    move-result p0

    return p0
.end method

.method public static readTrustedCAKeysExtensionClient([B)Ljava/util/Vector;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_3

    array-length v0, p0

    const/16 v1, 0x32

    const/4 v2, 0x2

    if-lt v0, v2, :cond_2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v3

    array-length p0, p0

    sub-int/2addr p0, v2

    if-ne v3, p0, :cond_1

    new-instance p0, Ljava/util/Vector;

    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {v0}, Lorg/bouncycastle/tls/TrustedAuthority;->parse(Ljava/io/InputStream;)Lorg/bouncycastle/tls/TrustedAuthority;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p0, v1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_2
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p0, v1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'extensionData\' cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static readTrustedCAKeysExtensionServer([B)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->readEmptyExtensionData([B)Z

    move-result p0

    return p0
.end method
