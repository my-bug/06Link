.class final Lcom/shilapi/xcertplay/transport/LockdownPlistChannel$Companion;
.super Ljava/lang/Object;
.source "LockdownPlistChannel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0005\u0008\u0082\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\tJ\u0016\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0005R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\tX\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/LockdownPlistChannel$Companion;",
        "",
        "<init>",
        "()V",
        "LENGTH_BYTES",
        "",
        "DEFAULT_MAXIMUM_MESSAGE_BYTES",
        "ABSOLUTE_MAXIMUM_MESSAGE_BYTES",
        "DEFAULT_TIMEOUT_MILLIS",
        "",
        "MAXIMUM_TIMEOUT_MILLIS",
        "MAXIMUM_NESTING",
        "MAXIMUM_DICTIONARY_ENTRIES",
        "NANOS_PER_MILLISECOND",
        "putU32",
        "",
        "target",
        "",
        "offset",
        "value",
        "readU32",
        "source",
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

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final putU32([BIJ)V
    .locals 3

    const-string/jumbo v0, "target"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x18

    ushr-long v0, p3, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 319
    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    const/16 v1, 0x10

    ushr-long v1, p3, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 320
    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    const/16 v1, 0x8

    ushr-long v1, p3, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 321
    aput-byte v1, p1, v0

    add-int/lit8 p2, p2, 0x3

    long-to-int p4, p3

    int-to-byte p3, p4

    .line 322
    aput-byte p3, p1, p2

    return-void
.end method

.method public final readU32([BI)J
    .locals 7

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 326
    aget-byte v0, p1, p2

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const/16 v4, 0x18

    shl-long/2addr v0, v4

    add-int/lit8 v4, p2, 0x1

    .line 327
    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p2, 0x2

    .line 328
    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 p2, p2, 0x3

    .line 329
    aget-byte p1, p1, p2

    int-to-long p1, p1

    and-long/2addr p1, v2

    or-long/2addr p1, v0

    return-wide p1
.end method
