.class public final Lcom/shilapi/xcertplay/usbbt/BdAddr$Companion;
.super Ljava/lang/Object;
.source "BdAddr.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/usbbt/BdAddr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBdAddr.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BdAddr.kt\ncom/shilapi/xcertplay/usbbt/BdAddr$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,42:1\n1#2:43\n1088#3,2:44\n*S KotlinDebug\n*F\n+ 1 BdAddr.kt\ncom/shilapi/xcertplay/usbbt/BdAddr$Companion\n*L\n37#1:44,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tJ\u0010\u0010\n\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000b\u001a\u00020\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/usbbt/BdAddr$Companion;",
        "",
        "<init>",
        "()V",
        "fromLittleEndian",
        "Lcom/shilapi/xcertplay/usbbt/BdAddr;",
        "bytes",
        "",
        "offset",
        "",
        "parse",
        "text",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/usbbt/BdAddr$Companion;-><init>()V

    return-void
.end method

.method public static synthetic fromLittleEndian$default(Lcom/shilapi/xcertplay/usbbt/BdAddr$Companion;[BIILjava/lang/Object;)Lcom/shilapi/xcertplay/usbbt/BdAddr;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 27
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/usbbt/BdAddr$Companion;->fromLittleEndian([BI)Lcom/shilapi/xcertplay/usbbt/BdAddr;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final fromLittleEndian([BI)Lcom/shilapi/xcertplay/usbbt/BdAddr;
    .locals 7

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p2, :cond_1

    .line 28
    array-length v0, p1

    sub-int/2addr v0, p2

    const/4 v1, 0x6

    if-lt v0, v1, :cond_1

    const-wide/16 v0, 0x0

    const/4 v2, 0x5

    :goto_0
    const/4 v3, -0x1

    if-ge v3, v2, :cond_0

    const/16 v3, 0x8

    shl-long/2addr v0, v3

    add-int v3, p2, v2

    .line 30
    aget-byte v3, p1, v3

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    or-long/2addr v0, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 31
    :cond_0
    new-instance p1, Lcom/shilapi/xcertplay/usbbt/BdAddr;

    invoke-direct {p1, v0, v1}, Lcom/shilapi/xcertplay/usbbt/BdAddr;-><init>(J)V

    return-object p1

    .line 28
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "BD_ADDR needs 6 bytes"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final parse(Ljava/lang/String;)Lcom/shilapi/xcertplay/usbbt/BdAddr;
    .locals 7

    const-string/jumbo v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 36
    const-string v2, ":"

    const-string v3, ""

    const/4 v4, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    .line 44
    :goto_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/16 v3, 0x10

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 37
    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    if-gez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38
    :cond_1
    new-instance v0, Lcom/shilapi/xcertplay/usbbt/BdAddr;

    invoke-static {v3}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/usbbt/BdAddr;-><init>(J)V

    return-object v0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method
