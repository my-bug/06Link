.class public final Lcom/shilapi/xcertplay/update/ApkInstaller$Verification$VersionMismatch;
.super Lcom/shilapi/xcertplay/update/ApkInstaller$Verification;
.source "ApkInstaller.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/update/ApkInstaller$Verification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VersionMismatch"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\n\n\u0002\u0010\r\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/update/ApkInstaller$Verification$VersionMismatch;",
        "Lcom/shilapi/xcertplay/update/ApkInstaller$Verification;",
        "announced",
        "",
        "actual",
        "",
        "installed",
        "<init>",
        "(ILjava/lang/Long;J)V",
        "getAnnounced",
        "()I",
        "getActual",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "getInstalled",
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
.field private final actual:Ljava/lang/Long;

.field private final announced:I

.field private final installed:J


# direct methods
.method public constructor <init>(ILjava/lang/Long;J)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/update/ApkInstaller$Verification;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lcom/shilapi/xcertplay/update/ApkInstaller$Verification$VersionMismatch;->announced:I

    iput-object p2, p0, Lcom/shilapi/xcertplay/update/ApkInstaller$Verification$VersionMismatch;->actual:Ljava/lang/Long;

    iput-wide p3, p0, Lcom/shilapi/xcertplay/update/ApkInstaller$Verification$VersionMismatch;->installed:J

    return-void
.end method


# virtual methods
.method public final getActual()Ljava/lang/Long;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/shilapi/xcertplay/update/ApkInstaller$Verification$VersionMismatch;->actual:Ljava/lang/Long;

    return-object v0
.end method

.method public final getAnnounced()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/shilapi/xcertplay/update/ApkInstaller$Verification$VersionMismatch;->announced:I

    return v0
.end method

.method public final getInstalled()J
    .locals 2

    .line 41
    iget-wide v0, p0, Lcom/shilapi/xcertplay/update/ApkInstaller$Verification$VersionMismatch;->installed:J

    return-wide v0
.end method
