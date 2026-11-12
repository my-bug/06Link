.class public final Lcom/shilapi/xcertplay/usbbt/RfcommL2capService;
.super Ljava/lang/Object;
.source "Rfcomm.kt"

# interfaces
.implements Lcom/shilapi/xcertplay/usbbt/L2capService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/usbbt/RfcommL2capService$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRfcomm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Rfcomm.kt\ncom/shilapi/xcertplay/usbbt/RfcommL2capService\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,645:1\n1#2:646\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014BK\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006\u0012\u0014\u0008\u0002\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00080\u0006\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0014\u0010\u000f\u001a\u00020\u00102\n\u0010\u0011\u001a\u00060\u0012R\u00020\u0013H\u0016R\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00080\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u0004X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000e\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/usbbt/RfcommL2capService;",
        "Lcom/shilapi/xcertplay/usbbt/L2capService;",
        "serverChannels",
        "",
        "",
        "onOpen",
        "Lkotlin/Function1;",
        "Lcom/shilapi/xcertplay/usbbt/RfcommDlc;",
        "",
        "log",
        "",
        "connectTo",
        "<init>",
        "(Ljava/util/Set;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "open",
        "Lcom/shilapi/xcertplay/usbbt/L2capChannelHandler;",
        "channel",
        "Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;",
        "Lcom/shilapi/xcertplay/usbbt/L2capLayer;",
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
.field public static final Companion:Lcom/shilapi/xcertplay/usbbt/RfcommL2capService$Companion;

.field public static final PSM:I = 0x3


# instance fields
.field private final connectTo:Ljava/lang/Integer;

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

.field private final serverChannels:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$ETnXIRCwi8CIsssyKQYvQDnKb4c(Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;)I
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/usbbt/RfcommL2capService;->open$lambda$1(Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$G5q1aZmYnOhBKSaONcb8hGiyu6k(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/usbbt/RfcommL2capService;->_init_$lambda$0(Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dF4kLJJ8CreGjYO7PA52Npd-WL4(Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;[B)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/usbbt/RfcommL2capService;->open$lambda$2(Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;[B)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/usbbt/RfcommL2capService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/usbbt/RfcommL2capService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/usbbt/RfcommL2capService;->Companion:Lcom/shilapi/xcertplay/usbbt/RfcommL2capService$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
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
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    const-string v0, "serverChannels"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onOpen"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "log"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 614
    iput-object p1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommL2capService;->serverChannels:Ljava/util/Set;

    .line 615
    iput-object p2, p0, Lcom/shilapi/xcertplay/usbbt/RfcommL2capService;->onOpen:Lkotlin/jvm/functions/Function1;

    .line 616
    iput-object p3, p0, Lcom/shilapi/xcertplay/usbbt/RfcommL2capService;->log:Lkotlin/jvm/functions/Function1;

    .line 618
    iput-object p4, p0, Lcom/shilapi/xcertplay/usbbt/RfcommL2capService;->connectTo:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Set;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 616
    new-instance p3, Lcom/shilapi/xcertplay/usbbt/RfcommL2capService$$ExternalSyntheticLambda0;

    invoke-direct {p3}, Lcom/shilapi/xcertplay/usbbt/RfcommL2capService$$ExternalSyntheticLambda0;-><init>()V

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    .line 613
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/usbbt/RfcommL2capService;-><init>(Ljava/util/Set;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/lang/Integer;)V

    return-void
.end method

.method private static final _init_$lambda$0(Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 616
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final synthetic access$getLog$p(Lcom/shilapi/xcertplay/usbbt/RfcommL2capService;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 613
    iget-object p0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommL2capService;->log:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method private static final open$lambda$1(Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;)I
    .locals 0

    .line 625
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;->getRemoteMtu()I

    move-result p0

    return p0
.end method

.method private static final open$lambda$2(Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;[B)Lkotlin/Unit;
    .locals 1

    const-string v0, "frame"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 626
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;->write([B)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public open(Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;)Lcom/shilapi/xcertplay/usbbt/L2capChannelHandler;
    .locals 9

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 621
    new-instance v1, Lcom/shilapi/xcertplay/usbbt/RfcommSession;

    .line 622
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommL2capService;->connectTo:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 623
    :goto_0
    iget-object v3, p0, Lcom/shilapi/xcertplay/usbbt/RfcommL2capService;->serverChannels:Ljava/util/Set;

    .line 621
    new-instance v5, Lcom/shilapi/xcertplay/usbbt/RfcommL2capService$$ExternalSyntheticLambda1;

    invoke-direct {v5, p1}, Lcom/shilapi/xcertplay/usbbt/RfcommL2capService$$ExternalSyntheticLambda1;-><init>(Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;)V

    new-instance v6, Lcom/shilapi/xcertplay/usbbt/RfcommL2capService$$ExternalSyntheticLambda2;

    invoke-direct {v6, p1}, Lcom/shilapi/xcertplay/usbbt/RfcommL2capService$$ExternalSyntheticLambda2;-><init>(Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;)V

    .line 627
    iget-object v7, p0, Lcom/shilapi/xcertplay/usbbt/RfcommL2capService;->onOpen:Lkotlin/jvm/functions/Function1;

    .line 628
    iget-object v8, p0, Lcom/shilapi/xcertplay/usbbt/RfcommL2capService;->log:Lkotlin/jvm/functions/Function1;

    const/16 v4, 0x2a0

    .line 621
    invoke-direct/range {v1 .. v8}, Lcom/shilapi/xcertplay/usbbt/RfcommSession;-><init>(ZLjava/util/Set;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 630
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommL2capService;->log:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;->getRemoteMtu()I

    move-result p1

    iget-object v2, p0, Lcom/shilapi/xcertplay/usbbt/RfcommL2capService;->connectTo:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    const-string v2, ", opened by this side"

    goto :goto_1

    :cond_1
    const-string v2, ""

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "rfcomm: L2CAP channel open (peer MTU "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    iget-object p1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommL2capService;->connectTo:Ljava/lang/Integer;

    if-eqz p1, :cond_2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/shilapi/xcertplay/usbbt/RfcommSession;->connect(I)V

    .line 632
    :cond_2
    new-instance p1, Lcom/shilapi/xcertplay/usbbt/RfcommL2capService$open$2;

    invoke-direct {p1, v1, p0}, Lcom/shilapi/xcertplay/usbbt/RfcommL2capService$open$2;-><init>(Lcom/shilapi/xcertplay/usbbt/RfcommSession;Lcom/shilapi/xcertplay/usbbt/RfcommL2capService;)V

    check-cast p1, Lcom/shilapi/xcertplay/usbbt/L2capChannelHandler;

    return-object p1
.end method
