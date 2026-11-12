.class public final Lcom/shilapi/xcertplay/media/CarPlayTouchMapper;
.super Ljava/lang/Object;
.source "CarPlayTouchMapper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J$\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u0005R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/media/CarPlayTouchMapper;",
        "",
        "<init>",
        "()V",
        "MAX_CONTACTS",
        "",
        "contacts",
        "",
        "Lcom/shilapi/xcertplay/airplay/AirPlayContact;",
        "event",
        "Landroid/view/MotionEvent;",
        "viewWidth",
        "viewHeight",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/media/CarPlayTouchMapper;

.field private static final MAX_CONTACTS:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/media/CarPlayTouchMapper;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/media/CarPlayTouchMapper;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/media/CarPlayTouchMapper;->INSTANCE:Lcom/shilapi/xcertplay/media/CarPlayTouchMapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final contacts(Landroid/view/MotionEvent;II)Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            "II)",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/airplay/AirPlayContact;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "event"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    move/from16 v2, p2

    .line 19
    invoke-static {v2, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v2

    move/from16 v3, p3

    .line 20
    invoke-static {v3, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v3

    .line 21
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_0

    .line 22
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    goto :goto_0

    :cond_0
    const/4 v5, -0x1

    :goto_0
    const/4 v6, 0x0

    if-eq v4, v1, :cond_2

    const/4 v7, 0x3

    if-ne v4, v7, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v4, 0x1

    :goto_2
    const/16 v7, 0xa

    .line 24
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 25
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v7, :cond_4

    .line 28
    new-instance v10, Lcom/shilapi/xcertplay/airplay/AirPlayContact;

    .line 29
    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    .line 30
    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    float-to-double v12, v12

    int-to-double v14, v2

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    div-double v16, v12, v14

    const-wide/16 v18, 0x0

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v16 .. v21}, Lkotlin/ranges/RangesKt;->coerceIn(DDD)D

    move-result-wide v12

    .line 31
    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    float-to-double v14, v14

    move/from16 p2, v2

    int-to-double v1, v3

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double v18, v14, v1

    const-wide/16 v20, 0x0

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v18 .. v23}, Lkotlin/ranges/RangesKt;->coerceIn(DDD)D

    move-result-wide v14

    if-nez v4, :cond_3

    if-eq v9, v5, :cond_3

    const/16 v16, 0x1

    goto :goto_4

    :cond_3
    const/16 v16, 0x0

    .line 28
    :goto_4
    invoke-direct/range {v10 .. v16}, Lcom/shilapi/xcertplay/airplay/AirPlayContact;-><init>(IDDZ)V

    .line 27
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    move/from16 v2, p2

    const/4 v1, 0x1

    goto :goto_3

    .line 36
    :cond_4
    check-cast v8, Ljava/util/List;

    return-object v8
.end method
