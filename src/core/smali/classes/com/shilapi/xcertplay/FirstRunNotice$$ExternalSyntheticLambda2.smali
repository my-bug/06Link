.class public final synthetic Lcom/shilapi/xcertplay/FirstRunNotice$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Landroid/os/Handler;

.field public final synthetic f$1:Lcom/shilapi/xcertplay/FirstRunNotice$show$tick$1;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Handler;Lcom/shilapi/xcertplay/FirstRunNotice$show$tick$1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/FirstRunNotice$$ExternalSyntheticLambda2;->f$0:Landroid/os/Handler;

    iput-object p2, p0, Lcom/shilapi/xcertplay/FirstRunNotice$$ExternalSyntheticLambda2;->f$1:Lcom/shilapi/xcertplay/FirstRunNotice$show$tick$1;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/FirstRunNotice$$ExternalSyntheticLambda2;->f$0:Landroid/os/Handler;

    iget-object v1, p0, Lcom/shilapi/xcertplay/FirstRunNotice$$ExternalSyntheticLambda2;->f$1:Lcom/shilapi/xcertplay/FirstRunNotice$show$tick$1;

    invoke-static {v0, v1, p1}, Lcom/shilapi/xcertplay/FirstRunNotice;->$r8$lambda$puI03seYT9CNiwiQ13Zbrml8c04(Landroid/os/Handler;Lcom/shilapi/xcertplay/FirstRunNotice$show$tick$1;Landroid/content/DialogInterface;)V

    return-void
.end method
