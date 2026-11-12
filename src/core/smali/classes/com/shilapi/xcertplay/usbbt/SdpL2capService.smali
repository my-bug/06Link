.class public final Lcom/shilapi/xcertplay/usbbt/SdpL2capService;
.super Ljava/lang/Object;
.source "L2cap.kt"

# interfaces
.implements Lcom/shilapi/xcertplay/usbbt/L2capService;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0014\u0010\u0007\u001a\u00020\u00082\n\u0010\t\u001a\u00060\nR\u00020\u000bH\u0016R\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/usbbt/SdpL2capService;",
        "Lcom/shilapi/xcertplay/usbbt/L2capService;",
        "records",
        "",
        "Lcom/shilapi/xcertplay/usbbt/SdpRecord;",
        "<init>",
        "(Ljava/util/List;)V",
        "open",
        "Lcom/shilapi/xcertplay/usbbt/L2capChannelHandler;",
        "channel",
        "Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;",
        "Lcom/shilapi/xcertplay/usbbt/L2capLayer;",
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
.field private final records:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/usbbt/SdpRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/usbbt/SdpRecord;",
            ">;)V"
        }
    .end annotation

    const-string v0, "records"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/usbbt/SdpL2capService;->records:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getRecords$p(Lcom/shilapi/xcertplay/usbbt/SdpL2capService;)Ljava/util/List;
    .locals 0

    .line 324
    iget-object p0, p0, Lcom/shilapi/xcertplay/usbbt/SdpL2capService;->records:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public open(Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;)Lcom/shilapi/xcertplay/usbbt/L2capChannelHandler;
    .locals 1

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    new-instance p1, Lcom/shilapi/xcertplay/usbbt/SdpL2capService$open$1;

    invoke-direct {p1, p0}, Lcom/shilapi/xcertplay/usbbt/SdpL2capService$open$1;-><init>(Lcom/shilapi/xcertplay/usbbt/SdpL2capService;)V

    check-cast p1, Lcom/shilapi/xcertplay/usbbt/L2capChannelHandler;

    return-object p1
.end method
