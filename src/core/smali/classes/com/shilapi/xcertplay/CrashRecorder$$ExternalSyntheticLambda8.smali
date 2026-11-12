.class public final synthetic Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;

.field public final synthetic f$1:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;Ljava/io/File;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticLambda8;->f$0:Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;

    iput-object p2, p0, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticLambda8;->f$1:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticLambda8;->f$0:Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;

    iget-object v1, p0, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticLambda8;->f$1:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/shilapi/xcertplay/CrashRecorder;->$r8$lambda$ol1m7pS__SI9PhyZLnbBscY6IPE(Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;Ljava/io/File;)V

    return-void
.end method
