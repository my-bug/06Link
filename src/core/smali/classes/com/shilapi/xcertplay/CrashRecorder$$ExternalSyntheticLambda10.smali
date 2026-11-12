.class public final synthetic Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field public final synthetic f$0:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticLambda10;->f$0:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticLambda10;->f$0:Ljava/io/File;

    invoke-static {v0, p1, p2}, Lcom/shilapi/xcertplay/CrashRecorder;->$r8$lambda$ikwbSt-0tM0XcP79J3sFt5XiSsI(Ljava/io/File;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
