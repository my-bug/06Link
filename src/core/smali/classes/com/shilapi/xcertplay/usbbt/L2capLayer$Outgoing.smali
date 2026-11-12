.class final Lcom/shilapi/xcertplay/usbbt/L2capLayer$Outgoing;
.super Ljava/lang/Object;
.source "L2cap.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/usbbt/L2capLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Outgoing"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u000b\u0008\u0002\u0018\u00002\u00020\u0001B;\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000eR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u001d\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/usbbt/L2capLayer$Outgoing;",
        "",
        "handle",
        "",
        "psm",
        "localCid",
        "service",
        "Lcom/shilapi/xcertplay/usbbt/L2capService;",
        "onFailed",
        "Lkotlin/Function1;",
        "",
        "<init>",
        "(IIILcom/shilapi/xcertplay/usbbt/L2capService;Lkotlin/jvm/functions/Function1;)V",
        "getHandle",
        "()I",
        "getPsm",
        "getLocalCid",
        "getService",
        "()Lcom/shilapi/xcertplay/usbbt/L2capService;",
        "getOnFailed",
        "()Lkotlin/jvm/functions/Function1;",
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
.field private final handle:I

.field private final localCid:I

.field private final onFailed:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final psm:I

.field private final service:Lcom/shilapi/xcertplay/usbbt/L2capService;


# direct methods
.method public constructor <init>(IIILcom/shilapi/xcertplay/usbbt/L2capService;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/shilapi/xcertplay/usbbt/L2capService;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "service"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onFailed"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Outgoing;->handle:I

    iput p2, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Outgoing;->psm:I

    iput p3, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Outgoing;->localCid:I

    iput-object p4, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Outgoing;->service:Lcom/shilapi/xcertplay/usbbt/L2capService;

    iput-object p5, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Outgoing;->onFailed:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final getHandle()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Outgoing;->handle:I

    return v0
.end method

.method public final getLocalCid()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Outgoing;->localCid:I

    return v0
.end method

.method public final getOnFailed()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Outgoing;->onFailed:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getPsm()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Outgoing;->psm:I

    return v0
.end method

.method public final getService()Lcom/shilapi/xcertplay/usbbt/L2capService;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Outgoing;->service:Lcom/shilapi/xcertplay/usbbt/L2capService;

    return-object v0
.end method
