.class public Lorg/bouncycastle/oer/OEROutputStream;
.super Ljava/io/OutputStream;


# static fields
.field private static final bits:[I


# instance fields
.field protected debugOutput:Ljava/io/PrintWriter;

.field private final out:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/oer/OEROutputStream;->bits:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/oer/OEROutputStream;->debugOutput:Ljava/io/PrintWriter;

    iput-object p1, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    return-void
.end method

.method public static byteLength(J)I
    .locals 7

    const/16 v0, 0x8

    const/16 v1, 0x8

    :goto_0
    if-lez v1, :cond_0

    const-wide/high16 v2, -0x100000000000000L

    and-long/2addr v2, p0

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    shl-long/2addr p0, v0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private encodeLength(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x7f

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    long-to-int p2, p1

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write(I)V

    return-void

    :cond_0
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    array-length v0, p1

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    iget-object p2, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method private encodeQuantity(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    array-length v0, p1

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    iget-object p2, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method


# virtual methods
.method protected debugPrint(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lorg/bouncycastle/oer/OEROutputStream;->debugOutput:Ljava/io/PrintWriter;

    if-eqz v0, :cond_4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_0
    array-length v4, v0

    if-eq v3, v4, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "debugPrint"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OERInput"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/bouncycastle/oer/OEROutputStream;->debugOutput:Ljava/io/PrintWriter;

    if-lez v2, :cond_3

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget-object p1, p0, Lorg/bouncycastle/oer/OEROutputStream;->debugOutput:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    :cond_4
    return-void
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public write(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/Element;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/oer/OEROptional;->ABSENT:Lorg/bouncycastle/oer/OEROptional;

    if-ne p1, v0, :cond_0

    goto/16 :goto_22

    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/oer/OEROptional;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/bouncycastle/oer/OEROptional;

    invoke-virtual {p1}, Lorg/bouncycastle/oer/OEROptional;->get()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/oer/OEROutputStream;->write(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/Element;)V

    return-void

    :cond_1
    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    sget-object v0, Lorg/bouncycastle/oer/OEROutputStream$1;->$SwitchMap$org$bouncycastle$oer$OERDefinition$BaseType:[I

    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->getBaseType()Lorg/bouncycastle/oer/OERDefinition$BaseType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/oer/OERDefinition$BaseType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, " "

    const/16 v2, 0xff

    const/4 v3, 0x6

    const/16 v4, 0x80

    const-string v5, ""

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_22

    :pswitch_1
    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->getLabel()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/bouncycastle/oer/OEROutputStream;->debugPrint(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Boolean;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Boolean;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p1, v7}, Ljava/io/OutputStream;->write(I)V

    :goto_0
    iget-object p1, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void

    :pswitch_2
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p1

    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->isFixedLength()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    array-length v0, p1

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/oer/OEROutputStream;->encodeLength(J)V

    :goto_1
    iget-object v0, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->rangeExpression()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/bouncycastle/oer/Element;->appendLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/oer/OEROutputStream;->debugPrint(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void

    :pswitch_3
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v0

    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->isFixedLength()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1BitString;->getPadBits()I

    move-result p1

    array-length v1, v0

    add-int/2addr v1, v6

    int-to-long v1, v1

    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/oer/OEROutputStream;->encodeLength(J)V

    iget-object v1, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V

    :goto_2
    iget-object p1, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->rangeExpression()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/bouncycastle/oer/Element;->appendLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/oer/OEROutputStream;->debugPrint(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void

    :pswitch_4
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1UTF8String;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1UTF8String;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1UTF8String;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/Strings;->toUTF8ByteArray(Ljava/lang/String;)[B

    move-result-object p1

    array-length v0, p1

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/oer/OEROutputStream;->encodeLength(J)V

    iget-object v0, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p2, v5}, Lorg/bouncycastle/oer/Element;->appendLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/oer/OEROutputStream;->debugPrint(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void

    :pswitch_5
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1IA5String;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1IA5String;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1IA5String;->getOctets()[B

    move-result-object p1

    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->isFixedLength()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->getUpperBound()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    array-length v2, p1

    if-ne v0, v2, :cond_5

    goto :goto_3

    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IA5String string length does not equal declared fixed length "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->getUpperBound()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_3
    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->isFixedLength()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    array-length v0, p1

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/oer/OEROutputStream;->encodeLength(J)V

    :goto_4
    iget-object v0, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p2, v5}, Lorg/bouncycastle/oer/Element;->appendLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/oer/OEROutputStream;->debugPrint(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void

    :pswitch_6
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p1

    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->isFixedLength()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_5

    :cond_8
    array-length v0, p1

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/oer/OEROutputStream;->encodeLength(J)V

    :goto_5
    iget-object v0, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->rangeExpression()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/bouncycastle/oer/Element;->appendLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/oer/OEROutputStream;->debugPrint(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void

    :pswitch_7
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object p1

    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->intBytesForRange()I

    move-result v0

    if-lez v0, :cond_b

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object p1

    if-eq v0, v6, :cond_a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    const/4 v1, 0x4

    if-eq v0, v1, :cond_a

    const/16 v1, 0x8

    if-ne v0, v1, :cond_9

    goto :goto_6

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "unknown uint length "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    :goto_6
    iget-object v0, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_9

    :cond_b
    if-gez v0, :cond_10

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p1

    const/4 v1, -0x8

    if-eq v0, v1, :cond_f

    const/4 v1, -0x4

    if-eq v0, v1, :cond_e

    const/4 v1, -0x2

    if-eq v0, v1, :cond_d

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    new-array v0, v6, [B

    invoke-static {p1}, Lorg/bouncycastle/util/BigIntegers;->byteValueExact(Ljava/math/BigInteger;)B

    move-result p1

    aput-byte p1, v0, v7

    goto :goto_7

    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "unknown twos compliment length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    invoke-static {p1}, Lorg/bouncycastle/util/BigIntegers;->shortValueExact(Ljava/math/BigInteger;)S

    move-result p1

    invoke-static {p1}, Lorg/bouncycastle/util/Pack;->shortToBigEndian(S)[B

    move-result-object v0

    goto :goto_7

    :cond_e
    invoke-static {p1}, Lorg/bouncycastle/util/BigIntegers;->intValueExact(Ljava/math/BigInteger;)I

    move-result p1

    invoke-static {p1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I)[B

    move-result-object v0

    goto :goto_7

    :cond_f
    invoke-static {p1}, Lorg/bouncycastle/util/BigIntegers;->longValueExact(Ljava/math/BigInteger;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J)[B

    move-result-object v0

    :goto_7
    iget-object p1, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_9

    :cond_10
    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->isLowerRangeZero()Z

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p1

    if-eqz v0, :cond_11

    invoke-static {p1}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object p1

    goto :goto_8

    :cond_11
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    :goto_8
    array-length v0, p1

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/oer/OEROutputStream;->encodeLength(J)V

    iget-object v0, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    :goto_9
    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->rangeExpression()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/bouncycastle/oer/Element;->appendLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/oer/OEROutputStream;->debugPrint(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void

    :pswitch_8
    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_12

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_a

    :cond_12
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Enumerated;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Enumerated;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    move-result-object p1

    :goto_a
    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/oer/Element;

    invoke-static {v3, p2}, Lorg/bouncycastle/oer/Element;->expandDeferredDefinition(Lorg/bouncycastle/oer/Element;Lorg/bouncycastle/oer/Element;)Lorg/bouncycastle/oer/Element;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/oer/Element;->getEnumValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    const-wide/16 v0, 0x7f

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-lez v0, :cond_14

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    array-length v0, p1

    and-int/2addr v0, v2

    or-int/2addr v0, v4

    iget-object v1, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_b

    :cond_14
    iget-object v0, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    and-int/lit8 p1, p1, 0x7f

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    :goto_b
    iget-object p1, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->rangeExpression()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/bouncycastle/oer/Element;->appendLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/oer/OEROutputStream;->debugPrint(Ljava/lang/String;)V

    return-void

    :cond_15
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "enum value "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/encoders/Hex;->toHexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " no in defined child list"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_9
    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    new-instance v0, Lorg/bouncycastle/oer/BitBuilder;

    invoke-direct {v0}, Lorg/bouncycastle/oer/BitBuilder;-><init>()V

    instance-of v1, p1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v1, :cond_1c

    check-cast p1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagClass()I

    move-result v2

    and-int/lit16 v5, v2, 0x80

    invoke-virtual {v0, v5}, Lorg/bouncycastle/oer/BitBuilder;->writeBit(I)Lorg/bouncycastle/oer/BitBuilder;

    move-result-object v5

    const/16 v6, 0x40

    and-int/2addr v2, v6

    invoke-virtual {v5, v2}, Lorg/bouncycastle/oer/BitBuilder;->writeBit(I)Lorg/bouncycastle/oer/BitBuilder;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1Object;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    const/16 v7, 0x3f

    if-gt v2, v7, :cond_16

    int-to-long v7, v2

    invoke-virtual {v0, v7, v8, v3}, Lorg/bouncycastle/oer/BitBuilder;->writeBits(JI)Lorg/bouncycastle/oer/BitBuilder;

    goto :goto_c

    :cond_16
    const-wide/16 v7, 0xff

    invoke-virtual {v0, v7, v8, v3}, Lorg/bouncycastle/oer/BitBuilder;->writeBits(JI)Lorg/bouncycastle/oer/BitBuilder;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/oer/BitBuilder;->write7BitBytes(I)V

    :goto_c
    iget-object v3, p0, Lorg/bouncycastle/oer/OEROutputStream;->debugOutput:Ljava/io/PrintWriter;

    if-eqz v3, :cond_1a

    if-eqz v1, :cond_1a

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagClass()I

    move-result p1

    if-eq p1, v6, :cond_19

    if-eq p1, v4, :cond_18

    const/16 v1, 0xc0

    if-eq p1, v1, :cond_17

    goto :goto_e

    :cond_17
    const-string p1, "PR"

    goto :goto_d

    :cond_18
    const-string p1, "CS"

    goto :goto_d

    :cond_19
    const-string p1, "AS"

    :goto_d
    invoke-virtual {p2, p1}, Lorg/bouncycastle/oer/Element;->appendLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/oer/OEROutputStream;->debugPrint(Ljava/lang/String;)V

    :cond_1a
    :goto_e
    iget-object p1, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/oer/BitBuilder;->writeAndClear(Ljava/io/OutputStream;)I

    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/oer/Element;

    invoke-static {p1, p2}, Lorg/bouncycastle/oer/Element;->expandDeferredDefinition(Lorg/bouncycastle/oer/Element;Lorg/bouncycastle/oer/Element;)Lorg/bouncycastle/oer/Element;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/oer/Element;->getBlock()I

    move-result p2

    if-lez p2, :cond_1b

    invoke-virtual {p0, v5, p1}, Lorg/bouncycastle/oer/OEROutputStream;->writePlainType(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/Element;)V

    goto :goto_f

    :cond_1b
    invoke-virtual {p0, v5, p1}, Lorg/bouncycastle/oer/OEROutputStream;->write(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/Element;)V

    :goto_f
    iget-object p1, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void

    :cond_1c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "only support tagged objects"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_a
    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1Set;

    if-eqz v0, :cond_1d

    check-cast p1, Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result p1

    :goto_10
    int-to-long v1, p1

    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/oer/OEROutputStream;->encodeQuantity(J)V

    goto :goto_11

    :cond_1d
    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_1f

    check-cast p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result p1

    goto :goto_10

    :goto_11
    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->getFirstChid()Lorg/bouncycastle/oer/Element;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/bouncycastle/oer/Element;->expandDeferredDefinition(Lorg/bouncycastle/oer/Element;Lorg/bouncycastle/oer/Element;)Lorg/bouncycastle/oer/Element;

    move-result-object p1

    :goto_12
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {p0, v1, p1}, Lorg/bouncycastle/oer/OEROutputStream;->write(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/Element;)V

    goto :goto_12

    :cond_1e
    iget-object p1, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p2, v5}, Lorg/bouncycastle/oer/Element;->appendLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/oer/OEROutputStream;->debugPrint(Ljava/lang/String;)V

    return-void

    :cond_1f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "encodable at for SEQ_OF is not a container"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_b
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p1

    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->isExtensionsInDefinition()Z

    move-result v0

    const/4 v1, 0x7

    if-eqz v0, :cond_24

    const/4 v0, 0x0

    :goto_13
    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_22

    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/oer/Element;

    invoke-virtual {v2}, Lorg/bouncycastle/oer/Element;->getBaseType()Lorg/bouncycastle/oer/OERDefinition$BaseType;

    move-result-object v4

    sget-object v8, Lorg/bouncycastle/oer/OERDefinition$BaseType;->EXTENSION:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    if-ne v4, v8, :cond_20

    goto :goto_14

    :cond_20
    invoke-virtual {v2}, Lorg/bouncycastle/oer/Element;->getBlock()I

    move-result v2

    if-lez v2, :cond_21

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-ge v0, v2, :cond_21

    sget-object v2, Lorg/bouncycastle/oer/OEROptional;->ABSENT:Lorg/bouncycastle/oer/OEROptional;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/bouncycastle/oer/OEROptional;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    const/4 v0, 0x1

    goto :goto_15

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_22
    :goto_14
    const/4 v0, 0x0

    :goto_15
    if-eqz v0, :cond_23

    sget-object v2, Lorg/bouncycastle/oer/OEROutputStream;->bits:[I

    aget v2, v2, v1

    goto :goto_16

    :cond_23
    const/4 v2, 0x0

    goto :goto_16

    :cond_24
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x7

    :goto_16
    const/4 v4, 0x0

    :goto_17
    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->getChildren()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_2f

    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->getChildren()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/bouncycastle/oer/Element;

    invoke-virtual {v8}, Lorg/bouncycastle/oer/Element;->getBaseType()Lorg/bouncycastle/oer/OERDefinition$BaseType;

    move-result-object v9

    sget-object v10, Lorg/bouncycastle/oer/OERDefinition$BaseType;->EXTENSION:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    if-ne v9, v10, :cond_25

    goto/16 :goto_1a

    :cond_25
    invoke-virtual {v8}, Lorg/bouncycastle/oer/Element;->getBlock()I

    move-result v9

    if-lez v9, :cond_26

    goto/16 :goto_1b

    :cond_26
    invoke-static {v8, p2}, Lorg/bouncycastle/oer/Element;->expandDeferredDefinition(Lorg/bouncycastle/oer/Element;Lorg/bouncycastle/oer/Element;)Lorg/bouncycastle/oer/Element;

    move-result-object v8

    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->getaSwitch()Lorg/bouncycastle/oer/Switch;

    move-result-object v9

    if-eqz v9, :cond_27

    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->getaSwitch()Lorg/bouncycastle/oer/Switch;

    move-result-object v8

    new-instance v9, Lorg/bouncycastle/oer/SwitchIndexer$Asn1SequenceIndexer;

    invoke-direct {v9, p1}, Lorg/bouncycastle/oer/SwitchIndexer$Asn1SequenceIndexer;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    invoke-interface {v8, v9}, Lorg/bouncycastle/oer/Switch;->result(Lorg/bouncycastle/oer/SwitchIndexer;)Lorg/bouncycastle/oer/Element;

    move-result-object v8

    invoke-static {v8, p2}, Lorg/bouncycastle/oer/Element;->expandDeferredDefinition(Lorg/bouncycastle/oer/Element;Lorg/bouncycastle/oer/Element;)Lorg/bouncycastle/oer/Element;

    move-result-object v8

    :cond_27
    if-gez v3, :cond_28

    iget-object v3, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write(I)V

    const/4 v2, 0x0

    const/4 v3, 0x7

    :cond_28
    invoke-virtual {p1, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v9

    invoke-virtual {v8}, Lorg/bouncycastle/oer/Element;->isExplicit()Z

    move-result v10

    if-eqz v10, :cond_2a

    instance-of v10, v9, Lorg/bouncycastle/oer/OEROptional;

    if-nez v10, :cond_29

    goto :goto_18

    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "absent sequence element that is required by oer definition"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2a
    :goto_18
    invoke-virtual {v8}, Lorg/bouncycastle/oer/Element;->isExplicit()Z

    move-result v10

    if-nez v10, :cond_2e

    invoke-virtual {p1, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v10

    invoke-virtual {v8}, Lorg/bouncycastle/oer/Element;->getDefaultValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v11

    if-eqz v11, :cond_2c

    instance-of v9, v10, Lorg/bouncycastle/oer/OEROptional;

    if-eqz v9, :cond_2b

    check-cast v10, Lorg/bouncycastle/oer/OEROptional;

    invoke-virtual {v10}, Lorg/bouncycastle/oer/OEROptional;->isDefined()Z

    move-result v9

    if-eqz v9, :cond_2d

    invoke-virtual {v10}, Lorg/bouncycastle/oer/OEROptional;->get()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v9

    invoke-virtual {v8}, Lorg/bouncycastle/oer/Element;->getDefaultValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2d

    sget-object v8, Lorg/bouncycastle/oer/OEROutputStream;->bits:[I

    aget v8, v8, v3

    goto :goto_19

    :cond_2b
    invoke-virtual {v8}, Lorg/bouncycastle/oer/Element;->getDefaultValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2d

    sget-object v8, Lorg/bouncycastle/oer/OEROutputStream;->bits:[I

    aget v8, v8, v3

    goto :goto_19

    :cond_2c
    sget-object v8, Lorg/bouncycastle/oer/OEROptional;->ABSENT:Lorg/bouncycastle/oer/OEROptional;

    if-eq v9, v8, :cond_2d

    sget-object v8, Lorg/bouncycastle/oer/OEROutputStream;->bits:[I

    aget v8, v8, v3

    :goto_19
    or-int/2addr v2, v8

    :cond_2d
    add-int/lit8 v3, v3, -0x1

    :cond_2e
    :goto_1a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_17

    :cond_2f
    :goto_1b
    if-eq v3, v1, :cond_30

    iget-object v3, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write(I)V

    :cond_30
    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->getChildren()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    :goto_1c
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_35

    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/oer/Element;

    invoke-virtual {v4}, Lorg/bouncycastle/oer/Element;->getBaseType()Lorg/bouncycastle/oer/OERDefinition$BaseType;

    move-result-object v8

    sget-object v9, Lorg/bouncycastle/oer/OERDefinition$BaseType;->EXTENSION:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    if-ne v8, v9, :cond_31

    goto :goto_1d

    :cond_31
    invoke-virtual {v4}, Lorg/bouncycastle/oer/Element;->getBlock()I

    move-result v8

    if-lez v8, :cond_32

    goto :goto_1e

    :cond_32
    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v8

    invoke-virtual {v4}, Lorg/bouncycastle/oer/Element;->getaSwitch()Lorg/bouncycastle/oer/Switch;

    move-result-object v9

    if-eqz v9, :cond_33

    invoke-virtual {v4}, Lorg/bouncycastle/oer/Element;->getaSwitch()Lorg/bouncycastle/oer/Switch;

    move-result-object v4

    new-instance v9, Lorg/bouncycastle/oer/SwitchIndexer$Asn1SequenceIndexer;

    invoke-direct {v9, p1}, Lorg/bouncycastle/oer/SwitchIndexer$Asn1SequenceIndexer;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    invoke-interface {v4, v9}, Lorg/bouncycastle/oer/Switch;->result(Lorg/bouncycastle/oer/SwitchIndexer;)Lorg/bouncycastle/oer/Element;

    move-result-object v4

    :cond_33
    invoke-virtual {v4}, Lorg/bouncycastle/oer/Element;->getDefaultValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v9

    if-eqz v9, :cond_34

    invoke-virtual {v4}, Lorg/bouncycastle/oer/Element;->getDefaultValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_34

    goto :goto_1d

    :cond_34
    :try_start_0
    invoke-virtual {p0, v8, v4}, Lorg/bouncycastle/oer/OEROutputStream;->write(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/Element;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :catchall_0
    move-exception p1

    throw p1

    :cond_35
    :goto_1e
    if-eqz v0, :cond_3c

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v4, v3

    const/4 v8, 0x7

    const/4 v9, 0x0

    :goto_1f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-ge v4, v10, :cond_38

    if-gez v8, :cond_36

    invoke-virtual {v0, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v8, 0x7

    const/4 v9, 0x0

    :cond_36
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v10

    if-ge v4, v10, :cond_37

    sget-object v10, Lorg/bouncycastle/oer/OEROptional;->ABSENT:Lorg/bouncycastle/oer/OEROptional;

    invoke-virtual {p1, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/bouncycastle/oer/OEROptional;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_37

    sget-object v10, Lorg/bouncycastle/oer/OEROutputStream;->bits:[I

    aget v10, v10, v8

    or-int/2addr v9, v10

    :cond_37
    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    :cond_38
    if-eq v8, v1, :cond_39

    invoke-virtual {v0, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_39
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    add-int/2addr v4, v6

    int-to-long v9, v4

    invoke-direct {p0, v9, v10}, Lorg/bouncycastle/oer/OEROutputStream;->encodeLength(J)V

    if-ne v8, v1, :cond_3a

    invoke-virtual {p0, v7}, Lorg/bouncycastle/oer/OEROutputStream;->write(I)V

    goto :goto_20

    :cond_3a
    add-int/2addr v8, v6

    invoke-virtual {p0, v8}, Lorg/bouncycastle/oer/OEROutputStream;->write(I)V

    :goto_20
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/oer/OEROutputStream;->write([B)V

    :goto_21
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_3c

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-ge v3, v0, :cond_3b

    sget-object v0, Lorg/bouncycastle/oer/OEROptional;->ABSENT:Lorg/bouncycastle/oer/OEROptional;

    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OEROptional;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/oer/Element;

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/oer/OEROutputStream;->writePlainType(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/Element;)V

    :cond_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_3c
    iget-object p1, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p2, v5}, Lorg/bouncycastle/oer/Element;->appendLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/oer/OEROutputStream;->debugPrint(Ljava/lang/String;)V

    return-void

    :pswitch_c
    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->getElementSupplier()Lorg/bouncycastle/oer/ElementSupplier;

    move-result-object p2

    invoke-interface {p2}, Lorg/bouncycastle/oer/ElementSupplier;->build()Lorg/bouncycastle/oer/Element;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/oer/OEROutputStream;->write(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/Element;)V

    :goto_22
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public writePlainType(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/Element;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Lorg/bouncycastle/oer/OEROutputStream;

    invoke-direct {v1, v0}, Lorg/bouncycastle/oer/OEROutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p1, p2}, Lorg/bouncycastle/oer/OEROutputStream;->write(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/Element;)V

    invoke-virtual {v1}, Lorg/bouncycastle/oer/OEROutputStream;->flush()V

    invoke-virtual {v1}, Lorg/bouncycastle/oer/OEROutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    int-to-long p1, p1

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/oer/OEROutputStream;->encodeLength(J)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/oer/OEROutputStream;->write([B)V

    return-void
.end method
