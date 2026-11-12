.class final Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;
.super Ljava/lang/Object;
.source "CarPlayVpnService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/network/CarPlayVpnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AirPlayAttachment"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\u0008!\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0082\u0008\u0018\u00002\u00020\u0001Ba\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0011\u0012\u0014\u0008\u0002\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u0013\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\t\u0010*\u001a\u00020\u0003H\u00c6\u0003J\t\u0010+\u001a\u00020\u0005H\u00c6\u0003J\t\u0010,\u001a\u00020\u0007H\u00c6\u0003J\t\u0010-\u001a\u00020\tH\u00c6\u0003J\u000b\u0010.\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003J\t\u0010/\u001a\u00020\rH\u00c6\u0003J\t\u00100\u001a\u00020\u000fH\u00c6\u0003J\t\u00101\u001a\u00020\u0011H\u00c6\u0003J\u0015\u00102\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u0013H\u00c6\u0003Jq\u00103\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0014\u0008\u0002\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u0013H\u00c6\u0001J\u0013\u00104\u001a\u00020\u00112\u0008\u00105\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u00106\u001a\u000207H\u00d6\u0001J\t\u00108\u001a\u00020\u0014H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!R\u0011\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010#R\u0011\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010%R\u0011\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\'R\u001d\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010)\u00a8\u00069"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;",
        "",
        "address",
        "Ljava/net/InetAddress;",
        "config",
        "Lcom/shilapi/xcertplay/airplay/AirPlayConfig;",
        "identity",
        "Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;",
        "pairings",
        "Lcom/shilapi/xcertplay/airplay/PairingStore;",
        "mfi",
        "Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;",
        "listener",
        "Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;",
        "media",
        "Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;",
        "wireless",
        "",
        "onDiagnostic",
        "Lkotlin/Function1;",
        "",
        "",
        "<init>",
        "(Ljava/net/InetAddress;Lcom/shilapi/xcertplay/airplay/AirPlayConfig;Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;Lcom/shilapi/xcertplay/airplay/PairingStore;Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;ZLkotlin/jvm/functions/Function1;)V",
        "getAddress",
        "()Ljava/net/InetAddress;",
        "getConfig",
        "()Lcom/shilapi/xcertplay/airplay/AirPlayConfig;",
        "getIdentity",
        "()Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;",
        "getPairings",
        "()Lcom/shilapi/xcertplay/airplay/PairingStore;",
        "getMfi",
        "()Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;",
        "getListener",
        "()Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;",
        "getMedia",
        "()Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;",
        "getWireless",
        "()Z",
        "getOnDiagnostic",
        "()Lkotlin/jvm/functions/Function1;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
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
.field private final address:Ljava/net/InetAddress;

.field private final config:Lcom/shilapi/xcertplay/airplay/AirPlayConfig;

.field private final identity:Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;

.field private final listener:Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

.field private final media:Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;

.field private final mfi:Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;

.field private final onDiagnostic:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final pairings:Lcom/shilapi/xcertplay/airplay/PairingStore;

.field private final wireless:Z


