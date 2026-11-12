.class public final Lcom/shilapi/xcertplay/hud/BydClusterFrame;
.super Ljava/lang/Object;
.source "BydClusterFrame.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/hud/BydClusterFrame$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0014\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0080\u0008\u0018\u0000  2\u00020\u0001:\u0001 B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0003H\u00c6\u0003JE\u0010\u001a\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\u0008\u0008\u0002\u0010\t\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001e\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001f\u001a\u00020\u0007H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\rR\u0011\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\r\u00a8\u0006!"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/hud/BydClusterFrame;",
        "",
        "icon",
        "",
        "roundaboutExit",
        "distanceMeters",
        "road",
        "",
        "routeRemainingMeters",
        "routeRemainingSeconds",
        "<init>",
        "(IIILjava/lang/String;II)V",
        "getIcon",
        "()I",
        "getRoundaboutExit",
        "getDistanceMeters",
        "getRoad",
        "()Ljava/lang/String;",
        "getRouteRemainingMeters",
        "getRouteRemainingSeconds",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "Companion",
        "shared_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/shilapi/xcertplay/hud/BydClusterFrame$Companion;

.field private static final DESTINATION:I = 0xf

.field private static final LEFT:I = 0x2

.field private static final RIGHT:I = 0x3

.field private static final ROUNDABOUT_ENTER:I = 0xb

.field private static final ROUNDABOUT_ENTER_CLOCKWISE:I = 0x11

.field private static final ROUNDABOUT_EXIT:I = 0xc

.field private static final ROUNDABOUT_EXIT_CLOCKWISE:I = 0x12

.field private static final SHARP_LEFT:I = 0x6

.field private static final SHARP_RIGHT:I = 0x7

.field private static final SLIGHT_LEFT:I = 0x4

.field private static final SLIGHT_RIGHT:I = 0x5

.field private static final STRAIGHT:I = 0x9

.field private static final U_TURN_LEFT:I = 0x8

.field private static final U_TURN_RIGHT:I = 0x13


# instance fields
.field private final distanceMeters:I

.field private final icon:I

.field private final road:Ljava/lang/String;

.field private final roundaboutExit:I

.field private final routeRemainingMeters:I

.field private final routeRemainingSeconds:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/hud/BydClusterFrame$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/hud/BydClusterFrame$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/hud/BydClusterFrame;->Companion:Lcom/shilapi/xcertplay/hud/BydClusterFrame$Companion;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;II)V
    .locals 1

    const-string v0, "road"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Lcom/shilapi/xcertplay/hud/BydClusterFrame;->icon:I

    .line 6
    iput p2, p0, Lcom/shilapi/xcertplay/hud/BydClusterFrame;->roundaboutExit:I

    .line 7
    iput p3, p0, Lcom/shilapi/xcertplay/hud/BydClusterFrame;->distanceMeters:I

    .line 8
    iput-object p4, p0, Lcom/shilapi/xcertplay/hud/BydClusterFrame;->road:Ljava/lang/String;

    .line 9
    iput p5, p0, Lcom/shilapi/xcertplay/hud/BydClusterFrame;->routeRemainingMeters:I

    .line 10
    iput p6, p0, Lcom/shilapi/xcertplay/hud/BydClusterFrame;->routeRemainingSeconds:I

    return-void
.end method

.method public synthetic constructor <init>(IIILjava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_0

    .line 8
    const-string p4, ""

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p7, 0x10

    const/4 p8, -0x1

    if-eqz p4, :cond_1

    const/4 v5, -0x1

    goto :goto_0

    :cond_1
    move v5, p5

    :goto_0
    and-int/lit8 p4, p7, 0x20

    if-eqz p4, :cond_2

    const/4 v6, -0x1

    goto :goto_1

    :cond_2
    move v6, p6

    :goto_1
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .line 4
    invoke-direct/range {v0 .. v6}, Lcom/shilapi/xcertplay/hud/BydClusterFrame;-><init>(IIILjava/lang/String;II)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/hud/BydClusterFrame;IIILjava/lang/String;IIILjava/lang/Object;)Lcom/shilapi/xcertplay/hud/BydClusterFrame;
    .locals 0

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget p1, p0, Lcom/shilapi/xcertplay/hud/BydClusterFrame;->icon:I

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget p2, p0, Lcom/shilapi/xcertplay/hud/BydClusterFrame;->roundaboutExit:I

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    iget p3, p0, Lcom/shilapi/xcertplay/hud/BydClusterFrame;->distanceMeters:I

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    iget-object p4, p0, Lcom/shilapi/xcertplay/hud/BydClusterFrame;->road:Ljava/lang/String;

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    iget p5, p0, Lcom/shilapi/xcertplay/hud/BydClusterFrame;->routeRemainingMeters:I

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    iget p6, p0, Lcom/shilapi/xcertplay/hud/BydClusterFrame;->routeRemainingSeconds:I

    :cond_5
    move p7, p5

    move p8, p6

    move p5, p3

    move-object p6, p4

    move p3, p1

    move p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p8}, Lcom/shilapi/xcertplay/hud/BydClusterFrame;->copy(IIILjava/lang/String;II)Lcom/shilapi/xcertplay/hud/BydClusterFrame;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/hud/BydClusterFrame;->icon:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/hud/BydClusterFrame;->roundaboutExit:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/hud/BydClusterFrame;->distanceMeters:I

    return v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/hud/BydClusterFrame;->road:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/hud/BydClusterFrame;->routeRemainingMeters:I

    return v0
