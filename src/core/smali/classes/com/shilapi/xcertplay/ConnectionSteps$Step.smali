.class public final Lcom/shilapi/xcertplay/ConnectionSteps$Step;
.super Ljava/lang/Object;
.source "ConnectionFlow.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/ConnectionSteps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Step"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/ConnectionSteps$Step;",
        "",
        "name",
        "",
        "hint",
        "<init>",
        "(II)V",
        "getName",
        "()I",
        "getHint",
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
.field private final hint:I

.field private final name:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/shilapi/xcertplay/ConnectionSteps$Step;->name:I

    iput p2, p0, Lcom/shilapi/xcertplay/ConnectionSteps$Step;->hint:I

    return-void
.end method


# virtual methods
.method public final getHint()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/shilapi/xcertplay/ConnectionSteps$Step;->hint:I

    return v0
.end method

.method public final getName()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/shilapi/xcertplay/ConnectionSteps$Step;->name:I

    return v0
.end method
