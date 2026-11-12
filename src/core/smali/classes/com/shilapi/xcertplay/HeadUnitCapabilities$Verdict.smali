.class public final Lcom/shilapi/xcertplay/HeadUnitCapabilities$Verdict;
.super Ljava/lang/Object;
.source "HeadUnitCapabilities.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/HeadUnitCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Verdict"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\n\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/HeadUnitCapabilities$Verdict;",
        "",
        "title",
        "",
        "status",
        "Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;",
        "text",
        "<init>",
        "(Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;Ljava/lang/String;)V",
        "getTitle",
        "()Ljava/lang/String;",
        "getStatus",
        "()Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;",
        "getText",
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
.field private final status:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

.field private final text:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "status"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "text"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Verdict;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Verdict;->status:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    iput-object p3, p0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Verdict;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getStatus()Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Verdict;->status:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Verdict;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Verdict;->title:Ljava/lang/String;

    return-object v0
.end method
