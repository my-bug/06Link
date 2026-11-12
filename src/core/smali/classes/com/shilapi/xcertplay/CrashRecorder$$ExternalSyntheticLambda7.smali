.class public final synthetic Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Landroid/os/Handler;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticLambda7;->f$0:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticLambda7;->f$0:Landroid/os/Handler;

    check-cast p1, Ljava/lang/Runnable;

    invoke-static {v0, p1}, Lcom/shilapi/xcertplay/CrashRecorder;->$r8$lambda$L8uN6S68VpmgX4d-jWYyze2ZjvU(Landroid/os/Handler;Ljava/lang/Runnable;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
