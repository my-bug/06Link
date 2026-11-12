.class public final synthetic Lcom/shilapi/xcertplay/BootReceiver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/shilapi/xcertplay/BootReceiver;

.field public final synthetic f$1:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/BootReceiver;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/BootReceiver$$ExternalSyntheticLambda0;->f$0:Lcom/shilapi/xcertplay/BootReceiver;

    iput-object p2, p0, Lcom/shilapi/xcertplay/BootReceiver$$ExternalSyntheticLambda0;->f$1:Landroid/content/BroadcastReceiver$PendingResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/BootReceiver$$ExternalSyntheticLambda0;->f$0:Lcom/shilapi/xcertplay/BootReceiver;

    iget-object v1, p0, Lcom/shilapi/xcertplay/BootReceiver$$ExternalSyntheticLambda0;->f$1:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-static {v0, v1}, Lcom/shilapi/xcertplay/BootReceiver;->$r8$lambda$z1v-8eCjfabrA9ZAH7bQZxcZFdc(Lcom/shilapi/xcertplay/BootReceiver;Landroid/content/BroadcastReceiver$PendingResult;)V

    return-void
.end method
