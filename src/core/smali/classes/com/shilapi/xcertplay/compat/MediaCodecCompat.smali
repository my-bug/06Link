.class public final Lcom/shilapi/xcertplay/compat/MediaCodecCompat;
.super Ljava/lang/Object;
.source "MediaCodecCompat.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaCodecCompat.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaCodecCompat.kt\ncom/shilapi/xcertplay/compat/MediaCodecCompat\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,48:1\n1#2:49\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u0007J\u0018\u0010\u000c\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/compat/MediaCodecCompat;",
        "",
        "<init>",
        "()V",
        "inputBuffer",
        "Ljava/nio/ByteBuffer;",
        "codec",
        "Landroid/media/MediaCodec;",
        "index",
        "",
        "name",
        "",
        "outputBuffer",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/compat/MediaCodecCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/compat/MediaCodecCompat;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/compat/MediaCodecCompat;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/compat/MediaCodecCompat;->INSTANCE:Lcom/shilapi/xcertplay/compat/MediaCodecCompat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final inputBuffer(Landroid/media/MediaCodec;I)Ljava/nio/ByteBuffer;
    .locals 2

    const-string v0, "codec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-static {p1, p2}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/media/MediaCodec;I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    .line 16
    :cond_0
    invoke-static {p1}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/media/MediaCodec;)[Ljava/nio/ByteBuffer;

    move-result-object p1

    const-string v0, "getInputBuffers(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lkotlin/collections/ArraysKt;->getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final name(Landroid/media/MediaCodec;)Ljava/lang/String;
    .locals 2

    const-string v0, "codec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    invoke-static {p1}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/media/MediaCodec;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getName(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediaCodec(api"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final outputBuffer(Landroid/media/MediaCodec;I)Ljava/nio/ByteBuffer;
    .locals 2

    const-string v0, "codec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-static {p1, p2}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodec;I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    .line 25
    :cond_0
    invoke-static {p1}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodec;)[Ljava/nio/ByteBuffer;

    move-result-object p1

    const-string v0, "getOutputBuffers(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lkotlin/collections/ArraysKt;->getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
