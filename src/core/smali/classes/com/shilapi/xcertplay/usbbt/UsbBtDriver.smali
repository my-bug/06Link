.class public final Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;
.super Ljava/lang/Object;
.source "UsbBtDriver.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$Companion;,
        Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$OpenResult;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUsbBtDriver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UsbBtDriver.kt\ncom/shilapi/xcertplay/usbbt/UsbBtDriver\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,197:1\n1#2:198\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 92\u00020\u0001:\u000289BU\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\u000f\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0008\u0010\u001f\u001a\u00020 H\u0002J \u0010!\u001a\u00020 2\u0006\u0010\"\u001a\u00020\u00072\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u0015H\u0002J\u0006\u0010\'\u001a\u00020 J\u0010\u0010*\u001a\u00020 2\u0006\u0010+\u001a\u00020,H\u0002J\u0010\u0010/\u001a\u00020 2\u0006\u00100\u001a\u000201H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0018\u001a\u00020\u0019\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010(\u001a\u00020\u00158F\u00a2\u0006\u0006\u001a\u0004\u0008(\u0010)R\u0010\u0010-\u001a\u0004\u0018\u00010.X\u0082\u000e\u00a2\u0006\u0002\n\u0000R(\u00102\u001a\u0010\u0012\u0004\u0012\u000201\u0012\u0004\u0012\u00020 \u0018\u000103X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00084\u00105\"\u0004\u00086\u00107\u00a8\u0006:"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;",
        "",
        "connection",
        "Landroid/hardware/usb/UsbDeviceConnection;",
        "iface",
        "Landroid/hardware/usb/UsbInterface;",
        "events",
        "Landroid/hardware/usb/UsbEndpoint;",
        "aclIn",
        "aclOut",
        "identity",
        "Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity;",
        "linkKeys",
        "Lcom/shilapi/xcertplay/usbbt/LinkKeyStore;",
        "extraServices",
        "",
        "",
        "Lcom/shilapi/xcertplay/usbbt/L2capService;",
        "<init>",
        "(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbInterface;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity;Lcom/shilapi/xcertplay/usbbt/LinkKeyStore;Ljava/util/Map;)V",
        "running",
        "",
        "writeLock",
        "Ljava/lang/Object;",
        "host",
        "Lcom/shilapi/xcertplay/usbbt/UsbBtHost;",
        "getHost",
        "()Lcom/shilapi/xcertplay/usbbt/UsbBtHost;",
        "eventThread",
        "Ljava/lang/Thread;",
        "aclThread",
        "begin",
        "",
        "readLoop",
        "endpoint",
        "assembler",
        "Lcom/shilapi/xcertplay/usbbt/HciPacketAssembler;",
        "isEvent",
        "closed",
        "stop",
        "isRunning",
        "()Z",
        "logEvent",
        "event",
        "Lcom/shilapi/xcertplay/usbbt/HciEvent;",
        "lastLogged",
        "",
        "logStatus",
        "status",
        "Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;",
        "externalListener",
        "Lkotlin/Function1;",
        "getExternalListener",
        "()Lkotlin/jvm/functions/Function1;",
        "setExternalListener",
        "(Lkotlin/jvm/functions/Function1;)V",
        "OpenResult",
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
.field public static final Companion:Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$Companion;

.field public static final TAG:Ljava/lang/String; = "06LinkUsbBt"


# instance fields
.field private final aclIn:Landroid/hardware/usb/UsbEndpoint;

.field private final aclOut:Landroid/hardware/usb/UsbEndpoint;

.field private final aclThread:Ljava/lang/Thread;

.field private volatile closed:Z

.field private final connection:Landroid/hardware/usb/UsbDeviceConnection;

.field private final eventThread:Ljava/lang/Thread;

.field private final events:Landroid/hardware/usb/UsbEndpoint;

.field private volatile externalListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final host:Lcom/shilapi/xcertplay/usbbt/UsbBtHost;

.field private final iface:Landroid/hardware/usb/UsbInterface;

.field private lastLogged:Ljava/lang/String;

.field private volatile running:Z

