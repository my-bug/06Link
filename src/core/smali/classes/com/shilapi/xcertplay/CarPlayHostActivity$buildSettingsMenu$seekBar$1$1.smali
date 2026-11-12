.class public final Lcom/shilapi/xcertplay/CarPlayHostActivity$buildSettingsMenu$seekBar$1$1;
.super Ljava/lang/Object;
.source "CarPlayHostActivity.kt"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/CarPlayHostActivity;->buildSettingsMenu()Landroid/view/View;
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
        "com/shilapi/xcertplay/CarPlayHostActivity$buildSettingsMenu$seekBar$1$1",
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
.field final synthetic this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;


# direct methods
.method constructor <init>(Lcom/shilapi/xcertplay/CarPlayHostActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$buildSettingsMenu$seekBar$1$1;->this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    .line 2290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    const-string p3, "seekBar"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2292
    iget-object p1, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$buildSettingsMenu$seekBar$1$1;->this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    sget-object p3, Lcom/shilapi/xcertplay/airplay/CarPlayDisplayScale;->INSTANCE:Lcom/shilapi/xcertplay/airplay/CarPlayDisplayScale;

    add-int/lit8 p2, p2, 0x3

    invoke-virtual {p3, p2}, Lcom/shilapi/xcertplay/airplay/CarPlayDisplayScale;->sanitize(I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$setDisplayScaleTenths$p(Lcom/shilapi/xcertplay/CarPlayHostActivity;I)V

    .line 2295
    iget-object p1, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$buildSettingsMenu$seekBar$1$1;->this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    # invokes: Lcom/shilapi/xcertplay/CarPlayHostActivity;->updateResolutionMenu()V
    invoke-static {p1}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$updateResolutionMenu(Lcom/shilapi/xcertplay/CarPlayHostActivity;)V

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

    return-void
.end method
