.class public final Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForMfi;
.super Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;
.source "CarPlayController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WaitingForMfi"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u00c6\n\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0013\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u00d6\u0003J\t\u0010\u0008\u001a\u00020\tH\u00d6\u0001J\t\u0010\n\u001a\u00020\u000bH\u00d6\u0001\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForMfi;",
        "Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;",
        "<init>",
        "()V",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForMfi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForMfi;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForMfi;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForMfi;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForMfi;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 121
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForMfi;

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForMfi;

    return v0
.end method

.method public hashCode()I
    .locals 1

    const v0, -0x526e8ba4

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "WaitingForMfi"

    return-object v0
.end method