.end method

.method public final component6()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/hud/BydClusterFrame;->routeRemainingSeconds:I

    return v0
.end method

.method public final copy(IIILjava/lang/String;II)Lcom/shilapi/xcertplay/hud/BydClusterFrame;
    .locals 8

    const-string v0, "road"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/shilapi/xcertplay/hud/BydClusterFrame;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/shilapi/xcertplay/hud/BydClusterFrame;-><init>(IIILjava/lang/String;II)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/hud/BydClusterFrame;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/hud/BydClusterFrame;

    iget v1, p0, Lcom/shilapi/xcertplay/hud/BydClusterFrame;->icon:I

    iget v3, p1, Lcom/shilapi/xcertplay/hud/BydClusterFrame;->icon:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/shilapi/xcertplay/hud/BydClusterFrame;->roundaboutExit:I

    iget v3, p1, Lcom/shilapi/xcertplay/hud/BydClusterFrame;->roundaboutExit:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/shilapi/xcertplay/hud/BydClusterFrame;->distanceMeters:I

    iget v3, p1, Lcom/shilapi/xcertplay/hud/BydClusterFrame;->distanceMeters:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/shilapi/xcertplay/hud/BydClusterFrame;->road:Ljava/lang/String;

    iget-object v3, p1, Lcom/shilapi/xcertplay/hud/BydClusterFrame;->road:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/shilapi/xcertplay/hud/BydClusterFrame;->routeRemainingMeters:I

    iget v3, p1, Lcom/shilapi/xcertplay/hud/BydClusterFrame;->routeRemainingMeters:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/shilapi/xcertplay/hud/BydClusterFrame;->routeRemainingSeconds:I

    iget p1, p1, Lcom/shilapi/xcertplay/hud/BydClusterFrame;->routeRemainingSeconds:I

    if-eq v1, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getDistanceMeters()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/shilapi/xcertplay/hud/BydClusterFrame;->distanceMeters:I

    return v0
.end method

.method public final getIcon()I
    .locals 1

    .line 5
    iget v0, p0, Lcom/shilapi/xcertplay/hud/BydClusterFrame;->icon:I

    return v0
.end method

.method public final getRoad()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/shilapi/xcertplay/hud/BydClusterFrame;->road:Ljava/lang/String;

    return-object v0
.end method

.method public final getRoundaboutExit()I
    .locals 1

    .line 6
    iget v0, p0, Lcom/shilapi/xcertplay/hud/BydClusterFrame;->roundaboutExit:I

    return v0
.end method

.method public final getRouteRemainingMeters()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/shilapi/xcertplay/hud/BydClusterFrame;->routeRemainingMeters:I

    return v0
.end method

.method public final getRouteRemainingSeconds()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/shilapi/xcertplay/hud/BydClusterFrame;->routeRemainingSeconds:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/shilapi/xcertplay/hud/BydClusterFrame;->icon:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/hud/BydClusterFrame;->roundaboutExit:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/hud/BydClusterFrame;->distanceMeters:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/hud/BydClusterFrame;->road:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/hud/BydClusterFrame;->routeRemainingMeters:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/hud/BydClusterFrame;->routeRemainingSeconds:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget v0, p0, Lcom/shilapi/xcertplay/hud/BydClusterFrame;->icon:I

    iget v1, p0, Lcom/shilapi/xcertplay/hud/BydClusterFrame;->roundaboutExit:I

    iget v2, p0, Lcom/shilapi/xcertplay/hud/BydClusterFrame;->distanceMeters:I

    iget-object v3, p0, Lcom/shilapi/xcertplay/hud/BydClusterFrame;->road:Ljava/lang/String;

    iget v4, p0, Lcom/shilapi/xcertplay/hud/BydClusterFrame;->routeRemainingMeters:I

    iget v5, p0, Lcom/shilapi/xcertplay/hud/BydClusterFrame;->routeRemainingSeconds:I

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "BydClusterFrame(icon="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", roundaboutExit="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", distanceMeters="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", road="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", routeRemainingMeters="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", routeRemainingSeconds="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
