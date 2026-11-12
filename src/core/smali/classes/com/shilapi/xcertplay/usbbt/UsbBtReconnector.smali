.class public final Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;
.super Ljava/lang/Object;
.source "UsbBtReconnect.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector$Companion;,
        Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector$Port;,
        Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUsbBtReconnect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UsbBtReconnect.kt\ncom/shilapi/xcertplay/usbbt/UsbBtReconnector\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,316:1\n1#2:317\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 .2\u00020\u0001:\u0002-.B;\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0014\u0008\u0002\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c0\n\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0006\u0010)\u001a\u00020*J\u0006\u0010+\u001a\u00020,R\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0014R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0014R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010 \u001a\u00020\u00122\u0006\u0010\u001f\u001a\u00020\u0012@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"R\u001e\u0010#\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010%R\u001e\u0010&\u001a\u00020\u00192\u0006\u0010\u001f\u001a\u00020\u0019@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010(\u00a8\u0006/"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;",
        "",
        "clock",
        "Lkotlin/Function0;",
        "",
        "port",
        "Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector$Port;",
        "initialReason",
        "Lcom/shilapi/xcertplay/usbbt/ReconnectReason;",
        "log",
        "Lkotlin/Function1;",
        "",
        "",
        "<init>",
        "(Lkotlin/jvm/functions/Function0;Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector$Port;Lcom/shilapi/xcertplay/usbbt/ReconnectReason;Lkotlin/jvm/functions/Function1;)V",
        "startedAt",
        "reason",
        "seenDisconnections",
        "",
        "openingSince",
        "Ljava/lang/Long;",
        "lastLink",
        "Lcom/shilapi/xcertplay/usbbt/BtLinkState;",
        "encryptedSince",
        "openedOnExistingLink",
        "",
        "lastDecision",
        "Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectPolicy$Decision;",
        "decisionSince",
        "cadenceStart",
        "cadencePages",
        "value",
        "pages",
        "getPages",
        "()I",
        "nextPageAt",
        "getNextPageAt",
        "()J",
        "pagingNow",
        "getPagingNow",
        "()Z",
        "step",
        "Lcom/shilapi/xcertplay/usbbt/ReconnectAction;",
        "bluetoothPath",
        "Lcom/shilapi/xcertplay/usbbt/ReconnectPath;",
        "Port",
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
.field public static final Companion:Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector$Companion;

.field public static final REASON_LOCAL_HOST_TERMINATED:I = 0x16


# instance fields
.field private cadencePages:I

.field private cadenceStart:J

.field private final clock:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private decisionSince:J

.field private encryptedSince:Ljava/lang/Long;

.field private lastDecision:Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectPolicy$Decision;

.field private lastLink:Lcom/shilapi/xcertplay/usbbt/BtLinkState;

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

.field private nextPageAt:J

.field private openedOnExistingLink:Z

.field private openingSince:Ljava/lang/Long;

.field private pages:I

.field private pagingNow:Z

.field private final port:Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector$Port;

.field private reason:Lcom/shilapi/xcertplay/usbbt/ReconnectReason;

.field private seenDisconnections:I

.field private final startedAt:J


