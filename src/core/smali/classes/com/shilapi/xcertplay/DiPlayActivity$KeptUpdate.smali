.class public final Lcom/shilapi/xcertplay/DiPlayActivity$KeptUpdate;
.super Ljava/lang/Object;
.source "DiPlayActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/DiPlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeptUpdate"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/DiPlayActivity$KeptUpdate;",
        "",
        "available",
        "Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome$Available;",
        "apk",
        "Ljava/io/File;",
        "<init>",
        "(Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome$Available;Ljava/io/File;)V",
        "getAvailable",
        "()Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome$Available;",
        "getApk",
        "()Ljava/io/File;",
        "waitingForUnknownSources",
        "",
        "getWaitingForUnknownSources",
        "()Z",
        "setWaitingForUnknownSources",
        "(Z)V",
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
.field private final apk:Ljava/io/File;

.field private final available:Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome$Available;

.field private volatile waitingForUnknownSources:Z


# direct methods
.method public constructor <init>(Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome$Available;Ljava/io/File;)V
    .locals 1

    const-string v0, "available"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apk"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/DiPlayActivity$KeptUpdate;->available:Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome$Available;

    iput-object p2, p0, Lcom/shilapi/xcertplay/DiPlayActivity$KeptUpdate;->apk:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final getApk()Ljava/io/File;
    .locals 1

    .line 2653
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity$KeptUpdate;->apk:Ljava/io/File;

    return-object v0
.end method

.method public final getAvailable()Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome$Available;
    .locals 1

    .line 2653
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity$KeptUpdate;->available:Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome$Available;

    return-object v0
.end method

.method public final getWaitingForUnknownSources()Z
    .locals 1

    .line 2654
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity$KeptUpdate;->waitingForUnknownSources:Z

    return v0
.end method

.method public final setWaitingForUnknownSources(Z)V
    .locals 0

    .line 2654
    iput-boolean p1, p0, Lcom/shilapi/xcertplay/DiPlayActivity$KeptUpdate;->waitingForUnknownSources:Z

    return-void
.end method
