.class public Lj$/util/Base64$Decoder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Decoder"
.end annotation


# static fields
.field static final RFC2045:Lj$/util/Base64$Decoder;

.field static final RFC4648:Lj$/util/Base64$Decoder;

.field static final RFC4648_URLSAFE:Lj$/util/Base64$Decoder;

.field private static final fromBase64:[I

.field private static final fromBase64URL:[I


# instance fields
.field private final isMIME:Z

.field private final isURL:Z


# direct methods
.method static bridge synthetic -$$Nest$sfgetfromBase64()[I
    .locals 1

    sget-object v0, Lj$/util/Base64$Decoder;->fromBase64:[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x100

    .line 497
    new-array v1, v0, [I

    sput-object v1, Lj$/util/Base64$Decoder;->fromBase64:[I

    const/4 v2, -0x1

    .line 499
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 500
    :goto_0
    invoke-static {}, Lj$/util/Base64$Encoder;->-$$Nest$sfgettoBase64()[C

    move-result-object v4

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 501
    sget-object v4, Lj$/util/Base64$Decoder;->fromBase64:[I

    invoke-static {}, Lj$/util/Base64$Encoder;->-$$Nest$sfgettoBase64()[C

    move-result-object v5

    aget-char v5, v5, v3

    aput v3, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 502
    :cond_0
    sget-object v3, Lj$/util/Base64$Decoder;->fromBase64:[I

    const/16 v4, 0x3d

    const/4 v5, -0x2

    aput v5, v3, v4

    .line 509
    new-array v0, v0, [I

    sput-object v0, Lj$/util/Base64$Decoder;->fromBase64URL:[I

    .line 512
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    const/4 v0, 0x0

    .line 513
    :goto_1
    invoke-static {}, Lj$/util/Base64$Encoder;->-$$Nest$sfgettoBase64URL()[C

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 514
    sget-object v2, Lj$/util/Base64$Decoder;->fromBase64URL:[I

    invoke-static {}, Lj$/util/Base64$Encoder;->-$$Nest$sfgettoBase64URL()[C

    move-result-object v3

    aget-char v3, v3, v0

    aput v0, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 515
    :cond_1
    sget-object v0, Lj$/util/Base64$Decoder;->fromBase64URL:[I

    aput v5, v0, v4

    .line 518
    new-instance v0, Lj$/util/Base64$Decoder;

    invoke-direct {v0, v1, v1}, Lj$/util/Base64$Decoder;-><init>(ZZ)V

    sput-object v0, Lj$/util/Base64$Decoder;->RFC4648:Lj$/util/Base64$Decoder;

    .line 519
    new-instance v0, Lj$/util/Base64$Decoder;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lj$/util/Base64$Decoder;-><init>(ZZ)V

    sput-object v0, Lj$/util/Base64$Decoder;->RFC4648_URLSAFE:Lj$/util/Base64$Decoder;

    .line 520
    new-instance v0, Lj$/util/Base64$Decoder;

    invoke-direct {v0, v1, v2}, Lj$/util/Base64$Decoder;-><init>(ZZ)V

    sput-object v0, Lj$/util/Base64$Decoder;->RFC2045:Lj$/util/Base64$Decoder;

    return-void
.end method

.method private constructor <init>(ZZ)V
    .locals 0

    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 485
    iput-boolean p1, p0, Lj$/util/Base64$Decoder;->isURL:Z

    .line 486
    iput-boolean p2, p0, Lj$/util/Base64$Decoder;->isMIME:Z

    return-void
.end method

.method private decode0([BII[B)I
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p3

    .line 701
    iget-boolean v2, v0, Lj$/util/Base64$Decoder;->isURL:Z

    if-eqz v2, :cond_0

    sget-object v2, Lj$/util/Base64$Decoder;->fromBase64URL:[I

    goto :goto_0

    :cond_0
    sget-object v2, Lj$/util/Base64$Decoder;->fromBase64:[I

    :goto_0
    const/4 v3, 0x0

    const/16 v4, 0x12

    move/from16 v5, p2

    const/16 v6, 0x12

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    const/4 v9, 0x6

    const/16 v10, 0x10

    if-ge v5, v1, :cond_a

    if-ne v6, v4, :cond_3

    add-int/lit8 v11, v5, 0x4

    if-ge v11, v1, :cond_3

    sub-int v11, v1, v5

    and-int/lit8 v11, v11, -0x4

    add-int/2addr v11, v5

    :goto_2
    if-ge v5, v11, :cond_2

    add-int/lit8 v12, v5, 0x1

    .line 710
    aget-byte v13, p1, v5

    and-int/lit16 v13, v13, 0xff

    aget v13, v2, v13

    add-int/lit8 v14, v5, 0x2

    .line 711
    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    aget v12, v2, v12

    add-int/lit8 v15, v5, 0x3

    .line 712
    aget-byte v14, p1, v14

    and-int/lit16 v14, v14, 0xff

    aget v14, v2, v14

    add-int/lit8 v16, v5, 0x4

    .line 713
    aget-byte v15, p1, v15

    and-int/lit16 v15, v15, 0xff

    aget v15, v2, v15

    or-int v17, v13, v12

    or-int v17, v17, v14

    or-int v17, v17, v15

    if-gez v17, :cond_1

    goto :goto_3

    :cond_1
    shl-int/lit8 v5, v13, 0x12

    shl-int/lit8 v12, v12, 0xc

    or-int/2addr v5, v12

    shl-int/lit8 v12, v14, 0x6

    or-int/2addr v5, v12

    or-int/2addr v5, v15

    add-int/lit8 v12, v7, 0x1

    shr-int/lit8 v13, v5, 0x10

    int-to-byte v13, v13

    .line 719
    aput-byte v13, p4, v7

    add-int/lit8 v13, v7, 0x2

    shr-int/lit8 v14, v5, 0x8

    int-to-byte v14, v14

    .line 720
    aput-byte v14, p4, v12

    add-int/lit8 v7, v7, 0x3

    int-to-byte v5, v5

    .line 721
    aput-byte v5, p4, v13

    move/from16 v5, v16

    goto :goto_2

    :cond_2
    :goto_3
    if-lt v5, v1, :cond_3

    goto/16 :goto_6

    :cond_3
    add-int/lit8 v11, v5, 0x1

    .line 726
    aget-byte v12, p1, v5

    and-int/lit16 v12, v12, 0xff

    .line 727
    aget v12, v2, v12

    if-gez v12, :cond_8

    const/4 v13, -0x2

    if-ne v12, v13, :cond_6

    if-ne v6, v9, :cond_4

    if-eq v11, v1, :cond_5

    add-int/lit8 v5, v5, 0x2

    .line 734
    aget-byte v3, p1, v11

    const/16 v11, 0x3d

    if-ne v3, v11, :cond_5

    goto :goto_4

    :cond_4
    move v5, v11

    :goto_4
    if-eq v6, v4, :cond_5

    goto :goto_6

    .line 736
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Input byte array has wrong 4-byte ending unit"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 741
    :cond_6
    iget-boolean v9, v0, Lj$/util/Base64$Decoder;->isMIME:Z

    if-eqz v9, :cond_7

    :goto_5
    move v5, v11

    goto/16 :goto_1

    .line 744
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    aget-byte v2, p1, v5

    .line 746
    invoke-static {v2, v10}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal base64 character "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    shl-int v5, v12, v6

    or-int/2addr v5, v8

    add-int/lit8 v6, v6, -0x6

    if-gez v6, :cond_9

    add-int/lit8 v6, v7, 0x1

    shr-int/lit8 v8, v5, 0x10

    int-to-byte v8, v8

    .line 751
    aput-byte v8, p4, v7

    add-int/lit8 v8, v7, 0x2

    shr-int/lit8 v9, v5, 0x8

    int-to-byte v9, v9

    .line 752
    aput-byte v9, p4, v6

    add-int/lit8 v7, v7, 0x3

    int-to-byte v5, v5

    .line 753
    aput-byte v5, p4, v8

    const/16 v6, 0x12

    const/4 v8, 0x0

    goto :goto_5

    :cond_9
    move v8, v5

    goto :goto_5

    :cond_a
    :goto_6
    if-ne v6, v9, :cond_b

    add-int/lit8 v3, v7, 0x1

    shr-int/lit8 v4, v8, 0x10

    int-to-byte v4, v4

    .line 760
    aput-byte v4, p4, v7

    move v7, v3

    goto :goto_7

    :cond_b
    if-nez v6, :cond_c

    add-int/lit8 v3, v7, 0x1

    shr-int/lit8 v4, v8, 0x10

    int-to-byte v4, v4

    .line 762
    aput-byte v4, p4, v7

    add-int/lit8 v7, v7, 0x2

    shr-int/lit8 v4, v8, 0x8

    int-to-byte v4, v4

    .line 763
    aput-byte v4, p4, v3

    goto :goto_7

    :cond_c
    const/16 v3, 0xc

    if-eq v6, v3, :cond_f

    :goto_7
    if-ge v5, v1, :cond_e

    .line 772
    iget-boolean v3, v0, Lj$/util/Base64$Decoder;->isMIME:Z

    if-eqz v3, :cond_d

    add-int/lit8 v3, v5, 0x1

    aget-byte v4, p1, v5

    and-int/lit16 v4, v4, 0xff

    aget v4, v2, v4

    move v5, v3

    if-gez v4, :cond_d

    goto :goto_7

    .line 774
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Input byte array has incorrect ending byte at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    return v7

    .line 766
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Last unit does not have enough valid bits"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :goto_8
    throw v1

    :goto_9
    goto :goto_8
.end method

.method private outLength([BII)I
    .locals 8

    .line 663
    iget-boolean v0, p0, Lj$/util/Base64$Decoder;->isURL:Z

    if-eqz v0, :cond_0

    sget-object v0, Lj$/util/Base64$Decoder;->fromBase64URL:[I

    goto :goto_0

    :cond_0
    sget-object v0, Lj$/util/Base64$Decoder;->fromBase64:[I

    :goto_0
    sub-int v1, p3, p2

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    const/4 v3, -0x1

    const/4 v4, 0x2

    if-ge v1, v4, :cond_3

    .line 669
    iget-boolean p1, p0, Lj$/util/Base64$Decoder;->isMIME:Z

    if-eqz p1, :cond_2

    aget p1, v0, v2

    if-ne p1, v3, :cond_2

    return v2

    .line 671
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Input byte[] should at least have 2 bytes for base64 bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 674
    :cond_3
    iget-boolean v5, p0, Lj$/util/Base64$Decoder;->isMIME:Z

    const/16 v6, 0x3d

    const/4 v7, 0x1

    if-eqz v5, :cond_7

    const/4 v4, 0x0

    :goto_1
    if-ge p2, p3, :cond_6

    add-int/lit8 v5, p2, 0x1

    .line 679
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    if-ne p2, v6, :cond_4

    sub-int/2addr p3, v5

    add-int/2addr p3, v7

    sub-int/2addr v1, p3

    goto :goto_2

    .line 684
    :cond_4
    aget p2, v0, p2

    if-ne p2, v3, :cond_5

    add-int/lit8 v4, v4, 0x1

    :cond_5
    move p2, v5

    goto :goto_1

    :cond_6
    :goto_2
    sub-int/2addr v1, v4

    goto :goto_3

    :cond_7
    add-int/lit8 p2, p3, -0x1

    .line 689
    aget-byte p2, p1, p2

    if-ne p2, v6, :cond_9

    sub-int/2addr p3, v4

    .line 691
    aget-byte p1, p1, p3

    if-ne p1, v6, :cond_8

    const/4 v2, 0x2

    goto :goto_3

    :cond_8
    const/4 v2, 0x1

    :cond_9
    :goto_3
    if-nez v2, :cond_a

    and-int/lit8 p1, v1, 0x3

    if-eqz p1, :cond_a

    rsub-int/lit8 v2, p1, 0x4

    :cond_a
    add-int/lit8 v1, v1, 0x3

    .line 697
    div-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v1, v2

    return v1
.end method


# virtual methods
.method public decode(Ljava/lang/String;)[B
    .locals 1

    .line 561
    sget-object v0, Lj$/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/util/Base64$Decoder;->decode([B)[B

    move-result-object p1

    return-object p1
.end method

.method public decode([B)[B
    .locals 4

    .line 537
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lj$/util/Base64$Decoder;->outLength([BII)I

    move-result v0

    new-array v2, v0, [B

    .line 538
    array-length v3, p1

    invoke-direct {p0, p1, v1, v3, v2}, Lj$/util/Base64$Decoder;->decode0([BII[B)I

    move-result p1

    if-eq p1, v0, :cond_0

    .line 540
    invoke-static {v2, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    return-object p1

    :cond_0
    return-object v2
.end method
