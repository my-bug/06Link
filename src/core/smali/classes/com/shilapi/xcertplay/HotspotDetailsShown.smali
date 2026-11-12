.class public final Lcom/shilapi/xcertplay/HotspotDetailsShown;
.super Ljava/lang/Object;
.source "HotspotDetailsShown.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/HotspotDetailsShown$Words;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHotspotDetailsShown.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HotspotDetailsShown.kt\ncom/shilapi/xcertplay/HotspotDetailsShown\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,26:1\n1#2:27\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u00c0\u0002\u0018\u00002\u00020\u0001:\u0001\u000bB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J&\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/HotspotDetailsShown;",
        "",
        "<init>",
        "()V",
        "of",
        "Lcom/shilapi/xcertplay/HotspotDetailsShown$Words;",
        "saved",
        "Landroid/net/wifi/WifiConfiguration;",
        "name",
        "",
        "password",
        "Words",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/HotspotDetailsShown;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/HotspotDetailsShown;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/HotspotDetailsShown;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/HotspotDetailsShown;->INSTANCE:Lcom/shilapi/xcertplay/HotspotDetailsShown;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final of(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Lcom/shilapi/xcertplay/HotspotDetailsShown$Words;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 21
    :cond_0
    sget-object v1, Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;->INSTANCE:Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;->unquoted(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    if-eqz p3, :cond_2

    .line 22
    sget-object v1, Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;->INSTANCE:Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;

    invoke-virtual {v1, p1}, Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;->isPsk(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;->INSTANCE:Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;

    invoke-virtual {v1, p1, p3}, Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;->passwordMatches(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move-object p3, v0

    .line 23
    :goto_0
    new-instance p1, Lcom/shilapi/xcertplay/HotspotDetailsShown$Words;

    invoke-direct {p1, p2, p3}, Lcom/shilapi/xcertplay/HotspotDetailsShown$Words;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_3
    :goto_1
    return-object v0
.end method
