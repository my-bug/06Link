.class final Lcom/shilapi/xcertplay/media/VideoDecoder$Companion;
.super Ljava/lang/Object;
.source "AndroidMediaSink.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/media/VideoDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0003\u0008\u0082\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/media/VideoDecoder$Companion;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "INPUT_TIMEOUT_US",
        "",
        "MAX_FRAME_AGE_NS",
        "START_CODE",
        "",
        "getSTART_CODE",
        "()[B",
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

    .line 952
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/media/VideoDecoder$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSTART_CODE()[B
    .locals 1

    .line 956
    # getter for: Lcom/shilapi/xcertplay/media/VideoDecoder;->START_CODE:[B
    invoke-static {}, Lcom/shilapi/xcertplay/media/VideoDecoder;->access$getSTART_CODE$cp()[B

    move-result-object v0

    return-object v0
.end method
