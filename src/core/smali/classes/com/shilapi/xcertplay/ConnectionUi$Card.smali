.class public final Lcom/shilapi/xcertplay/ConnectionUi$Card;
.super Ljava/lang/Object;
.source "ConnectionFlow.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/ConnectionUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Card"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\rR\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000fR\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/ConnectionUi$Card;",
        "",
        "hint",
        "",
        "warn",
        "",
        "label",
        "enabled",
        "action",
        "Lcom/shilapi/xcertplay/ConnectionUi$CardAction;",
        "<init>",
        "(Ljava/lang/String;ZLjava/lang/String;ZLcom/shilapi/xcertplay/ConnectionUi$CardAction;)V",
        "getHint",
        "()Ljava/lang/String;",
        "getWarn",
        "()Z",
        "getLabel",
        "getEnabled",
        "getAction",
        "()Lcom/shilapi/xcertplay/ConnectionUi$CardAction;",
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
.field private final action:Lcom/shilapi/xcertplay/ConnectionUi$CardAction;

.field private final enabled:Z

.field private final hint:Ljava/lang/String;

.field private final label:Ljava/lang/String;

.field private final warn:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;ZLcom/shilapi/xcertplay/ConnectionUi$CardAction;)V
    .locals 1

    const-string v0, "hint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "label"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/ConnectionUi$Card;->hint:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/shilapi/xcertplay/ConnectionUi$Card;->warn:Z

    iput-object p3, p0, Lcom/shilapi/xcertplay/ConnectionUi$Card;->label:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/shilapi/xcertplay/ConnectionUi$Card;->enabled:Z

    iput-object p5, p0, Lcom/shilapi/xcertplay/ConnectionUi$Card;->action:Lcom/shilapi/xcertplay/ConnectionUi$CardAction;

    return-void
.end method


# virtual methods
.method public final getAction()Lcom/shilapi/xcertplay/ConnectionUi$CardAction;
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/shilapi/xcertplay/ConnectionUi$Card;->action:Lcom/shilapi/xcertplay/ConnectionUi$CardAction;

    return-object v0
.end method

.method public final getEnabled()Z
    .locals 1

    .line 328
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/ConnectionUi$Card;->enabled:Z

    return v0
.end method

.method public final getHint()Ljava/lang/String;
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/shilapi/xcertplay/ConnectionUi$Card;->hint:Ljava/lang/String;

    return-object v0
.end method

.method public final getLabel()Ljava/lang/String;
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/shilapi/xcertplay/ConnectionUi$Card;->label:Ljava/lang/String;

    return-object v0
.end method

.method public final getWarn()Z
    .locals 1

    .line 328
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/ConnectionUi$Card;->warn:Z

    return v0
.end method
