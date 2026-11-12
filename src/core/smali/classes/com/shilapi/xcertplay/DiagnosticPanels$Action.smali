.class public final Lcom/shilapi/xcertplay/DiagnosticPanels$Action;
.super Ljava/lang/Object;
.source "DiagnosticPanels.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/DiagnosticPanels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Action"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0004\u0008\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0017\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/DiagnosticPanels$Action;",
        "",
        "title",
        "",
        "primary",
        "",
        "run",
        "Lkotlin/Function0;",
        "",
        "<init>",
        "(Ljava/lang/String;ZLkotlin/jvm/functions/Function0;)V",
        "getTitle",
        "()Ljava/lang/String;",
        "getPrimary",
        "()Z",
        "getRun",
        "()Lkotlin/jvm/functions/Function0;",
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
.field private final primary:Z

.field private final run:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "run"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/DiagnosticPanels$Action;->title:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/shilapi/xcertplay/DiagnosticPanels$Action;->primary:Z

    iput-object p3, p0, Lcom/shilapi/xcertplay/DiagnosticPanels$Action;->run:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 34
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/DiagnosticPanels$Action;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public final getPrimary()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/DiagnosticPanels$Action;->primary:Z

    return v0
.end method

.method public final getRun()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiagnosticPanels$Action;->run:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiagnosticPanels$Action;->title:Ljava/lang/String;

    return-object v0
.end method
