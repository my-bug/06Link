.class public final Lcom/shilapi/xcertplay/airplay/CarPlaySize$Companion;
.super Ljava/lang/Object;
.source "CarPlaySize.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/airplay/CarPlaySize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCarPlaySize.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CarPlaySize.kt\ncom/shilapi/xcertplay/airplay/CarPlaySize$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,20:1\n2393#2,14:21\n*S KotlinDebug\n*F\n+ 1 CarPlaySize.kt\ncom/shilapi/xcertplay/airplay/CarPlaySize$Companion\n*L\n17#1:21,14\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/airplay/CarPlaySize$Companion;",
        "",
        "<init>",
        "()V",
        "DEFAULT",
        "Lcom/shilapi/xcertplay/airplay/CarPlaySize;",
        "getDEFAULT",
        "()Lcom/shilapi/xcertplay/airplay/CarPlaySize;",
        "fromWidthMillimeters",
        "millimeters",
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

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/airplay/CarPlaySize$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromWidthMillimeters(I)Lcom/shilapi/xcertplay/airplay/CarPlaySize;
    .locals 5

    .line 17
    invoke-static {}, Lcom/shilapi/xcertplay/airplay/CarPlaySize;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 21
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    move-object v2, v1

    check-cast v2, Lcom/shilapi/xcertplay/airplay/CarPlaySize;

    .line 17
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/airplay/CarPlaySize;->getWidthMillimeters()I

    move-result v2

    sub-int/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 27
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 28
    move-object v4, v3

    check-cast v4, Lcom/shilapi/xcertplay/airplay/CarPlaySize;

    .line 17
    invoke-virtual {v4}, Lcom/shilapi/xcertplay/airplay/CarPlaySize;->getWidthMillimeters()I

    move-result v4

    sub-int/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v2, v4, :cond_2

    move-object v1, v3

    move v2, v4

    .line 33
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 34
    :goto_0
    check-cast v1, Lcom/shilapi/xcertplay/airplay/CarPlaySize;

    return-object v1

    .line 22
    :cond_3
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final getDEFAULT()Lcom/shilapi/xcertplay/airplay/CarPlaySize;
    .locals 1

    .line 13
    # getter for: Lcom/shilapi/xcertplay/airplay/CarPlaySize;->DEFAULT:Lcom/shilapi/xcertplay/airplay/CarPlaySize;
    invoke-static {}, Lcom/shilapi/xcertplay/airplay/CarPlaySize;->access$getDEFAULT$cp()Lcom/shilapi/xcertplay/airplay/CarPlaySize;

    move-result-object v0

    return-object v0
.end method
