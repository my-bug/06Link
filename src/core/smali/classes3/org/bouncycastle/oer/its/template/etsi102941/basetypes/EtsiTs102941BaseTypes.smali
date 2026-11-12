.class public Lorg/bouncycastle/oer/its/template/etsi102941/basetypes/EtsiTs102941BaseTypes;
.super Ljava/lang/Object;


# static fields
.field public static final CertificateFormat:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final CertificateSubjectAttributes:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final EcSignature:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final PublicKeys:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final Version:Lorg/bouncycastle/oer/OERDefinition$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0xff

    invoke-static {v0, v1, v2, v3}, Lorg/bouncycastle/oer/OERDefinition;->integer(JJ)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v4

    const-string v5, "CertificateFormat"

    invoke-virtual {v4, v5}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v4

    sput-object v4, Lorg/bouncycastle/oer/its/template/etsi102941/basetypes/EtsiTs102941BaseTypes;->CertificateFormat:Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v4, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->CertificateId:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v5, "id"

    invoke-virtual {v4, v5}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v4

    sget-object v5, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->ValidityPeriod:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v6, "validityPeriod"

    invoke-virtual {v5, v6}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v5

    sget-object v6, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->GeographicRegion:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v7, "region"

    invoke-virtual {v6, v7}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v6

    sget-object v7, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->SubjectAssurance:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v8, "assuranceLevel"

    invoke-virtual {v7, v8}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    sget-object v8, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->SequenceOfPsidSsp:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v9, "appPermissions"

    invoke-virtual {v8, v9}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v8

    sget-object v9, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->SequenceOfPsidGroupPermissions:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v10, "certIssuePermissions"

    invoke-virtual {v9, v10}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v9

    const/4 v10, 0x0

    new-array v11, v10, [Ljava/lang/Object;

    invoke-static {v11}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v11

    const/4 v12, 0x7

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v4, v12, v10

    const/4 v4, 0x1

    aput-object v5, v12, v4

    const/4 v5, 0x2

    aput-object v6, v12, v5

    const/4 v6, 0x3

    aput-object v7, v12, v6

    const/4 v6, 0x4

    aput-object v8, v12, v6

    const/4 v6, 0x5

    aput-object v9, v12, v6

    const/4 v6, 0x6

    aput-object v11, v12, v6

    invoke-static {v12}, Lorg/bouncycastle/oer/OERDefinition;->optional([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v6, v7, v10

    invoke-static {v7}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v6

    const-string v7, "CertificateSubjectAttributes"

    invoke-virtual {v6, v7}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v6

    sput-object v6, Lorg/bouncycastle/oer/its/template/etsi102941/basetypes/EtsiTs102941BaseTypes;->CertificateSubjectAttributes:Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v6, Lorg/bouncycastle/oer/its/template/etsi103097/EtsiTs103097Module;->EtsiTs103097Data_Encrypted:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v7, "encryptedEcSignature"

    invoke-virtual {v6, v7}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v6

    sget-object v7, Lorg/bouncycastle/oer/its/template/etsi103097/EtsiTs103097Module;->EtsiTs103097Data_SignedExternalPayload:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v8, "ecSignature"

    invoke-virtual {v7, v8}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v6, v8, v10

    aput-object v7, v8, v4

    invoke-static {v8}, Lorg/bouncycastle/oer/OERDefinition;->choice([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v6

    const-string v7, "EcSignature"

    invoke-virtual {v6, v7}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v6

    sput-object v6, Lorg/bouncycastle/oer/its/template/etsi102941/basetypes/EtsiTs102941BaseTypes;->EcSignature:Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v6, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->PublicVerificationKey:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v7, "verificationKey"

    invoke-virtual {v6, v7}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v6

    sget-object v7, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->PublicEncryptionKey:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v8, "encryptionKey"

    invoke-virtual {v7, v8}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v7, v8, v10

    invoke-static {v8}, Lorg/bouncycastle/oer/OERDefinition;->optional([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v6, v5, v10

    aput-object v7, v5, v4

    invoke-static {v5}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v4

    const-string v5, "PublicKeys"

    invoke-virtual {v4, v5}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v4

    sput-object v4, Lorg/bouncycastle/oer/its/template/etsi102941/basetypes/EtsiTs102941BaseTypes;->PublicKeys:Lorg/bouncycastle/oer/OERDefinition$Builder;

    invoke-static {v0, v1, v2, v3}, Lorg/bouncycastle/oer/OERDefinition;->integer(JJ)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const-string v1, "Version"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/basetypes/EtsiTs102941BaseTypes;->Version:Lorg/bouncycastle/oer/OERDefinition$Builder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
