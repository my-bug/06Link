.class public final Lcom/shilapi/xcertplay/ConnectionUi$Segments;
.super Ljava/lang/Object;
.source "ConnectionFlow.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/ConnectionUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Segments"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/ConnectionUi$Segments;",
        "",
        "count",
        "",
        "current",
        "stuck",
        "",
        "<init>",
        "(IIZ)V",
        "getCount",
        "()I",
        "getCurrent",
        "getStuck",
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
.field private final count:I

.field private final current:I

.field private final stuck:Z


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/shilapi/xcertplay/ConnectionUi$Segments;->count:I

    iput p2, p0, Lcom/shilapi/xcertplay/ConnectionUi$Segments;->current:I

    iput-boolean p3, p0, Lcom/shilapi/xcertplay/ConnectionUi$Segments;->stuck:Z

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .line 331
    iget v0, p0, Lcom/shilapi/xcertplay/ConnectionUi$Segments;->count:I

    return v0
.end method

.method public final getCurrent()I
    .locals 1

    .line 331
    iget v0, p0, Lcom/shilapi/xcertplay/ConnectionUi$Segments;->current:I

    return v0
.end method

.method public final getStuck()Z
    .locals 1

    .line 331
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/ConnectionUi$Segments;->stuck:Z

    return v0
.end method
