.class public abstract Lcom/shilapi/xcertplay/update/ApkInstaller$Verification;
.super Ljava/lang/Object;
.source "ApkInstaller.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/update/ApkInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Verification"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/update/ApkInstaller$Verification$Error;,
        Lcom/shilapi/xcertplay/update/ApkInstaller$Verification$Incompatible;,
        Lcom/shilapi/xcertplay/update/ApkInstaller$Verification$Ok;,
        Lcom/shilapi/xcertplay/update/ApkInstaller$Verification$PackageMismatch;,
        Lcom/shilapi/xcertplay/update/ApkInstaller$Verification$ShaMismatch;,
        Lcom/shilapi/xcertplay/update/ApkInstaller$Verification$SignatureMismatch;,
        Lcom/shilapi/xcertplay/update/ApkInstaller$Verification$VersionMismatch;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0007\u0004\u0005\u0006\u0007\u0008\t\nB\t\u0008\u0004\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u0082\u0001\u0007\u000b\u000c\r\u000e\u000f\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/update/ApkInstaller$Verification;",
        "",
        "<init>",
        "()V",
        "Ok",
        "ShaMismatch",
        "PackageMismatch",
        "SignatureMismatch",
        "VersionMismatch",
        "Incompatible",
        "Error",
        "Lcom/shilapi/xcertplay/update/ApkInstaller$Verification$Error;",
        "Lcom/shilapi/xcertplay/update/ApkInstaller$Verification$Incompatible;",
        "Lcom/shilapi/xcertplay/update/ApkInstaller$Verification$Ok;",
        "Lcom/shilapi/xcertplay/update/ApkInstaller$Verification$PackageMismatch;",
        "Lcom/shilapi/xcertplay/update/ApkInstaller$Verification$ShaMismatch;",
        "Lcom/shilapi/xcertplay/update/ApkInstaller$Verification$SignatureMismatch;",
        "Lcom/shilapi/xcertplay/update/ApkInstaller$Verification$VersionMismatch;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/update/ApkInstaller$Verification;-><init>()V

    return-void
.end method
