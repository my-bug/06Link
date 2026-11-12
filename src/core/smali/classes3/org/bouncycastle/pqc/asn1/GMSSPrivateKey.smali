.class public Lorg/bouncycastle/pqc/asn1/GMSSPrivateKey;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private primitive:Lorg/bouncycastle/asn1/ASN1Primitive;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 9

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    new-array v2, v2, [I

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/pqc/asn1/GMSSPrivateKey;->checkBigIntegerInIntRange(Lorg/bouncycastle/asn1/ASN1Encodable;)I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    new-array v3, v2, [[B

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_1

    invoke-virtual {v1, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    new-array v3, v2, [[B

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_2

    invoke-virtual {v1, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    new-array v3, v2, [[[B

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v2, :cond_4

    invoke-virtual {v1, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v6

    new-array v6, v6, [[B

    aput-object v6, v3, v4

    const/4 v6, 0x0

    :goto_4
    aget-object v7, v3, v4

    array-length v8, v7

    if-ge v6, v8, :cond_3

    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v8

    check-cast v8, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v8

    aput-object v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    new-array v3, v2, [[[B

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v2, :cond_6

    invoke-virtual {v1, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v6

    new-array v6, v6, [[B

    aput-object v6, v3, v4

    const/4 v6, 0x0

    :goto_6
    aget-object v7, v3, v4

    array-length v8, v7

    if-ge v6, v8, :cond_5

    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v8

    check-cast v8, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v8

    aput-object v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_6
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result p1

    new-array p1, p1, [[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    return-void
.end method

.method public constructor <init>([I[[B[[B[[[B[[[B[[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;[[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;[Ljava/util/Vector;[Ljava/util/Vector;[[Ljava/util/Vector;[[Ljava/util/Vector;[[[B[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;[I[[B[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;[[B[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 24

    invoke-direct/range {p0 .. p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    const/4 v1, 0x0

    aput-object p22, v0, v1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v7, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    move-object/from16 v23, v0

    invoke-direct/range {v1 .. v23}, Lorg/bouncycastle/pqc/asn1/GMSSPrivateKey;->encode([I[[B[[B[[[B[[[B[[[B[[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;[[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;[Ljava/util/Vector;[Ljava/util/Vector;[[Ljava/util/Vector;[[Ljava/util/Vector;[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;[I[[B[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;[[B[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;[Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    iput-object v0, v1, Lorg/bouncycastle/pqc/asn1/GMSSPrivateKey;->primitive:Lorg/bouncycastle/asn1/ASN1Primitive;

    return-void
.end method

.method private static checkBigIntegerInIntRange(Lorg/bouncycastle/asn1/ASN1Encodable;)I
    .locals 0

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result p0

    return p0
.end method

.method private encode([I[[B[[B[[[B[[[B[[[B[[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;[[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;[Ljava/util/Vector;[Ljava/util/Vector;[[Ljava/util/Vector;[[Ljava/util/Vector;[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;[I[[B[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;[[B[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;[Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 21

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    new-instance v15, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v15}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v14, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v14}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    const/16 v16, 0x0

    const/4 v13, 0x0

    :goto_0
    array-length v12, v0

    if-ge v13, v12, :cond_0

    new-instance v12, Lorg/bouncycastle/asn1/ASN1Integer;

    aget v0, p1, v13

    int-to-long v10, v0

    invoke-direct {v12, v10, v11}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v14, v12}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p1

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v14}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v15, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    const/4 v10, 0x0

    :goto_1
    array-length v11, v1

    if-ge v10, v11, :cond_1

    new-instance v11, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v12, v1, v10

    invoke-direct {v11, v12}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v11}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v15, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    const/4 v1, 0x0

    :goto_2
    array-length v10, v2

    if-ge v1, v10, :cond_2

    new-instance v10, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v11, v2, v1

    invoke-direct {v10, v11}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v15, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    const/4 v2, 0x0

    :goto_3
    array-length v10, v3

    if-ge v2, v10, :cond_4

    const/4 v10, 0x0

    :goto_4
    aget-object v11, v3, v2

    array-length v11, v11

    if-ge v10, v11, :cond_3

    new-instance v11, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v12, v3, v2

    aget-object v12, v12, v10

    invoke-direct {v11, v12}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v11}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_3
    new-instance v10, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v10, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v15, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    const/4 v2, 0x0

    :goto_5
    array-length v3, v4

    if-ge v2, v3, :cond_6

    const/4 v3, 0x0

    :goto_6
    aget-object v10, v4, v2

    array-length v10, v10

    if-ge v3, v10, :cond_5

    new-instance v10, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v11, v4, v2

    aget-object v11, v11, v3

    invoke-direct {v10, v11}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_5
    new-instance v3, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v3, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v15, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v4, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    const/4 v10, 0x0

    :goto_7
    array-length v11, v6

    const/16 v17, 0x2

    const/16 v18, 0x1

    const/16 p1, 0x5

    if-ge v10, v11, :cond_a

    const/4 v11, 0x0

    :goto_8
    aget-object v12, v6, v10

    array-length v12, v12

    if-ge v11, v12, :cond_9

    new-instance v12, Lorg/bouncycastle/asn1/DERSequence;

    const/16 p2, 0x4

    aget-object v13, p22, v16

    invoke-direct {v12, v13}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v2, v12}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    aget-object v12, v6, v10

    aget-object v12, v12, v11

    invoke-virtual {v12}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v12

    aget v12, v12, v18

    new-instance v13, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v19, v6, v10

    aget-object v19, v19, v11

    invoke-virtual/range {v19 .. v19}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatByte()[[B

    move-result-object v19

    const/16 p3, 0x3

    aget-object v14, v19, v16

    invoke-direct {v13, v14}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v3, v13}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v13, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v14, v6, v10

    aget-object v14, v14, v11

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatByte()[[B

    move-result-object v14

    aget-object v14, v14, v18

    invoke-direct {v13, v14}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v3, v13}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v13, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v14, v6, v10

    aget-object v14, v14, v11

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatByte()[[B

    move-result-object v14

    aget-object v14, v14, v17

    invoke-direct {v13, v14}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v3, v13}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v13, 0x0

    :goto_9
    if-ge v13, v12, :cond_7

    new-instance v14, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v19, v6, v10

    aget-object v19, v19, v11

    invoke-virtual/range {v19 .. v19}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatByte()[[B

    move-result-object v19

    add-int/lit8 v20, v13, 0x3

    aget-object v6, v19, v20

    invoke-direct {v14, v6}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v3, v14}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v6, p7

    goto :goto_9

    :cond_7
    new-instance v6, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v6, v3}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v2, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v6, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v13, p7, v10

    aget-object v13, v13, v11

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v13

    aget v13, v13, v16

    int-to-long v13, v13

    invoke-direct {v6, v13, v14}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v4, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v6, Lorg/bouncycastle/asn1/ASN1Integer;

    int-to-long v13, v12

    invoke-direct {v6, v13, v14}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v4, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v6, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v13, p7, v10

    aget-object v13, v13, v11

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v13

    aget v13, v13, v17

    int-to-long v13, v13

    invoke-direct {v6, v13, v14}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v4, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v6, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v13, p7, v10

    aget-object v13, v13, v11

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v13

    aget v13, v13, p3

    int-to-long v13, v13

    invoke-direct {v6, v13, v14}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v4, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v6, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v13, p7, v10

    aget-object v13, v13, v11

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v13

    aget v13, v13, p2

    int-to-long v13, v13

    invoke-direct {v6, v13, v14}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v4, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v6, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v13, p7, v10

    aget-object v13, v13, v11

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v13

    aget v13, v13, p1

    int-to-long v13, v13

    invoke-direct {v6, v13, v14}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v4, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v6, 0x0

    :goto_a
    if-ge v6, v12, :cond_8

    new-instance v13, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v14, p7, v10

    aget-object v14, v14, v11

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v14

    add-int/lit8 v19, v6, 0x6

    aget v14, v14, v19

    move/from16 v19, v10

    move/from16 v20, v11

    int-to-long v10, v14

    invoke-direct {v13, v10, v11}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v4, v13}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v6, v6, 0x1

    move/from16 v10, v19

    move/from16 v11, v20

    goto :goto_a

    :cond_8
    move/from16 v19, v10

    move/from16 v20, v11

    new-instance v6, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v6, v4}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v2, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v4, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v6, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v6, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    add-int/lit8 v11, v20, 0x1

    move-object/from16 v6, p7

    goto/16 :goto_8

    :cond_9
    move/from16 v19, v10

    new-instance v6, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v6, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    add-int/lit8 v10, v19, 0x1

    move-object/from16 v6, p7

    goto/16 :goto_7

    :cond_a
    const/16 p2, 0x4

    const/16 p3, 0x3

    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v15, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v4, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    const/4 v6, 0x0

    :goto_b
    array-length v10, v7

    if-ge v6, v10, :cond_e

    const/4 v10, 0x0

    :goto_c
    aget-object v11, v7, v6

    array-length v11, v11

    if-ge v10, v11, :cond_d

    new-instance v11, Lorg/bouncycastle/asn1/DERSequence;

    aget-object v12, p22, v16

    invoke-direct {v11, v12}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v2, v11}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    aget-object v11, v7, v6

    aget-object v11, v11, v10

    invoke-virtual {v11}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v11

    aget v11, v11, v18

    new-instance v12, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v13, v7, v6

    aget-object v13, v13, v10

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatByte()[[B

    move-result-object v13

    aget-object v13, v13, v16

    invoke-direct {v12, v13}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v3, v12}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v12, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v13, v7, v6

    aget-object v13, v13, v10

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatByte()[[B

    move-result-object v13

    aget-object v13, v13, v18

    invoke-direct {v12, v13}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v3, v12}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v12, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v13, v7, v6

    aget-object v13, v13, v10

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatByte()[[B

    move-result-object v13

    aget-object v13, v13, v17

    invoke-direct {v12, v13}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v3, v12}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v12, 0x0

    :goto_d
    if-ge v12, v11, :cond_b

    new-instance v13, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v14, v7, v6

    aget-object v14, v14, v10

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatByte()[[B

    move-result-object v14

    add-int/lit8 v19, v12, 0x3

    aget-object v14, v14, v19

    invoke-direct {v13, v14}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v3, v13}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_d

    :cond_b
    new-instance v12, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v12, v3}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v2, v12}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v12, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v13, v7, v6

    aget-object v13, v13, v10

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v13

    aget v13, v13, v16

    int-to-long v13, v13

    invoke-direct {v12, v13, v14}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v4, v12}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v12, Lorg/bouncycastle/asn1/ASN1Integer;

    int-to-long v13, v11

    invoke-direct {v12, v13, v14}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v4, v12}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v12, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v13, v7, v6

    aget-object v13, v13, v10

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v13

    aget v13, v13, v17

    int-to-long v13, v13

    invoke-direct {v12, v13, v14}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v4, v12}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v12, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v13, v7, v6

    aget-object v13, v13, v10

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v13

    aget v13, v13, p3

    int-to-long v13, v13

    invoke-direct {v12, v13, v14}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v4, v12}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v12, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v13, v7, v6

    aget-object v13, v13, v10

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v13

    aget v13, v13, p2

    int-to-long v13, v13

    invoke-direct {v12, v13, v14}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v4, v12}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v12, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v13, v7, v6

    aget-object v13, v13, v10

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v13

    aget v13, v13, p1

    int-to-long v13, v13

    invoke-direct {v12, v13, v14}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v4, v12}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v12, 0x0

    :goto_e
    if-ge v12, v11, :cond_c

    new-instance v13, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v14, v7, v6

    aget-object v14, v14, v10

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v14

    add-int/lit8 v19, v12, 0x6

    aget v14, v14, v19

    move/from16 v19, v6

    int-to-long v6, v14

    invoke-direct {v13, v6, v7}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v4, v13}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v7, p8

    move/from16 v6, v19

    goto :goto_e

    :cond_c
    move/from16 v19, v6

    new-instance v6, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v6, v4}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v2, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v4, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v6, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v6, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v7, p8

    move/from16 v6, v19

    goto/16 :goto_c

    :cond_d
    move/from16 v19, v6

    new-instance v6, Lorg/bouncycastle/asn1/DERSequence;

    new-instance v7, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v7, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v6, v7}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    add-int/lit8 v6, v19, 0x1

    move-object/from16 v7, p8

    goto/16 :goto_b

    :cond_e
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v15, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    const/4 v2, 0x0

    :goto_f
    array-length v3, v5

    if-ge v2, v3, :cond_10

    const/4 v3, 0x0

    :goto_10
    aget-object v4, v5, v2

    array-length v4, v4

    if-ge v3, v4, :cond_f

    new-instance v4, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v6, v5, v2

    aget-object v6, v6, v3

    invoke-direct {v4, v6}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_f
    new-instance v3, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v3, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_10
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v15, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    const/4 v2, 0x0

    :goto_11
    array-length v3, v8

    if-ge v2, v3, :cond_12

    const/4 v3, 0x0

    :goto_12
    aget-object v4, v8, v2

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v3, v4, :cond_11

    new-instance v4, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v5, v8, v2

    invoke-virtual {v5, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_11
    new-instance v3, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v3, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_12
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v15, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    const/4 v2, 0x0

    :goto_13
    array-length v3, v9

    if-ge v2, v3, :cond_14

    const/4 v3, 0x0

    :goto_14
    aget-object v4, v9, v2

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v3, v4, :cond_13

    new-instance v4, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v5, v9, v2

    invoke-virtual {v5, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_13
    new-instance v3, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v3, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_14
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v15, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object/from16 v10, p11

    const/4 v3, 0x0

    :goto_15
    array-length v4, v10

    if-ge v3, v4, :cond_17

    const/4 v4, 0x0

    :goto_16
    aget-object v5, v10, v3

    array-length v5, v5

    if-ge v4, v5, :cond_16

    const/4 v5, 0x0

    :goto_17
    aget-object v6, v10, v3

    aget-object v6, v6, v4

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v5, v6, :cond_15

    new-instance v6, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v7, v10, v3

    aget-object v7, v7, v4

    invoke-virtual {v7, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    invoke-direct {v6, v7}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    :cond_15
    new-instance v5, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v5, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_16
    new-instance v4, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_17
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v15, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object/from16 v11, p12

    const/4 v3, 0x0

    :goto_18
    array-length v4, v11

    if-ge v3, v4, :cond_1a

    const/4 v4, 0x0

    :goto_19
    aget-object v5, v11, v3

    array-length v5, v5

    if-ge v4, v5, :cond_19

    const/4 v5, 0x0

    :goto_1a
    aget-object v6, v11, v3

    aget-object v6, v6, v4

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v5, v6, :cond_18

    new-instance v6, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v7, v11, v3

    aget-object v7, v7, v4

    invoke-virtual {v7, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    invoke-direct {v6, v7}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    :cond_18
    new-instance v5, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v5, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_19
    new-instance v4, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_1a
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v15, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object/from16 v12, p13

    const/4 v4, 0x0

    :goto_1b
    array-length v5, v12

    if-ge v4, v5, :cond_1b

    new-instance v5, Lorg/bouncycastle/asn1/DERSequence;

    aget-object v6, p22, v16

    invoke-direct {v5, v6}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v1, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    aget-object v5, v12, v4

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->getStatByte()[[B

    move-result-object v5

    new-instance v6, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v7, v5, v16

    invoke-direct {v6, v7}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v2, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v6, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v7, v5, v18

    invoke-direct {v6, v7}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v2, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v6, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v7, v5, v17

    invoke-direct {v6, v7}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v2, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v6, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v5, v5, p3

    invoke-direct {v6, v5}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v2, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v5, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v5, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    aget-object v5, v12, v4

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->getStatInt()[I

    move-result-object v5

    new-instance v6, Lorg/bouncycastle/asn1/ASN1Integer;

    aget v7, v5, v16

    int-to-long v7, v7

    invoke-direct {v6, v7, v8}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v6, Lorg/bouncycastle/asn1/ASN1Integer;

    aget v7, v5, v18

    int-to-long v7, v7

    invoke-direct {v6, v7, v8}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v6, Lorg/bouncycastle/asn1/ASN1Integer;

    aget v7, v5, v17

    int-to-long v7, v7

    invoke-direct {v6, v7, v8}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v6, Lorg/bouncycastle/asn1/ASN1Integer;

    aget v5, v5, p3

    int-to-long v7, v5

    invoke-direct {v6, v7, v8}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v5, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v5, v3}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v5, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v5, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1b

    :cond_1b
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v15, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object/from16 v13, p14

    const/4 v4, 0x0

    :goto_1c
    array-length v5, v13

    if-ge v4, v5, :cond_1c

    new-instance v5, Lorg/bouncycastle/asn1/DERSequence;

    aget-object v6, p22, v16

    invoke-direct {v5, v6}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v1, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    aget-object v5, v13, v4

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->getStatByte()[[B

    move-result-object v5

    new-instance v6, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v7, v5, v16

    invoke-direct {v6, v7}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v2, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v6, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v7, v5, v18

    invoke-direct {v6, v7}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v2, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v6, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v7, v5, v17

    invoke-direct {v6, v7}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v2, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v6, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v5, v5, p3

    invoke-direct {v6, v5}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v2, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v5, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v5, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    aget-object v5, v13, v4

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->getStatInt()[I

    move-result-object v5

    new-instance v6, Lorg/bouncycastle/asn1/ASN1Integer;

    aget v7, v5, v16

    int-to-long v7, v7

    invoke-direct {v6, v7, v8}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v6, Lorg/bouncycastle/asn1/ASN1Integer;

    aget v7, v5, v18

    int-to-long v7, v7

    invoke-direct {v6, v7, v8}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v6, Lorg/bouncycastle/asn1/ASN1Integer;

    aget v7, v5, v17

    int-to-long v7, v7

    invoke-direct {v6, v7, v8}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v6, Lorg/bouncycastle/asn1/ASN1Integer;

    aget v5, v5, p3

    int-to-long v7, v5

    invoke-direct {v6, v7, v8}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v5, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v5, v3}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v5, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v5, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1c

    :cond_1c
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v15, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object/from16 v14, p15

    const/4 v4, 0x0

    :goto_1d
    array-length v5, v14

    if-ge v4, v5, :cond_1d

    new-instance v5, Lorg/bouncycastle/asn1/DERSequence;

    aget-object v6, p22, v16

    invoke-direct {v5, v6}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v1, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    aget-object v5, v14, v4

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->getStatByte()[[B

    move-result-object v5

    new-instance v6, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v7, v5, v16

    invoke-direct {v6, v7}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v2, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v6, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v7, v5, v18

    invoke-direct {v6, v7}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v2, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v6, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v7, v5, v17

    invoke-direct {v6, v7}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v2, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v6, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v5, v5, p3

    invoke-direct {v6, v5}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v2, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v5, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v5, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    aget-object v5, v14, v4

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->getStatInt()[I

    move-result-object v5

    new-instance v6, Lorg/bouncycastle/asn1/ASN1Integer;

    aget v7, v5, v16

    int-to-long v7, v7

    invoke-direct {v6, v7, v8}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v6, Lorg/bouncycastle/asn1/ASN1Integer;

    aget v7, v5, v18

    int-to-long v7, v7

    invoke-direct {v6, v7, v8}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v6, Lorg/bouncycastle/asn1/ASN1Integer;

    aget v7, v5, v17

    int-to-long v7, v7

    invoke-direct {v6, v7, v8}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v6, Lorg/bouncycastle/asn1/ASN1Integer;

    aget v5, v5, p3

    int-to-long v7, v5

    invoke-direct {v6, v7, v8}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v5, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v5, v3}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v5, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v5, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1d

    :cond_1d
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v15, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object/from16 v1, p16

    const/4 v2, 0x0

    :goto_1e
    array-length v3, v1

    if-ge v2, v3, :cond_1e

    new-instance v3, Lorg/bouncycastle/asn1/ASN1Integer;

    aget v4, v1, v2

    int-to-long v4, v4

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_1e
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v15, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object/from16 v1, p17

    const/4 v2, 0x0

    :goto_1f
    array-length v3, v1

    if-ge v2, v3, :cond_1f

    new-instance v3, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v4, v1, v2

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_1f
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v15, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v4, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v5, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object/from16 v6, p18

    const/4 v7, 0x0

    :goto_20
    array-length v8, v6

    const/4 v9, 0x7

    const/4 v10, 0x6

    if-ge v7, v8, :cond_29

    new-instance v8, Lorg/bouncycastle/asn1/DERSequence;

    aget-object v11, p22, v16

    invoke-direct {v8, v11}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v1, v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v8, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    aget-object v8, v6, v7

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getStatInt()[I

    move-result-object v8

    aget v8, v8, v16

    aget-object v11, v6, v7

    invoke-virtual {v11}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getStatInt()[I

    move-result-object v11

    aget v9, v11, v9

    new-instance v11, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v12, v6, v7

    invoke-virtual {v12}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getStatByte()[[B

    move-result-object v12

    aget-object v12, v12, v16

    invoke-direct {v11, v12}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v2, v11}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v11, 0x0

    :goto_21
    if-ge v11, v8, :cond_20

    new-instance v12, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v13, v6, v7

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getStatByte()[[B

    move-result-object v13

    add-int/lit8 v11, v11, 0x1

    aget-object v13, v13, v11

    invoke-direct {v12, v13}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v2, v12}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_21

    :cond_20
    const/4 v11, 0x0

    :goto_22
    if-ge v11, v9, :cond_21

    new-instance v12, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v13, v6, v7

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getStatByte()[[B

    move-result-object v13

    add-int/lit8 v14, v8, 0x1

    add-int/2addr v14, v11

    aget-object v13, v13, v14

    invoke-direct {v12, v13}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v2, v12}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_22

    :cond_21
    new-instance v11, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v11, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v11}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v11, Lorg/bouncycastle/asn1/ASN1Integer;

    int-to-long v12, v8

    invoke-direct {v11, v12, v13}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v11}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v11, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v12, v6, v7

    invoke-virtual {v12}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getStatInt()[I

    move-result-object v12

    aget v12, v12, v18

    int-to-long v12, v12

    invoke-direct {v11, v12, v13}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v11}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v11, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v12, v6, v7

    invoke-virtual {v12}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getStatInt()[I

    move-result-object v12

    aget v12, v12, v17

    int-to-long v12, v12

    invoke-direct {v11, v12, v13}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v11}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v11, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v12, v6, v7

    invoke-virtual {v12}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getStatInt()[I

    move-result-object v12

    aget v12, v12, p3

    int-to-long v12, v12

    invoke-direct {v11, v12, v13}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v11}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v11, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v12, v6, v7

    invoke-virtual {v12}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getStatInt()[I

    move-result-object v12

    aget v12, v12, p2

    int-to-long v12, v12

    invoke-direct {v11, v12, v13}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v11}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v11, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v12, v6, v7

    invoke-virtual {v12}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getStatInt()[I

    move-result-object v12

    aget v12, v12, p1

    int-to-long v12, v12

    invoke-direct {v11, v12, v13}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v11}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v11, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v12, v6, v7

    invoke-virtual {v12}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getStatInt()[I

    move-result-object v12

    aget v10, v12, v10

    int-to-long v12, v10

    invoke-direct {v11, v12, v13}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v11}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v10, Lorg/bouncycastle/asn1/ASN1Integer;

    int-to-long v11, v9

    invoke-direct {v10, v11, v12}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v10, 0x0

    :goto_23
    if-ge v10, v8, :cond_22

    new-instance v11, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v12, v6, v7

    invoke-virtual {v12}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getStatInt()[I

    move-result-object v12

    add-int/lit8 v13, v10, 0x8

    aget v12, v12, v13

    int-to-long v12, v12

    invoke-direct {v11, v12, v13}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v11}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_23

    :cond_22
    const/4 v10, 0x0

    :goto_24
    if-ge v10, v9, :cond_23

    new-instance v11, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v12, v6, v7

    invoke-virtual {v12}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getStatInt()[I

    move-result-object v12

    add-int/lit8 v13, v8, 0x8

    add-int/2addr v13, v10

    aget v12, v12, v13

    int-to-long v12, v12

    invoke-direct {v11, v12, v13}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v11}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_24

    :cond_23
    new-instance v8, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v8, v3}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v8, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v9, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v10, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    aget-object v11, v6, v7

    invoke-virtual {v11}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    move-result-object v11

    if-eqz v11, :cond_26

    const/4 v11, 0x0

    :goto_25
    aget-object v12, v6, v7

    invoke-virtual {v12}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    move-result-object v12

    array-length v12, v12

    if-ge v11, v12, :cond_26

    new-instance v12, Lorg/bouncycastle/asn1/DERSequence;

    aget-object v13, p22, v16

    invoke-direct {v12, v13}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v8, v12}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    aget-object v12, v6, v7

    invoke-virtual {v12}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    move-result-object v12

    aget-object v12, v12, v11

    invoke-virtual {v12}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v12

    aget v12, v12, v18

    new-instance v13, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v14, v6, v7

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    move-result-object v14

    aget-object v14, v14, v11

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatByte()[[B

    move-result-object v14

    aget-object v14, v14, v16

    invoke-direct {v13, v14}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v9, v13}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v13, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v14, v6, v7

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    move-result-object v14

    aget-object v14, v14, v11

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatByte()[[B

    move-result-object v14

    aget-object v14, v14, v18

    invoke-direct {v13, v14}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v9, v13}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v13, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v14, v6, v7

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    move-result-object v14

    aget-object v14, v14, v11

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatByte()[[B

    move-result-object v14

    aget-object v14, v14, v17

    invoke-direct {v13, v14}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v9, v13}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v13, 0x0

    :goto_26
    if-ge v13, v12, :cond_24

    new-instance v14, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v19, v6, v7

    invoke-virtual/range {v19 .. v19}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    move-result-object v19

    aget-object v19, v19, v11

    invoke-virtual/range {v19 .. v19}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatByte()[[B

    move-result-object v19

    add-int/lit8 v20, v13, 0x3

    move-object/from16 p4, v2

    aget-object v2, v19, v20

    invoke-direct {v14, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v9, v14}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, p4

    goto :goto_26

    :cond_24
    move-object/from16 p4, v2

    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v9}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v8, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v9, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v2, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v13, v6, v7

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    move-result-object v13

    aget-object v13, v13, v11

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v13

    aget v13, v13, v16

    int-to-long v13, v13

    invoke-direct {v2, v13, v14}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v10, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v2, Lorg/bouncycastle/asn1/ASN1Integer;

    int-to-long v13, v12

    invoke-direct {v2, v13, v14}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v10, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v2, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v13, v6, v7

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    move-result-object v13

    aget-object v13, v13, v11

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v13

    aget v13, v13, v17

    int-to-long v13, v13

    invoke-direct {v2, v13, v14}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v10, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v2, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v13, v6, v7

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    move-result-object v13

    aget-object v13, v13, v11

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v13

    aget v13, v13, p3

    int-to-long v13, v13

    invoke-direct {v2, v13, v14}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v10, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v2, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v13, v6, v7

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    move-result-object v13

    aget-object v13, v13, v11

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v13

    aget v13, v13, p2

    int-to-long v13, v13

    invoke-direct {v2, v13, v14}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v10, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v2, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v13, v6, v7

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    move-result-object v13

    aget-object v13, v13, v11

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v13

    aget v13, v13, p1

    int-to-long v13, v13

    invoke-direct {v2, v13, v14}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v10, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v2, 0x0

    :goto_27
    if-ge v2, v12, :cond_25

    new-instance v13, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v14, v6, v7

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    move-result-object v14

    aget-object v14, v14, v11

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v14

    add-int/lit8 v19, v2, 0x6

    aget v14, v14, v19

    move/from16 v19, v2

    move-object/from16 p5, v3

    int-to-long v2, v14

    invoke-direct {v13, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v10, v13}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v2, v19, 0x1

    move-object/from16 v3, p5

    goto :goto_27

    :cond_25
    move-object/from16 p5, v3

    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v10}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v8, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v10, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v8}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v4, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v8, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, p4

    goto/16 :goto_25

    :cond_26
    move-object/from16 p4, v2

    move-object/from16 p5, v3

    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v4}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v4, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    aget-object v3, v6, v7

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getRetain()[Ljava/util/Vector;

    move-result-object v3

    if-eqz v3, :cond_28

    const/4 v3, 0x0

    :goto_28
    aget-object v8, v6, v7

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getRetain()[Ljava/util/Vector;

    move-result-object v8

    array-length v8, v8

    if-ge v3, v8, :cond_28

    const/4 v8, 0x0

    :goto_29
    aget-object v9, v6, v7

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getRetain()[Ljava/util/Vector;

    move-result-object v9

    aget-object v9, v9, v3

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    if-ge v8, v9, :cond_27

    new-instance v9, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v10, v6, v7

    invoke-virtual {v10}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getRetain()[Ljava/util/Vector;

    move-result-object v10

    aget-object v10, v10, v3

    invoke-virtual {v10, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    invoke-direct {v9, v10}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v2, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_29

    :cond_27
    new-instance v8, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v8, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v5, v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    :cond_28
    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v5}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v5, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    goto/16 :goto_20

    :cond_29
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v15, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object/from16 v1, p19

    const/4 v2, 0x0

    :goto_2a
    array-length v3, v1

    if-ge v2, v3, :cond_2a

    new-instance v3, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v4, v1, v2

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    :cond_2a
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v15, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object/from16 v4, p20

    const/4 v5, 0x0

    :goto_2b
    array-length v6, v4

    if-ge v5, v6, :cond_2b

    new-instance v6, Lorg/bouncycastle/asn1/DERSequence;

    aget-object v7, p22, v16

    invoke-direct {v6, v7}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v1, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v6, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v6, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v7, v4, v5

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->getStatByte()[[B

    move-result-object v7

    aget-object v7, v7, v16

    invoke-direct {v6, v7}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v2, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v6, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v7, v4, v5

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->getStatByte()[[B

    move-result-object v7

    aget-object v7, v7, v18

    invoke-direct {v6, v7}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v2, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v6, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v7, v4, v5

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->getStatByte()[[B

    move-result-object v7

    aget-object v7, v7, v17

    invoke-direct {v6, v7}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v2, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v6, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v7, v4, v5

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->getStatByte()[[B

    move-result-object v7

    aget-object v7, v7, p3

    invoke-direct {v6, v7}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v2, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v6, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v7, v4, v5

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->getStatByte()[[B

    move-result-object v7

    aget-object v7, v7, p2

    invoke-direct {v6, v7}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v2, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v6, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v6, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v6, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v7, v4, v5

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->getStatInt()[I

    move-result-object v7

    aget v7, v7, v16

    int-to-long v7, v7

    invoke-direct {v6, v7, v8}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v6, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v7, v4, v5

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->getStatInt()[I

    move-result-object v7

    aget v7, v7, v18

    int-to-long v7, v7

    invoke-direct {v6, v7, v8}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v6, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v7, v4, v5

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->getStatInt()[I

    move-result-object v7

    aget v7, v7, v17

    int-to-long v7, v7

    invoke-direct {v6, v7, v8}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v6, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v7, v4, v5

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->getStatInt()[I

    move-result-object v7

    aget v7, v7, p3

    int-to-long v7, v7

    invoke-direct {v6, v7, v8}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v6, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v7, v4, v5

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->getStatInt()[I

    move-result-object v7

    aget v7, v7, p2

    int-to-long v7, v7

    invoke-direct {v6, v7, v8}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v6, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v7, v4, v5

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->getStatInt()[I

    move-result-object v7

    aget v7, v7, p1

    int-to-long v7, v7

    invoke-direct {v6, v7, v8}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v6, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v7, v4, v5

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->getStatInt()[I

    move-result-object v7

    aget v7, v7, v10

    int-to-long v7, v7

    invoke-direct {v6, v7, v8}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v6, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v7, v4, v5

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->getStatInt()[I

    move-result-object v7

    aget v7, v7, v9

    int-to-long v7, v7

    invoke-direct {v6, v7, v8}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v6, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v7, v4, v5

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->getStatInt()[I

    move-result-object v7

    const/16 v8, 0x8

    aget v7, v7, v8

    int-to-long v7, v7

    invoke-direct {v6, v7, v8}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v6, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v6, v3}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v6, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v6, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2b

    :cond_2b
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v15, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    const/4 v4, 0x0

    :goto_2c
    invoke-virtual/range {p21 .. p21}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;->getHeightOfTrees()[I

    move-result-object v5

    array-length v5, v5

    if-ge v4, v5, :cond_2c

    new-instance v5, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual/range {p21 .. p21}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;->getHeightOfTrees()[I

    move-result-object v6

    aget v6, v6, v4

    int-to-long v6, v6

    invoke-direct {v5, v6, v7}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v1, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v5, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual/range {p21 .. p21}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;->getWinternitzParameter()[I

    move-result-object v6

    aget v6, v6, v4

    int-to-long v6, v6

    invoke-direct {v5, v6, v7}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v2, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v5, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual/range {p21 .. p21}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;->getK()[I

    move-result-object v6

    aget v6, v6, v4

    int-to-long v6, v6

    invoke-direct {v5, v6, v7}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    :cond_2c
    new-instance v4, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual/range {p21 .. p21}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;->getNumOfLayers()I

    move-result v5

    int-to-long v5, v5

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v4, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v3}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v15, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object/from16 v2, p22

    const/4 v1, 0x0

    :goto_2d
    array-length v3, v2

    if-ge v1, v3, :cond_2d

    aget-object v3, v2, v1

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    :cond_2d
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v15, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v15}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/asn1/GMSSPrivateKey;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/pqc/asn1/GMSSPrivateKey;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/pqc/asn1/GMSSPrivateKey;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/pqc/asn1/GMSSPrivateKey;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/asn1/GMSSPrivateKey;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/GMSSPrivateKey;->primitive:Lorg/bouncycastle/asn1/ASN1Primitive;

    return-object v0
.end method
