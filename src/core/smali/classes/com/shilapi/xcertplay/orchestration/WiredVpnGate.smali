.class public final Lcom/shilapi/xcertplay/orchestration/WiredVpnGate;
.super Ljava/lang/Object;
.source "WiredUsbPromptPolicy.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/orchestration/WiredVpnGate$CardState;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWiredUsbPromptPolicy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WiredUsbPromptPolicy.kt\ncom/shilapi/xcertplay/orchestration/WiredVpnGate\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,86:1\n1761#2,3:87\n*S KotlinDebug\n*F\n+ 1 WiredUsbPromptPolicy.kt\ncom/shilapi/xcertplay/orchestration/WiredVpnGate\n*L\n74#1:87,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u001e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0012B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001d\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010\t\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\nJ\u001d\u0010\t\u001a\u0004\u0018\u00010\u00072\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000c\u00a2\u0006\u0002\u0010\rJ\u001d\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00072\u0008\u0010\t\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0011R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/orchestration/WiredVpnGate;",
        "",
        "<init>",
        "()V",
        "APPLE_VENDOR_ID",
        "",
        "mayPrepare",
        "",
        "wireless",
        "appleOnUsb",
        "(ZLjava/lang/Boolean;)Z",
        "vendorIds",
        "",
        "(Ljava/util/Collection;)Ljava/lang/Boolean;",
        "cardState",
        "Lcom/shilapi/xcertplay/orchestration/WiredVpnGate$CardState;",
        "active",
        "(ZLjava/lang/Boolean;)Lcom/shilapi/xcertplay/orchestration/WiredVpnGate$CardState;",
        "CardState",
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
.field public static final APPLE_VENDOR_ID:I = 0x5ac

.field public static final INSTANCE:Lcom/shilapi/xcertplay/orchestration/WiredVpnGate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/orchestration/WiredVpnGate;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/orchestration/WiredVpnGate;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/orchestration/WiredVpnGate;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/WiredVpnGate;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final appleOnUsb(Ljava/util/Collection;)Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 74
    check-cast p1, Ljava/lang/Iterable;

    .line 87
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/16 v2, 0x5ac

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    .line 89
    :cond_2
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public final cardState(ZLjava/lang/Boolean;)Lcom/shilapi/xcertplay/orchestration/WiredVpnGate$CardState;
    .locals 0

    if-eqz p1, :cond_0

    .line 81
    sget-object p1, Lcom/shilapi/xcertplay/orchestration/WiredVpnGate$CardState;->CONNECTED:Lcom/shilapi/xcertplay/orchestration/WiredVpnGate$CardState;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 82
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/shilapi/xcertplay/orchestration/WiredVpnGate$CardState;->NO_IPHONE:Lcom/shilapi/xcertplay/orchestration/WiredVpnGate$CardState;

    return-object p1

    .line 83
    :cond_1
    sget-object p1, Lcom/shilapi/xcertplay/orchestration/WiredVpnGate$CardState;->CONNECTING:Lcom/shilapi/xcertplay/orchestration/WiredVpnGate$CardState;

    return-object p1
.end method

.method public final mayPrepare(ZLjava/lang/Boolean;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 72
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
