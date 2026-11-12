.class public final Lcom/shilapi/xcertplay/SetupProblemText$Words;
.super Ljava/lang/Object;
.source "SetupProblemText.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/SetupProblemText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Words"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\t\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/SetupProblemText$Words;",
        "",
        "title",
        "",
        "reason",
        "next",
        "<init>",
        "(III)V",
        "getTitle",
        "()I",
        "getReason",
        "getNext",
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
.field private final next:I

.field private final reason:I

.field private final title:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/shilapi/xcertplay/SetupProblemText$Words;->title:I

    iput p2, p0, Lcom/shilapi/xcertplay/SetupProblemText$Words;->reason:I

    iput p3, p0, Lcom/shilapi/xcertplay/SetupProblemText$Words;->next:I

    return-void
.end method


# virtual methods
.method public final getNext()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/shilapi/xcertplay/SetupProblemText$Words;->next:I

    return v0
.end method

.method public final getReason()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/shilapi/xcertplay/SetupProblemText$Words;->reason:I

    return v0
.end method

.method public final getTitle()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/shilapi/xcertplay/SetupProblemText$Words;->title:I

    return v0
.end method
