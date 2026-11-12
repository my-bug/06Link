.class public final Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome$UpToDate;
.super Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome;
.source "UpdateChecker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpToDate"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome$UpToDate;",
        "Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome;",
        "installedVersionCode",
        "",
        "manifest",
        "Lcom/shilapi/xcertplay/update/UpdateManifest;",
        "<init>",
        "(ILcom/shilapi/xcertplay/update/UpdateManifest;)V",
        "getInstalledVersionCode",
        "()I",
        "getManifest",
        "()Lcom/shilapi/xcertplay/update/UpdateManifest;",
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
.field private final installedVersionCode:I

.field private final manifest:Lcom/shilapi/xcertplay/update/UpdateManifest;


# direct methods
.method public constructor <init>(ILcom/shilapi/xcertplay/update/UpdateManifest;)V
    .locals 1

    const-string v0, "manifest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome$UpToDate;->installedVersionCode:I

    iput-object p2, p0, Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome$UpToDate;->manifest:Lcom/shilapi/xcertplay/update/UpdateManifest;

    return-void
.end method


# virtual methods
.method public final getInstalledVersionCode()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome$UpToDate;->installedVersionCode:I

    return v0
.end method

.method public final getManifest()Lcom/shilapi/xcertplay/update/UpdateManifest;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome$UpToDate;->manifest:Lcom/shilapi/xcertplay/update/UpdateManifest;

    return-object v0
.end method
