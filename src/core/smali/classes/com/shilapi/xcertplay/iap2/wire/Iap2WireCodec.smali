.class public final Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;
.super Ljava/lang/Object;
.source "Iap2WireCodec.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIap2WireCodec.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Iap2WireCodec.kt\ncom/shilapi/xcertplay/iap2/wire/Iap2WireCodec\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,155:1\n1#2:156\n1878#3,3:157\n*S KotlinDebug\n*F\n+ 1 Iap2WireCodec.kt\ncom/shilapi/xcertplay/iap2/wire/Iap2WireCodec\n*L\n81#1:157,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u001c\n\u0002\u0008\u000f\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u0005\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0008J\u000e\u0010\t\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0008J\u000e\u0010\n\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u000bJ\u000e\u0010\u000c\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0008J\u000e\u0010\r\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0008J\u000e\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u000fJ\u000e\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0008J\u000e\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0008J\u000e\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u000fJ\u000e\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005J\u000e\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0014J\u0014\u0010\u0015\u001a\u00020\u00052\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0017J\u0014\u0010\u0018\u001a\u00020\u00052\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0017J\u0018\u0010\u0019\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u0008J\u0018\u0010\u001b\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u0008J\"\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u000bJ\u0018\u0010\u001e\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u0008J\u0018\u0010\u001f\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u0008J\u0018\u0010 \u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u0008J\u0018\u0010!\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u0008J\u0018\u0010\"\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u0008J\u000e\u0010#\u001a\u00020\u00052\u0006\u0010$\u001a\u00020\u0005J\u000e\u0010%\u001a\u00020\u00142\u0006\u0010$\u001a\u00020\u0005J\u0014\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u00140\'2\u0006\u0010$\u001a\u00020\u0005J\u0014\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u00080\'2\u0006\u0010$\u001a\u00020\u0005J\u0010\u0010\u0006\u001a\u00020\u00082\u0006\u0010)\u001a\u00020*H\u0002\u00a8\u0006+"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;",
        "",
        "<init>",
        "()V",
        "void",
        "",
        "u8",
        "value",
        "",
        "i8",
        "bool",
        "",
        "u16",
        "i16",
        "u32",
        "",
        "i32",
        "u64",
        "bytes",
        "string",
        "",
        "strings",
        "values",
        "",
        "u16List",
        "readU8",
        "offset",
        "readI8",
        "readBool",
        "nonzeroIsTrue",
        "readU16",
        "readI16",
        "readU32",
        "readI32",
        "readU64",
        "readBytes",
        "payload",
        "readString",
        "readStrings",
        "",
        "readU16List",
        "byte",
        "",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->INSTANCE:Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic readBool$default(Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;[BIZILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x1

    .line 93
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->readBool([BIZ)Z

    move-result p0

    return p0
.end method

.method public static synthetic readI16$default(Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;[BIILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 101
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->readI16([BI)I

    move-result p0

    return p0
.end method

.method public static synthetic readI32$default(Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;[BIILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 112
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->readI32([BI)I

    move-result p0

    return p0
.end method

.method public static synthetic readI8$default(Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;[BIILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 91
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->readI8([BI)I

    move-result p0

    return p0
.end method

.method public static synthetic readU16$default(Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;[BIILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 98
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->readU16([BI)I

    move-result p0

    return p0
.end method

.method public static synthetic readU32$default(Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;[BIILjava/lang/Object;)J
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 106
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->readU32([BI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic readU64$default(Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;[BIILjava/lang/Object;)J
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 114
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->readU64([BI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic readU8$default(Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;[BIILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 89
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->readU8([BI)I

    move-result p0

    return p0
.end method

.method private final u8(B)I
    .locals 0

    and-int/lit16 p1, p1, 0xff

    return p1
.end method


# virtual methods
.method public final bool(Z)[B
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->u8(I)[B

    move-result-object p1

    return-object p1
.end method

.method public final bytes([B)[B
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    const-string v0, "copyOf(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final i16(I)[B
    .locals 1

    const/16 v0, -0x8000

    if-gt v0, p1, :cond_0

    const v0, 0x8000

    if-ge p1, v0, :cond_0

    const v0, 0xffff

    and-int/2addr p1, v0

    .line 34
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->u16(I)[B

    move-result-object p1

    return-object p1

    .line 33
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "i16 value must be in -32768..32767"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final i32(I)[B
    .locals 4

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 49
    invoke-virtual {p0, v0, v1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->u32(J)[B

    move-result-object p1

    return-object p1
.end method

.method public final i8(I)[B
    .locals 2

    const/16 v0, -0x80

    if-gt v0, p1, :cond_0

    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    int-to-byte p1, p1

    const/4 v0, 0x1

    .line 22
    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    return-object v0

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "i8 value must be in -128..127"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final readBool([BIZ)Z
    .locals 1

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->readU8([BI)I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    return p2

    :cond_1
    if-ne p1, v0, :cond_2

    return v0

    :cond_2
    return p2
.end method

.method public final readBytes([B)[B
    .locals 1

    const-string v0, "payload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    const-string v0, "copyOf(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final readI16([BI)I
    .locals 1

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->readU16([BI)I

    move-result p1

    const p2, 0x8000

    and-int/2addr p2, p1

    if-eqz p2, :cond_0

    const/high16 p2, -0x10000

    or-int/2addr p1, p2

    :cond_0
    return p1
.end method

.method public final readI32([BI)I
    .locals 1

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->readU32([BI)J

    move-result-wide p1

    long-to-int p2, p1

    return p2
.end method

.method public final readI8([BI)I
    .locals 1

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    aget-byte p1, p1, p2

    return p1
.end method

.method public final readString([B)Ljava/lang/String;
    .locals 3

    const-string v0, "payload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    array-length v0, p1

    if-eqz v0, :cond_0

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->last([B)B

    move-result v0

    if-nez v0, :cond_0

    .line 128
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    const-string v0, "copyOf(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/text/StringsKt;->decodeToString([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 126
    :cond_0
    new-instance p1, Lcom/shilapi/xcertplay/iap2/wire/Iap2ProtocolException;

    const-string v0, "CSM string is not NUL terminated"

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p1, v0, v2, v1, v2}, Lcom/shilapi/xcertplay/iap2/wire/Iap2ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1
.end method

.method public final readStrings([B)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "payload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    array-length v0, p1

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 133
    :cond_0
    invoke-static {p1}, Lkotlin/collections/ArraysKt;->last([B)B

    move-result v0

    if-nez v0, :cond_3

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 138
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 139
    aget-byte v4, p1, v2

    if-nez v4, :cond_1

    .line 140
    move-object v4, v0

    check-cast v4, Ljava/util/Collection;

    invoke-static {p1, v3, v2}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v3

    invoke-static {v3}, Lkotlin/text/StringsKt;->decodeToString([B)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v2, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 143
    :cond_2
    check-cast v0, Ljava/util/List;

    return-object v0

    .line 134
    :cond_3
    new-instance p1, Lcom/shilapi/xcertplay/iap2/wire/Iap2ProtocolException;

    const-string v0, "CSM string[] is not NUL terminated"

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p1, v0, v2, v1, v2}, Lcom/shilapi/xcertplay/iap2/wire/Iap2ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final readU16([BI)I
    .locals 1

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    aget-byte v0, p1, p2

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->u8(B)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p2, p2, 0x1

    aget-byte p1, p1, p2

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->u8(B)I

    move-result p1

    or-int/2addr p1, v0

    return p1
.end method

.method public final readU16List([B)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "payload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    array-length v0, p1

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 150
    array-length v0, p1

    div-int/2addr v0, v1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    sget-object v3, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->INSTANCE:Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;

    mul-int/lit8 v4, v2, 0x2

    invoke-virtual {v3, p1, v4}, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->readU16([BI)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    check-cast v1, Ljava/util/List;

    return-object v1

    .line 148
    :cond_1
    new-instance v0, Lcom/shilapi/xcertplay/iap2/wire/Iap2ProtocolException;

    array-length p1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CSM u16[] payload has odd length "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1, v2}, Lcom/shilapi/xcertplay/iap2/wire/Iap2ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final readU32([BI)J
    .locals 5

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    aget-byte v0, p1, p2

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->u8(B)I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x1

    .line 108
    aget-byte v2, p1, v2

    invoke-direct {p0, v2}, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->u8(B)I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x2

    .line 109
    aget-byte v2, p1, v2

    invoke-direct {p0, v2}, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->u8(B)I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 p2, p2, 0x3

    .line 110
    aget-byte p1, p1, p2

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->u8(B)I

    move-result p1

    int-to-long p1, p1

    or-long/2addr p1, v0

    return-wide p1
.end method

.method public final readU64([BI)J
    .locals 5

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    shl-long/2addr v0, v3

    .line 117
    sget-object v3, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->INSTANCE:Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;

    add-int v4, p2, v2

    aget-byte v4, p1, v4

    invoke-direct {v3, v4}, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->u8(B)I

    move-result v3

    int-to-long v3, v3

    or-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public final readU8([BI)I
    .locals 1

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    aget-byte p1, p1, p2

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->u8(B)I

    move-result p1

    return p1
.end method

.method public final string(Ljava/lang/String;)[B
    .locals 4

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v3, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    invoke-static {p1}, Lkotlin/text/StringsKt;->encodeToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [B

    aput-byte v3, v0, v3

    invoke-static {p1, v0}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p1

    return-object p1

    .line 68
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "NUL-terminated strings must not contain U+0000"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final strings(Ljava/lang/Iterable;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    const-string/jumbo v0, "values"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 74
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->string(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const-string/jumbo v0, "toByteArray(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final u16(I)[B
    .locals 3

    if-ltz p1, :cond_0

    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_0

    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    int-to-byte p1, p1

    const/4 v1, 0x2

    .line 29
    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    const/4 v0, 0x1

    aput-byte p1, v1, v0

    return-object v1

    .line 28
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "u16 value must be in 0..65535"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final u16List(Ljava/lang/Iterable;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)[B"
        }
    .end annotation

    const-string/jumbo v0, "values"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 80
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 81
    check-cast p1, Ljava/lang/Iterable;

    .line 158
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-ltz v2, :cond_1

    const/high16 v4, 0x10000

    if-ge v2, v4, :cond_1

    mul-int/lit8 v1, v1, 0x2

    ushr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    .line 83
    aput-byte v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    int-to-byte v2, v2

    .line 84
    aput-byte v2, v0, v1

    move v1, v3

    goto :goto_0

    .line 82
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "u16[] value must be in 0..65535"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-object v0
.end method

.method public final u32(I)[B
    .locals 2

    int-to-long v0, p1

    .line 47
    invoke-virtual {p0, v0, v1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->u32(J)[B

    move-result-object p1

    return-object p1
.end method

.method public final u32(J)[B
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, v0, p1

    if-gtz v2, :cond_0

    const-wide v0, 0x100000000L

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    const/16 v0, 0x18

    ushr-long v0, p1, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    const/16 v1, 0x10

    ushr-long v1, p1, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    const/16 v2, 0x8

    ushr-long v2, p1, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    long-to-int p2, p1

    int-to-byte p1, p2

    const/4 p2, 0x4

    .line 43
    new-array p2, p2, [B

    const/4 v3, 0x0

    aput-byte v0, p2, v3

    const/4 v0, 0x1

    aput-byte v1, p2, v0

    const/4 v0, 0x2

    aput-byte v2, p2, v0

    const/4 v0, 0x3

    aput-byte p1, p2, v0

    return-object p2

    .line 38
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "u32 value must be in 0..4294967295"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final u64(J)[B
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/16 v0, 0x38

    ushr-long v0, p1, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    const/16 v1, 0x30

    ushr-long v1, p1, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    const/16 v2, 0x28

    ushr-long v2, p1, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    const/16 v3, 0x20

    ushr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    const/16 v4, 0x18

    ushr-long v4, p1, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    const/16 v5, 0x10

    ushr-long v5, p1, v5

    long-to-int v6, v5

    int-to-byte v5, v6

    const/16 v6, 0x8

    ushr-long v7, p1, v6

    long-to-int v8, v7

    int-to-byte v7, v8

    long-to-int p2, p1

    int-to-byte p1, p2

    .line 61
    new-array p2, v6, [B

    const/4 v6, 0x0

    aput-byte v0, p2, v6

    const/4 v0, 0x1

    aput-byte v1, p2, v0

    const/4 v0, 0x2

    aput-byte v2, p2, v0

    const/4 v0, 0x3

    aput-byte v3, p2, v0

    const/4 v0, 0x4

    aput-byte v4, p2, v0

    const/4 v0, 0x5

    aput-byte v5, p2, v0

    const/4 v0, 0x6

    aput-byte v7, p2, v0

    const/4 v0, 0x7

    aput-byte p1, p2, v0

    return-object p2

    .line 52
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "u64 value must be non-negative in this API"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final u8(I)[B
    .locals 2

    if-ltz p1, :cond_0

    const/16 v0, 0x100

    if-ge p1, v0, :cond_0

    int-to-byte p1, p1

    const/4 v0, 0x1

    .line 17
    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    return-object v0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "u8 value must be in 0..255"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final void()[B
    .locals 1

    const/4 v0, 0x0

    .line 13
    new-array v0, v0, [B

    return-object v0
.end method
