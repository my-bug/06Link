.class public final Lcom/shilapi/xcertplay/usbbt/BdAddr;
.super Ljava/lang/Object;
.source "BdAddr.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/usbbt/BdAddr$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBdAddr.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BdAddr.kt\ncom/shilapi/xcertplay/usbbt/BdAddr\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,42:1\n1#2:43\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010\u0008\u001a\u00020\tJ\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0006\u0010\u000c\u001a\u00020\u000bJ\u0006\u0010\r\u001a\u00020\u000bJ\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\u000f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/usbbt/BdAddr;",
        "",
        "value",
        "",
        "<init>",
        "(J)V",
        "getValue",
        "()J",
        "toLittleEndian",
        "",
        "toString",
        "",
        "key",
        "redacted",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "Companion",
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
.field public static final Companion:Lcom/shilapi/xcertplay/usbbt/BdAddr$Companion;


# instance fields
.field private final value:J


# direct methods
.method public static synthetic $r8$lambda$NWQyFyTmEkJuGfW_plA5Ot3jpOw(Lcom/shilapi/xcertplay/usbbt/BdAddr;I)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/usbbt/BdAddr;->toString$lambda$1(Lcom/shilapi/xcertplay/usbbt/BdAddr;I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/usbbt/BdAddr$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/usbbt/BdAddr$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/usbbt/BdAddr;->Companion:Lcom/shilapi/xcertplay/usbbt/BdAddr$Companion;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/shilapi/xcertplay/usbbt/BdAddr;->value:J

    const-wide/16 v0, 0x0

    cmp-long v2, v0, p1

    if-gtz v2, :cond_0

    const-wide/high16 v0, 0x1000000000000L

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "BD_ADDR out of range"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/usbbt/BdAddr;JILjava/lang/Object;)Lcom/shilapi/xcertplay/usbbt/BdAddr;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    iget-wide p1, p0, Lcom/shilapi/xcertplay/usbbt/BdAddr;->value:J

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/usbbt/BdAddr;->copy(J)Lcom/shilapi/xcertplay/usbbt/BdAddr;

    move-result-object p0

    return-object p0
.end method

.method private static final toString$lambda$1(Lcom/shilapi/xcertplay/usbbt/BdAddr;I)Ljava/lang/CharSequence;
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/shilapi/xcertplay/usbbt/BdAddr;->value:J

    mul-int/lit8 p1, p1, 0x8

    ushr-long p0, v0, p1

    const-wide/16 v0, 0xff

    and-long/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x1

    new-array v0, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%02X"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "format(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/shilapi/xcertplay/usbbt/BdAddr;->value:J

    return-wide v0
.end method

.method public final copy(J)Lcom/shilapi/xcertplay/usbbt/BdAddr;
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/usbbt/BdAddr;

    invoke-direct {v0, p1, p2}, Lcom/shilapi/xcertplay/usbbt/BdAddr;-><init>(J)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/usbbt/BdAddr;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/usbbt/BdAddr;

    iget-wide v3, p0, Lcom/shilapi/xcertplay/usbbt/BdAddr;->value:J

    iget-wide v5, p1, Lcom/shilapi/xcertplay/usbbt/BdAddr;->value:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getValue()J
    .locals 2

    .line 9
    iget-wide v0, p0, Lcom/shilapi/xcertplay/usbbt/BdAddr;->value:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/shilapi/xcertplay/usbbt/BdAddr;->value:J

    invoke-static {v0, v1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    return v0
.end method

.method public final key()Ljava/lang/String;
    .locals 4

    .line 21
    iget-wide v0, p0, Lcom/shilapi/xcertplay/usbbt/BdAddr;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%012X"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final redacted()Ljava/lang/String;
    .locals 4

    .line 24
    iget-wide v0, p0, Lcom/shilapi/xcertplay/usbbt/BdAddr;->value:J

    const/16 v2, 0x18

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    invoke-static {v0, v1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "bdaddr#%04x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final toLittleEndian()[B
    .locals 7

    const/4 v0, 0x6

    .line 15
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-wide v3, p0, Lcom/shilapi/xcertplay/usbbt/BdAddr;->value:J

    mul-int/lit8 v5, v2, 0x8

    ushr-long/2addr v3, v5

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 18
    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->downTo(II)Lkotlin/ranges/IntProgression;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    const-string v0, ":"

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    new-instance v7, Lcom/shilapi/xcertplay/usbbt/BdAddr$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0}, Lcom/shilapi/xcertplay/usbbt/BdAddr$$ExternalSyntheticLambda0;-><init>(Lcom/shilapi/xcertplay/usbbt/BdAddr;)V

    const/16 v8, 0x1e

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
