.class public final Lcom/shilapi/xcertplay/orchestration/QuickSwitch;
.super Ljava/lang/Object;
.source "QuickSwitch.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/orchestration/QuickSwitch$Kind;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u000bB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/orchestration/QuickSwitch;",
        "",
        "<init>",
        "()V",
        "forNeverJoined",
        "",
        "Lcom/shilapi/xcertplay/orchestration/QuickSwitch$Kind;",
        "failedLink",
        "Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;",
        "networkOnAir",
        "",
        "Kind",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/orchestration/QuickSwitch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/orchestration/QuickSwitch;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/orchestration/QuickSwitch;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/orchestration/QuickSwitch;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/QuickSwitch;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final forNeverJoined(Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/orchestration/QuickSwitch$Kind;",
            ">;"
        }
    .end annotation

    .line 22
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object v0

    .line 23
    if-eqz p2, :cond_0

    .line 24
    sget-object p1, Lcom/shilapi/xcertplay/orchestration/QuickSwitch$Kind;->SHOW_WIFI_QR:Lcom/shilapi/xcertplay/orchestration/QuickSwitch$Kind;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
