.class public final Lcom/shilapi/xcertplay/usbbt/RfcommFrames;
.super Ljava/lang/Object;
.source "Rfcomm.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;,
        Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Mcc;,
        Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRfcomm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Rfcomm.kt\ncom/shilapi/xcertplay/usbbt/RfcommFrames\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,645:1\n1#2:646\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0014\n\u0002\u0010\u0015\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0003123B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\"\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u0005JA\u0010 \u001a\u00020\u001d2\u0006\u0010!\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u00052\u0006\u0010%\u001a\u00020#2\u0008\u0008\u0002\u0010&\u001a\u00020\u001d2\n\u0008\u0002\u0010\'\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010(J\u0010\u0010)\u001a\u0004\u0018\u00010*2\u0006\u0010\u001c\u001a\u00020\u001dJ\u001e\u0010+\u001a\u00020\u001d2\u0006\u0010$\u001a\u00020\u00052\u0006\u0010,\u001a\u00020#2\u0006\u0010-\u001a\u00020\u001dJ\u0014\u0010.\u001a\u0008\u0012\u0004\u0012\u0002000/2\u0006\u0010&\u001a\u00020\u001dR\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00064"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/usbbt/RfcommFrames;",
        "",
        "<init>",
        "()V",
        "SABM",
        "",
        "UA",
        "DM",
        "DISC",
        "UIH",
        "PF",
        "MCC_PN",
        "MCC_PSC",
        "MCC_CLD",
        "MCC_TEST",
        "MCC_FCON",
        "MCC_FCOFF",
        "MCC_MSC",
        "MCC_NSC",
        "MCC_RPN",
        "MCC_RLS",
        "MSC_SIGNALS_READY",
        "MSC_FC",
        "CL_CREDIT_REQUEST",
        "CL_CREDIT_ACCEPT",
        "CRC_TABLE",
        "",
        "fcs",
        "bytes",
        "",
        "offset",
        "length",
        "build",
        "dlci",
        "cr",
        "",
        "type",
        "pf",
        "info",
        "credits",
        "(IZIZ[BLjava/lang/Integer;)[B",
        "parse",
        "Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;",
        "mcc",
        "command",
        "value",
        "parseMcc",
        "",
        "Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Mcc;",
        "Frame",
        "Mcc",
        "Pn",
        "shared_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CL_CREDIT_ACCEPT:I = 0xe

.field public static final CL_CREDIT_REQUEST:I = 0xf

