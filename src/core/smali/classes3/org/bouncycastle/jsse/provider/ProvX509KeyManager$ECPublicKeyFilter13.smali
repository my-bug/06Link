.class final Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$ECPublicKeyFilter13;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$PublicKeyFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ECPublicKeyFilter13"
.end annotation


# instance fields
.field final standardOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$ECPublicKeyFilter13;->standardOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method

.method private appliesTo(Ljava/security/PublicKey;)Z
    .locals 2

    const-string v0, "EC"

    invoke-static {p1}, Lorg/bouncycastle/jsse/provider/JsseUtils;->getPublicKeyAlgorithm(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljava/security/interfaces/ECPublicKey;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/jsse/provider/JsseUtils;->getNamedCurveOID(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$ECPublicKeyFilter13;->standardOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public accepts(Ljava/security/PublicKey;[ZLorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;)Z
    .locals 2

    invoke-direct {p0, p1}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$ECPublicKeyFilter13;->appliesTo(Ljava/security/PublicKey;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1, p2, v1, p3}, Lorg/bouncycastle/jsse/provider/ProvAlgorithmChecker;->permitsKeyUsage(Ljava/security/PublicKey;[ZILorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method
