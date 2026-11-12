.class public Lorg/bouncycastle/oer/OERDefinition;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/oer/OERDefinition$BaseType;,
        Lorg/bouncycastle/oer/OERDefinition$Builder;,
        Lorg/bouncycastle/oer/OERDefinition$ExtensionList;,
        Lorg/bouncycastle/oer/OERDefinition$ItemProvider;,
        Lorg/bouncycastle/oer/OERDefinition$MutableBuilder;,
        Lorg/bouncycastle/oer/OERDefinition$OptionalList;
    }
.end annotation


# static fields
.field static final sIntRange:[[Ljava/math/BigInteger;

.field static final uIntMax:[Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "256"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "65536"

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "4294967296"

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "18446744073709551616"

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x4

    new-array v5, v4, [Ljava/math/BigInteger;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v1, 0x2

    aput-object v2, v5, v1

    const/4 v2, 0x3

    aput-object v3, v5, v2

    sput-object v5, Lorg/bouncycastle/oer/OERDefinition;->uIntMax:[Ljava/math/BigInteger;

    new-instance v3, Ljava/math/BigInteger;

    const-string v5, "-128"

    invoke-direct {v3, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/math/BigInteger;

    const-string v7, "127"

    invoke-direct {v5, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-array v7, v1, [Ljava/math/BigInteger;

    aput-object v3, v7, v6

    aput-object v5, v7, v0

    new-instance v3, Ljava/math/BigInteger;

    const-string v5, "-32768"

    invoke-direct {v3, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/math/BigInteger;

    const-string v8, "32767"

    invoke-direct {v5, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-array v8, v1, [Ljava/math/BigInteger;

    aput-object v3, v8, v6

    aput-object v5, v8, v0

    new-instance v3, Ljava/math/BigInteger;

    const-string v5, "-2147483648"

    invoke-direct {v3, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/math/BigInteger;

    const-string v9, "2147483647"

    invoke-direct {v5, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-array v9, v1, [Ljava/math/BigInteger;

    aput-object v3, v9, v6

    aput-object v5, v9, v0

    new-instance v3, Ljava/math/BigInteger;

    const-string v5, "-9223372036854775808"

    invoke-direct {v3, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/math/BigInteger;

    const-string v10, "9223372036854775807"

    invoke-direct {v5, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-array v10, v1, [Ljava/math/BigInteger;

    aput-object v3, v10, v6

    aput-object v5, v10, v0

    new-array v3, v4, [[Ljava/math/BigInteger;

    aput-object v7, v3, v6

    aput-object v8, v3, v0

    aput-object v9, v3, v1

    aput-object v10, v3, v2

    sput-object v3, Lorg/bouncycastle/oer/OERDefinition;->sIntRange:[[Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aSwitch(Lorg/bouncycastle/oer/Switch;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 2

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v1, Lorg/bouncycastle/oer/OERDefinition$BaseType;->Switch:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V

    invoke-virtual {v0, p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->decodeSwitch(Lorg/bouncycastle/oer/Switch;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bitString(J)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 2

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v1, Lorg/bouncycastle/oer/OERDefinition$BaseType;->BIT_STRING:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V

    invoke-virtual {v0, p0, p1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->fixedSize(J)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bool()Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 2

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v1, Lorg/bouncycastle/oer/OERDefinition$BaseType;->BOOLEAN:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V

    return-object v0
.end method

.method public static varargs choice([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 2

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v1, Lorg/bouncycastle/oer/OERDefinition$BaseType;->CHOICE:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V

    invoke-virtual {v0, p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->items([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static deferred(Lorg/bouncycastle/oer/ElementSupplier;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 2

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v1, Lorg/bouncycastle/oer/OERDefinition$BaseType;->Supplier:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V

    invoke-virtual {v0, p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->elementSupplier(Lorg/bouncycastle/oer/ElementSupplier;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static enumItem(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 2

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v1, Lorg/bouncycastle/oer/OERDefinition$BaseType;->ENUM_ITEM:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V

    invoke-virtual {v0, p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static enumItem(Ljava/lang/String;Ljava/math/BigInteger;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 2

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v1, Lorg/bouncycastle/oer/OERDefinition$BaseType;->ENUM_ITEM:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->enumValue(Ljava/math/BigInteger;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static varargs enumeration([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 2

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v1, Lorg/bouncycastle/oer/OERDefinition$BaseType;->ENUM:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V

    invoke-virtual {v0, p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->items([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static varargs extension(I[Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;
    .locals 1

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/oer/OERDefinition$ExtensionList;-><init>(ILjava/util/List;)V

    return-object v0
.end method

.method public static varargs extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;
    .locals 2

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    const/4 v1, 0x1

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/OERDefinition$ExtensionList;-><init>(ILjava/util/List;)V

    return-object v0
.end method

.method public static ia5String()Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 2

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v1, Lorg/bouncycastle/oer/OERDefinition$BaseType;->IA5String:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V

    return-object v0
.end method

.method public static integer()Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 2

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v1, Lorg/bouncycastle/oer/OERDefinition$BaseType;->INT:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V

    return-object v0
.end method

.method public static integer(J)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 2

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v1, Lorg/bouncycastle/oer/OERDefinition$BaseType;->INT:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v1, p0, p1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->defaultValue(Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static integer(JJ)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 2

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v1, Lorg/bouncycastle/oer/OERDefinition$BaseType;->INT:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p2, p3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->range(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static integer(JJLorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 6

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v1, Lorg/bouncycastle/oer/OERDefinition$BaseType;->INT:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V

    move-wide v1, p0

    move-wide v3, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/oer/OERDefinition$Builder;->range(JJLorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static integer(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 2

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v1, Lorg/bouncycastle/oer/OERDefinition$BaseType;->INT:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V

    invoke-virtual {v0, p0, p1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->range(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static nullValue()Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 2

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v1, Lorg/bouncycastle/oer/OERDefinition$BaseType;->NULL:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V

    return-object v0
.end method

.method public static octets()Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 2

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v1, Lorg/bouncycastle/oer/OERDefinition$BaseType;->OCTET_STRING:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V

    invoke-virtual {v0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->unbounded()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static octets(I)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 3

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v1, Lorg/bouncycastle/oer/OERDefinition$BaseType;->OCTET_STRING:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->fixedSize(J)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static octets(II)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 3

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v1, Lorg/bouncycastle/oer/OERDefinition$BaseType;->OCTET_STRING:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V

    int-to-long v1, p0

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->range(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static opaque()Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 2

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v1, Lorg/bouncycastle/oer/OERDefinition$BaseType;->OPAQUE:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V

    return-object v0
.end method

.method public static varargs optional([Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$OptionalList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/oer/OERDefinition$OptionalList;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static placeholder()Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 2

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V

    return-object v0
.end method

.method public static seq()Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 2

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v1, Lorg/bouncycastle/oer/OERDefinition$BaseType;->SEQ:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V

    return-object v0
.end method

.method public static varargs seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 2

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v1, Lorg/bouncycastle/oer/OERDefinition$BaseType;->SEQ:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V

    invoke-virtual {v0, p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->items([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static varargs seqof([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 2

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v1, Lorg/bouncycastle/oer/OERDefinition$BaseType;->SEQ_OF:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V

    invoke-virtual {v0, p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->items([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static utf8String()Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 2

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v1, Lorg/bouncycastle/oer/OERDefinition$BaseType;->UTF8_STRING:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V

    return-object v0
.end method

.method public static utf8String(I)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 3

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v1, Lorg/bouncycastle/oer/OERDefinition$BaseType;->UTF8_STRING:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->rangeToMAXFrom(J)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static utf8String(II)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 3

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v1, Lorg/bouncycastle/oer/OERDefinition$BaseType;->UTF8_STRING:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V

    int-to-long v1, p0

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->range(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object p0

    return-object p0
.end method
