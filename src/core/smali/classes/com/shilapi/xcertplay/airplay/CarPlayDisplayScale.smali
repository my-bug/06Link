.class public final Lcom/shilapi/xcertplay/airplay/CarPlayDisplayScale;
.super Ljava/lang/Object;
.source "CarPlayDisplayScale.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCarPlayDisplayScale.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CarPlayDisplayScale.kt\ncom/shilapi/xcertplay/airplay/CarPlayDisplayScale\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,32:1\n1#2:33\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u0005J\u0016\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\u0005J\u0018\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0005H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/airplay/CarPlayDisplayScale;",
        "",
        "<init>",
        "()V",
        "MIN_TENTHS",
        "",
        "MAX_TENTHS",
        "DEFAULT_TENTHS",
        "sanitize",
        "tenths",
        "label",
        "",
        "apply",
        "Lcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;",
        "display",
        "scalePixels",
        "pixels",
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
.field public static final DEFAULT_TENTHS:I = 0xa

.field public static final INSTANCE:Lcom/shilapi/xcertplay/airplay/CarPlayDisplayScale;

.field public static final MAX_TENTHS:I = 0xa

.field public static final MIN_TENTHS:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/airplay/CarPlayDisplayScale;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/airplay/CarPlayDisplayScale;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/airplay/CarPlayDisplayScale;->INSTANCE:Lcom/shilapi/xcertplay/airplay/CarPlayDisplayScale;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final scalePixels(II)I
    .locals 2

    if-lez p1, :cond_1

    int-to-long v0, p1

    int-to-long p1, p2

    mul-long v0, v0, p1

    const-wide/16 p1, 0x5

    add-long/2addr v0, p1

    const-wide/16 p1, 0xa

    .line 28
    div-long/2addr v0, p1

    long-to-int p1, v0

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p1

    .line 29
    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    return p1

    :cond_0
    add-int/2addr p1, p2

    return p1

    .line 27
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "pixels must be positive"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final apply(Lcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;I)Lcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "display"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v1, p2

    .line 19
    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/airplay/CarPlayDisplayScale;->sanitize(I)I

    move-result v1

    .line 21
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;->getWidthPixels()I

    move-result v3

    invoke-direct {v0, v3, v1}, Lcom/shilapi/xcertplay/airplay/CarPlayDisplayScale;->scalePixels(II)I

    move-result v3

    .line 22
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;->getHeightPixels()I

    move-result v4

    invoke-direct {v0, v4, v1}, Lcom/shilapi/xcertplay/airplay/CarPlayDisplayScale;->scalePixels(II)I

    move-result v4

    const/16 v14, 0x7fc

    const/4 v15, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 20
    invoke-static/range {v2 .. v15}, Lcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;->copy$default(Lcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;IILjava/lang/Integer;Ljava/lang/Integer;IILcom/shilapi/xcertplay/airplay/AirPlayInsets;Lcom/shilapi/xcertplay/airplay/AirPlayInsets;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;

    move-result-object v1

    return-object v1
.end method

.method public final label(I)Ljava/lang/String;
    .locals 2

    .line 14
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/airplay/CarPlayDisplayScale;->sanitize(I)I

    move-result p1

    .line 15
    div-int/lit8 v0, p1, 0xa

    rem-int/lit8 p1, p1, 0xa

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "x"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final sanitize(I)I
    .locals 2

    const/4 v0, 0x3

    const/16 v1, 0xa

    .line 11
    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p1

    return p1
.end method