.field private final writeLock:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$AsG8olgHrFNH3CT_Z8tEoqqYZSA(Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;)V
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->eventThread$lambda$1(Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LUKRSqR_HShdANjFvPfBJU7VzeQ()J
    .locals 2

    invoke-static {}, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->host$lambda$0()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic $r8$lambda$Z6qZRfo4soD--W7nMbtj8wNkoZw(Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;)V
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->aclThread$lambda$3(Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->Companion:Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$Companion;

    return-void
.end method

.method private constructor <init>(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbInterface;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity;Lcom/shilapi/xcertplay/usbbt/LinkKeyStore;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/usb/UsbDeviceConnection;",
            "Landroid/hardware/usb/UsbInterface;",
            "Landroid/hardware/usb/UsbEndpoint;",
            "Landroid/hardware/usb/UsbEndpoint;",
            "Landroid/hardware/usb/UsbEndpoint;",
            "Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity;",
            "Lcom/shilapi/xcertplay/usbbt/LinkKeyStore;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "+",
            "Lcom/shilapi/xcertplay/usbbt/L2capService;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 21
    iput-object p2, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->iface:Landroid/hardware/usb/UsbInterface;

    .line 22
    iput-object p3, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->events:Landroid/hardware/usb/UsbEndpoint;

    .line 23
    iput-object p4, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->aclIn:Landroid/hardware/usb/UsbEndpoint;

    .line 24
    iput-object p5, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->aclOut:Landroid/hardware/usb/UsbEndpoint;

    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->running:Z

    .line 30
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->writeLock:Ljava/lang/Object;

    .line 32
    new-instance p3, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;

    new-instance p2, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$host$1;

    invoke-direct {p2, p0}, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$host$1;-><init>(Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;)V

    check-cast p2, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Transport;

    move-object p5, p7

    new-instance p7, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$$ExternalSyntheticLambda0;

    invoke-direct {p7}, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$$ExternalSyntheticLambda0;-><init>()V

    move-object p4, p6

    move-object p6, p2

    invoke-direct/range {p3 .. p8}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;-><init>(Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity;Lcom/shilapi/xcertplay/usbbt/LinkKeyStore;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Transport;Lkotlin/jvm/functions/Function0;Ljava/util/Map;)V

    iput-object p3, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->host:Lcom/shilapi/xcertplay/usbbt/UsbBtHost;

    .line 44
    new-instance p2, Ljava/lang/Thread;

    new-instance p3, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0}, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$$ExternalSyntheticLambda1;-><init>(Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;)V

    const-string/jumbo p4, "usb-bt-events"

    invoke-direct {p2, p3, p4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    iput-object p2, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->eventThread:Ljava/lang/Thread;

    .line 45
    new-instance p2, Ljava/lang/Thread;

    new-instance p3, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0}, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$$ExternalSyntheticLambda2;-><init>(Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;)V

    const-string/jumbo p4, "usb-bt-acl"

    invoke-direct {p2, p3, p4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    iput-object p2, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->aclThread:Ljava/lang/Thread;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbInterface;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity;Lcom/shilapi/xcertplay/usbbt/LinkKeyStore;Ljava/util/Map;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;-><init>(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbInterface;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity;Lcom/shilapi/xcertplay/usbbt/LinkKeyStore;Ljava/util/Map;)V

    return-void
.end method

.method public static final synthetic access$begin(Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->begin()V

    return-void
.end method

.method public static final synthetic access$getAclOut$p(Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;)Landroid/hardware/usb/UsbEndpoint;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->aclOut:Landroid/hardware/usb/UsbEndpoint;

    return-object p0
.end method

.method public static final synthetic access$getConnection$p(Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;)Landroid/hardware/usb/UsbDeviceConnection;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    return-object p0
.end method

.method public static final synthetic access$getWriteLock$p(Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;)Ljava/lang/Object;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->writeLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic access$logStatus(Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->logStatus(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;)V

    return-void
.end method

.method private static final aclThread$lambda$3(Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;)V
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->aclIn:Landroid/hardware/usb/UsbEndpoint;

    sget-object v1, Lcom/shilapi/xcertplay/usbbt/HciPacketAssembler;->Companion:Lcom/shilapi/xcertplay/usbbt/HciPacketAssembler$Companion;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/HciPacketAssembler$Companion;->acl()Lcom/shilapi/xcertplay/usbbt/HciPacketAssembler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->readLoop(Landroid/hardware/usb/UsbEndpoint;Lcom/shilapi/xcertplay/usbbt/HciPacketAssembler;Z)V

    return-void
.end method

.method private final begin()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->host:Lcom/shilapi/xcertplay/usbbt/UsbBtHost;

    new-instance v1, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$begin$1;

    invoke-direct {v1, p0}, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$begin$1;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->setListener(Lkotlin/jvm/functions/Function1;)V

    .line 49
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->eventThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 50
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->aclThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 51
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->host:Lcom/shilapi/xcertplay/usbbt/UsbBtHost;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->start()V

    return-void
.end method

.method private static final eventThread$lambda$1(Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;)V
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->events:Landroid/hardware/usb/UsbEndpoint;

    sget-object v1, Lcom/shilapi/xcertplay/usbbt/HciPacketAssembler;->Companion:Lcom/shilapi/xcertplay/usbbt/HciPacketAssembler$Companion;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/HciPacketAssembler$Companion;->events()Lcom/shilapi/xcertplay/usbbt/HciPacketAssembler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->readLoop(Landroid/hardware/usb/UsbEndpoint;Lcom/shilapi/xcertplay/usbbt/HciPacketAssembler;Z)V

    return-void
.end method

.method private static final host$lambda$0()J
    .locals 4

    .line 42
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const v2, 0xf4240

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private final logEvent(Lcom/shilapi/xcertplay/usbbt/HciEvent;)V
    .locals 8

    .line 120
    instance-of v0, p1, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;

    const-string v1, "command 0x%04x status 0x%02x"

    const-string v2, "format(...)"

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v5, "06LinkUsbBt"

    const/4 v6, 0x1

    if-eqz v0, :cond_0

    check-cast p1, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;->getStatus()I

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;->getOpcode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;->getStatus()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v0, v7, v3

    aput-object p1, v7, v6

    invoke-static {v7, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 121
    :cond_0
    instance-of v0, p1, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandStatus;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandStatus;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandStatus;->getStatus()I

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandStatus;->getOpcode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandStatus;->getStatus()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v0, v7, v3

    aput-object p1, v7, v6

    invoke-static {v7, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 122
    :cond_1
    instance-of v0, p1, Lcom/shilapi/xcertplay/usbbt/HciEvent$NumberOfCompletedPackets;

    if-nez v0, :cond_d

    instance-of v0, p1, Lcom/shilapi/xcertplay/usbbt/HciEvent$Other;

    if-eqz v0, :cond_2

    goto/16 :goto_0

    .line 123
    :cond_2
    instance-of v0, p1, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionRequest;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionRequest;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionRequest;->getAddr()Lcom/shilapi/xcertplay/usbbt/BdAddr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/BdAddr;->redacted()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "connection request "

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " cod=0x%06x link=%d"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionRequest;->getClassOfDevice()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionRequest;->getLinkType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v1, v7, v3

    aput-object p1, v7, v6

    invoke-static {v7, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 124
    :cond_3
    instance-of v0, p1, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;->getAddr()Lcom/shilapi/xcertplay/usbbt/BdAddr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/BdAddr;->redacted()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "connection complete "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " status=0x%02x"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;->getStatus()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {v1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 125
    :cond_4
    instance-of v0, p1, Lcom/shilapi/xcertplay/usbbt/HciEvent$DisconnectionComplete;

    if-eqz v0, :cond_5

    check-cast p1, Lcom/shilapi/xcertplay/usbbt/HciEvent$DisconnectionComplete;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciEvent$DisconnectionComplete;->getStatus()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciEvent$DisconnectionComplete;->getReason()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v3

    aput-object p1, v1, v6

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "disconnected status=0x%02x reason=0x%02x"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 126
    :cond_5
    instance-of v0, p1, Lcom/shilapi/xcertplay/usbbt/HciEvent$IoCapabilityResponse;

    if-eqz v0, :cond_6

    check-cast p1, Lcom/shilapi/xcertplay/usbbt/HciEvent$IoCapabilityResponse;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciEvent$IoCapabilityResponse;->getIoCapability()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciEvent$IoCapabilityResponse;->getAuthRequirements()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v3

    aput-object p1, v1, v6

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "peer io=%d auth=0x%02x"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 127
    :cond_6
    instance-of v0, p1, Lcom/shilapi/xcertplay/usbbt/HciEvent$UserConfirmationRequest;

    if-eqz v0, :cond_7

    const-string/jumbo p1, "user confirmation request (number on screen)"

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 128
    :cond_7
    instance-of v0, p1, Lcom/shilapi/xcertplay/usbbt/HciEvent$SimplePairingComplete;

    if-eqz v0, :cond_8

    check-cast p1, Lcom/shilapi/xcertplay/usbbt/HciEvent$SimplePairingComplete;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciEvent$SimplePairingComplete;->getStatus()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v6, [Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "simple pairing complete status=0x%02x"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 129
    :cond_8
    instance-of v0, p1, Lcom/shilapi/xcertplay/usbbt/HciEvent$LinkKeyNotification;

    if-eqz v0, :cond_9

    check-cast p1, Lcom/shilapi/xcertplay/usbbt/HciEvent$LinkKeyNotification;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciEvent$LinkKeyNotification;->getKeyType()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "link key stored type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 130
    :cond_9
    instance-of v0, p1, Lcom/shilapi/xcertplay/usbbt/HciEvent$AuthenticationComplete;

    if-eqz v0, :cond_a

    check-cast p1, Lcom/shilapi/xcertplay/usbbt/HciEvent$AuthenticationComplete;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciEvent$AuthenticationComplete;->getStatus()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v6, [Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "authentication complete status=0x%02x"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 131
    :cond_a
    instance-of v0, p1, Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;

    if-eqz v0, :cond_b

    check-cast p1, Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;->getStatus()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;->getEnabled()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v3

    aput-object p1, v1, v6

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "encryption status=0x%02x on=%s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 132
    :cond_b
    instance-of v0, p1, Lcom/shilapi/xcertplay/usbbt/HciEvent$RemoteNameRequestComplete;

    if-eqz v0, :cond_c

    check-cast p1, Lcom/shilapi/xcertplay/usbbt/HciEvent$RemoteNameRequestComplete;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciEvent$RemoteNameRequestComplete;->getStatus()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v6, [Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "remote name status=0x%02x"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 133
    :cond_c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_0
    return-void
.end method

.method private final logStatus(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;)V
    .locals 16

    .line 140
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->getPeer()Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    move-result-object v1

    .line 141
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->getPhase()Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->getStep()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->getError()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->getController()Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;->describe()Ljava/lang/String;

    move-result-object v5

    .line 142
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->getController()Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;->getBuffer()Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$BufferSize;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$BufferSize;->getAclDataLength()I

    move-result v7

    invoke-virtual {v6}, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$BufferSize;->getAclPackets()I

    move-result v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "x"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->getPairedDevices()I

    move-result v7

    if-eqz v1, :cond_1

    .line 143
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->getAddress()Lcom/shilapi/xcertplay/usbbt/BdAddr;

    move-result-object v8

    invoke-virtual {v8}, Lcom/shilapi/xcertplay/usbbt/BdAddr;->redacted()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->getConnected()Z

    move-result v9

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->getPairing()Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;

    move-result-object v10

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->getEncrypted()Z

    move-result v11

    .line 144
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->getPsmsRequested()Ljava/util/List;

    move-result-object v12

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->getPsmsRefused()Ljava/util/List;

    move-result-object v13

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->getSdpRequests()I

    move-result v14

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->getFailure()Ljava/lang/Integer;

    move-result-object v1

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v0, "peer="

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " connected="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " pairing="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " encrypted="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " psms="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " refused="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " sdp="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " failure="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "peer=none"

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v8, "phase="

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " step="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " controller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " acl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " paired="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p0

    .line 145
    iget-object v2, v1, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->lastLogged:Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iput-object v0, v1, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->lastLogged:Ljava/lang/String;

    const-string v2, "06LinkUsbBt"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_3
    iget-object v0, v1, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->externalListener:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_4

    move-object/from16 v2, p1

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method private final readLoop(Landroid/hardware/usb/UsbEndpoint;Lcom/shilapi/xcertplay/usbbt/HciPacketAssembler;Z)V
    .locals 18

    move-object/from16 v0, p0

    .line 56
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    new-array v2, v1, [B

    .line 59
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    const/4 v8, 0x0

    .line 60
    :cond_0
    :goto_0
    iget-boolean v9, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->running:Z

    if-eqz v9, :cond_9

    .line 61
    iget-object v9, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v10, 0x1f4

    move-object/from16 v11, p1

    invoke-virtual {v9, v11, v2, v1, v10}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v9

    .line 62
    iget-boolean v10, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->running:Z

    if-eqz v10, :cond_9

    const v10, 0xf4240

    if-lez v9, :cond_4

    .line 65
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    move-object/from16 v12, p2

    .line 66
    invoke-virtual {v12, v2, v9}, Lcom/shilapi/xcertplay/usbbt/HciPacketAssembler;->feed([BI)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    if-eqz p3, :cond_2

    .line 68
    sget-object v13, Lcom/shilapi/xcertplay/usbbt/HciEvent;->Companion:Lcom/shilapi/xcertplay/usbbt/HciEvent$Companion;

    invoke-virtual {v13, v9}, Lcom/shilapi/xcertplay/usbbt/HciEvent$Companion;->parse([B)Lcom/shilapi/xcertplay/usbbt/HciEvent;

    move-result-object v9

    if-nez v9, :cond_1

    goto :goto_1

    .line 69
    :cond_1
    invoke-direct {v0, v9}, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->logEvent(Lcom/shilapi/xcertplay/usbbt/HciEvent;)V

    .line 70
    iget-object v13, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->host:Lcom/shilapi/xcertplay/usbbt/UsbBtHost;

    invoke-virtual {v13, v9}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->onEvent(Lcom/shilapi/xcertplay/usbbt/HciEvent;)V

    goto :goto_1

    .line 72
    :cond_2
    iget-object v13, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->host:Lcom/shilapi/xcertplay/usbbt/UsbBtHost;

    invoke-virtual {v13, v9}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->onAclPacket([B)V

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    goto :goto_4

    :cond_4
    move-object/from16 v12, p2

    if-gez v9, :cond_8

    .line 77
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    sub-long v3, v13, v3

    move v15, v8

    int-to-long v7, v10

    .line 78
    div-long/2addr v3, v7

    const-wide/16 v7, 0x12c

    cmp-long v16, v3, v7

    if-lez v16, :cond_5

    const/4 v8, 0x0

    goto :goto_2

    :cond_5
    add-int/lit8 v8, v15, 0x1

    :goto_2
    const/16 v3, 0x14

    if-le v8, v3, :cond_7

    if-eqz p3, :cond_6

    .line 81
    const-string v1, "event"

    goto :goto_3

    :cond_6
    const-string v1, "ACL"

    :goto_3
    const-string v2, " endpoint keeps failing; dongle gone?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "06LinkUsbBt"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v1, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->host:Lcom/shilapi/xcertplay/usbbt/UsbBtHost;

    const-string/jumbo v2, "usb-transfer-failed"

    invoke-virtual {v1, v2}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->fail(Ljava/lang/String;)V

    const/4 v9, 0x0

    .line 83
    iput-boolean v9, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->running:Z

    return-void

    :cond_7
    const/4 v9, 0x0

    move-wide v3, v13

    goto :goto_5

    :cond_8
    move v15, v8

    :goto_4
    const/4 v9, 0x0

    :goto_5
    if-eqz p3, :cond_0

    .line 88
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    int-to-long v9, v10

    div-long v9, v13, v9

    sub-long v13, v9, v5

    const-wide/16 v15, 0x3e8

    cmp-long v17, v13, v15

    if-ltz v17, :cond_0

    .line 89
    iget-object v5, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->host:Lcom/shilapi/xcertplay/usbbt/UsbBtHost;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->tick()V

    move-wide v5, v9

    goto/16 :goto_0

    :cond_9
    return-void
.end method


# virtual methods
.method public final getExternalListener()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->externalListener:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getHost()Lcom/shilapi/xcertplay/usbbt/UsbBtHost;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->host:Lcom/shilapi/xcertplay/usbbt/UsbBtHost;

    return-object v0
.end method

.method public final isRunning()Z
    .locals 1

    .line 116
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->running:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final setExternalListener(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 150
    iput-object p1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->externalListener:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final stop()V
    .locals 8

    .line 101
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->closed:Z

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    monitor-exit p0

    .line 102
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->running:Z

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->host:Lcom/shilapi/xcertplay/usbbt/UsbBtHost;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->stop()V

    const-wide/16 v0, 0x12c

    .line 104
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    :cond_1
    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->running:Z

    .line 107
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 108
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->eventThread:Ljava/lang/Thread;

    const-wide/16 v2, 0x5dc

    if-eq v1, v0, :cond_2

    :try_start_2
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;

    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->eventThread:Ljava/lang/Thread;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Thread;->join(J)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->aclThread:Ljava/lang/Thread;

    if-eq v1, v0, :cond_3

    :try_start_3
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;

    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->aclThread:Ljava/lang/Thread;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Thread;->join(J)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->writeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;

    sget-object v2, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;->INSTANCE:Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;

    iget-object v3, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    sget-object v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/HciCommands;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->reset()[B

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;->sendCommand$default(Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;Landroid/hardware/usb/UsbDeviceConnection;[BIILjava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    :try_start_5
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :goto_2
    monitor-exit v1

    .line 111
    :try_start_6
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;

    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->iface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :goto_3
    :try_start_7
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;

    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :goto_4
    const-string v0, "06LinkUsbBt"

    const-string/jumbo v1, "stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_5
    move-exception v0

    .line 110
    monitor-exit v1

    throw v0

    :catchall_6
    move-exception v0

    .line 101
    monitor-exit p0

    throw v0
.end method
