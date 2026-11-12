.class public final synthetic Lcom/shilapi/xcertplay/transport/UsbBluetoothHci$$ExternalSyntheticLambda0;
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

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci$$ExternalSyntheticLambda0;->f$0:[B

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci$$ExternalSyntheticLambda0;->f$0:[B

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;->$r8$lambda$sT-tbdncaM92G6oOkjnSvCpPC-U([BI)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