.field private static final CRC_TABLE:[I

.field public static final DISC:I = 0x43

.field public static final DM:I = 0xf

.field public static final INSTANCE:Lcom/shilapi/xcertplay/usbbt/RfcommFrames;

.field public static final MCC_CLD:I = 0x30

.field public static final MCC_FCOFF:I = 0x18

.field public static final MCC_FCON:I = 0x28

.field public static final MCC_MSC:I = 0x38

.field public static final MCC_NSC:I = 0x4

.field public static final MCC_PN:I = 0x20

.field public static final MCC_PSC:I = 0x10

.field public static final MCC_RLS:I = 0x14

.field public static final MCC_RPN:I = 0x24

.field public static final MCC_TEST:I = 0x8

.field public static final MSC_FC:I = 0x2

.field public static final MSC_SIGNALS_READY:I = 0x8d

.field public static final PF:I = 0x10

.field public static final SABM:I = 0x2f

.field public static final UA:I = 0x63

.field public static final UIH:I = 0xef


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/RfcommFrames;

    const/16 v0, 0x100

    .line 49
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    move v5, v3

    const/4 v4, 0x0

    :goto_1
    const/16 v6, 0x8

    if-ge v4, v6, :cond_1

    and-int/lit8 v6, v5, 0x1

    ushr-int/lit8 v5, v5, 0x1

    if-eqz v6, :cond_0

    xor-int/lit16 v5, v5, 0xe0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 52
    :cond_1
    aput v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 49
    :cond_2
    sput-object v1, Lcom/shilapi/xcertplay/usbbt/RfcommFrames;->CRC_TABLE:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic build$default(Lcom/shilapi/xcertplay/usbbt/RfcommFrames;IZIZ[BLjava/lang/Integer;ILjava/lang/Object;)[B
    .locals 7

    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_0

    const/4 p5, 0x0

    .line 79
    new-array p5, p5, [B

    :cond_0
    move-object v5, p5

    and-int/lit8 p5, p7, 0x20

    if-eqz p5, :cond_1

    const/4 p6, 0x0

    :cond_1
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames;->build(IZIZ[BLjava/lang/Integer;)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic fcs$default(Lcom/shilapi/xcertplay/usbbt/RfcommFrames;[BIIILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 56
    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames;->fcs([BII)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final build(IZIZ[BLjava/lang/Integer;)[B
    .locals 6

    const-string v0, "info"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p1, :cond_9

    const/16 v0, 0x40

    if-ge p1, v0, :cond_9

    .line 81
    array-length v0, p5

    const/16 v1, 0x7fff

    if-gt v0, v1, :cond_8

    const/16 v0, 0xef

    const/4 v1, 0x0

    if-eqz p6, :cond_1

    if-ne p3, v0, :cond_0

    .line 82
    new-instance v2, Lkotlin/ranges/IntRange;

    const/16 v3, 0xff

    invoke-direct {v2, v1, v3}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lkotlin/ranges/IntRange;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "credits only on UIH"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v2, 0x2

    shl-int/2addr p1, v2

    if-eqz p2, :cond_2

    const/4 p2, 0x2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    or-int/2addr p1, p2

    const/4 p2, 0x1

    or-int/2addr p1, p2

    if-nez p4, :cond_4

    if-eqz p6, :cond_3

    goto :goto_2

    :cond_3
    const/4 p4, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/16 p4, 0x10

    :goto_3
    or-int/2addr p4, p3

    .line 85
    array-length v3, p5

    const/16 v4, 0x7f

    if-gt v3, v4, :cond_5

    new-array v3, p2, [B

    array-length v4, p5

    shl-int/2addr v4, p2

    or-int/2addr v4, p2

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    goto :goto_4

    .line 86
    :cond_5
    new-array v3, v2, [B

    array-length v5, p5

    and-int/2addr v4, v5

    shl-int/2addr v4, p2

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    array-length v4, p5

    ushr-int/lit8 v4, v4, 0x7

    int-to-byte v4, v4

    aput-byte v4, v3, p2

    :goto_4
    int-to-byte p1, p1

    int-to-byte p4, p4

    .line 87
    new-array v4, v2, [B

    aput-byte p1, v4, v1

    aput-byte p4, v4, p2

    invoke-static {v4, v3}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p1

    if-ne p3, v0, :cond_6

    goto :goto_5

    .line 88
    :cond_6
    array-length v2, p1

    .line 89
    :goto_5
    invoke-virtual {p0, p1, v1, v2}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames;->fcs([BII)I

    move-result p3

    if-eqz p6, :cond_7

    .line 90
    new-array p4, p2, [B

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p6

    int-to-byte p6, p6

    aput-byte p6, p4, v1

    goto :goto_6

    :cond_7
    new-array p4, v1, [B

    :goto_6
    invoke-static {p1, p4}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p1

    invoke-static {p1, p5}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p1

    int-to-byte p3, p3

    new-array p2, p2, [B

    aput-byte p3, p2, v1

    invoke-static {p1, p2}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p1

    return-object p1

    .line 81
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "RFCOMM information field too long"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 80
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "DLCI"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final fcs([BII)I
    .locals 4

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/2addr p3, p2

    const/16 v0, 0xff

    const/16 v1, 0xff

    :goto_0
    if-ge p2, p3, :cond_0

    .line 58
    sget-object v2, Lcom/shilapi/xcertplay/usbbt/RfcommFrames;->CRC_TABLE:[I

    aget-byte v3, p1, p2

    and-int/2addr v3, v0

    xor-int/2addr v1, v3

    aget v1, v2, v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    sub-int/2addr v0, v1

    return v0
.end method

.method public final mcc(IZ[B)[B
    .locals 3

    const-string/jumbo v0, "value"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    array-length v0, p3

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_1

    const/4 v0, 0x2

    shl-int/2addr p1, v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    or-int/2addr p1, p2

    const/4 p2, 0x1

    or-int/2addr p1, p2

    int-to-byte p1, p1

    .line 137
    array-length v2, p3

    shl-int/2addr v2, p2

    or-int/2addr v2, p2

    int-to-byte v2, v2

    new-array v0, v0, [B

    aput-byte p1, v0, v1

    aput-byte v2, v0, p2

    invoke-static {v0, p3}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p1

    return-object p1

    .line 136
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "MCC value too long"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final parse([B)Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;
    .locals 14

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 100
    aget-byte v3, p1, v0

    and-int/lit16 v4, v3, 0xff

    and-int/lit8 v5, v3, 0x1

    if-nez v5, :cond_1

    return-object v1

    :cond_1
    const/4 v5, 0x1

    .line 102
    aget-byte v6, p1, v5

    and-int/lit16 v10, v6, 0xef

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_2

    const/4 v11, 0x1

    goto :goto_0

    :cond_2
    const/4 v11, 0x0

    :goto_0
    const/4 v6, 0x2

    .line 105
    aget-byte v7, p1, v6

    and-int/lit16 v8, v7, 0xff

    and-int/2addr v7, v5

    const/4 v9, 0x3

    if-eqz v7, :cond_3

    ushr-int/lit8 v2, v8, 0x1

    move v7, v2

    const/4 v2, 0x3

    goto :goto_1

    .line 111
    :cond_3
    array-length v7, p1

    const/4 v12, 0x5

    if-ge v7, v12, :cond_4

    return-object v1

    :cond_4
    ushr-int/lit8 v7, v8, 0x1

    .line 112
    aget-byte v8, p1, v9

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x7

    or-int/2addr v7, v8

    .line 114
    :goto_1
    array-length v8, p1

    sub-int/2addr v8, v2

    sub-int/2addr v8, v5

    const/16 v9, 0xef

    if-ne v10, v9, :cond_5

    const/4 v12, 0x2

    goto :goto_2

    :cond_5
    move v12, v2

    .line 116
    :goto_2
    invoke-virtual {p0, p1, v0, v12}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames;->fcs([BII)I

    move-result v12

    array-length v13, p1

    sub-int/2addr v13, v5

    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0xff

    if-eq v12, v13, :cond_6

    return-object v1

    :cond_6
    ushr-int/2addr v4, v6

    if-ne v8, v7, :cond_7

    move-object v12, v1

    goto :goto_3

    :cond_7
    add-int/lit8 v12, v7, 0x1

    if-ne v8, v12, :cond_a

    if-ne v10, v9, :cond_a

    if-eqz v11, :cond_a

    if-eqz v4, :cond_a

    .line 122
    aget-byte v8, p1, v2

    and-int/lit16 v8, v8, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    add-int/lit8 v2, v2, 0x1

    move-object v12, v8

    :goto_3
    const/16 v8, 0x2f

    if-eq v10, v8, :cond_8

    const/16 v8, 0x63

    if-eq v10, v8, :cond_8

    const/16 v8, 0xf

    if-eq v10, v8, :cond_8

    const/16 v8, 0x43

    if-eq v10, v8, :cond_8

    if-eq v10, v9, :cond_8

    return-object v1

    :cond_8
    move v1, v7

    .line 126
    new-instance v7, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;

    and-int/2addr v3, v6

    if-eqz v3, :cond_9

    const/4 v9, 0x1

    goto :goto_4

    :cond_9
    const/4 v9, 0x0

    :goto_4
    add-int v0, v2, v1

    invoke-static {p1, v2, v0}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v13

    move v8, v4

    invoke-direct/range {v7 .. v13}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;-><init>(IZIZLjava/lang/Integer;[B)V

    return-object v7

    :cond_a
    return-object v1
.end method

.method public final parseMcc([B)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Mcc;",
            ">;"
        }
    .end annotation

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v2, 0x2

    .line 144
    array-length v4, p1

    if-gt v3, v4, :cond_4

    .line 145
    aget-byte v3, p1, v2

    and-int/lit16 v4, v3, 0xff

    and-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_4

    add-int/lit8 v2, v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 151
    :goto_1
    array-length v7, p1

    if-lt v2, v7, :cond_0

    check-cast v0, Ljava/util/List;

    return-object v0

    :cond_0
    add-int/lit8 v7, v2, 0x1

    .line 152
    aget-byte v2, p1, v2

    and-int/lit16 v8, v2, 0xff

    const/4 v9, 0x1

    ushr-int/2addr v8, v9

    shl-int/2addr v8, v6

    or-int/2addr v5, v8

    add-int/lit8 v6, v6, 0x7

    and-int/2addr v2, v9

    if-nez v2, :cond_2

    const/16 v2, 0xe

    if-le v6, v2, :cond_1

    .line 156
    check-cast v0, Ljava/util/List;

    return-object v0

    :cond_1
    move v2, v7

    goto :goto_1

    :cond_2
    add-int v2, v7, v5

    .line 158
    array-length v5, p1

    if-gt v2, v5, :cond_4

    .line 159
    move-object v5, v0

    check-cast v5, Ljava/util/Collection;

    new-instance v6, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Mcc;

    ushr-int/lit8 v4, v4, 0x2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    :goto_2
    invoke-static {p1, v7, v2}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v3

    invoke-direct {v6, v4, v9, v3}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Mcc;-><init>(IZ[B)V

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 162
    :cond_4
    check-cast v0, Ljava/util/List;

    return-object v0
.end method
