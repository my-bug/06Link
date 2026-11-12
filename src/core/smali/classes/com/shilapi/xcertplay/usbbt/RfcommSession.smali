.class public final Lcom/shilapi/xcertplay/usbbt/RfcommSession;
.super Ljava/lang/Object;
.source "Rfcomm.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/usbbt/RfcommSession$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRfcomm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Rfcomm.kt\ncom/shilapi/xcertplay/usbbt/RfcommSession\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,645:1\n1#2:646\n1869#3,2:647\n1869#3,2:649\n1869#3,2:651\n1869#3,2:653\n1869#3,2:655\n1869#3,2:657\n*S KotlinDebug\n*F\n+ 1 Rfcomm.kt\ncom/shilapi/xcertplay/usbbt/RfcommSession\n*L\n269#1:647,2\n270#1:649,2\n284#1:651,2\n302#1:653,2\n310#1:655,2\n368#1:657,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010!\n\u0002\u0008\n\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0005\n\u0002\u0008\u000e\u0018\u0000 L2\u00020\u0001:\u0001LBq\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00060\t\u0012\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u000b\u0012\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\r0\u000b\u0012\u0014\u0008\u0002\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\r0\u000b\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000e\u0010\"\u001a\u00020\r2\u0006\u0010#\u001a\u00020\u0006J\u001e\u0010$\u001a\u00020\r2\u0006\u0010%\u001a\u00020\u00062\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\'H\u0002J(\u0010(\u001a\u00020\r2\u0006\u0010%\u001a\u00020\u00062\u0008\u0010)\u001a\u0004\u0018\u00010\u001e2\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\'H\u0002J\r\u0010/\u001a\u00020\u0006H\u0000\u00a2\u0006\u0002\u00080J\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u00020\u000f02J\u000e\u00103\u001a\u00020\r2\u0006\u00104\u001a\u00020\u000cJ\u0006\u00105\u001a\u00020\rJ\u001e\u00106\u001a\u00020\r2\u0006\u00107\u001a\u0002082\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\'H\u0002J\u001e\u00109\u001a\u00020\r2\u0006\u0010:\u001a\u00020;2\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\'H\u0002J,\u0010<\u001a\u00020\r2\u0006\u00107\u001a\u0002082\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\'2\u000c\u0010=\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\'H\u0002J\u0010\u0010>\u001a\u00020?2\u0006\u0010%\u001a\u00020\u0006H\u0002J)\u0010@\u001a\u00020\u000c2\u0006\u0010%\u001a\u00020\u00062\u0006\u0010A\u001a\u00020\u000c2\u0008\u0010B\u001a\u0004\u0018\u00010\u0006H\u0000\u00a2\u0006\u0004\u0008C\u0010DJ\u0017\u0010E\u001a\u0004\u0018\u00010\u000c2\u0006\u0010%\u001a\u00020\u0006H\u0000\u00a2\u0006\u0002\u0008FJ\u0015\u0010G\u001a\u00020\r2\u0006\u0010H\u001a\u00020\u000cH\u0000\u00a2\u0006\u0002\u0008IJ\u0015\u0010J\u001a\u00020\r2\u0006\u0010%\u001a\u00020\u0006H\u0000\u00a2\u0006\u0002\u0008KR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00060\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\r0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\r0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u00020\u0015X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u000e\u0010\u0018\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R*\u0010\u001a\u001a\u001e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u000f0\u001bj\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u000f`\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R*\u0010\u001d\u001a\u001e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001e0\u001bj\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001e`\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001f\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010 R\u0010\u0010!\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010*\u001a\u00020\u00038BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010,R\u0014\u0010-\u001a\u00020\u00038BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008.\u0010,\u00a8\u0006M"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/usbbt/RfcommSession;",
        "",
        "initiator",
        "",
        "serverChannels",
        "",
        "",
        "localL2capMtu",
        "remoteL2capMtu",
        "Lkotlin/Function0;",
        "transmit",
        "Lkotlin/Function1;",
        "",
        "",
        "onOpen",
        "Lcom/shilapi/xcertplay/usbbt/RfcommDlc;",
        "log",
        "",
        "<init>",
        "(ZLjava/util/Set;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V",
        "lock",
        "Ljava/lang/Object;",
        "getLock$shared_release",
        "()Ljava/lang/Object;",
        "sessionOpen",
        "closed",
        "dlcs",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "negotiated",
        "Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;",
        "targetDlci",
        "Ljava/lang/Integer;",
        "opening",
        "connect",
        "serverChannel",
        "sendPnLocked",
        "dlci",
        "out",
        "",
        "sendSabmLocked",
        "pn",
        "commandCr",
        "getCommandCr",
        "()Z",
        "responseCr",
        "getResponseCr",
        "maxFrameSize",
        "maxFrameSize$shared_release",
        "openChannels",
        "",
        "onFrame",
        "bytes",
        "onL2capClosed",
        "onControlFrame",
        "f",
        "Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;",
        "onMcc",
        "m",
        "Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Mcc;",
        "onDlcFrame",
        "opened",
        "dlcAddress",
        "",
        "dataFrameLocked",
        "info",
        "credits",
        "dataFrameLocked$shared_release",
        "(I[BLjava/lang/Integer;)[B",
        "discFrameLocked",
        "discFrameLocked$shared_release",
        "send",
        "frame",
        "send$shared_release",
        "forgetLocked",
        "forgetLocked$shared_release",
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
.field public static final Companion:Lcom/shilapi/xcertplay/usbbt/RfcommSession$Companion;

