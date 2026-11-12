.class public final Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig$Companion;
.super Ljava/lang/Object;
.source "CarPlayRuntimeConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig$Companion;",
        "",
        "<init>",
        "()V",
        "APPLE_VENDOR_ID",
        "",
        "DEFAULT_HOST_MAC",
        "",
        "getDEFAULT_HOST_MAC",
        "()[B",
        "isLinkLocalIpv6",
        "",
        "value",
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

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$isLinkLocalIpv6(Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig$Companion;Ljava/lang/String;)Z
    .locals 0

    .line 163
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig$Companion;->isLinkLocalIpv6(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private final isLinkLocalIpv6(Ljava/lang/String;)Z
    .locals 5

    .line 167
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/16 v1, 0x25

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0, v2, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x3a

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    .line 170
    instance-of v0, p1, Ljava/net/Inet6Address;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/net/Inet6Address;

    invoke-virtual {p1}, Ljava/net/Inet6Address;->isLinkLocalAddress()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_1
    :goto_0
    return v2
.end method


# virtual methods
.method public final getDEFAULT_HOST_MAC()[B
    .locals 1

    .line 165
    # getter for: Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;->DEFAULT_HOST_MAC:[B
    invoke-static {}, Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;->access$getDEFAULT_HOST_MAC$cp()[B

    move-result-object v0

    return-object v0
.end method
