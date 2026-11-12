.class public abstract Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/ISAPEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "ISAPAEAD_A"
.end annotation


# instance fields
.field protected ISAP_IV1_64:J

.field protected ISAP_IV2_64:J

.field protected ISAP_IV3_64:J

.field protected k64:[J

.field protected npub64:[J

.field protected t0:J

.field protected t1:J

.field protected t2:J

.field protected t3:J

.field protected t4:J

.field final synthetic this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

.field protected x0:J

.field protected x1:J

.field protected x2:J

.field protected x3:J

.field protected x4:J


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/engines/ISAPEngine;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    # setter for: Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAP_rH:I
    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->access$002(Lorg/bouncycastle/crypto/engines/ISAPEngine;I)I

    # getter for: Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAP_rH:I
    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->access$000(Lorg/bouncycastle/crypto/engines/ISAPEngine;)I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    # setter for: Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAP_rH_SZ:I
    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->access$102(Lorg/bouncycastle/crypto/engines/ISAPEngine;I)I

    return-void
.end method

.method private ROTR(JJ)J
    .locals 4

    long-to-int v0, p3

    ushr-long v0, p1, v0

    const-wide/16 v2, 0x40

    sub-long/2addr v2, p3

    long-to-int p3, v2

    shl-long/2addr p1, p3

    or-long/2addr p1, v0

    return-wide p1
.end method

.method private getLongSize(I)I
    .locals 1

    ushr-int/lit8 v0, p1, 0x3

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    add-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method protected ABSORB_MAC([BI)V
    .locals 9

    array-length v0, p1

    shr-int/lit8 v0, v0, 0x3

    new-array v1, v0, [J

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI[JII)V

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    # getter for: Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAP_rH_SZ:I
    invoke-static {v3}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->access$100(Lorg/bouncycastle/crypto/engines/ISAPEngine;)I

    move-result v3

    if-lt p2, v3, :cond_0

    iget-wide v3, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x0:J

    add-int/lit8 v5, v0, 0x1

    aget-wide v6, v1, v0

    invoke-virtual {p0, v6, v7}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->U64BIG(J)J

    move-result-wide v6

    xor-long/2addr v3, v6

    iput-wide v3, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x0:J

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->P12()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    # getter for: Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAP_rH_SZ:I
    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->access$100(Lorg/bouncycastle/crypto/engines/ISAPEngine;)I

    move-result v0

    sub-int/2addr p2, v0

    move v0, v5

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v2, p2, :cond_1

    iget-wide v3, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x0:J

    shl-int/lit8 v1, v0, 0x3

    add-int/2addr v1, v2

    aget-byte v1, p1, v1

    int-to-long v5, v1

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    rsub-int/lit8 v1, v2, 0x7

    shl-int/lit8 v1, v1, 0x3

    shl-long/2addr v5, v1

    xor-long/2addr v3, v5

    iput-wide v3, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x0:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x0:J

    rsub-int/lit8 p1, p2, 0x7

    shl-int/lit8 p1, p1, 0x3

    const-wide/16 v2, 0x80

    shl-long p1, v2, p1

    xor-long/2addr p1, v0

    iput-wide p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x0:J

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->P12()V

    return-void
.end method

.method public P12()V
    .locals 2

    const-wide/16 v0, 0xf0

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROUND(J)V

    const-wide/16 v0, 0xe1

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROUND(J)V

    const-wide/16 v0, 0xd2

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROUND(J)V

    const-wide/16 v0, 0xc3

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROUND(J)V

    const-wide/16 v0, 0xb4

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROUND(J)V

    const-wide/16 v0, 0xa5

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROUND(J)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->P6()V

    return-void
.end method

.method protected P6()V
    .locals 2

    const-wide/16 v0, 0x96

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROUND(J)V

    const-wide/16 v0, 0x87

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROUND(J)V

    const-wide/16 v0, 0x78

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROUND(J)V

    const-wide/16 v0, 0x69

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROUND(J)V

    const-wide/16 v0, 0x5a

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROUND(J)V

    const-wide/16 v0, 0x4b

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROUND(J)V

    return-void
.end method

.method protected abstract PX1()V
.end method

.method protected abstract PX2()V
.end method

.method protected ROUND(J)V
    .locals 19

    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x0:J

    iget-wide v3, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x1:J

    xor-long v5, v1, v3

    iget-wide v7, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x2:J

    xor-long/2addr v5, v7

    iget-wide v9, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x3:J

    xor-long/2addr v5, v9

    xor-long v5, v5, p1

    xor-long v11, v1, v7

    iget-wide v13, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x4:J

    xor-long/2addr v11, v13

    xor-long v11, v11, p1

    and-long/2addr v11, v3

    xor-long/2addr v5, v11

    iput-wide v5, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->t0:J

    xor-long v11, v1, v7

    xor-long/2addr v11, v9

    xor-long/2addr v11, v13

    xor-long v11, v11, p1

    xor-long v15, v3, v7

    xor-long v15, v15, p1

    xor-long v17, v3, v9

    and-long v15, v15, v17

    xor-long/2addr v11, v15

    iput-wide v11, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->t1:J

    xor-long v11, v3, v7

    xor-long/2addr v11, v13

    xor-long v11, v11, p1

    and-long v15, v9, v13

    xor-long/2addr v11, v15

    iput-wide v11, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->t2:J

    xor-long v11, v1, v3

    xor-long/2addr v7, v11

    xor-long v7, v7, p1

    const-wide/16 v11, -0x1

    xor-long v15, v1, v11

    xor-long v17, v9, v13

    and-long v15, v15, v17

    xor-long/2addr v7, v15

    iput-wide v7, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->t3:J

    xor-long v7, v3, v9

    xor-long/2addr v7, v13

    xor-long/2addr v1, v13

    and-long/2addr v1, v3

    xor-long/2addr v1, v7

    iput-wide v1, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->t4:J

    const-wide/16 v1, 0x13

    invoke-direct {v0, v5, v6, v1, v2}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROTR(JJ)J

    move-result-wide v1

    xor-long/2addr v1, v5

    iget-wide v3, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->t0:J

    const-wide/16 v5, 0x1c

    invoke-direct {v0, v3, v4, v5, v6}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROTR(JJ)J

    move-result-wide v3

    xor-long/2addr v1, v3

    iput-wide v1, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x0:J

    iget-wide v1, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->t1:J

    const-wide/16 v3, 0x27

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROTR(JJ)J

    move-result-wide v3

    xor-long/2addr v1, v3

    iget-wide v3, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->t1:J

    const-wide/16 v5, 0x3d

    invoke-direct {v0, v3, v4, v5, v6}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROTR(JJ)J

    move-result-wide v3

    xor-long/2addr v1, v3

    iput-wide v1, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x1:J

    iget-wide v1, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->t2:J

    const-wide/16 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROTR(JJ)J

    move-result-wide v3

    xor-long/2addr v1, v3

    iget-wide v3, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->t2:J

    const-wide/16 v5, 0x6

    invoke-direct {v0, v3, v4, v5, v6}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROTR(JJ)J

    move-result-wide v3

    xor-long/2addr v1, v3

    xor-long/2addr v1, v11

    iput-wide v1, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x2:J

    iget-wide v1, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->t3:J

    const-wide/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROTR(JJ)J

    move-result-wide v3

    xor-long/2addr v1, v3

    iget-wide v3, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->t3:J

    const-wide/16 v5, 0x11

    invoke-direct {v0, v3, v4, v5, v6}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROTR(JJ)J

    move-result-wide v3

    xor-long/2addr v1, v3

    iput-wide v1, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x3:J

    iget-wide v1, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->t4:J

    const-wide/16 v3, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROTR(JJ)J

    move-result-wide v3

    xor-long/2addr v1, v3

    iget-wide v3, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->t4:J

    const-wide/16 v5, 0x29

    invoke-direct {v0, v3, v4, v5, v6}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROTR(JJ)J

    move-result-wide v3

    xor-long/2addr v1, v3

    iput-wide v1, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x4:J

    return-void
.end method

.method protected U64BIG(J)J
    .locals 6

    const-wide/16 v0, 0x8

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROTR(JJ)J

    move-result-wide v0

    const-wide v2, -0xffffff01000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x18

    invoke-direct {p0, p1, p2, v2, v3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROTR(JJ)J

    move-result-wide v2

    const-wide v4, 0xff000000ff0000L

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    const-wide/16 v2, 0x28

    invoke-direct {p0, p1, p2, v2, v3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROTR(JJ)J

    move-result-wide v2

    const-wide v4, 0xff000000ff00L

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    const-wide/16 v2, 0x38

    invoke-direct {p0, p1, p2, v2, v3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROTR(JJ)J

    move-result-wide p1

    const-wide v2, 0xff000000ffL

    and-long/2addr p1, v2

    or-long/2addr p1, v0

    return-wide p1
.end method

.method public init()V
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    # getter for: Lorg/bouncycastle/crypto/engines/ISAPEngine;->npub:[B
    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->access$200(Lorg/bouncycastle/crypto/engines/ISAPEngine;)[B

    move-result-object v0

    array-length v0, v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->getLongSize(I)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->npub64:[J

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    # getter for: Lorg/bouncycastle/crypto/engines/ISAPEngine;->npub:[B
    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->access$200(Lorg/bouncycastle/crypto/engines/ISAPEngine;)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->npub64:[J

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI[JII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->npub64:[J

    aget-wide v1, v0, v3

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->U64BIG(J)J

    move-result-wide v1

    aput-wide v1, v0, v3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->npub64:[J

    const/4 v1, 0x1

    aget-wide v4, v0, v1

    invoke-virtual {p0, v4, v5}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->U64BIG(J)J

    move-result-wide v4

    aput-wide v4, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    # getter for: Lorg/bouncycastle/crypto/engines/ISAPEngine;->k:[B
    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->access$300(Lorg/bouncycastle/crypto/engines/ISAPEngine;)[B

    move-result-object v0

    array-length v0, v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->getLongSize(I)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->k64:[J

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    # getter for: Lorg/bouncycastle/crypto/engines/ISAPEngine;->k:[B
    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->access$300(Lorg/bouncycastle/crypto/engines/ISAPEngine;)[B

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->k64:[J

    array-length v4, v2

    invoke-static {v0, v3, v2, v3, v4}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI[JII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->k64:[J

    aget-wide v4, v0, v3

    invoke-virtual {p0, v4, v5}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->U64BIG(J)J

    move-result-wide v4

    aput-wide v4, v0, v3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->k64:[J

    aget-wide v2, v0, v1

    invoke-virtual {p0, v2, v3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->U64BIG(J)J

    move-result-wide v2

    aput-wide v2, v0, v1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->reset()V

    return-void
.end method

.method public isap_enc([BII[BII)V
    .locals 8

    shr-int/lit8 p6, p3, 0x3

    new-array v0, p6, [J

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p6}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI[JII)V

    new-array v2, p6, [J

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    # getter for: Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAP_rH_SZ:I
    invoke-static {v4}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->access$100(Lorg/bouncycastle/crypto/engines/ISAPEngine;)I

    move-result v4

    if-lt p3, v4, :cond_0

    iget-wide v4, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x0:J

    invoke-virtual {p0, v4, v5}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->U64BIG(J)J

    move-result-wide v4

    aget-wide v6, v0, v3

    xor-long/2addr v4, v6

    aput-wide v4, v2, v3

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->PX1()V

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    # getter for: Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAP_rH_SZ:I
    invoke-static {v4}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->access$100(Lorg/bouncycastle/crypto/engines/ISAPEngine;)I

    move-result v4

    sub-int/2addr p3, v4

    goto :goto_0

    :cond_0
    invoke-static {v2, v1, p6, p4, p5}, Lorg/bouncycastle/util/Pack;->longToLittleEndian([JII[BI)V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x0:J

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J)[B

    move-result-object p6

    :goto_1
    if-lez p3, :cond_1

    shl-int/lit8 v0, v3, 0x3

    add-int v1, v0, p5

    add-int/2addr v1, p3

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    # getter for: Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAP_rH_SZ:I
    invoke-static {v2}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->access$100(Lorg/bouncycastle/crypto/engines/ISAPEngine;)I

    move-result v2

    sub-int/2addr v2, p3

    aget-byte v2, p6, v2

    add-int/2addr v0, p2

    add-int/lit8 p3, p3, -0x1

    add-int/2addr v0, p3

    aget-byte v0, p1, v0

    xor-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, p4, v1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public isap_mac([BI[BI[BI)V
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->npub64:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x0:J

    const/4 v2, 0x1

    aget-wide v2, v0, v2

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x1:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ISAP_IV1_64:J

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x2:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x4:J

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x3:J

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->P12()V

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ABSORB_MAC([BI)V

    iget-wide p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x4:J

    const-wide/16 v2, 0x1

    xor-long/2addr p1, v2

    iput-wide p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x4:J

    invoke-virtual {p0, p3, p4}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ABSORB_MAC([BI)V

    iget-wide p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x0:J

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->U64BIG(J)J

    move-result-wide p1

    invoke-static {p1, p2, p5, v1}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    iget-wide p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x1:J

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->U64BIG(J)J

    move-result-wide p1

    const/16 p3, 0x8

    invoke-static {p1, p2, p5, p3}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    iget-wide p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x2:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x3:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x4:J

    iget-wide v4, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ISAP_IV2_64:J

    const/16 p4, 0x10

    invoke-virtual {p0, v4, v5, p5, p4}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->isap_rk(J[BI)V

    iput-wide p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x2:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x3:J

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x4:J

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->P12()V

    iget-wide p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x0:J

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->U64BIG(J)J

    move-result-wide p1

    invoke-static {p1, p2, p5, p6}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    iget-wide p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x1:J

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->U64BIG(J)J

    move-result-wide p1

    add-int/2addr p6, p3

    invoke-static {p1, p2, p5, p6}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    return-void
.end method

.method public isap_rk(J[BI)V
    .locals 7

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->k64:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x0:J

    const/4 v2, 0x1

    aget-wide v3, v0, v2

    iput-wide v3, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x1:J

    iput-wide p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x2:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x4:J

    iput-wide p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x3:J

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->P12()V

    :goto_0
    shl-int/lit8 p1, p4, 0x3

    sub-int/2addr p1, v2

    if-ge v1, p1, :cond_0

    iget-wide p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x0:J

    ushr-int/lit8 v0, v1, 0x3

    aget-byte v0, p3, v0

    and-int/lit8 v3, v1, 0x7

    rsub-int/lit8 v3, v3, 0x7

    ushr-int/2addr v0, v3

    and-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0x7

    int-to-long v3, v0

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    const/16 v0, 0x38

    shl-long/2addr v3, v0

    xor-long/2addr p1, v3

    iput-wide p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x0:J

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->PX2()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-wide p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x0:J

    sub-int/2addr p4, v2

    aget-byte p3, p3, p4

    int-to-long p3, p3

    const-wide/16 v0, 0x1

    and-long/2addr p3, v0

    const/16 v0, 0x3f

    shl-long/2addr p3, v0

    xor-long/2addr p1, p3

    iput-wide p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x0:J

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->P12()V

    return-void
.end method

.method public reset()V
    .locals 4

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ISAP_IV3_64:J

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    # getter for: Lorg/bouncycastle/crypto/engines/ISAPEngine;->npub:[B
    invoke-static {v2}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->access$200(Lorg/bouncycastle/crypto/engines/ISAPEngine;)[B

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->isap_rk(J[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->npub64:[J

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    iput-wide v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x3:J

    const/4 v1, 0x1

    aget-wide v1, v0, v1

    iput-wide v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x4:J

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->PX1()V

    return-void
.end method
