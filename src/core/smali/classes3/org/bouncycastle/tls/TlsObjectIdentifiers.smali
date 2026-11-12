.class public interface abstract Lorg/bouncycastle/tls/TlsObjectIdentifiers;
.super Ljava/lang/Object;


# static fields
.field public static final id_pe_tlsfeature:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_pe:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "24"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/tls/TlsObjectIdentifiers;->id_pe_tlsfeature:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method