# direct methods
.method public static synthetic $r8$lambda$hyx_ESYT6anPCST6Rw5czExcG7s(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->_init_$lambda$0(Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/net/InetAddress;Lcom/shilapi/xcertplay/airplay/AirPlayConfig;Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;Lcom/shilapi/xcertplay/airplay/PairingStore;Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;ZLkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetAddress;",
            "Lcom/shilapi/xcertplay/airplay/AirPlayConfig;",
            "Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;",
            "Lcom/shilapi/xcertplay/airplay/PairingStore;",
            "Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;",
            "Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;",
            "Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "identity"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pairings"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "media"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDiagnostic"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->address:Ljava/net/InetAddress;

    .line 48
    iput-object p2, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->config:Lcom/shilapi/xcertplay/airplay/AirPlayConfig;

    .line 49
    iput-object p3, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->identity:Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;

    .line 50
    iput-object p4, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->pairings:Lcom/shilapi/xcertplay/airplay/PairingStore;

    .line 51
    iput-object p5, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->mfi:Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;

    .line 52
    iput-object p6, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->listener:Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    .line 53
    iput-object p7, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->media:Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;

    .line 55
    iput-boolean p8, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->wireless:Z

    .line 56
    iput-object p9, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->onDiagnostic:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/net/InetAddress;Lcom/shilapi/xcertplay/airplay/AirPlayConfig;Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;Lcom/shilapi/xcertplay/airplay/PairingStore;Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;ZLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    move/from16 v0, p10

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    const/4 v10, 0x0

    goto :goto_0

    :cond_0
    move/from16 v10, p8

    :goto_0
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_1

    .line 56
    new-instance v0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment$$ExternalSyntheticLambda0;-><init>()V

    move-object v11, v0

    goto :goto_1

    :cond_1
    move-object/from16 v11, p9

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    .line 46
    invoke-direct/range {v2 .. v11}, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;-><init>(Ljava/net/InetAddress;Lcom/shilapi/xcertplay/airplay/AirPlayConfig;Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;Lcom/shilapi/xcertplay/airplay/PairingStore;Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;ZLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final _init_$lambda$0(Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;Ljava/net/InetAddress;Lcom/shilapi/xcertplay/airplay/AirPlayConfig;Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;Lcom/shilapi/xcertplay/airplay/PairingStore;Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;
    .locals 0

    and-int/lit8 p11, p10, 0x1

    if-eqz p11, :cond_0

    iget-object p1, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->address:Ljava/net/InetAddress;

    :cond_0
    and-int/lit8 p11, p10, 0x2

    if-eqz p11, :cond_1

    iget-object p2, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->config:Lcom/shilapi/xcertplay/airplay/AirPlayConfig;

    :cond_1
    and-int/lit8 p11, p10, 0x4

    if-eqz p11, :cond_2

    iget-object p3, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->identity:Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;

    :cond_2
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_3

    iget-object p4, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->pairings:Lcom/shilapi/xcertplay/airplay/PairingStore;

    :cond_3
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_4

    iget-object p5, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->mfi:Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;

    :cond_4
    and-int/lit8 p11, p10, 0x20

    if-eqz p11, :cond_5

    iget-object p6, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->listener:Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    :cond_5
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_6

    iget-object p7, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->media:Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;

    :cond_6
    and-int/lit16 p11, p10, 0x80

    if-eqz p11, :cond_7

    iget-boolean p8, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->wireless:Z

    :cond_7
    and-int/lit16 p10, p10, 0x100

    if-eqz p10, :cond_8

    iget-object p9, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->onDiagnostic:Lkotlin/jvm/functions/Function1;

    :cond_8
    move p10, p8

    move-object p11, p9

    move-object p8, p6

    move-object p9, p7

    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p11}, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->copy(Ljava/net/InetAddress;Lcom/shilapi/xcertplay/airplay/AirPlayConfig;Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;Lcom/shilapi/xcertplay/airplay/PairingStore;Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;ZLkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->address:Ljava/net/InetAddress;

    return-object v0
.end method

.method public final component2()Lcom/shilapi/xcertplay/airplay/AirPlayConfig;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->config:Lcom/shilapi/xcertplay/airplay/AirPlayConfig;

    return-object v0
.end method

.method public final component3()Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->identity:Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;

    return-object v0
.end method

.method public final component4()Lcom/shilapi/xcertplay/airplay/PairingStore;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->pairings:Lcom/shilapi/xcertplay/airplay/PairingStore;

    return-object v0
.end method

.method public final component5()Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->mfi:Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;

    return-object v0
.end method

.method public final component6()Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->listener:Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    return-object v0
.end method

.method public final component7()Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->media:Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;

    return-object v0
.end method

.method public final component8()Z
    .locals 1

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->wireless:Z

    return v0
.end method

.method public final component9()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->onDiagnostic:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final copy(Ljava/net/InetAddress;Lcom/shilapi/xcertplay/airplay/AirPlayConfig;Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;Lcom/shilapi/xcertplay/airplay/PairingStore;Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;ZLkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetAddress;",
            "Lcom/shilapi/xcertplay/airplay/AirPlayConfig;",
            "Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;",
            "Lcom/shilapi/xcertplay/airplay/PairingStore;",
            "Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;",
            "Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;",
            "Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;"
        }
    .end annotation

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "identity"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pairings"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "media"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDiagnostic"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;-><init>(Ljava/net/InetAddress;Lcom/shilapi/xcertplay/airplay/AirPlayConfig;Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;Lcom/shilapi/xcertplay/airplay/PairingStore;Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;ZLkotlin/jvm/functions/Function1;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;

    iget-object v1, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->address:Ljava/net/InetAddress;

    iget-object v3, p1, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->address:Ljava/net/InetAddress;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->config:Lcom/shilapi/xcertplay/airplay/AirPlayConfig;

    iget-object v3, p1, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->config:Lcom/shilapi/xcertplay/airplay/AirPlayConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->identity:Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;

    iget-object v3, p1, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->identity:Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->pairings:Lcom/shilapi/xcertplay/airplay/PairingStore;

    iget-object v3, p1, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->pairings:Lcom/shilapi/xcertplay/airplay/PairingStore;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->mfi:Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;

    iget-object v3, p1, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->mfi:Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->listener:Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    iget-object v3, p1, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->listener:Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->media:Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;

    iget-object v3, p1, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->media:Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->wireless:Z

    iget-boolean v3, p1, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->wireless:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->onDiagnostic:Lkotlin/jvm/functions/Function1;

    iget-object p1, p1, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->onDiagnostic:Lkotlin/jvm/functions/Function1;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getAddress()Ljava/net/InetAddress;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->address:Ljava/net/InetAddress;

    return-object v0
.end method

.method public final getConfig()Lcom/shilapi/xcertplay/airplay/AirPlayConfig;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->config:Lcom/shilapi/xcertplay/airplay/AirPlayConfig;

    return-object v0
.end method

.method public final getIdentity()Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->identity:Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;

    return-object v0
.end method

.method public final getListener()Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->listener:Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    return-object v0
.end method

.method public final getMedia()Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->media:Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;

    return-object v0
.end method

.method public final getMfi()Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->mfi:Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;

    return-object v0
.end method

.method public final getOnDiagnostic()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->onDiagnostic:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getPairings()Lcom/shilapi/xcertplay/airplay/PairingStore;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->pairings:Lcom/shilapi/xcertplay/airplay/PairingStore;

    return-object v0
.end method

.method public final getWireless()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->wireless:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->address:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->config:Lcom/shilapi/xcertplay/airplay/AirPlayConfig;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/airplay/AirPlayConfig;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->identity:Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->pairings:Lcom/shilapi/xcertplay/airplay/PairingStore;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/airplay/PairingStore;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->mfi:Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->listener:Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->media:Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->wireless:Z

    invoke-static {v1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->onDiagnostic:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->address:Ljava/net/InetAddress;

    iget-object v1, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->config:Lcom/shilapi/xcertplay/airplay/AirPlayConfig;

    iget-object v2, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->identity:Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;

    iget-object v3, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->pairings:Lcom/shilapi/xcertplay/airplay/PairingStore;

    iget-object v4, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->mfi:Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;

    iget-object v5, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->listener:Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    iget-object v6, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->media:Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;

    iget-boolean v7, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->wireless:Z

    iget-object v8, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->onDiagnostic:Lkotlin/jvm/functions/Function1;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "AirPlayAttachment(address="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", config="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", identity="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", pairings="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mfi="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", listener="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", media="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", wireless="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", onDiagnostic="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