# direct methods
.method public static synthetic $r8$lambda$WhnZVX7rKKATz0WuUyi-kiR5c1g(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->_init_$lambda$0(Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->Companion:Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector$Companion;

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function0;Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector$Port;Lcom/shilapi/xcertplay/usbbt/ReconnectReason;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector$Port;",
            "Lcom/shilapi/xcertplay/usbbt/ReconnectReason;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "clock"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "port"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initialReason"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "log"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->clock:Lkotlin/jvm/functions/Function0;

    .line 118
    iput-object p2, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->port:Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector$Port;

    .line 120
    iput-object p4, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->log:Lkotlin/jvm/functions/Function1;

    .line 137
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->startedAt:J

    .line 138
    iput-object p3, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->reason:Lcom/shilapi/xcertplay/usbbt/ReconnectReason;

    .line 139
    invoke-interface {p2}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector$Port;->disconnections()I

    move-result p1

    iput p1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->seenDisconnections:I

    .line 146
    iput-wide v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->decisionSince:J

    .line 147
    iput-wide v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->cadenceStart:J

    .line 152
    iput-wide v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->nextPageAt:J

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector$Port;Lcom/shilapi/xcertplay/usbbt/ReconnectReason;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 120
    new-instance p4, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector$$ExternalSyntheticLambda0;

    invoke-direct {p4}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector$$ExternalSyntheticLambda0;-><init>()V

    .line 116
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;-><init>(Lkotlin/jvm/functions/Function0;Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector$Port;Lcom/shilapi/xcertplay/usbbt/ReconnectReason;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final _init_$lambda$0(Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final bluetoothPath()Lcom/shilapi/xcertplay/usbbt/ReconnectPath;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->openingSince:Ljava/lang/Long;

    if-nez v0, :cond_0

    sget-object v0, Lcom/shilapi/xcertplay/usbbt/ReconnectPath;->IPHONE_OPENED:Lcom/shilapi/xcertplay/usbbt/ReconnectPath;

    return-object v0

    .line 243
    :cond_0
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->openedOnExistingLink:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/shilapi/xcertplay/usbbt/ReconnectPath;->BLUETOOTH_EXISTING_LINK:Lcom/shilapi/xcertplay/usbbt/ReconnectPath;

    return-object v0

    .line 244
    :cond_1
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/ReconnectPath;->BLUETOOTH_PAGE:Lcom/shilapi/xcertplay/usbbt/ReconnectPath;

    return-object v0
.end method

.method public final getNextPageAt()J
    .locals 2

    .line 152
    iget-wide v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->nextPageAt:J

    return-wide v0
.end method

.method public final getPages()I
    .locals 1

    .line 151
    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->pages:I

    return v0
.end method

.method public final getPagingNow()Z
    .locals 1

    .line 153
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->pagingNow:Z

    return v0
.end method

.method public final step()Lcom/shilapi/xcertplay/usbbt/ReconnectAction;
    .locals 18

    move-object/from16 v0, p0

    .line 156
    iget-object v1, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->clock:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 157
    iget-object v3, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->port:Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector$Port;

    invoke-interface {v3}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector$Port;->disconnections()I

    move-result v3

    .line 158
    iget v4, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->seenDisconnections:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v3, v4, :cond_6

    .line 159
    iput v3, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->seenDisconnections:I

    .line 160
    iget-object v3, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->port:Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector$Port;

    invoke-interface {v3}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector$Port;->lastDisconnectReason()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v8, 0x13

    if-ne v4, v8, :cond_1

    sget-object v4, Lcom/shilapi/xcertplay/usbbt/ReconnectReason;->IPHONE_CLOSED:Lcom/shilapi/xcertplay/usbbt/ReconnectReason;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v4, Lcom/shilapi/xcertplay/usbbt/ReconnectReason;->LINK_LOST:Lcom/shilapi/xcertplay/usbbt/ReconnectReason;

    :goto_1
    iput-object v4, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->reason:Lcom/shilapi/xcertplay/usbbt/ReconnectReason;

    .line 167
    iget-object v4, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->openingSince:Ljava/lang/Long;

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    .line 168
    :goto_2
    iput-object v5, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->openingSince:Ljava/lang/Long;

    if-nez v3, :cond_3

    goto :goto_3

    .line 169
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v9, 0x16

    if-eq v8, v9, :cond_4

    :goto_3
    if-nez v4, :cond_4

    .line 170
    iput-wide v1, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->cadenceStart:J

    .line 171
    iput v6, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->cadencePages:I

    .line 172
    iput-wide v1, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->nextPageAt:J

    .line 174
    :cond_4
    iget-object v4, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->log:Lkotlin/jvm/functions/Function1;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    :goto_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v8, v7, [Ljava/lang/Object;

    aput-object v3, v8, v6

    invoke-static {v8, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const-string v8, "reconnect: Bluetooth link ended (HCI 0x%02x)"

    invoke-static {v8, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "format(...)"

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :cond_6
    iget-object v3, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->port:Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector$Port;

    invoke-interface {v3}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector$Port;->link()Lcom/shilapi/xcertplay/usbbt/BtLinkState;

    move-result-object v3

    .line 181
    sget-object v4, Lcom/shilapi/xcertplay/usbbt/BtLinkState;->ENCRYPTED:Lcom/shilapi/xcertplay/usbbt/BtLinkState;

    if-eq v3, v4, :cond_7

    iput-object v5, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->encryptedSince:Ljava/lang/Long;

    goto :goto_5

    .line 182
    :cond_7
    iget-object v4, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->lastLink:Lcom/shilapi/xcertplay/usbbt/BtLinkState;

    if-eqz v4, :cond_8

    sget-object v8, Lcom/shilapi/xcertplay/usbbt/BtLinkState;->ENCRYPTED:Lcom/shilapi/xcertplay/usbbt/BtLinkState;

    if-eq v4, v8, :cond_8

    iget-object v4, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->encryptedSince:Ljava/lang/Long;

    if-nez v4, :cond_8

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->encryptedSince:Ljava/lang/Long;

    .line 183
    :cond_8
    :goto_5
    iput-object v3, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->lastLink:Lcom/shilapi/xcertplay/usbbt/BtLinkState;

    .line 184
    sget-object v4, Lcom/shilapi/xcertplay/usbbt/BtLinkState;->PAGING:Lcom/shilapi/xcertplay/usbbt/BtLinkState;

    if-ne v3, v4, :cond_9

    const/4 v4, 0x1

    goto :goto_6

    :cond_9
    const/4 v4, 0x0

    :goto_6
    iput-boolean v4, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->pagingNow:Z

    .line 186
    iget-object v4, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->port:Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector$Port;

    invoke-interface {v4}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector$Port;->iap2Open()Z

    move-result v4

    if-eqz v4, :cond_a

    sget-object v4, Lcom/shilapi/xcertplay/usbbt/Iap2ChannelState;->OPEN:Lcom/shilapi/xcertplay/usbbt/Iap2ChannelState;

    goto :goto_7

    .line 187
    :cond_a
    iget-object v4, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->openingSince:Ljava/lang/Long;

    if-eqz v4, :cond_b

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    sub-long v8, v1, v8

    const-wide/16 v10, 0x4e20

    cmp-long v4, v8, v10

    if-gez v4, :cond_b

    sget-object v4, Lcom/shilapi/xcertplay/usbbt/Iap2ChannelState;->OPENING:Lcom/shilapi/xcertplay/usbbt/Iap2ChannelState;

    goto :goto_7

    .line 189
    :cond_b
    iget-object v4, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->openingSince:Ljava/lang/Long;

    if-eqz v4, :cond_c

    .line 190
    iput-object v5, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->openingSince:Ljava/lang/Long;

    .line 191
    sget-object v4, Lcom/shilapi/xcertplay/usbbt/BtLinkState;->NONE:Lcom/shilapi/xcertplay/usbbt/BtLinkState;

    if-eq v3, v4, :cond_c

    sget-object v4, Lcom/shilapi/xcertplay/usbbt/ReconnectReason;->OPEN_TIMED_OUT:Lcom/shilapi/xcertplay/usbbt/ReconnectReason;

    iput-object v4, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->reason:Lcom/shilapi/xcertplay/usbbt/ReconnectReason;

    .line 193
    :cond_c
    sget-object v4, Lcom/shilapi/xcertplay/usbbt/Iap2ChannelState;->NONE:Lcom/shilapi/xcertplay/usbbt/Iap2ChannelState;

    .line 196
    :goto_7
    sget-object v8, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectPolicy;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectPolicy;

    iget-object v9, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->port:Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector$Port;

    invoke-interface {v9}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector$Port;->paired()Z

    move-result v9

    iget-object v10, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->reason:Lcom/shilapi/xcertplay/usbbt/ReconnectReason;

    invoke-virtual {v8, v9, v3, v4, v10}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectPolicy;->decide(ZLcom/shilapi/xcertplay/usbbt/BtLinkState;Lcom/shilapi/xcertplay/usbbt/Iap2ChannelState;Lcom/shilapi/xcertplay/usbbt/ReconnectReason;)Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectPolicy$Decision;

    move-result-object v8

    .line 197
    invoke-virtual {v8}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectPolicy$Decision;->getAction()Lcom/shilapi/xcertplay/usbbt/ReconnectAction;

    move-result-object v9

    iget-object v10, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->lastDecision:Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectPolicy$Decision;

    if-eqz v10, :cond_d

    invoke-virtual {v10}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectPolicy$Decision;->getAction()Lcom/shilapi/xcertplay/usbbt/ReconnectAction;

    move-result-object v5

    :cond_d
    const/16 v10, 0x3e8

    const-string v11, ""

    if-eq v9, v5, :cond_f

    .line 198
    iput-wide v1, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->decisionSince:J

    .line 199
    iget-object v5, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->log:Lkotlin/jvm/functions/Function1;

    iget-object v9, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->reason:Lcom/shilapi/xcertplay/usbbt/ReconnectReason;

    invoke-virtual {v8}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectPolicy$Decision;->getAction()Lcom/shilapi/xcertplay/usbbt/ReconnectAction;

    move-result-object v12

    .line 200
    invoke-virtual {v8}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectPolicy$Decision;->getDelayMillis()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v17, v13, v15

    if-lez v17, :cond_e

    invoke-virtual {v8}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectPolicy$Decision;->getDelayMillis()J

    move-result-wide v13

    int-to-long v6, v10

    div-long/2addr v13, v6

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " in "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "s"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_8

    :cond_e
    move-object v6, v11

    :goto_8
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v13, "reconnect: reason="

    invoke-direct {v7, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " link="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " iAP2="

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 199
    invoke-interface {v5, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    :cond_f
    iput-object v8, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->lastDecision:Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectPolicy$Decision;

    .line 203
    iget-wide v3, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->decisionSince:J

    sub-long v3, v1, v3

    invoke-virtual {v8}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectPolicy$Decision;->getDelayMillis()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-gez v7, :cond_10

    sget-object v1, Lcom/shilapi/xcertplay/usbbt/ReconnectAction;->WAIT:Lcom/shilapi/xcertplay/usbbt/ReconnectAction;

    return-object v1

    .line 204
    :cond_10
    invoke-virtual {v8}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectPolicy$Decision;->getAction()Lcom/shilapi/xcertplay/usbbt/ReconnectAction;

    move-result-object v3

    sget-object v4, Lcom/shilapi/xcertplay/usbbt/ReconnectAction;->OPEN_IAP2_ON_LINK:Lcom/shilapi/xcertplay/usbbt/ReconnectAction;

    if-ne v3, v4, :cond_11

    .line 205
    iget-object v3, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->encryptedSince:Ljava/lang/Long;

    if-eqz v3, :cond_11

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    sub-long v3, v1, v3

    const-wide/16 v5, 0x7d0

    cmp-long v7, v3, v5

    if-gez v7, :cond_11

    sget-object v1, Lcom/shilapi/xcertplay/usbbt/ReconnectAction;->WAIT:Lcom/shilapi/xcertplay/usbbt/ReconnectAction;

    return-object v1

    .line 206
    :cond_11
    invoke-virtual {v8}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectPolicy$Decision;->getAction()Lcom/shilapi/xcertplay/usbbt/ReconnectAction;

    move-result-object v3

    sget-object v4, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/usbbt/ReconnectAction;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 231
    :pswitch_0
    iget-object v1, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->log:Lkotlin/jvm/functions/Function1;

    const-string v2, "reconnect: no iAP2 within 20s on the link; dropping it and paging"

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget-object v1, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->port:Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector$Port;

    invoke-interface {v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector$Port;->dropLink()Z

    .line 233
    sget-object v1, Lcom/shilapi/xcertplay/usbbt/ReconnectReason;->TICK:Lcom/shilapi/xcertplay/usbbt/ReconnectReason;

    iput-object v1, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->reason:Lcom/shilapi/xcertplay/usbbt/ReconnectReason;

    goto/16 :goto_9

    .line 222
    :pswitch_1
    iget-object v3, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->port:Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector$Port;

    invoke-interface {v3}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector$Port;->openIap2OnLink()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 223
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->openingSince:Ljava/lang/Long;

    const/4 v1, 0x1

    .line 224
    iput-boolean v1, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->openedOnExistingLink:Z

    .line 225
    iget-object v1, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->log:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v8}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectPolicy$Decision;->getAction()Lcom/shilapi/xcertplay/usbbt/ReconnectAction;

    move-result-object v2

    sget-object v3, Lcom/shilapi/xcertplay/usbbt/ReconnectAction;->SECURE_LINK:Lcom/shilapi/xcertplay/usbbt/ReconnectAction;

    if-ne v2, v3, :cond_12

    const-string v11, "authenticating + encrypting the link, then "

    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reconnect: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "SDP + RFCOMM on the Bluetooth link that is still up"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    :cond_13
    sget-object v1, Lcom/shilapi/xcertplay/usbbt/ReconnectReason;->TICK:Lcom/shilapi/xcertplay/usbbt/ReconnectReason;

    iput-object v1, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->reason:Lcom/shilapi/xcertplay/usbbt/ReconnectReason;

    goto :goto_9

    .line 207
    :pswitch_2
    iget-wide v3, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->nextPageAt:J

    cmp-long v5, v1, v3

    if-ltz v5, :cond_14

    .line 208
    iget-object v3, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->port:Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector$Port;

    invoke-interface {v3}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector$Port;->page()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 210
    iget v4, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->pages:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->pages:I

    .line 211
    iget v4, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->cadencePages:I

    add-int/2addr v4, v5

    iput v4, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->cadencePages:I

    .line 212
    iput-boolean v5, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->pagingNow:Z

    .line 214
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->openingSince:Ljava/lang/Long;

    const/4 v15, 0x0

    .line 215
    iput-boolean v15, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->openedOnExistingLink:Z

    .line 216
    sget-object v4, Lcom/shilapi/xcertplay/usbbt/UsbBtPagingSchedule;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtPagingSchedule;

    iget v5, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->cadencePages:I

    iget-wide v6, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->cadenceStart:J

    sub-long v6, v1, v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/shilapi/xcertplay/usbbt/UsbBtPagingSchedule;->intervalMillis(IJ)J

    move-result-wide v4

    add-long/2addr v4, v1

    iput-wide v4, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->nextPageAt:J

    .line 217
    iget-object v6, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->log:Lkotlin/jvm/functions/Function1;

    iget v7, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->pages:I

    sub-long/2addr v4, v1

    int-to-long v1, v10

    div-long/2addr v4, v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reconnect: paging the paired iPhone "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (page "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; next in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "s if unanswered)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v1, Lcom/shilapi/xcertplay/usbbt/ReconnectReason;->TICK:Lcom/shilapi/xcertplay/usbbt/ReconnectReason;

    iput-object v1, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->reason:Lcom/shilapi/xcertplay/usbbt/ReconnectReason;

    .line 237
    :cond_14
    :goto_9
    :pswitch_3
    invoke-virtual {v8}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectPolicy$Decision;->getAction()Lcom/shilapi/xcertplay/usbbt/ReconnectAction;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
