.class public final synthetic Lcom/shilapi/xcertplay/FirstRunNotice$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:Landroid/app/Activity;

.field public final synthetic f$2:Landroid/os/Handler;

.field public final synthetic f$3:Lcom/shilapi/xcertplay/FirstRunNotice$show$tick$1;

.field public final synthetic f$4:Landroid/app/Dialog;

.field public final synthetic f$5:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(JLandroid/app/Activity;Landroid/os/Handler;Lcom/shilapi/xcertplay/FirstRunNotice$show$tick$1;Landroid/app/Dialog;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/shilapi/xcertplay/FirstRunNotice$$ExternalSyntheticLambda1;->f$0:J

    iput-object p3, p0, Lcom/shilapi/xcertplay/FirstRunNotice$$ExternalSyntheticLambda1;->f$1:Landroid/app/Activity;

    iput-object p4, p0, Lcom/shilapi/xcertplay/FirstRunNotice$$ExternalSyntheticLambda1;->f$2:Landroid/os/Handler;

    iput-object p5, p0, Lcom/shilapi/xcertplay/FirstRunNotice$$ExternalSyntheticLambda1;->f$3:Lcom/shilapi/xcertplay/FirstRunNotice$show$tick$1;

    iput-object p6, p0, Lcom/shilapi/xcertplay/FirstRunNotice$$ExternalSyntheticLambda1;->f$4:Landroid/app/Dialog;

    iput-object p7, p0, Lcom/shilapi/xcertplay/FirstRunNotice$$ExternalSyntheticLambda1;->f$5:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 0
    iget-wide v0, p0, Lcom/shilapi/xcertplay/FirstRunNotice$$ExternalSyntheticLambda1;->f$0:J

    iget-object v2, p0, Lcom/shilapi/xcertplay/FirstRunNotice$$ExternalSyntheticLambda1;->f$1:Landroid/app/Activity;

    iget-object v3, p0, Lcom/shilapi/xcertplay/FirstRunNotice$$ExternalSyntheticLambda1;->f$2:Landroid/os/Handler;

    iget-object v4, p0, Lcom/shilapi/xcertplay/FirstRunNotice$$ExternalSyntheticLambda1;->f$3:Lcom/shilapi/xcertplay/FirstRunNotice$show$tick$1;

    iget-object v5, p0, Lcom/shilapi/xcertplay/FirstRunNotice$$ExternalSyntheticLambda1;->f$4:Landroid/app/Dialog;

    iget-object v6, p0, Lcom/shilapi/xcertplay/FirstRunNotice$$ExternalSyntheticLambda1;->f$5:Lkotlin/jvm/functions/Function0;

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lcom/shilapi/xcertplay/FirstRunNotice;->$r8$lambda$WAUojRv8h7ZWWWiYjKehuE7m5po(JLandroid/app/Activity;Landroid/os/Handler;Lcom/shilapi/xcertplay/FirstRunNotice$show$tick$1;Landroid/app/Dialog;Lkotlin/jvm/functions/Function0;Landroid/view/View;)V

    return-void
.end method
