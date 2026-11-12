.class public final Lcom/shilapi/xcertplay/update/ApkInstaller$Verification$ShaMismatch;
.super Lcom/shilapi/xcertplay/update/ApkInstaller$Verification;
.source "ApkInstaller.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/update/ApkInstaller$Verification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ShaMismatch"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/update/ApkInstaller$Verification$ShaMismatch;",
        "Lcom/shilapi/xcertplay/update/ApkInstaller$Verification;",
        "expected",
        "",
        "actual",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "getExpected",
        "()Ljava/lang/String;",
        "getActual",
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
.field private final actual:Ljava/lang/String;

.field private final expected:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "expected"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actual"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/update/ApkInstaller$Verification;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/shilapi/xcertplay/update/ApkInstaller$Verification$ShaMismatch;->expected:Ljava/lang/String;

    iput-object p2, p0, Lcom/shilapi/xcertplay/update/ApkInstaller$Verification$ShaMismatch;->actual:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getActual()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/shilapi/xcertplay/update/ApkInstaller$Verification$ShaMismatch;->actual:Ljava/lang/String;

    return-object v0
.end method

.method public final getExpected()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/shilapi/xcertplay/update/ApkInstaller$Verification$ShaMismatch;->expected:Ljava/lang/String;

    return-object v0
.end method
