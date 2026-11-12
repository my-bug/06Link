.class public final Lcom/shilapi/xcertplay/hud/BydClusterNaviMode$Companion;
.super Ljava/lang/Object;
.source "BydClusterNaviMode.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBydClusterNaviMode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BydClusterNaviMode.kt\ncom/shilapi/xcertplay/hud/BydClusterNaviMode$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,30:1\n295#2,2:31\n1#3:33\n*S KotlinDebug\n*F\n+ 1 BydClusterNaviMode.kt\ncom/shilapi/xcertplay/hud/BydClusterNaviMode$Companion\n*L\n24#1:31,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\u0005J\u0012\u0010\r\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\tR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/hud/BydClusterNaviMode$Companion;",
        "",
        "<init>",
        "()V",
        "INSTRUMENT_DEVICE",
        "",
        "NAVI_TYPE_GET",
        "GET_INT",
        "READ_COMMAND",
        "",
        "fromCode",
        "Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;",
        "code",
        "parseRead",
        "output",
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

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/hud/BydClusterNaviMode$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromCode(I)Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;
    .locals 3

    .line 24
    invoke-static {}, Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 31
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;

    .line 24
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;->getCode()I

    move-result v2

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 32
    :goto_0
    check-cast v1, Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;

    return-object v1
.end method

.method public final parseRead(Ljava/lang/String;)Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;
    .locals 1

    .line 27
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydParcel;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydParcel;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/hud/BydParcel;->value(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/hud/BydClusterNaviMode$Companion;->fromCode(I)Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
