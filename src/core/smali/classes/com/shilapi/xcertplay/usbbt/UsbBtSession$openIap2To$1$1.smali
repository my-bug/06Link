.class final synthetic Lcom/shilapi/xcertplay/usbbt/UsbBtSession$openIap2To$1$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "UsbBtSession.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->openIap2To(Lcom/shilapi/xcertplay/usbbt/UsbBtHost;ILcom/shilapi/xcertplay/usbbt/UsbBtIdentity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/shilapi/xcertplay/usbbt/RfcommDlc;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-class v3, Lcom/shilapi/xcertplay/usbbt/UsbBtIap2Link;

    const-string v5, "offer(Lcom/shilapi/xcertplay/usbbt/RfcommDlc;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-string v4, "offer"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 167
    check-cast p1, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$openIap2To$1$1;->invoke(Lcom/shilapi/xcertplay/usbbt/RfcommDlc;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/shilapi/xcertplay/usbbt/RfcommDlc;)V
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$openIap2To$1$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/shilapi/xcertplay/usbbt/UsbBtIap2Link;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtIap2Link;->offer(Lcom/shilapi/xcertplay/usbbt/RfcommDlc;)V

    return-void
.end method
