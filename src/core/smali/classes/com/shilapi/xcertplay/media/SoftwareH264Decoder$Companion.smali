.class public final Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Companion;
.super Ljava/lang/Object;
.source "SoftwareH264Decoder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/media/SoftwareH264Decoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0015\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0011\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0083 J\u001b\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00102\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0083 J!\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u0019H\u0083 J\u0019\u0010\u001c\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u001d\u001a\u00020\u001eH\u0083 J\u0011\u0010\u001f\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0010H\u0083 R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0006\u001a\u00020\u00078FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\tR\u001b\u0010\u000c\u001a\u00020\u00078FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000b\u001a\u0004\u0008\r\u0010\t\u00a8\u0006 "
    }
    d2 = {
        "Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Companion;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "required",
        "",
        "getRequired",
        "()Z",
        "required$delegate",
        "Lkotlin/Lazy;",
        "available",
        "getAvailable",
        "available$delegate",
        "nativeCreate",
        "",
        "parameterSets",
        "",
        "nativeSetSurface",
        "",
        "handle",
        "surface",
        "Landroid/view/Surface;",
        "nativeDecode",
        "",
        "data",
        "length",
        "nativeStats",
        "out",
        "",
        "nativeDestroy",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$nativeCreate(Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Companion;[B)J
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Companion;->nativeCreate([B)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$nativeDecode(Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Companion;J[BI)I
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Companion;->nativeDecode(J[BI)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$nativeDestroy(Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Companion;J)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Companion;->nativeDestroy(J)V

    return-void
.end method

.method public static final synthetic access$nativeSetSurface(Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Companion;JLandroid/view/Surface;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Companion;->nativeSetSurface(JLandroid/view/Surface;)V

    return-void
.end method

.method public static final synthetic access$nativeStats(Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Companion;J[I)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Companion;->nativeStats(J[I)V

    return-void
.end method

.method private final nativeCreate([B)J
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    # invokes: Lcom/shilapi/xcertplay/media/SoftwareH264Decoder;->nativeCreate([B)J
    invoke-static {p1}, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder;->access$nativeCreate([B)J

    move-result-wide v0

    return-wide v0
.end method

.method private final nativeDecode(J[BI)I
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    # invokes: Lcom/shilapi/xcertplay/media/SoftwareH264Decoder;->nativeDecode(J[BI)I
    invoke-static {p1, p2, p3, p4}, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder;->access$nativeDecode(J[BI)I

    move-result p1

    return p1
.end method

.method private final nativeDestroy(J)V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    # invokes: Lcom/shilapi/xcertplay/media/SoftwareH264Decoder;->nativeDestroy(J)V
    invoke-static {p1, p2}, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder;->access$nativeDestroy(J)V

    return-void
.end method

.method private final nativeSetSurface(JLandroid/view/Surface;)V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    # invokes: Lcom/shilapi/xcertplay/media/SoftwareH264Decoder;->nativeSetSurface(JLandroid/view/Surface;)V
    invoke-static {p1, p2, p3}, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder;->access$nativeSetSurface(JLandroid/view/Surface;)V

    return-void
.end method

.method private final nativeStats(J[I)V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    # invokes: Lcom/shilapi/xcertplay/media/SoftwareH264Decoder;->nativeStats(J[I)V
    invoke-static {p1, p2, p3}, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder;->access$nativeStats(J[I)V

    return-void
.end method


# virtual methods
.method public final getAvailable()Z
    .locals 1

    .line 74
    # getter for: Lcom/shilapi/xcertplay/media/SoftwareH264Decoder;->available$delegate:Lkotlin/Lazy;
    invoke-static {}, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder;->access$getAvailable$delegate$cp()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getRequired()Z
    .locals 1

    .line 70
    # getter for: Lcom/shilapi/xcertplay/media/SoftwareH264Decoder;->required$delegate:Lkotlin/Lazy;
    invoke-static {}, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder;->access$getRequired$delegate$cp()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