.field public static final DEFAULT_FRAME_SIZE:I = 0x7f

.field public static final FRAME_OVERHEAD:I = 0x6

.field public static final INITIAL_RX_CREDITS:I = 0x7

.field public static final MAX_BUFFERED_BYTES:I = 0x10000

.field public static final MIN_FRAME_SIZE:I = 0x17


# instance fields
.field private closed:Z

.field private final dlcs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/shilapi/xcertplay/usbbt/RfcommDlc;",
            ">;"
        }
    .end annotation
.end field

.field private final initiator:Z

.field private final localL2capMtu:I

.field private final lock:Ljava/lang/Object;

.field private final log:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final negotiated:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;",
            ">;"
        }
    .end annotation
.end field

.field private final onOpen:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/shilapi/xcertplay/usbbt/RfcommDlc;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private opening:Lcom/shilapi/xcertplay/usbbt/RfcommDlc;

.field private final remoteL2capMtu:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final serverChannels:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private sessionOpen:Z

.field private targetDlci:Ljava/lang/Integer;

.field private final transmit:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "[B",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$dTe-nmU_P68Cq90YfXu4omPvx1w(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->_init_$lambda$0(Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/usbbt/RfcommSession$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/usbbt/RfcommSession$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->Companion:Lcom/shilapi/xcertplay/usbbt/RfcommSession$Companion;

    return-void
.end method

.method public constructor <init>(ZLjava/util/Set;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;I",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-[B",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/shilapi/xcertplay/usbbt/RfcommDlc;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "serverChannels"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteL2capMtu"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "transmit"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onOpen"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "log"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput-boolean p1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->initiator:Z

    .line 201
    iput-object p2, p0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->serverChannels:Ljava/util/Set;

    .line 203
    iput p3, p0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->localL2capMtu:I

    .line 204
    iput-object p4, p0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->remoteL2capMtu:Lkotlin/jvm/functions/Function0;

    .line 205
    iput-object p5, p0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->transmit:Lkotlin/jvm/functions/Function1;

    .line 206
    iput-object p6, p0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->onOpen:Lkotlin/jvm/functions/Function1;

    .line 207
    iput-object p7, p0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->log:Lkotlin/jvm/functions/Function1;

    .line 209
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->lock:Ljava/lang/Object;

    .line 213
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->dlcs:Ljava/util/HashMap;

    .line 215
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->negotiated:Ljava/util/HashMap;

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/util/Set;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_0

    .line 207
    new-instance v0, Lcom/shilapi/xcertplay/usbbt/RfcommSession$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/usbbt/RfcommSession$$ExternalSyntheticLambda0;-><init>()V

    move-object v8, v0

    goto :goto_0

    :cond_0
    move-object/from16 v8, p7

    :goto_0
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 197
    invoke-direct/range {v1 .. v8}, Lcom/shilapi/xcertplay/usbbt/RfcommSession;-><init>(ZLjava/util/Set;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final _init_$lambda$0(Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final dlcAddress(I)B
    .locals 0

    shl-int/lit8 p1, p1, 0x2

    or-int/lit8 p1, p1, 0x3

    int-to-byte p1, p1

    return p1
.end method

.method private final getCommandCr()Z
    .locals 1

    .line 251
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->initiator:Z

    return v0
.end method

.method private final getResponseCr()Z
    .locals 1

    .line 252
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->initiator:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private final onControlFrame(Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 290
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->getType()I

    move-result v0

    const/16 v1, 0xf

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5

    const/16 v1, 0x2f

    const/4 v3, 0x1

    if-eq v0, v1, :cond_4

    const/16 v1, 0x43

    if-eq v0, v1, :cond_2

    const/16 v1, 0x63

    if-eq v0, v1, :cond_1

    const/16 v1, 0xef

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    .line 310
    :cond_0
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/RfcommFrames;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->getInfo()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames;->parseMcc([B)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 655
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Mcc;

    .line 310
    invoke-direct {p0, v0, p2}, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->onMcc(Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Mcc;Ljava/util/List;)V

    goto :goto_0

    .line 306
    :cond_1
    iput-boolean v3, p0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->sessionOpen:Z

    .line 307
    iget-object p1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->targetDlci:Ljava/lang/Integer;

    if-eqz p1, :cond_3

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->opening:Lcom/shilapi/xcertplay/usbbt/RfcommDlc;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->dlcs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->sendPnLocked(ILjava/util/List;)V

    return-void

    .line 297
    :cond_2
    check-cast p2, Ljava/util/Collection;

    sget-object v3, Lcom/shilapi/xcertplay/usbbt/RfcommFrames;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/RfcommFrames;

    invoke-direct {p0}, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->getResponseCr()Z

    move-result v5

    const/16 v10, 0x30

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/16 v6, 0x63

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v11}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames;->build$default(Lcom/shilapi/xcertplay/usbbt/RfcommFrames;IZIZ[BLjava/lang/Integer;ILjava/lang/Object;)[B

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 298
    iget-object p1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->log:Lkotlin/jvm/functions/Function1;

    const-string p2, "rfcomm: session closed by the peer"

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    iput-boolean v2, p0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->sessionOpen:Z

    .line 300
    iget-object p1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->dlcs:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    const-string p2, "<get-values>(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 301
    iget-object p2, p0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->dlcs:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    .line 302
    check-cast p1, Ljava/lang/Iterable;

    .line 653
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;

    .line 302
    const-string v0, "session closed"

    invoke-virtual {p2, v0}, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->endedLocked$shared_release(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :goto_2
    return-void

    .line 292
    :cond_4
    iput-boolean v3, p0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->sessionOpen:Z

    .line 293
    iget-object p1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->log:Lkotlin/jvm/functions/Function1;

    const-string v0, "rfcomm: session opened by the peer"

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    check-cast p2, Ljava/util/Collection;

    sget-object v0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/RfcommFrames;

    invoke-direct {p0}, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->getResponseCr()Z

    move-result v2

    const/16 v7, 0x30

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/16 v3, 0x63

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v8}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames;->build$default(Lcom/shilapi/xcertplay/usbbt/RfcommFrames;IZIZ[BLjava/lang/Integer;ILjava/lang/Object;)[B

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void

    .line 309
    :cond_5
    iput-boolean v2, p0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->sessionOpen:Z

    iget-object p1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->log:Lkotlin/jvm/functions/Function1;

    const-string p2, "rfcomm: peer answered DM on DLCI 0"

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final onDlcFrame(Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;Ljava/util/List;Ljava/util/List;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/usbbt/RfcommDlc;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 379
    iget-object v1, v0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->dlcs:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->getDlci()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;

    .line 380
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->getType()I

    move-result v2

    const/16 v3, 0xf

    const/4 v4, 0x0

    if-eq v2, v3, :cond_d

    const/16 v3, 0x2f

    const-string v5, " credits="

    const-string v6, ") frame="

    const-string v7, "rfcomm: DLCI "

    const/4 v8, 0x1

    if-eq v2, v3, :cond_8

    const/16 v3, 0x43

    if-eq v2, v3, :cond_6

    const/16 v3, 0x63

    const/4 v9, 0x0

    if-eq v2, v3, :cond_4

    const/16 v3, 0xef

    if-eq v2, v3, :cond_0

    goto/16 :goto_3

    :cond_0
    if-nez v1, :cond_1

    goto/16 :goto_3

    .line 430
    :cond_1
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->getCreditBased$shared_release()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->getCredits()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 431
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->getTxCredits$shared_release()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->getCredits()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->setTxCredits$shared_release(I)V

    .line 432
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->notifyLocked$shared_release()V

    .line 434
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->getInfo()[B

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    :goto_0
    if-nez v8, :cond_f

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->getInfo()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->receivedLocked$shared_release([B)[B

    move-result-object v1

    if-eqz v1, :cond_f

    move-object/from16 v2, p2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void

    .line 408
    :cond_4
    iget-object v2, v0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->opening:Lcom/shilapi/xcertplay/usbbt/RfcommDlc;

    if-eqz v2, :cond_5

    .line 409
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->getDlci()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->getDlci()I

    move-result v10

    if-ne v3, v10, :cond_5

    .line 411
    iput-object v4, v0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->opening:Lcom/shilapi/xcertplay/usbbt/RfcommDlc;

    .line 412
    iget-object v1, v0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->dlcs:Ljava/util/HashMap;

    check-cast v1, Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->getDlci()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    invoke-virtual {v2, v8}, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->setMscSent$shared_release(Z)V

    .line 414
    move-object/from16 v1, p2

    check-cast v1, Ljava/util/Collection;

    sget-object v10, Lcom/shilapi/xcertplay/usbbt/RfcommFrames;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/RfcommFrames;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->getCommandCr()Z

    move-result v12

    .line 415
    sget-object v3, Lcom/shilapi/xcertplay/usbbt/RfcommFrames;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/RfcommFrames;

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->getDlci()I

    move-result v4

    invoke-direct {v0, v4}, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->dlcAddress(I)B

    move-result v4

    const/4 v11, 0x2

    new-array v11, v11, [B

    aput-byte v4, v11, v9

    const/16 v4, -0x73

    aput-byte v4, v11, v8

    const/16 v4, 0x38

    invoke-virtual {v3, v4, v8, v11}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames;->mcc(IZ[B)[B

    move-result-object v15

    const/16 v17, 0x20

    const/16 v18, 0x0

    const/4 v11, 0x0

    const/16 v13, 0xef

    const/4 v14, 0x0

    const/16 v16, 0x0

    .line 414
    invoke-static/range {v10 .. v18}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames;->build$default(Lcom/shilapi/xcertplay/usbbt/RfcommFrames;IZIZ[BLjava/lang/Integer;ILjava/lang/Object;)[B

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 416
    iget-object v1, v0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->log:Lkotlin/jvm/functions/Function1;

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->getDlci()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->getDlci()I

    move-result v4

    ushr-int/2addr v4, v8

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->getFrameSize$shared_release()I

    move-result v8

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->getCreditBased$shared_release()Z

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " open (peer\'s server channel "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    move-object/from16 v1, p3

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void

    :cond_5
    if-eqz v1, :cond_f

    .line 418
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->getClosing$shared_release()Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, v0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->dlcs:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->getDlci()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "closed"

    invoke-virtual {v1, v2}, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->endedLocked$shared_release(Ljava/lang/String;)V

    return-void

    :cond_6
    if-nez v1, :cond_7

    .line 400
    move-object/from16 v1, p2

    check-cast v1, Ljava/util/Collection;

    sget-object v2, Lcom/shilapi/xcertplay/usbbt/RfcommFrames;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/RfcommFrames;

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->getDlci()I

    move-result v3

    invoke-direct {v0}, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->getResponseCr()Z

    move-result v4

    const/16 v9, 0x30

    const/4 v10, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames;->build$default(Lcom/shilapi/xcertplay/usbbt/RfcommFrames;IZIZ[BLjava/lang/Integer;ILjava/lang/Object;)[B

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void

    .line 402
    :cond_7
    move-object/from16 v2, p2

    check-cast v2, Ljava/util/Collection;

    sget-object v8, Lcom/shilapi/xcertplay/usbbt/RfcommFrames;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/RfcommFrames;

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->getDlci()I

    move-result v9

    invoke-direct {v0}, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->getResponseCr()Z

    move-result v10

    const/16 v15, 0x30

    const/16 v16, 0x0

    const/16 v11, 0x63

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v8 .. v16}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames;->build$default(Lcom/shilapi/xcertplay/usbbt/RfcommFrames;IZIZ[BLjava/lang/Integer;ILjava/lang/Object;)[B

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 403
    iget-object v2, v0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->dlcs:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->getDlci()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    iget-object v2, v0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->log:Lkotlin/jvm/functions/Function1;

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->getDlci()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " closed by the peer"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    const-string v2, "closed by the peer"

    invoke-virtual {v1, v2}, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->endedLocked$shared_release(Ljava/lang/String;)V

    return-void

    .line 382
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->getDlci()I

    move-result v2

    ushr-int/2addr v2, v8

    .line 383
    iget-boolean v3, v0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->sessionOpen:Z

    if-eqz v3, :cond_c

    iget-object v3, v0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->serverChannels:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto/16 :goto_2

    .line 388
    :cond_9
    move-object/from16 v3, p2

    check-cast v3, Ljava/util/Collection;

    sget-object v9, Lcom/shilapi/xcertplay/usbbt/RfcommFrames;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/RfcommFrames;

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->getDlci()I

    move-result v10

    invoke-direct {v0}, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->getResponseCr()Z

    move-result v11

    const/16 v16, 0x30

    const/16 v17, 0x0

    const/16 v12, 0x63

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v9 .. v17}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames;->build$default(Lcom/shilapi/xcertplay/usbbt/RfcommFrames;IZIZ[BLjava/lang/Integer;ILjava/lang/Object;)[B

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_a

    goto/16 :goto_3

    .line 390
    :cond_a
    new-instance v1, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->getDlci()I

    move-result v3

    invoke-direct {v1, v0, v3}, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;-><init>(Lcom/shilapi/xcertplay/usbbt/RfcommSession;I)V

    .line 391
    iget-object v3, v0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->negotiated:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->getDlci()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;

    if-eqz v3, :cond_b

    .line 392
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->maxFrameSize$shared_release()I

    move-result v4

    invoke-virtual {v1, v3, v4, v8}, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->applyPnLocked$shared_release(Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;IZ)V

    goto :goto_1

    :cond_b
    const/16 v3, 0x7f

    .line 393
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->maxFrameSize$shared_release()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->setFrameSize$shared_release(I)V

    .line 394
    :goto_1
    iget-object v3, v0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->dlcs:Ljava/util/HashMap;

    check-cast v3, Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->getDlci()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    iget-object v3, v0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->log:Lkotlin/jvm/functions/Function1;

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->getDlci()I

    move-result v4

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->getFrameSize$shared_release()I

    move-result v8

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->getCreditBased$shared_release()Z

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " open (server channel "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    move-object/from16 v2, p3

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void

    .line 384
    :cond_c
    :goto_2
    iget-object v1, v0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->log:Lkotlin/jvm/functions/Function1;

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->getDlci()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "rfcomm: refused DLCI "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " (server channel "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    move-object/from16 v1, p2

    check-cast v1, Ljava/util/Collection;

    sget-object v2, Lcom/shilapi/xcertplay/usbbt/RfcommFrames;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/RfcommFrames;

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->getDlci()I

    move-result v3

    invoke-direct {v0}, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->getResponseCr()Z

    move-result v4

    const/16 v9, 0x30

    const/4 v10, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames;->build$default(Lcom/shilapi/xcertplay/usbbt/RfcommFrames;IZIZ[BLjava/lang/Integer;ILjava/lang/Object;)[B

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void

    .line 421
    :cond_d
    iget-object v2, v0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->opening:Lcom/shilapi/xcertplay/usbbt/RfcommDlc;

    if-eqz v2, :cond_e

    .line 422
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->getDlci()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->getDlci()I

    move-result v5

    if-ne v3, v5, :cond_e

    .line 423
    iput-object v4, v0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->opening:Lcom/shilapi/xcertplay/usbbt/RfcommDlc;

    .line 424
    iget-object v1, v0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->log:Lkotlin/jvm/functions/Function1;

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->getDlci()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "rfcomm: the peer refused DLCI "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " (DM)"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    const-string v1, "refused by the peer"

    invoke-virtual {v2, v1}, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->endedLocked$shared_release(Ljava/lang/String;)V

    return-void

    :cond_e
    if-eqz v1, :cond_f

    .line 426
    iget-object v2, v0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->dlcs:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->getDlci()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "peer answered DM"

    invoke-virtual {v1, v2}, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->endedLocked$shared_release(Ljava/lang/String;)V

    :cond_f
    :goto_3
    return-void
.end method

.method private final onMcc(Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Mcc;Ljava/util/List;)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Mcc;",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 318
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Mcc;->getCommand()Z

    move-result v2

    const-string v3, " credits="

    const-string v4, " frame="

    const-string v5, ")"

    const-string v6, "off"

    const/4 v7, 0x0

    const/16 v8, 0xe

    const/4 v9, 0x4

    const/16 v10, 0x20

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-nez v2, :cond_6

    .line 320
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Mcc;->getType()I

    move-result v2

    if-eq v2, v9, :cond_4

    if-eq v2, v10, :cond_0

    goto/16 :goto_5

    .line 321
    :cond_0
    sget-object v2, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->Companion:Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn$Companion;

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Mcc;->getValue()[B

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn$Companion;->decode([B)Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 322
    iget-object v7, v0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->log:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->getDlci()I

    move-result v9

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->getFrameSize()I

    move-result v10

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->getConvergence()I

    move-result v11

    if-ne v11, v8, :cond_1

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->getCredits()I

    move-result v6

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "on ("

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "rfcomm: PN answer dlci="

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    iget-boolean v3, v0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->initiator:Z

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->getDlci()I

    move-result v3

    iget-object v4, v0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->targetDlci:Ljava/lang/Integer;

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->getDlci()I

    move-result v3

    invoke-direct {v0, v3, v2, v1}, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->sendSabmLocked(ILcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;Ljava/util/List;)V

    return-void

    .line 324
    :cond_3
    :goto_0
    iget-object v1, v0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->dlcs:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->getDlci()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->maxFrameSize$shared_release()I

    move-result v3

    invoke-virtual {v1, v2, v3, v13}, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->applyPnLocked$shared_release(Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;IZ)V

    return-void

    .line 327
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Mcc;->getValue()[B

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/ArraysKt;->firstOrNull([B)Ljava/lang/Byte;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    .line 328
    :goto_1
    iget-object v3, v0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->log:Lkotlin/jvm/functions/Function1;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v12, [Ljava/lang/Object;

    aput-object v4, v5, v13

    invoke-static {v5, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    const-string v5, "rfcomm: peer does not support command 0x%02x"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "format(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    iget-boolean v3, v0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->initiator:Z

    if-eqz v3, :cond_d

    ushr-int/2addr v2, v11

    if-ne v2, v10, :cond_d

    iget-object v2, v0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->targetDlci:Ljava/lang/Integer;

    if-eqz v2, :cond_d

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-direct {v0, v2, v7, v1}, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->sendSabmLocked(ILcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;Ljava/util/List;)V

    return-void

    .line 336
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Mcc;->getType()I

    move-result v2

    const/16 v14, 0x8

    if-eq v2, v14, :cond_19

    const/16 v15, 0x10

    const/16 v16, 0x3

    if-eq v2, v15, :cond_18

    const/16 v15, 0x14

    if-eq v2, v15, :cond_19

    const/16 v15, 0x18

    if-eq v2, v15, :cond_15

    const/16 v17, 0x7

    const/16 v18, 0x7f

    if-eq v2, v10, :cond_c

    const/16 v3, 0x24

    if-eq v2, v3, :cond_9

    const/16 v3, 0x28

    if-eq v2, v3, :cond_15

    const/16 v3, 0x30

    if-eq v2, v3, :cond_18

    const/16 v3, 0x38

    if-eq v2, v3, :cond_7

    .line 372
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Mcc;->getType()I

    move-result v2

    shl-int/2addr v2, v11

    or-int/lit8 v2, v2, 0x3

    int-to-byte v2, v2

    new-array v3, v12, [B

    aput-byte v2, v3, v13

    invoke-static {v1, v0, v9, v3}, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->onMcc$reply(Ljava/util/List;Lcom/shilapi/xcertplay/usbbt/RfcommSession;I[B)V

    return-void

    .line 349
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Mcc;->getValue()[B

    move-result-object v2

    invoke-static {v1, v0, v3, v2}, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->onMcc$reply(Ljava/util/List;Lcom/shilapi/xcertplay/usbbt/RfcommSession;I[B)V

    .line 350
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Mcc;->getValue()[B

    move-result-object v2

    array-length v2, v2

    if-lt v2, v11, :cond_d

    .line 351
    iget-object v2, v0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->dlcs:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Mcc;->getValue()[B

    move-result-object v4

    aget-byte v4, v4, v13

    and-int/lit16 v4, v4, 0xff

    ushr-int/2addr v4, v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;

    if-eqz v2, :cond_d

    .line 353
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Mcc;->getValue()[B

    move-result-object v4

    aget-byte v4, v4, v12

    and-int/2addr v4, v11

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    goto :goto_2

    :cond_8
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v2, v4}, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->setPeerFlowStopped$shared_release(Z)V

    .line 354
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->notifyLocked$shared_release()V

    .line 355
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->getMscSent$shared_release()Z

    move-result v4

    if-nez v4, :cond_d

    .line 356
    invoke-virtual {v2, v12}, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->setMscSent$shared_release(Z)V

    .line 357
    check-cast v1, Ljava/util/Collection;

    sget-object v14, Lcom/shilapi/xcertplay/usbbt/RfcommFrames;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/RfcommFrames;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->getCommandCr()Z

    move-result v16

    .line 358
    sget-object v4, Lcom/shilapi/xcertplay/usbbt/RfcommFrames;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/RfcommFrames;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->getDlci()I

    move-result v2

    invoke-direct {v0, v2}, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->dlcAddress(I)B

    move-result v2

    new-array v5, v11, [B

    aput-byte v2, v5, v13

    const/16 v2, -0x73

    aput-byte v2, v5, v12

    invoke-virtual {v4, v3, v12, v5}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames;->mcc(IZ[B)[B

    move-result-object v19

    const/16 v21, 0x20

    const/16 v22, 0x0

    const/4 v15, 0x0

    const/16 v17, 0xef

    const/16 v18, 0x0

    const/16 v20, 0x0

    .line 357
    invoke-static/range {v14 .. v22}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames;->build$default(Lcom/shilapi/xcertplay/usbbt/RfcommFrames;IZIZ[BLjava/lang/Integer;ILjava/lang/Object;)[B

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void

    .line 363
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Mcc;->getValue()[B

    move-result-object v2

    array-length v2, v2

    if-lt v2, v14, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Mcc;->getValue()[B

    move-result-object v2

    goto :goto_4

    .line 364
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Mcc;->getValue()[B

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/ArraysKt;->firstOrNull([B)Ljava/lang/Byte;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    goto :goto_3

    :cond_b
    const/4 v2, 0x3

    :goto_3
    new-array v4, v14, [B

    aput-byte v2, v4, v13

    aput-byte v16, v4, v12

    aput-byte v16, v4, v11

    aput-byte v13, v4, v16

    const/16 v2, 0x11

    aput-byte v2, v4, v9

    const/16 v2, 0x13

    const/4 v5, 0x5

    aput-byte v2, v4, v5

    const/4 v2, 0x6

    aput-byte v18, v4, v2

    const/16 v2, 0x3f

    aput-byte v2, v4, v17

    move-object v2, v4

    .line 363
    :goto_4
    invoke-static {v1, v0, v3, v2}, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->onMcc$reply(Ljava/util/List;Lcom/shilapi/xcertplay/usbbt/RfcommSession;I[B)V

    return-void

    .line 338
    :cond_c
    sget-object v2, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->Companion:Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn$Companion;

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Mcc;->getValue()[B

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn$Companion;->decode([B)Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;

    move-result-object v19

    if-nez v19, :cond_e

    :cond_d
    :goto_5
    return-void

    .line 339
    :cond_e
    invoke-virtual/range {v19 .. v19}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->getFrameSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    if-lez v9, :cond_f

    move-object v7, v2

    :cond_f
    if-eqz v7, :cond_10

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v2, v18

    goto :goto_6

    :cond_10
    const/16 v2, 0x7f

    :goto_6
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->maxFrameSize$shared_release()I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v23

    .line 340
    invoke-virtual/range {v19 .. v19}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->getConvergence()I

    move-result v2

    const/16 v7, 0xf

    if-ne v2, v7, :cond_11

    goto :goto_7

    :cond_11
    const/4 v12, 0x0

    .line 341
    :goto_7
    new-instance v20, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;

    invoke-virtual/range {v19 .. v19}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->getDlci()I

    move-result v21

    if-eqz v12, :cond_12

    const/16 v22, 0xe

    goto :goto_8

    :cond_12
    const/16 v22, 0x0

    :goto_8
    move/from16 v24, v23

    invoke-virtual/range {v19 .. v19}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->getPriority()I

    move-result v23

    if-eqz v12, :cond_13

    const/16 v25, 0x7

    goto :goto_9

    :cond_13
    const/16 v25, 0x0

    :goto_9
    invoke-direct/range {v20 .. v25}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;-><init>(IIIII)V

    move-object/from16 v2, v20

    .line 344
    iget-object v7, v0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->negotiated:Ljava/util/HashMap;

    check-cast v7, Ljava/util/Map;

    invoke-virtual/range {v19 .. v19}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->getDlci()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v25, 0x17

    const/16 v26, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v23, v24

    const/16 v24, 0x0

    invoke-static/range {v19 .. v26}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->copy$default(Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;IIIIIILjava/lang/Object;)Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;

    move-result-object v9

    move/from16 v11, v23

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    iget-object v7, v0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->log:Lkotlin/jvm/functions/Function1;

    invoke-virtual/range {v19 .. v19}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->getDlci()I

    move-result v8

    invoke-virtual/range {v19 .. v19}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->getFrameSize()I

    move-result v9

    if-eqz v12, :cond_14

    invoke-virtual/range {v19 .. v19}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->getCredits()I

    move-result v6

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "on (peer gives "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_14
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v12, "rfcomm: PN dlci="

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "->"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->encode()[B

    move-result-object v2

    invoke-static {v1, v0, v10, v2}, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->onMcc$reply(Ljava/util/List;Lcom/shilapi/xcertplay/usbbt/RfcommSession;I[B)V

    return-void

    .line 367
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Mcc;->getType()I

    move-result v2

    if-ne v2, v15, :cond_16

    goto :goto_a

    :cond_16
    const/4 v12, 0x0

    .line 368
    :goto_a
    iget-object v2, v0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->dlcs:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    const-string v3, "<get-values>(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Iterable;

    .line 657
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;

    .line 368
    invoke-virtual {v3, v12}, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->setAggregateFlowStopped$shared_release(Z)V

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->notifyLocked$shared_release()V

    goto :goto_b

    .line 369
    :cond_17
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Mcc;->getType()I

    move-result v2

    new-array v3, v13, [B

    invoke-static {v1, v0, v2, v3}, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->onMcc$reply(Ljava/util/List;Lcom/shilapi/xcertplay/usbbt/RfcommSession;I[B)V

    return-void

    .line 371
    :cond_18
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Mcc;->getType()I

    move-result v2

    shl-int/2addr v2, v11

    or-int/lit8 v2, v2, 0x3

    int-to-byte v2, v2

    new-array v3, v12, [B

    aput-byte v2, v3, v13

    invoke-static {v1, v0, v9, v3}, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->onMcc$reply(Ljava/util/List;Lcom/shilapi/xcertplay/usbbt/RfcommSession;I[B)V

    return-void

    .line 365
    :cond_19
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Mcc;->getType()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Mcc;->getValue()[B

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->onMcc$reply(Ljava/util/List;Lcom/shilapi/xcertplay/usbbt/RfcommSession;I[B)V

    return-void
.end method

.method private static final onMcc$reply(Ljava/util/List;Lcom/shilapi/xcertplay/usbbt/RfcommSession;I[B)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;",
            "Lcom/shilapi/xcertplay/usbbt/RfcommSession;",
            "I[B)V"
        }
    .end annotation

    .line 316
    check-cast p0, Ljava/util/Collection;

    sget-object v0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/RfcommFrames;

    invoke-direct {p1}, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->getCommandCr()Z

    move-result v2

    sget-object p1, Lcom/shilapi/xcertplay/usbbt/RfcommFrames;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/RfcommFrames;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, p3}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames;->mcc(IZ[B)[B

    move-result-object v5

    const/16 v7, 0x20

    const/4 v8, 0x0

    const/16 v3, 0xef

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v8}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames;->build$default(Lcom/shilapi/xcertplay/usbbt/RfcommFrames;IZIZ[BLjava/lang/Integer;ILjava/lang/Object;)[B

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final sendPnLocked(ILjava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 237
    new-instance v0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->maxFrameSize$shared_release()I

    move-result v4

    const/4 v5, 0x7

    const/16 v2, 0xf

    const/4 v3, 0x7

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;-><init>(IIIII)V

    .line 238
    check-cast p2, Ljava/util/Collection;

    sget-object v1, Lcom/shilapi/xcertplay/usbbt/RfcommFrames;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/RfcommFrames;

    invoke-direct {p0}, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->getCommandCr()Z

    move-result v3

    sget-object p1, Lcom/shilapi/xcertplay/usbbt/RfcommFrames;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/RfcommFrames;

    const/4 v2, 0x1

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->encode()[B

    move-result-object v0

    const/16 v4, 0x20

    invoke-virtual {p1, v4, v2, v0}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames;->mcc(IZ[B)[B

    move-result-object v6

    const/16 v8, 0x20

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/16 v4, 0xef

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v9}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames;->build$default(Lcom/shilapi/xcertplay/usbbt/RfcommFrames;IZIZ[BLjava/lang/Integer;ILjava/lang/Object;)[B

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final sendSabmLocked(ILcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->opening:Lcom/shilapi/xcertplay/usbbt/RfcommDlc;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->dlcs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 243
    :cond_0
    new-instance v0, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;

    invoke-direct {v0, p0, p1}, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;-><init>(Lcom/shilapi/xcertplay/usbbt/RfcommSession;I)V

    if-eqz p2, :cond_1

    .line 244
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->maxFrameSize$shared_release()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2}, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->applyPnLocked$shared_release(Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;IZ)V

    goto :goto_0

    :cond_1
    const/16 p2, 0x7f

    .line 245
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->maxFrameSize$shared_release()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->setFrameSize$shared_release(I)V

    .line 246
    :goto_0
    iput-object v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->opening:Lcom/shilapi/xcertplay/usbbt/RfcommDlc;

    .line 247
    check-cast p3, Ljava/util/Collection;

    sget-object v0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/RfcommFrames;

    invoke-direct {p0}, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->getCommandCr()Z

    move-result v2

    const/16 v7, 0x30

    const/4 v8, 0x0

    const/16 v3, 0x2f

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v1, p1

    invoke-static/range {v0 .. v8}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames;->build$default(Lcom/shilapi/xcertplay/usbbt/RfcommFrames;IZIZ[BLjava/lang/Integer;ILjava/lang/Object;)[B

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public final connect(I)V
    .locals 11

    .line 227
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->initiator:Z

    if-eqz v0, :cond_0

    .line 228
    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->lock:Ljava/lang/Object;

    monitor-enter v1

    and-int/lit8 v0, p1, 0x1f

    shl-int/lit8 v0, v0, 0x1

    .line 229
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->targetDlci:Ljava/lang/Integer;

    .line 230
    sget-object v2, Lcom/shilapi/xcertplay/usbbt/RfcommFrames;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/RfcommFrames;

    invoke-direct {p0}, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->getCommandCr()Z

    move-result v4

    const/16 v9, 0x30

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/16 v5, 0x2f

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames;->build$default(Lcom/shilapi/xcertplay/usbbt/RfcommFrames;IZIZ[BLjava/lang/Integer;ILjava/lang/Object;)[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    monitor-exit v1

    .line 232
    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->log:Lkotlin/jvm/functions/Function1;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "rfcomm: opening the peer\'s server channel "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object p1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->transmit:Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 228
    monitor-exit v1

    throw p1

    .line 227
    :cond_0
    const-string p1, "only the initiator opens channels"

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final dataFrameLocked$shared_release(I[BLjava/lang/Integer;)[B
    .locals 8

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 445
    sget-object v1, Lcom/shilapi/xcertplay/usbbt/RfcommFrames;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/RfcommFrames;

    invoke-direct {p0}, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->getCommandCr()Z

    move-result v3

    const/16 v4, 0xef

    const/4 v5, 0x0

    move v2, p1

    move-object v6, p2

    move-object v7, p3

    invoke-virtual/range {v1 .. v7}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames;->build(IZIZ[BLjava/lang/Integer;)[B

    move-result-object p1

    return-object p1
.end method

.method public final discFrameLocked$shared_release(I)[B
    .locals 10

    .line 448
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->closed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->dlcs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/shilapi/xcertplay/usbbt/RfcommFrames;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/RfcommFrames;

    invoke-direct {p0}, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->getCommandCr()Z

    move-result v3

    const/16 v8, 0x30

    const/4 v9, 0x0

    const/16 v4, 0x43

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v2, p1

    invoke-static/range {v1 .. v9}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames;->build$default(Lcom/shilapi/xcertplay/usbbt/RfcommFrames;IZIZ[BLjava/lang/Integer;ILjava/lang/Object;)[B

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final forgetLocked$shared_release(I)V
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->dlcs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final getLock$shared_release()Ljava/lang/Object;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method public final maxFrameSize$shared_release()I
    .locals 2

    .line 255
    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->localL2capMtu:I

    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->remoteL2capMtu:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x6

    const/16 v1, 0x17

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    return v0
.end method

.method public final onFrame([B)V
    .locals 5

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/RfcommFrames;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames;->parse([B)Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;

    move-result-object v0

    if-nez v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->log:Lkotlin/jvm/functions/Function1;

    array-length p1, p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rfcomm: dropped a malformed frame ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 263
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 264
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 265
    iget-object v2, p0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 266
    :try_start_0
    iget-boolean v3, p0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    monitor-exit v2

    return-void

    .line 267
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->getDlci()I

    move-result v3

    if-nez v3, :cond_2

    move-object v3, p1

    check-cast v3, Ljava/util/List;

    invoke-direct {p0, v0, v3}, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->onControlFrame(Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;Ljava/util/List;)V

    goto :goto_0

    :cond_2
    move-object v3, p1

    check-cast v3, Ljava/util/List;

    move-object v4, v1

    check-cast v4, Ljava/util/List;

    invoke-direct {p0, v0, v3, v4}, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->onDlcFrame(Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;Ljava/util/List;Ljava/util/List;)V

    .line 268
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    monitor-exit v2

    .line 269
    check-cast p1, Ljava/lang/Iterable;

    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->transmit:Lkotlin/jvm/functions/Function1;

    .line 647
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 270
    :cond_3
    check-cast v1, Ljava/lang/Iterable;

    iget-object p1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->onOpen:Lkotlin/jvm/functions/Function1;

    .line 649
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    .line 265
    monitor-exit v2

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public final onL2capClosed()V
    .locals 3

    .line 275
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 276
    :try_start_0
    iput-boolean v1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->closed:Z

    const/4 v1, 0x0

    .line 277
    iput-boolean v1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->sessionOpen:Z

    .line 278
    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->opening:Lcom/shilapi/xcertplay/usbbt/RfcommDlc;

    if-eqz v1, :cond_0

    const-string v2, "l2cap closed"

    invoke-virtual {v1, v2}, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->endedLocked$shared_release(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    .line 279
    iput-object v1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->opening:Lcom/shilapi/xcertplay/usbbt/RfcommDlc;

    .line 280
    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->dlcs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    const-string v2, "<get-values>(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 281
    iget-object v2, p0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->dlcs:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    monitor-exit v0

    .line 284
    check-cast v1, Ljava/lang/Iterable;

    .line 651
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;

    .line 284
    const-string v2, "l2cap closed"

    invoke-virtual {v1, v2}, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->ended$shared_release(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 275
    monitor-exit v0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public final openChannels()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/usbbt/RfcommDlc;",
            ">;"
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->dlcs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    const-string v2, "<get-values>(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final send$shared_release([B)V
    .locals 1

    const-string v0, "frame"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 450
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->transmit:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
