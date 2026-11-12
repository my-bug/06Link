.class public Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TypesAuthorization;
.super Ljava/lang/Object;


# static fields
.field public static final AuthorizationResponseCode:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final InnerAtRequest:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final InnerAtResponse:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final SharedAtRequest:Lorg/bouncycastle/oer/OERDefinition$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "ok"

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-static {v0, v1}, Lorg/bouncycastle/oer/OERDefinition;->enumItem(Ljava/lang/String;Ljava/math/BigInteger;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const/16 v1, 0x1b

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    const-string v3, "its-aa-cantparse"

    aput-object v3, v1, v0

    const/4 v3, 0x2

    const-string v4, "its-aa-badcontenttype"

    aput-object v4, v1, v3

    const/4 v4, 0x3

    const-string v5, "its-aa-imnottherecipient"

    aput-object v5, v1, v4

    const/4 v5, 0x4

    const-string v6, "its-aa-unknownencryptionalgorithm"

    aput-object v6, v1, v5

    const/4 v6, 0x5

    const-string v7, "its-aa-decryptionfailed"

    aput-object v7, v1, v6

    const-string v7, "its-aa-keysdontmatch"

    const/4 v8, 0x6

    aput-object v7, v1, v8

    const-string v7, "its-aa-incompleterequest"

    const/4 v8, 0x7

    aput-object v7, v1, v8

    const-string v7, "its-aa-invalidencryptionkey"

    const/16 v8, 0x8

    aput-object v7, v1, v8

    const-string v7, "its-aa-outofsyncrequest"

    const/16 v8, 0x9

    aput-object v7, v1, v8

    const-string v7, "its-aa-unknownea"

    const/16 v8, 0xa

    aput-object v7, v1, v8

    const-string v7, "its-aa-invalidea"

    const/16 v8, 0xb

    aput-object v7, v1, v8

    const-string v7, "its-aa-deniedpermissions"

    const/16 v8, 0xc

    aput-object v7, v1, v8

    const-string v7, "aa-ea-cantreachea"

    const/16 v8, 0xd

    aput-object v7, v1, v8

    const-string v7, "ea-aa-cantparse"

    const/16 v8, 0xe

    aput-object v7, v1, v8

    const-string v7, "ea-aa-badcontenttype"

    const/16 v8, 0xf

    aput-object v7, v1, v8

    const/16 v7, 0x10

    const-string v8, "ea-aa-imnottherecipient"

    aput-object v8, v1, v7

    const-string v8, "ea-aa-unknownencryptionalgorithm"

    const/16 v9, 0x11

    aput-object v8, v1, v9

    const-string v8, "ea-aa-decryptionfailed"

    const/16 v9, 0x12

    aput-object v8, v1, v9

    const-string v8, "invalidaa"

    const/16 v9, 0x13

    aput-object v8, v1, v9

    const-string v8, "invalidaasignature"

    const/16 v9, 0x14

    aput-object v8, v1, v9

    const-string v8, "wrongea"

    const/16 v9, 0x15

    aput-object v8, v1, v9

    const-string v8, "unknownits"

    const/16 v9, 0x16

    aput-object v8, v1, v9

    const-string v8, "invalidsignature"

    const/16 v9, 0x17

    aput-object v8, v1, v9

    const-string v8, "invalidencryptionkey"

    const/16 v9, 0x18

    aput-object v8, v1, v9

    const-string v8, "deniedpermissions"

    const/16 v9, 0x19

    aput-object v8, v1, v9

    const-string v8, "deniedtoomanycerts"

    const/16 v9, 0x1a

    aput-object v8, v1, v9

    invoke-static {v1}, Lorg/bouncycastle/oer/OERDefinition;->enumeration([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    const-string v8, "AuthorizationResponseCode"

    invoke-virtual {v1, v8}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TypesAuthorization;->AuthorizationResponseCode:Lorg/bouncycastle/oer/OERDefinition$Builder;

    invoke-static {v7}, Lorg/bouncycastle/oer/OERDefinition;->octets(I)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v8

    const-string v9, "requestHash"

    invoke-virtual {v8, v9}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v8

    const-string v9, "responseCode"

    invoke-virtual {v1, v9}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    sget-object v9, Lorg/bouncycastle/oer/its/template/etsi103097/EtsiTs103097Module;->EtsiTs103097Certificate:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v10, "certificate"

    invoke-virtual {v9, v10}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v9

    new-array v10, v0, [Ljava/lang/Object;

    aput-object v9, v10, v2

    invoke-static {v10}, Lorg/bouncycastle/oer/OERDefinition;->optional([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    new-array v10, v2, [Ljava/lang/Object;

    invoke-static {v10}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v10

    new-array v11, v5, [Ljava/lang/Object;

    aput-object v8, v11, v2

    aput-object v1, v11, v0

    aput-object v9, v11, v3

    aput-object v10, v11, v4

    invoke-static {v11}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    const-string v8, "InnerAtResponse"

    invoke-virtual {v1, v8}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TypesAuthorization;->InnerAtResponse:Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v1, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->HashedId8:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v8, "eaId"

    invoke-virtual {v1, v8}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    invoke-static {v7}, Lorg/bouncycastle/oer/OERDefinition;->octets(I)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    const-string v8, "keyTag"

    invoke-virtual {v7, v8}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    sget-object v8, Lorg/bouncycastle/oer/its/template/etsi102941/basetypes/EtsiTs102941BaseTypes;->CertificateFormat:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v9, "certificateFormat"

    invoke-virtual {v8, v9}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v8

    sget-object v9, Lorg/bouncycastle/oer/its/template/etsi102941/basetypes/EtsiTs102941BaseTypes;->CertificateSubjectAttributes:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v10, "requestedSubjectAttributes"

    invoke-virtual {v9, v10}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v9

    new-array v10, v2, [Ljava/lang/Object;

    invoke-static {v10}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v10

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v2

    aput-object v7, v6, v0

    aput-object v8, v6, v3

    aput-object v9, v6, v4

    aput-object v10, v6, v5

    invoke-static {v6}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    const-string v6, "SharedAtRequest"

    invoke-virtual {v1, v6}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TypesAuthorization;->SharedAtRequest:Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v6, Lorg/bouncycastle/oer/its/template/etsi102941/basetypes/EtsiTs102941BaseTypes;->PublicKeys:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v7, "publicKeys"

    invoke-virtual {v6, v7}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v6

    const/16 v7, 0x20

    invoke-static {v7}, Lorg/bouncycastle/oer/OERDefinition;->octets(I)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    const-string v8, "hmacKey"

    invoke-virtual {v7, v8}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    const-string v8, "sharedAtRequest"

    invoke-virtual {v1, v8}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    sget-object v8, Lorg/bouncycastle/oer/its/template/etsi102941/basetypes/EtsiTs102941BaseTypes;->EcSignature:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v9, "ecSignature"

    invoke-virtual {v8, v9}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v8

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v6, v5, v2

    aput-object v7, v5, v0

    aput-object v1, v5, v3

    aput-object v8, v5, v4

    invoke-static {v5}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const-string v1, "InnerAtRequest"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TypesAuthorization;->InnerAtRequest:Lorg/bouncycastle/oer/OERDefinition$Builder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
