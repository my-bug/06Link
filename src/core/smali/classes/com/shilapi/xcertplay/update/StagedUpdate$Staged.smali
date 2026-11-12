.class public final Lcom/shilapi/xcertplay/update/StagedUpdate$Staged;
.super Ljava/lang/Object;
.source "StagedUpdate.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/update/StagedUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Staged"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/update/StagedUpdate$Staged;",
        "",
        "available",
        "Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome$Available;",
        "apk",
        "Ljava/io/File;",
        "stagedBootStart",
        "",
        "<init>",
        "(Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome$Available;Ljava/io/File;J)V",
        "getAvailable",
        "()Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome$Available;",
        "getApk",
        "()Ljava/io/File;",
        "getStagedBootStart",
        "()J",
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

.field private final stagedBootStart:J


# direct methods
.method public constructor <init>(Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome$Available;Ljava/io/File;J)V
    .locals 1

    const-string v0, "available"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apk"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/update/StagedUpdate$Staged;->available:Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome$Available;

    iput-object p2, p0, Lcom/shilapi/xcertplay/update/StagedUpdate$Staged;->apk:Ljava/io/File;

    iput-wide p3, p0, Lcom/shilapi/xcertplay/update/StagedUpdate$Staged;->stagedBootStart:J

    return-void
.end method


# virtual methods
.method public final getApk()Ljava/io/File;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/shilapi/xcertplay/update/StagedUpdate$Staged;->apk:Ljava/io/File;

    return-object v0
.end method

.method public final getAvailable()Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome$Available;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/shilapi/xcertplay/update/StagedUpdate$Staged;->available:Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome$Available;

    return-object v0
.end method

.method public final getStagedBootStart()J
    .locals 2

    .line 14
    iget-wide v0, p0, Lcom/shilapi/xcertplay/update/StagedUpdate$Staged;->stagedBootStart:J

    return-wide v0
.end method
