.class public final synthetic Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroid/os/Handler;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticLambda14;->f$0:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticLambda14;->f$0:Landroid/os/Handler;

    check-cast p1, Ljava/lang/Runnable;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, p1, v1, v2}, Lcom/shilapi/xcertplay/CrashRecorder;->$r8$lambda$8z2UFl8MYRPsd90jwWzgNfZO2-U(Landroid/os/Handler;Ljava/lang/Runnable;J)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
