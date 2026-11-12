.class final synthetic Lcom/shilapi/xcertplay/usbbt/UsbBtSession$start$r$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "UsbBtSession.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->start(Landroid/content/Context;)Lcom/shilapi/xcertplay/usbbt/UsbBtSession$StartResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;",
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

    const-class v3, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;

    const-string v5, "publish(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-string v4, "publish"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 114
    check-cast p1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$start$r$1;->invoke(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;)V
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$start$r$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;

    # invokes: Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->publish(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;)V
    invoke-static {v0, p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->access$publish(Lcom/shilapi/xcertplay/usbbt/UsbBtSession;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;)V

    return-void
.end method
