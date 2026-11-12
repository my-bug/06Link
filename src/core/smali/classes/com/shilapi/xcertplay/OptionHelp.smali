.class public final Lcom/shilapi/xcertplay/OptionHelp;
.super Ljava/lang/Object;
.source "OptionHelp.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/OptionHelp$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOptionHelp.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OptionHelp.kt\ncom/shilapi/xcertplay/OptionHelp\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,42:1\n1563#2:43\n1634#2,3:44\n1563#2:47\n1634#2,3:48\n*S KotlinDebug\n*F\n+ 1 OptionHelp.kt\ncom/shilapi/xcertplay/OptionHelp\n*L\n38#1:43\n38#1:44,3\n40#1:47\n40#1:48,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u0005J\u0019\u0010\u000e\u001a\r\u0012\t\u0012\u00070\u0010\u00a2\u0006\u0002\u0008\u00110\u000f2\u0006\u0010\u0012\u001a\u00020\u0013J\u0019\u0010\u0014\u001a\r\u0012\t\u0012\u00070\u0010\u00a2\u0006\u0002\u0008\u00110\u000f2\u0006\u0010\u0012\u001a\u00020\u0013R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/OptionHelp;",
        "",
        "<init>",
        "()V",
        "rotation",
        "",
        "choice",
        "Lcom/shilapi/xcertplay/ScreenRotation$Choice;",
        "buffer",
        "millis",
        "channel",
        "stream",
        "CHANNELS",
        "",
        "clusterContents",
        "",
        "",
        "Lkotlin/jvm/internal/EnhancedNullability;",
        "context",
        "Landroid/content/Context;",
        "clusterSizes",
        "common_release"
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
.field private static final CHANNELS:[I

.field public static final INSTANCE:Lcom/shilapi/xcertplay/OptionHelp;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/shilapi/xcertplay/OptionHelp;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/OptionHelp;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/OptionHelp;->INSTANCE:Lcom/shilapi/xcertplay/OptionHelp;

    .line 34
    sget v1, Lcom/shilapi/xcertplay/host/R$string;->ch_help_0:I

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->ch_help_1:I

    sget v3, Lcom/shilapi/xcertplay/host/R$string;->ch_help_2:I

    sget v4, Lcom/shilapi/xcertplay/host/R$string;->ch_help_3:I

    sget v5, Lcom/shilapi/xcertplay/host/R$string;->ch_help_4:I

    .line 35
    sget v6, Lcom/shilapi/xcertplay/host/R$string;->ch_help_5:I

    sget v7, Lcom/shilapi/xcertplay/host/R$string;->ch_help_6:I

    sget v8, Lcom/shilapi/xcertplay/host/R$string;->ch_help_7:I

    sget v9, Lcom/shilapi/xcertplay/host/R$string;->ch_help_8:I

    sget v10, Lcom/shilapi/xcertplay/host/R$string;->ch_help_9:I

    sget v11, Lcom/shilapi/xcertplay/host/R$string;->ch_help_10:I

    filled-new-array/range {v1 .. v11}, [I

    move-result-object v0

    .line 34
    sput-object v0, Lcom/shilapi/xcertplay/OptionHelp;->CHANNELS:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final buffer(I)I
    .locals 3

    if-eqz p1, :cond_6

    const/16 v0, 0x32

    if-eq p1, v0, :cond_5

    const/16 v0, 0x64

    if-eq p1, v0, :cond_4

    const/16 v0, 0x96

    if-eq p1, v0, :cond_3

    const/16 v0, 0x12c

    if-eq p1, v0, :cond_2

    const/16 v0, 0x1f4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 27
    sget p1, Lcom/shilapi/xcertplay/host/R$string;->buf_help_1000:I

    return p1

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no explanation for a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ms music buffer"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_1
    sget p1, Lcom/shilapi/xcertplay/host/R$string;->buf_help_500:I

    return p1

    .line 25
    :cond_2
    sget p1, Lcom/shilapi/xcertplay/host/R$string;->buf_help_300:I

    return p1

    .line 24
    :cond_3
    sget p1, Lcom/shilapi/xcertplay/host/R$string;->buf_help_150:I

    return p1

    .line 23
    :cond_4
    sget p1, Lcom/shilapi/xcertplay/host/R$string;->buf_help_100:I

    return p1

    .line 22
    :cond_5
    sget p1, Lcom/shilapi/xcertplay/host/R$string;->buf_help_50:I

    return p1

    .line 21
    :cond_6
    sget p1, Lcom/shilapi/xcertplay/host/R$string;->buf_help_minimum:I

    return p1
.end method

.method public final channel(I)I
    .locals 3

    .line 32
    sget-object v0, Lcom/shilapi/xcertplay/OptionHelp;->CHANNELS:[I

    const/4 v1, 0x0

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->getLastIndex([I)I

    move-result v2

    invoke-static {p1, v1, v2}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p1

    aget p1, v0, p1

    return p1
.end method

.method public final clusterContents(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    sget v0, Lcom/shilapi/xcertplay/host/R$string;->cl_help_map:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v1, Lcom/shilapi/xcertplay/host/R$string;->cl_help_turn:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->cl_help_map_turn:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 44
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 45
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 38
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 45
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 46
    :cond_0
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public final clusterSizes(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    sget v0, Lcom/shilapi/xcertplay/host/R$string;->cl_help_size_standard:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v1, Lcom/shilapi/xcertplay/host/R$string;->cl_help_size_larger:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->cl_help_size_largest:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 48
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 49
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 40
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 50
    :cond_0
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public final rotation(Lcom/shilapi/xcertplay/ScreenRotation$Choice;)I
    .locals 1

    const-string v0, "choice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    sget-object v0, Lcom/shilapi/xcertplay/OptionHelp$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/ScreenRotation$Choice;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 17
    sget p1, Lcom/shilapi/xcertplay/host/R$string;->rot_help_270:I

    return p1

    .line 12
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 16
    :cond_1
    sget p1, Lcom/shilapi/xcertplay/host/R$string;->rot_help_180:I

    return p1

    .line 15
    :cond_2
    sget p1, Lcom/shilapi/xcertplay/host/R$string;->rot_help_90:I

    return p1

    .line 14
    :cond_3
    sget p1, Lcom/shilapi/xcertplay/host/R$string;->rot_help_0:I

    return p1

    .line 13
    :cond_4
    sget p1, Lcom/shilapi/xcertplay/host/R$string;->rot_help_auto:I

    return p1
.end method
