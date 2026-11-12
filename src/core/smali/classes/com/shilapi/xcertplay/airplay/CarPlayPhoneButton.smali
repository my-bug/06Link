.class public final Lcom/shilapi/xcertplay/airplay/CarPlayPhoneButton;
.super Ljava/lang/Object;
.source "CarPlayPhoneButton.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nR\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/airplay/CarPlayPhoneButton;",
        "",
        "<init>",
        "()V",
        "ANSWER",
        "",
        "HANG_UP",
        "MUTE",
        "forCallKey",
        "callRunning",
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
.field public static final ANSWER:I = 0x1

.field public static final HANG_UP:I = 0x3

.field public static final INSTANCE:Lcom/shilapi/xcertplay/airplay/CarPlayPhoneButton;

.field public static final MUTE:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/airplay/CarPlayPhoneButton;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/airplay/CarPlayPhoneButton;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/airplay/CarPlayPhoneButton;->INSTANCE:Lcom/shilapi/xcertplay/airplay/CarPlayPhoneButton;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final forCallKey(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
