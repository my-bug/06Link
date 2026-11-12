.class public abstract Lcom/shilapi/xcertplay/AutoReturnToCarPlay$State;
.super Ljava/lang/Object;
.source "AutoReturnToCarPlay.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/AutoReturnToCarPlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/AutoReturnToCarPlay$State$Counting;,
        Lcom/shilapi/xcertplay/AutoReturnToCarPlay$State$Off;,
        Lcom/shilapi/xcertplay/AutoReturnToCarPlay$State$Paused;,
        Lcom/shilapi/xcertplay/AutoReturnToCarPlay$State$ReturnNow;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0004\u0004\u0005\u0006\u0007B\t\u0008\u0004\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u0082\u0001\u0004\u0008\t\n\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/AutoReturnToCarPlay$State;",
        "",
        "<init>",
        "()V",
        "Off",
        "Paused",
        "Counting",
        "ReturnNow",
        "Lcom/shilapi/xcertplay/AutoReturnToCarPlay$State$Counting;",
        "Lcom/shilapi/xcertplay/AutoReturnToCarPlay$State$Off;",
        "Lcom/shilapi/xcertplay/AutoReturnToCarPlay$State$Paused;",
        "Lcom/shilapi/xcertplay/AutoReturnToCarPlay$State$ReturnNow;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/AutoReturnToCarPlay$State;-><init>()V

    return-void
.end method
