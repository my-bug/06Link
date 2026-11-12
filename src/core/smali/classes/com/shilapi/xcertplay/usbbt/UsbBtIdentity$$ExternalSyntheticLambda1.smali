.class public final synthetic Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:[B


# direct methods
.method public synthetic constructor <init>([B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity$$ExternalSyntheticLambda1;->f$0:[B

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity$$ExternalSyntheticLambda1;->f$0:[B

    check-cast p1, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;

    invoke-static {v0, p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity;->$r8$lambda$so-3H9yarJOg0QnU9lBGewMT08Q([BLcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;)[B

    move-result-object p1

    return-object p1
.end method
