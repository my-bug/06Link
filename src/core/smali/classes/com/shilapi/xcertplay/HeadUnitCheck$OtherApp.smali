.class public final Lcom/shilapi/xcertplay/HeadUnitCheck$OtherApp;
.super Ljava/lang/Object;
.source "HeadUnitCheck.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/HeadUnitCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OtherApp"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\t\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u0015\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\n\n\u0002\u0010\u000e\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/HeadUnitCheck$OtherApp;",
        "",
        "label",
        "",
        "pkg",
        "running",
        "",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V",
        "getLabel",
        "()Ljava/lang/String;",
        "getPkg",
        "getRunning",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
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
.field private final label:Ljava/lang/String;

.field private final pkg:Ljava/lang/String;

.field private final running:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    const-string v0, "label"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pkg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$OtherApp;->label:Ljava/lang/String;

    iput-object p2, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$OtherApp;->pkg:Ljava/lang/String;

    iput-object p3, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$OtherApp;->running:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final getLabel()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$OtherApp;->label:Ljava/lang/String;

    return-object v0
.end method

.method public final getPkg()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$OtherApp;->pkg:Ljava/lang/String;

    return-object v0
.end method

.method public final getRunning()Ljava/lang/Boolean;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$OtherApp;->running:Ljava/lang/Boolean;

    return-object v0
.end method
