.class public Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TypesEnrolment;
.super Ljava/lang/Object;


# static fields
.field public static final EnrolmentResponseCode:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final InnerEcRequest:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final InnerEcRequestSignedForPop:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final InnerEcResponse:Lorg/bouncycastle/oer/OERDefinition$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v0, "ok"

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-static {v0, v1}, Lorg/bouncycastle/oer/OERDefinition;->enumItem(Ljava/lang/String;Ljava/math/BigInteger;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v2}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v2

    const/16 v3, 0xf

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    const/4 v0, 0x1

    const-string v4, "cantparse"

    aput-object v4, v3, v0

    const/4 v4, 0x2

    const-string v5, "badcontenttype"

    aput-object v5, v3, v4

    const/4 v5, 0x3

    const-string v6, "imnottherecipient"

    aput-object v6, v3, v5

    const/4 v6, 0x4

    const-string v7, "unknownencryptionalgorithm"

    aput-object v7, v3, v6

    const/4 v7, 0x5

    const-string v8, "decryptionfailed"

    aput-object v8, v3, v7

    const-string v8, "unknownits"

    const/4 v9, 0x6

    aput-object v8, v3, v9

    const-string v8, "invalidsignature"

    const/4 v9, 0x7

    aput-object v8, v3, v9

    const-string v8, "invalidencryptionkey"

    const/16 v9, 0x8

    aput-object v8, v3, v9

    const-string v8, "baditsstatus"

    const/16 v9, 0x9

    aput-object v8, v3, v9

    const-string v8, "incompleterequest"

    const/16 v9, 0xa

    aput-object v8, v3, v9

    const-string v8, "deniedpermissions"

    const/16 v9, 0xb

    aput-object v8, v3, v9

    const-string v8, "invalidkeys"

    const/16 v9, 0xc

    aput-object v8, v3, v9

    const-string v8, "deniedrequest"

    const/16 v9, 0xd

    aput-object v8, v3, v9

    const/16 v8, 0xe

    aput-object v2, v3, v8

    invoke-static {v3}, Lorg/bouncycastle/oer/OERDefinition;->enumeration([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    const-string v3, "EnrolmentResponseCode"

    invoke-virtual {v2, v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TypesEnrolment;->EnrolmentResponseCode:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const/16 v3, 0x10

    invoke-static {v3}, Lorg/bouncycastle/oer/OERDefinition;->octets(I)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    const-string v8, "requestHash"

    invoke-virtual {v3, v8}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    const-string v8, "responseCode"

    invoke-virtual {v2, v8}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    sget-object v8, Lorg/bouncycastle/oer/its/template/etsi103097/EtsiTs103097Module;->EtsiTs103097Certificate:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v9, "certificate"

    invoke-virtual {v8, v9}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v8

    new-array v9, v0, [Ljava/lang/Object;

    aput-object v8, v9, v1

    invoke-static {v9}, Lorg/bouncycastle/oer/OERDefinition;->optional([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    new-array v9, v1, [Ljava/lang/Object;

    invoke-static {v9}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v9

    new-array v10, v6, [Ljava/lang/Object;

    aput-object v3, v10, v1

    aput-object v2, v10, v0

    aput-object v8, v10, v4

    aput-object v9, v10, v5

    invoke-static {v10}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    const-string v3, "InnerEcResponse"

    invoke-virtual {v2, v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TypesEnrolment;->InnerEcResponse:Lorg/bouncycastle/oer/OERDefinition$Builder;

    invoke-static {}, Lorg/bouncycastle/oer/OERDefinition;->octets()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    const-string v3, "itsId"

    invoke-virtual {v2, v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    sget-object v3, Lorg/bouncycastle/oer/its/template/etsi102941/basetypes/EtsiTs102941BaseTypes;->CertificateFormat:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v8, "certificateFormat"

    invoke-virtual {v3, v8}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    sget-object v8, Lorg/bouncycastle/oer/its/template/etsi102941/basetypes/EtsiTs102941BaseTypes;->PublicKeys:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v9, "publicKeys"

    invoke-virtual {v8, v9}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v8

    sget-object v9, Lorg/bouncycastle/oer/its/template/etsi102941/basetypes/EtsiTs102941BaseTypes;->CertificateSubjectAttributes:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v10, "requestedSubjectAttributes"

    invoke-virtual {v9, v10}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v9

    new-array v10, v1, [Ljava/lang/Object;

    invoke-static {v10}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v10

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v1

    aput-object v3, v7, v0

    aput-object v8, v7, v4

    aput-object v9, v7, v5

    aput-object v10, v7, v6

    invoke-static {v7}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const-string v1, "InnerEcRequest"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TypesEnrolment;->InnerEcRequest:Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v0, Lorg/bouncycastle/oer/its/template/etsi103097/EtsiTs103097Module;->EtsiTs103097Data_Signed:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v1, "InnerEcRequestSignedForPop"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TypesEnrolment;->InnerEcRequestSignedForPop:Lorg/bouncycastle/oer/OERDefinition$Builder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
