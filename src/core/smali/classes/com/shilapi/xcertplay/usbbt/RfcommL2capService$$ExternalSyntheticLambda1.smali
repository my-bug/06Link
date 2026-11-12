.class public final synthetic Lcom/shilapi/xcertplay/usbbt/RfcommL2capService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;


# direct methods
.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommL2capService$$ExternalSyntheticLambda1;->f$0:Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommL2capService$$ExternalSyntheticLambda1;->f$0:Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;

    invoke-static {v0}, Lcom/shilapi/xcertplay/usbbt/RfcommL2capService;->$r8$lambda$ETnXIRCwi8CIsssyKQYvQDnKb4c(Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
