.class public final Lcom/shilapi/xcertplay/hud/BydFactoryTurnCode;
.super Ljava/lang/Object;
.source "BydFactoryTurnCode.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001d\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\nR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/hud/BydFactoryTurnCode;",
        "",
        "<init>",
        "()V",
        "codes",
        "",
        "map",
        "",
        "icon",
        "exit",
        "(II)Ljava/lang/Integer;",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/hud/BydFactoryTurnCode;

.field private static final codes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/hud/BydFactoryTurnCode;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/hud/BydFactoryTurnCode;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/hud/BydFactoryTurnCode;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydFactoryTurnCode;

    const/16 v0, 0x1d

    .line 5
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/shilapi/xcertplay/hud/BydFactoryTurnCode;->codes:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x1
        0x2
        0x3
        0x5
        0x7
        0x8
        0x9
        0xb
        0x2d
        0xd
        0x18
        0x2e
        0x2f
        0x30
        0x31
        0xe
        0x17
        0xa
        0xc
        0xf
        0x12
        0x14
        0x16
        0x10
        0x11
        0x13
        0x15
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final map(II)Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x2

    if-gt v0, p1, :cond_3

    const/16 v0, 0x1d

    if-ge p1, v0, :cond_3

    const/4 v0, 0x1

    if-gt v0, p2, :cond_2

    const/16 v0, 0xb

    if-ge p2, v0, :cond_2

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1

    const/16 v0, 0x11

    if-eq p1, v0, :cond_0

    const/16 v0, 0x12

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p2, 0x22

    .line 10
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1
    add-int/lit8 p2, p2, 0x18

    .line 9
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 12
    :cond_2
    :goto_0
    sget-object p2, Lcom/shilapi/xcertplay/hud/BydFactoryTurnCode;->codes:[I

    aget p1, p2, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method
