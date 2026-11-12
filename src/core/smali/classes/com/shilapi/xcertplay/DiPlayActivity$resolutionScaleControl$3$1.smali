.class public final Lcom/shilapi/xcertplay/DiPlayActivity$resolutionScaleControl$3$1;
.super Ljava/lang/Object;
.source "DiPlayActivity.kt"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/DiPlayActivity;->resolutionScaleControl(Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/shilapi/xcertplay/DiPlayActivity$resolutionScaleControl$3$1",
        "Landroid/widget/SeekBar$OnSeekBarChangeListener;",
        "onProgressChanged",
        "",
        "seekBar",
        "Landroid/widget/SeekBar;",
        "progress",
        "",
        "fromUser",
        "",
        "onStartTrackingTouch",
        "onStopTrackingTouch",
        "common_release"
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
.field final synthetic $value:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/shilapi/xcertplay/DiPlayActivity;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Lcom/shilapi/xcertplay/DiPlayActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/shilapi/xcertplay/DiPlayActivity$resolutionScaleControl$3$1;->$value:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/shilapi/xcertplay/DiPlayActivity$resolutionScaleControl$3$1;->this$0:Lcom/shilapi/xcertplay/DiPlayActivity;

    .line 2440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2442
    sget-object p1, Lcom/shilapi/xcertplay/airplay/CarPlayDisplayScale;->INSTANCE:Lcom/shilapi/xcertplay/airplay/CarPlayDisplayScale;

    add-int/lit8 p2, p2, 0x3

    invoke-virtual {p1, p2}, Lcom/shilapi/xcertplay/airplay/CarPlayDisplayScale;->sanitize(I)I

    move-result p1

    .line 2444
    iget-object p2, p0, Lcom/shilapi/xcertplay/DiPlayActivity$resolutionScaleControl$3$1;->$value:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity$resolutionScaleControl$3$1;->this$0:Lcom/shilapi/xcertplay/DiPlayActivity;

    # invokes: Lcom/shilapi/xcertplay/DiPlayActivity;->resolutionScaleCaption(I)Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->access$resolutionScaleCaption(Lcom/shilapi/xcertplay/DiPlayActivity;I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_0

    .line 2445
    sget-object p2, Lcom/shilapi/xcertplay/AirPlayPersistence;->INSTANCE:Lcom/shilapi/xcertplay/AirPlayPersistence;

    iget-object p3, p0, Lcom/shilapi/xcertplay/DiPlayActivity$resolutionScaleControl$3$1;->this$0:Lcom/shilapi/xcertplay/DiPlayActivity;

    check-cast p3, Landroid/content/Context;

    invoke-virtual {p2, p3, p1}, Lcom/shilapi/xcertplay/AirPlayPersistence;->saveDisplayScaleTenths(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2449
    iget-object p1, p0, Lcom/shilapi/xcertplay/DiPlayActivity$resolutionScaleControl$3$1;->this$0:Lcom/shilapi/xcertplay/DiPlayActivity;

    # invokes: Lcom/shilapi/xcertplay/DiPlayActivity;->offerReconnectAfterDisplayChange()V
    invoke-static {p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->access$offerReconnectAfterDisplayChange(Lcom/shilapi/xcertplay/DiPlayActivity;)V

    return-void
.end method
