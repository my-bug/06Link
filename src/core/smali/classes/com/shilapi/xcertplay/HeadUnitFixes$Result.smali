.class public final Lcom/shilapi/xcertplay/HeadUnitFixes$Result;
.super Ljava/lang/Object;
.source "HeadUnitFixes.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/HeadUnitFixes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000c\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/HeadUnitFixes$Result;",
        "",
        "ready",
        "",
        "open",
        "Landroid/content/Intent;",
        "note",
        "Lcom/shilapi/xcertplay/HeadUnitFixes$Note;",
        "substitute",
        "<init>",
        "(ZLandroid/content/Intent;Lcom/shilapi/xcertplay/HeadUnitFixes$Note;Z)V",
        "getReady",
        "()Z",
        "getOpen",
        "()Landroid/content/Intent;",
        "getNote",
        "()Lcom/shilapi/xcertplay/HeadUnitFixes$Note;",
        "getSubstitute",
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
.field private final note:Lcom/shilapi/xcertplay/HeadUnitFixes$Note;

.field private final open:Landroid/content/Intent;

.field private final ready:Z

.field private final substitute:Z


# direct methods
.method public constructor <init>(ZLandroid/content/Intent;Lcom/shilapi/xcertplay/HeadUnitFixes$Note;Z)V
    .locals 1

    const-string v0, "note"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/shilapi/xcertplay/HeadUnitFixes$Result;->ready:Z

    iput-object p2, p0, Lcom/shilapi/xcertplay/HeadUnitFixes$Result;->open:Landroid/content/Intent;

    iput-object p3, p0, Lcom/shilapi/xcertplay/HeadUnitFixes$Result;->note:Lcom/shilapi/xcertplay/HeadUnitFixes$Note;

    iput-boolean p4, p0, Lcom/shilapi/xcertplay/HeadUnitFixes$Result;->substitute:Z

    return-void
.end method

.method public synthetic constructor <init>(ZLandroid/content/Intent;Lcom/shilapi/xcertplay/HeadUnitFixes$Note;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 41
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/HeadUnitFixes$Result;-><init>(ZLandroid/content/Intent;Lcom/shilapi/xcertplay/HeadUnitFixes$Note;Z)V

    return-void
.end method


# virtual methods
.method public final getNote()Lcom/shilapi/xcertplay/HeadUnitFixes$Note;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitFixes$Result;->note:Lcom/shilapi/xcertplay/HeadUnitFixes$Note;

    return-object v0
.end method

.method public final getOpen()Landroid/content/Intent;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitFixes$Result;->open:Landroid/content/Intent;

    return-object v0
.end method

.method public final getReady()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/HeadUnitFixes$Result;->ready:Z

    return v0
.end method

.method public final getSubstitute()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/HeadUnitFixes$Result;->substitute:Z

    return v0
.end method
