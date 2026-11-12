.class public final Lcom/shilapi/xcertplay/ConnectionUi$Ui;
.super Ljava/lang/Object;
.source "ConnectionFlow.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/ConnectionUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Ui"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000cR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/ConnectionUi$Ui;",
        "",
        "wireless",
        "Lcom/shilapi/xcertplay/ConnectionUi$Card;",
        "wired",
        "row",
        "Lcom/shilapi/xcertplay/ConnectionUi$Row;",
        "phase",
        "Lcom/shilapi/xcertplay/ConnectionProgress$Phase;",
        "<init>",
        "(Lcom/shilapi/xcertplay/ConnectionUi$Card;Lcom/shilapi/xcertplay/ConnectionUi$Card;Lcom/shilapi/xcertplay/ConnectionUi$Row;Lcom/shilapi/xcertplay/ConnectionProgress$Phase;)V",
        "getWireless",
        "()Lcom/shilapi/xcertplay/ConnectionUi$Card;",
        "getWired",
        "getRow",
        "()Lcom/shilapi/xcertplay/ConnectionUi$Row;",
        "getPhase",
        "()Lcom/shilapi/xcertplay/ConnectionProgress$Phase;",
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
.field private final phase:Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

.field private final row:Lcom/shilapi/xcertplay/ConnectionUi$Row;

.field private final wired:Lcom/shilapi/xcertplay/ConnectionUi$Card;

.field private final wireless:Lcom/shilapi/xcertplay/ConnectionUi$Card;


# direct methods
.method public constructor <init>(Lcom/shilapi/xcertplay/ConnectionUi$Card;Lcom/shilapi/xcertplay/ConnectionUi$Card;Lcom/shilapi/xcertplay/ConnectionUi$Row;Lcom/shilapi/xcertplay/ConnectionProgress$Phase;)V
    .locals 1

    const-string/jumbo v0, "wireless"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "wired"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "row"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phase"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/ConnectionUi$Ui;->wireless:Lcom/shilapi/xcertplay/ConnectionUi$Card;

    iput-object p2, p0, Lcom/shilapi/xcertplay/ConnectionUi$Ui;->wired:Lcom/shilapi/xcertplay/ConnectionUi$Card;

    iput-object p3, p0, Lcom/shilapi/xcertplay/ConnectionUi$Ui;->row:Lcom/shilapi/xcertplay/ConnectionUi$Row;

    iput-object p4, p0, Lcom/shilapi/xcertplay/ConnectionUi$Ui;->phase:Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    return-void
.end method


# virtual methods
.method public final getPhase()Lcom/shilapi/xcertplay/ConnectionProgress$Phase;
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/shilapi/xcertplay/ConnectionUi$Ui;->phase:Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    return-object v0
.end method

.method public final getRow()Lcom/shilapi/xcertplay/ConnectionUi$Row;
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/shilapi/xcertplay/ConnectionUi$Ui;->row:Lcom/shilapi/xcertplay/ConnectionUi$Row;

    return-object v0
.end method

.method public final getWired()Lcom/shilapi/xcertplay/ConnectionUi$Card;
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/shilapi/xcertplay/ConnectionUi$Ui;->wired:Lcom/shilapi/xcertplay/ConnectionUi$Card;

    return-object v0
.end method

.method public final getWireless()Lcom/shilapi/xcertplay/ConnectionUi$Card;
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/shilapi/xcertplay/ConnectionUi$Ui;->wireless:Lcom/shilapi/xcertplay/ConnectionUi$Card;

    return-object v0
.end method
