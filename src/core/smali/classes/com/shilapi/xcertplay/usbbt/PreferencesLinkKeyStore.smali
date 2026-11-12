.class public final Lcom/shilapi/xcertplay/usbbt/PreferencesLinkKeyStore;
.super Ljava/lang/Object;
.source "LinkKeyStore.kt"

# interfaces
.implements Lcom/shilapi/xcertplay/usbbt/LinkKeyStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/usbbt/PreferencesLinkKeyStore$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLinkKeyStore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LinkKeyStore.kt\ncom/shilapi/xcertplay/usbbt/PreferencesLinkKeyStore\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,63:1\n1788#2,4:64\n774#2:68\n865#2,2:69\n1617#2,9:71\n1869#2:80\n1870#2:82\n1626#2:83\n1#3:81\n*S KotlinDebug\n*F\n+ 1 LinkKeyStore.kt\ncom/shilapi/xcertplay/usbbt/PreferencesLinkKeyStore\n*L\n39#1:64,4\n41#1:68\n41#1:69,2\n41#1:71,9\n41#1:80\n41#1:82\n41#1:83\n41#1:81\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0012\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\nH\u0016J\u0010\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u000e\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0014H\u0016R\u0016\u0010\u0006\u001a\n \u0008*\u0004\u0018\u00010\u00070\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/usbbt/PreferencesLinkKeyStore;",
        "Lcom/shilapi/xcertplay/usbbt/LinkKeyStore;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "prefs",
        "Landroid/content/SharedPreferences;",
        "kotlin.jvm.PlatformType",
        "get",
        "Lcom/shilapi/xcertplay/usbbt/LinkKeyStore$Entry;",
        "addr",
        "Lcom/shilapi/xcertplay/usbbt/BdAddr;",
        "put",
        "",
        "entry",
        "remove",
        "count",
        "",
        "addresses",
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
.field public static final Companion:Lcom/shilapi/xcertplay/usbbt/PreferencesLinkKeyStore$Companion;

.field public static final PREFS:Ljava/lang/String; = "free_auto_usb_bt_link_keys"


# instance fields
.field private final prefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/usbbt/PreferencesLinkKeyStore$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/usbbt/PreferencesLinkKeyStore$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/usbbt/PreferencesLinkKeyStore;->Companion:Lcom/shilapi/xcertplay/usbbt/PreferencesLinkKeyStore$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    const-string v0, "free_auto_usb_bt_link_keys"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/shilapi/xcertplay/usbbt/PreferencesLinkKeyStore;->prefs:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public addresses()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/usbbt/BdAddr;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/PreferencesLinkKeyStore;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 69
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/util/Map$Entry;

    .line 41
    sget-object v4, Lcom/shilapi/xcertplay/usbbt/PreferencesLinkKeyStore;->Companion:Lcom/shilapi/xcertplay/usbbt/PreferencesLinkKeyStore$Companion;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_1

    check-cast v3, Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v4, v3}, Lcom/shilapi/xcertplay/usbbt/PreferencesLinkKeyStore$Companion;->decode$shared_release(Ljava/lang/String;)Lcom/shilapi/xcertplay/usbbt/LinkKeyStore$Entry;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 69
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 70
    :cond_2
    check-cast v1, Ljava/util/List;

    .line 68
    check-cast v1, Ljava/lang/Iterable;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 80
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 79
    check-cast v2, Ljava/util/Map$Entry;

    .line 41
    sget-object v3, Lcom/shilapi/xcertplay/usbbt/BdAddr;->Companion:Lcom/shilapi/xcertplay/usbbt/BdAddr$Companion;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    const-string v4, "<get-key>(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/shilapi/xcertplay/usbbt/BdAddr$Companion;->parse(Ljava/lang/String;)Lcom/shilapi/xcertplay/usbbt/BdAddr;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 79
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 83
    :cond_4
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public count()I
    .locals 5

    .line 39
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/PreferencesLinkKeyStore;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 64
    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 66
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 39
    sget-object v3, Lcom/shilapi/xcertplay/usbbt/PreferencesLinkKeyStore;->Companion:Lcom/shilapi/xcertplay/usbbt/PreferencesLinkKeyStore$Companion;

    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_2

    check-cast v1, Ljava/lang/String;

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v3, v1}, Lcom/shilapi/xcertplay/usbbt/PreferencesLinkKeyStore$Companion;->decode$shared_release(Ljava/lang/String;)Lcom/shilapi/xcertplay/usbbt/LinkKeyStore$Entry;

    move-result-object v1

    if-eqz v1, :cond_1

    add-int/lit8 v2, v2, 0x1

    if-gez v2, :cond_1

    .line 66
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwCountOverflow()V

    goto :goto_0

    :cond_3
    return v2
.end method

.method public get(Lcom/shilapi/xcertplay/usbbt/BdAddr;)Lcom/shilapi/xcertplay/usbbt/LinkKeyStore$Entry;
    .locals 3

    const-string v0, "addr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/PreferencesLinkKeyStore;->Companion:Lcom/shilapi/xcertplay/usbbt/PreferencesLinkKeyStore$Companion;

    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/PreferencesLinkKeyStore;->prefs:Landroid/content/SharedPreferences;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/BdAddr;->key()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/usbbt/PreferencesLinkKeyStore$Companion;->decode$shared_release(Ljava/lang/String;)Lcom/shilapi/xcertplay/usbbt/LinkKeyStore$Entry;

    move-result-object p1

    return-object p1
.end method

.method public put(Lcom/shilapi/xcertplay/usbbt/BdAddr;Lcom/shilapi/xcertplay/usbbt/LinkKeyStore$Entry;)V
    .locals 2

    const-string v0, "addr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entry"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/PreferencesLinkKeyStore;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/BdAddr;->key()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/shilapi/xcertplay/usbbt/PreferencesLinkKeyStore;->Companion:Lcom/shilapi/xcertplay/usbbt/PreferencesLinkKeyStore$Companion;

    invoke-virtual {v1, p2}, Lcom/shilapi/xcertplay/usbbt/PreferencesLinkKeyStore$Companion;->encode$shared_release(Lcom/shilapi/xcertplay/usbbt/LinkKeyStore$Entry;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public remove(Lcom/shilapi/xcertplay/usbbt/BdAddr;)V
    .locals 1

    const-string v0, "addr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/PreferencesLinkKeyStore;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/BdAddr;->key()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
