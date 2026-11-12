.class public final Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;
.super Ljava/lang/Object;
.source "Ipv6RouteRepair.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdbLink"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001Bc\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0016\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u0005\u0012\u0010\u0008\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008\u0012\u0018\u0008\u0002\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u0005\u0012\u000e\u0008\u0002\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0008\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R!\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0019\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R!\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0012R\u0017\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0014\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;",
        "",
        "access",
        "Lcom/shilapi/xcertplay/adb/LocalAdb$Access;",
        "shell",
        "Lkotlin/Function1;",
        "",
        "restartAsRoot",
        "Lkotlin/Function0;",
        "",
        "slowShell",
        "close",
        "",
        "<init>",
        "(Lcom/shilapi/xcertplay/adb/LocalAdb$Access;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V",
        "getAccess",
        "()Lcom/shilapi/xcertplay/adb/LocalAdb$Access;",
        "getShell",
        "()Lkotlin/jvm/functions/Function1;",
        "getRestartAsRoot",
        "()Lkotlin/jvm/functions/Function0;",
        "getSlowShell",
        "getClose",
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


# instance fields
.field private final access:Lcom/shilapi/xcertplay/adb/LocalAdb$Access;

.field private final close:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final restartAsRoot:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final shell:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final slowShell:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$cTqNuFEtUYW-llBpCVgbMdPbpOI()Lkotlin/Unit;
    .locals 1

    invoke-static {}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;->_init_$lambda$0()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Lcom/shilapi/xcertplay/adb/LocalAdb$Access;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/adb/LocalAdb$Access;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "access"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "close"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;->access:Lcom/shilapi/xcertplay/adb/LocalAdb$Access;

    .line 25
    iput-object p2, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;->shell:Lkotlin/jvm/functions/Function1;

    .line 27
    iput-object p3, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;->restartAsRoot:Lkotlin/jvm/functions/Function0;

    .line 29
    iput-object p4, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;->slowShell:Lkotlin/jvm/functions/Function1;

    .line 30
    iput-object p5, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;->close:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/adb/LocalAdb$Access;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_1

    move-object p4, v0

    :cond_1
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_2

    .line 30
    new-instance p5, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink$$ExternalSyntheticLambda0;

    invoke-direct {p5}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink$$ExternalSyntheticLambda0;-><init>()V

    :cond_2
    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 23
    invoke-direct/range {p1 .. p6}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;-><init>(Lcom/shilapi/xcertplay/adb/LocalAdb$Access;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final _init_$lambda$0()Lkotlin/Unit;
    .locals 1

    .line 30
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public final getAccess()Lcom/shilapi/xcertplay/adb/LocalAdb$Access;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;->access:Lcom/shilapi/xcertplay/adb/LocalAdb$Access;

    return-object v0
.end method

.method public final getClose()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;->close:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getRestartAsRoot()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;->restartAsRoot:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getShell()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;->shell:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getSlowShell()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;->slowShell:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method
