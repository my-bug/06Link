.class public final Lcom/shilapi/xcertplay/media/SoftwareH264Decoder;
.super Ljava/lang/Object;
.source "SoftwareH264Decoder.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Companion;,
        Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Stats;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSoftwareH264Decoder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SoftwareH264Decoder.kt\ncom/shilapi/xcertplay/media/SoftwareH264Decoder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,91:1\n1#2:92\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00142\u00020\u0001:\u0002\u0013\u0014B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u000e\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0003J\u0006\u0010\u000f\u001a\u00020\u0010J\u0008\u0010\u0011\u001a\u00020\tH\u0016J\u0008\u0010\u0012\u001a\u00020\u0007H\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/media/SoftwareH264Decoder;",
        "Ljava/io/Closeable;",
        "parameterSets",
        "",
        "<init>",
        "([B)V",
        "handle",
        "",
        "setSurface",
        "",
        "surface",
        "Landroid/view/Surface;",
        "decode",
        "",
        "annexB",
        "stats",
        "Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Stats;",
        "close",
        "live",
        "Stats",
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
.field public static final Companion:Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Companion;

.field private static final TAG:Ljava/lang/String; = "xcertplay-usb"

.field private static final available$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final required$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private handle:J


# direct methods
.method public static synthetic $r8$lambda$ZA8SEP4jsJHGeJt_G5Fxi3IXMPg()Z
    .locals 1

    invoke-static {}, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder;->available_delegate$lambda$8()Z

    move-result v0

    return v0
.end method

.method public static synthetic $r8$lambda$c5gyHVXE7WGFZdqVRfo6Tqd6JAU()Z
    .locals 1

    invoke-static {}, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder;->required_delegate$lambda$7()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder;->Companion:Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Companion;

    .line 70
    new-instance v0, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder;->required$delegate:Lkotlin/Lazy;

    .line 74
    new-instance v0, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder;->available$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 4

    const-string v0, "parameterSets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder;

    .line 21
    sget-object v0, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder;->Companion:Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Companion;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Companion;->getAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 22
    # invokes: Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Companion;->nativeCreate([B)J
    invoke-static {v0, p1}, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Companion;->access$nativeCreate(Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Companion;[B)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    .line 20
    iput-wide v0, p0, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder;->handle:J

    return-void

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "FFmpeg h264 decoder init failed: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "liblegacy_h264.so could not be loaded"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic access$getAvailable$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 18
    sget-object v0, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder;->available$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic access$getRequired$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 18
    sget-object v0, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder;->required$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic access$nativeCreate([B)J
    .locals 2

    .line 18
    invoke-static {p0}, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder;->nativeCreate([B)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$nativeDecode(J[BI)I
    .locals 0

    .line 18
    invoke-static {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder;->nativeDecode(J[BI)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$nativeDestroy(J)V
    .locals 0

    .line 18
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder;->nativeDestroy(J)V

    return-void
.end method

.method public static final synthetic access$nativeSetSurface(JLandroid/view/Surface;)V
    .locals 0

    .line 18
    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder;->nativeSetSurface(JLandroid/view/Surface;)V

    return-void
.end method

.method public static final synthetic access$nativeStats(J[I)V
    .locals 0

    .line 18
    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder;->nativeStats(J[I)V

    return-void
.end method

.method private static final available_delegate$lambda$8()Z
    .locals 3

    .line 76
    :try_start_0
    const-string v0, "legacy_h264"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 79
    const-string/jumbo v1, "software H.264 decoder library unavailable"

    check-cast v0, Ljava/lang/Throwable;

    const-string/jumbo v2, "xcertplay-usb"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method private final live()J
    .locals 5

    .line 40
    iget-wide v0, p0, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder;->handle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "decoder closed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final native nativeCreate([B)J
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native nativeDecode(J[BI)I
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native nativeDestroy(J)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native nativeSetSurface(JLandroid/view/Surface;)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native nativeStats(J[I)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final required_delegate$lambda$7()Z
    .locals 2

    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    const-string v0, "debug.diplay.soft_h264"

    invoke-static {v0}, Lcom/shilapi/xcertplay/compat/LegacyWiredOverrideKt;->readDebugProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public close()V
    .locals 5

    .line 36
    iget-wide v0, p0, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder;->handle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    sget-object v4, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder;->Companion:Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Companion;

    # invokes: Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Companion;->nativeDestroy(J)V
    invoke-static {v4, v0, v1}, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Companion;->access$nativeDestroy(Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Companion;J)V

    .line 37
    :cond_0
    iput-wide v2, p0, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder;->handle:J

    return-void
.end method

.method public final decode([B)I
    .locals 4

    const-string v0, "annexB"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget-object v0, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder;->Companion:Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Companion;

    invoke-direct {p0}, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder;->live()J

    move-result-wide v1

    array-length v3, p1

    # invokes: Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Companion;->nativeDecode(J[BI)I
    invoke-static {v0, v1, v2, p1, v3}, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Companion;->access$nativeDecode(Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Companion;J[BI)I

    move-result p1

    return p1
.end method

.method public final setSurface(Landroid/view/Surface;)V
    .locals 3

    .line 26
    sget-object v0, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder;->Companion:Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Companion;

    invoke-direct {p0}, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder;->live()J

    move-result-wide v1

    # invokes: Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Companion;->nativeSetSurface(JLandroid/view/Surface;)V
    invoke-static {v0, v1, v2, p1}, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Companion;->access$nativeSetSurface(Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Companion;JLandroid/view/Surface;)V

    return-void
.end method

.method public final stats()Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Stats;
    .locals 4

    const/16 v0, 0xc

    .line 33
    new-array v0, v0, [I

    sget-object v1, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder;->Companion:Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Companion;

    invoke-direct {p0}, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder;->live()J

    move-result-wide v2

    # invokes: Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Companion;->nativeStats(J[I)V
    invoke-static {v1, v2, v3, v0}, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Companion;->access$nativeStats(Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Companion;J[I)V

    new-instance v1, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Stats;

    invoke-direct {v1, v0}, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Stats;-><init>([I)V

    return-object v1
.end method
