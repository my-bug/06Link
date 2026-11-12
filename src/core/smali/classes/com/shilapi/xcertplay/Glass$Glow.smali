.class public final Lcom/shilapi/xcertplay/Glass$Glow;
.super Ljava/lang/Object;
.source "Glass.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/Glass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Glow"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/Glass$Glow;",
        "",
        "x",
        "",
        "y",
        "radius",
        "color",
        "",
        "<init>",
        "(FFFI)V",
        "getX",
        "()F",
        "getY",
        "getRadius",
        "getColor",
        "()I",
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
.field private final color:I

.field private final radius:F

.field private final x:F

.field private final y:F


# direct methods
.method public constructor <init>(FFFI)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/shilapi/xcertplay/Glass$Glow;->x:F

    iput p2, p0, Lcom/shilapi/xcertplay/Glass$Glow;->y:F

    iput p3, p0, Lcom/shilapi/xcertplay/Glass$Glow;->radius:F

    iput p4, p0, Lcom/shilapi/xcertplay/Glass$Glow;->color:I

    return-void
.end method


# virtual methods
.method public final getColor()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/shilapi/xcertplay/Glass$Glow;->color:I

    return v0
.end method

.method public final getRadius()F
    .locals 1

    .line 58
    iget v0, p0, Lcom/shilapi/xcertplay/Glass$Glow;->radius:F

    return v0
.end method

.method public final getX()F
    .locals 1

    .line 58
    iget v0, p0, Lcom/shilapi/xcertplay/Glass$Glow;->x:F

    return v0
.end method

.method public final getY()F
    .locals 1

    .line 58
    iget v0, p0, Lcom/shilapi/xcertplay/Glass$Glow;->y:F

    return v0
.end method
