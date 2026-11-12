.class public final Lcom/shilapi/xcertplay/network/SystemHotspotCredentials;
.super Ljava/lang/Object;
.source "SystemHotspotCredentials.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/network/SystemHotspotCredentials$Credentials;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSystemHotspotCredentials.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SystemHotspotCredentials.kt\ncom/shilapi/xcertplay/network/SystemHotspotCredentials\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,38:1\n1#2:39\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0008B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/SystemHotspotCredentials;",
        "",
        "<init>",
        "()V",
        "read",
        "Lcom/shilapi/xcertplay/network/SystemHotspotCredentials$Credentials;",
        "context",
        "Landroid/content/Context;",
        "Credentials",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/network/SystemHotspotCredentials;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/network/SystemHotspotCredentials;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/network/SystemHotspotCredentials;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/network/SystemHotspotCredentials;->INSTANCE:Lcom/shilapi/xcertplay/network/SystemHotspotCredentials;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final read(Landroid/content/Context;)Lcom/shilapi/xcertplay/network/SystemHotspotCredentials$Credentials;
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 20
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    const-string/jumbo v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_1

    check-cast p1, Landroid/net/wifi/WifiManager;

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    if-eqz p1, :cond_2

    .line 22
    const-class v1, Landroid/net/wifi/WifiManager;

    const-string v2, "getWifiApConfiguration"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_2

    check-cast p1, Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_2
    move-object p1, v0

    :goto_2
    const/4 v1, 0x2

    .line 24
    const-string v2, "\""

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    :try_start_1
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v4, :cond_3

    move-object v5, v2

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v4, v5}, Lkotlin/text/StringsKt;->removeSurrounding(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5, v3, v3, v1, v0}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    move-object v4, v0

    :goto_3
    if-eqz p1, :cond_4

    .line 26
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v5, :cond_4

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v5, v2}, Lkotlin/text/StringsKt;->removeSurrounding(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x8

    if-gt v6, v5, :cond_4

    const/16 v6, 0x40

    if-ge v5, v6, :cond_4

    move-object v5, v2

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5, v3, v3, v1, v0}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    move-object v2, v0

    :goto_4
    const/4 v1, 0x1

    if-eqz p1, :cond_7

    .line 27
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/util/BitSet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v5}, Ljava/util/BitSet;->cardinality()I

    move-result v6

    if-ne v6, v1, :cond_6

    invoke-virtual {v5, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    const/4 v3, 0x1

    :cond_6
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_5

    :cond_7
    move-object v3, v0

    :goto_5
    if-nez v4, :cond_8

    return-object v0

    :cond_8
    if-eqz v2, :cond_9

    .line 30
    new-instance p1, Lcom/shilapi/xcertplay/network/SystemHotspotCredentials$Credentials;

    invoke-direct {p1, v4, v2}, Lcom/shilapi/xcertplay/network/SystemHotspotCredentials$Credentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 31
    :cond_9
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_b

    :cond_a
    new-instance p1, Lcom/shilapi/xcertplay/network/SystemHotspotCredentials$Credentials;

    const-string v1, ""

    invoke-direct {p1, v4, v1}, Lcom/shilapi/xcertplay/network/SystemHotspotCredentials$Credentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

    :catchall_0
    :cond_b
    return-object v0
.end method
