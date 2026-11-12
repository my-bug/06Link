.class public Lorg/bouncycastle/asn1/x509/CRLReason;
.super Lorg/bouncycastle/asn1/ASN1Object;


# static fields
.field public static final AA_COMPROMISE:I = 0xa

.field public static final AFFILIATION_CHANGED:I = 0x3

.field public static final CA_COMPROMISE:I = 0x2

.field public static final CERTIFICATE_HOLD:I = 0x6

.field public static final CESSATION_OF_OPERATION:I = 0x5

.field public static final KEY_COMPROMISE:I = 0x1

.field public static final PRIVILEGE_WITHDRAWN:I = 0x9

.field public static final REMOVE_FROM_CRL:I = 0x8

.field public static final SUPERSEDED:I = 0x4

.field public static final UNSPECIFIED:I = 0x0

.field public static final aACompromise:I = 0xa

.field public static final affiliationChanged:I = 0x3

.field public static final cACompromise:I = 0x2

.field public static final certificateHold:I = 0x6

.field public static final cessationOfOperation:I = 0x5

.field public static final keyCompromise:I = 0x1

.field public static final privilegeWithdrawn:I = 0x9

.field private static final reasonString:[Ljava/lang/String;

.field public static final removeFromCRL:I = 0x8

.field public static final superseded:I = 0x4

.field private static final table:Ljava/util/Hashtable;

.field public static final unspecified:I


# instance fields
.field private value:Lorg/bouncycastle/asn1/ASN1Enumerated;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "unspecified"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "keyCompromise"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "cACompromise"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "affiliationChanged"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "superseded"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "cessationOfOperation"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "certificateHold"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "unknown"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "removeFromCRL"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "privilegeWithdrawn"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "aACompromise"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sput-object v0, Lorg/bouncycastle/asn1/x509/CRLReason;->reasonString:[Ljava/lang/String;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/x509/CRLReason;->table:Ljava/util/Hashtable;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    if-ltz p1, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Enumerated;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ASN1Enumerated;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/CRLReason;->value:Lorg/bouncycastle/asn1/ASN1Enumerated;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid CRL reason : not in (0..MAX)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/CRLReason;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/CRLReason;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/x509/CRLReason;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Enumerated;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Enumerated;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Enumerated;->intValueExact()I

    move-result p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/CRLReason;->lookup(I)Lorg/bouncycastle/asn1/x509/CRLReason;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static lookup(I)Lorg/bouncycastle/asn1/x509/CRLReason;
    .locals 3

    invoke-static {p0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/asn1/x509/CRLReason;->table:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lorg/bouncycastle/asn1/x509/CRLReason;

    invoke-direct {v2, p0}, Lorg/bouncycastle/asn1/x509/CRLReason;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/x509/CRLReason;

    return-object p0
.end method


# virtual methods
.method public getValue()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/CRLReason;->value:Lorg/bouncycastle/asn1/ASN1Enumerated;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/CRLReason;->value:Lorg/bouncycastle/asn1/ASN1Enumerated;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/CRLReason;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    if-ltz v0, :cond_1

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/bouncycastle/asn1/x509/CRLReason;->reasonString:[Ljava/lang/String;

    aget-object v0, v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "invalid"

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CRLReason: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
