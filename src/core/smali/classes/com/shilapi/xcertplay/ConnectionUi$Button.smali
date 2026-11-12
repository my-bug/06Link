.class public final Lcom/shilapi/xcertplay/ConnectionUi$Button;
.super Ljava/lang/Object;
.source "ConnectionFlow.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/ConnectionUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Button"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/ConnectionUi$Button;",
        "",
        "label",
        "",
        "action",
        "Lcom/shilapi/xcertplay/ConnectionUi$RowAction;",
        "primary",
        "",
        "<init>",
        "(Ljava/lang/String;Lcom/shilapi/xcertplay/ConnectionUi$RowAction;Z)V",
        "getLabel",
        "()Ljava/lang/String;",
        "getAction",
        "()Lcom/shilapi/xcertplay/ConnectionUi$RowAction;",
        "getPrimary",
        "()Z",
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
.field private final action:Lcom/shilapi/xcertplay/ConnectionUi$RowAction;

.field private final label:Ljava/lang/String;

.field private final primary:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/shilapi/xcertplay/ConnectionUi$RowAction;Z)V
    .locals 1

    const-string v0, "label"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/ConnectionUi$Button;->label:Ljava/lang/String;

    iput-object p2, p0, Lcom/shilapi/xcertplay/ConnectionUi$Button;->action:Lcom/shilapi/xcertplay/ConnectionUi$RowAction;

    iput-boolean p3, p0, Lcom/shilapi/xcertplay/ConnectionUi$Button;->primary:Z

    return-void
.end method


# virtual methods
.method public final getAction()Lcom/shilapi/xcertplay/ConnectionUi$RowAction;
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/shilapi/xcertplay/ConnectionUi$Button;->action:Lcom/shilapi/xcertplay/ConnectionUi$RowAction;

    return-object v0
.end method

.method public final getLabel()Ljava/lang/String;
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/shilapi/xcertplay/ConnectionUi$Button;->label:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrimary()Z
    .locals 1

    .line 332
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/ConnectionUi$Button;->primary:Z

    return v0
.end method
