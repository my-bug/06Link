.class public final Lcom/shilapi/xcertplay/media/VideoDecoderAttempts;
.super Ljava/lang/Object;
.source "AndroidMediaSink.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/media/VideoDecoderAttempts$Attempt;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidMediaSink.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidMediaSink.kt\ncom/shilapi/xcertplay/media/VideoDecoderAttempts\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1750:1\n1#2:1751\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u00c0\u0002\u0018\u00002\u00020\u0001:\u0001\u000cB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bR\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/media/VideoDecoderAttempts;",
        "",
        "<init>",
        "()V",
        "TUNED_MAX_INPUT_BYTES",
        "",
        "FALLBACK_MAX_INPUT_BYTES",
        "list",
        "",
        "Lcom/shilapi/xcertplay/media/VideoDecoderAttempts$Attempt;",
        "softwareDecoderName",
        "",
        "Attempt",
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
.field public static final FALLBACK_MAX_INPUT_BYTES:I = 0x200000

.field public static final INSTANCE:Lcom/shilapi/xcertplay/media/VideoDecoderAttempts;

.field public static final TUNED_MAX_INPUT_BYTES:I = 0x800000


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/media/VideoDecoderAttempts;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/media/VideoDecoderAttempts;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/media/VideoDecoderAttempts;->INSTANCE:Lcom/shilapi/xcertplay/media/VideoDecoderAttempts;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final list(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/media/VideoDecoderAttempts$Attempt;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    .line 253
    new-array v0, v0, [Lcom/shilapi/xcertplay/media/VideoDecoderAttempts$Attempt;

    new-instance v1, Lcom/shilapi/xcertplay/media/VideoDecoderAttempts$Attempt;

    const/high16 v2, 0x800000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v3, v2, v4}, Lcom/shilapi/xcertplay/media/VideoDecoderAttempts$Attempt;-><init>(Ljava/lang/String;Ljava/lang/Integer;Z)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 254
    new-instance v1, Lcom/shilapi/xcertplay/media/VideoDecoderAttempts$Attempt;

    const/high16 v5, 0x200000

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v3, v5, v2}, Lcom/shilapi/xcertplay/media/VideoDecoderAttempts$Attempt;-><init>(Ljava/lang/String;Ljava/lang/Integer;Z)V

    aput-object v1, v0, v4

    .line 255
    new-instance v1, Lcom/shilapi/xcertplay/media/VideoDecoderAttempts$Attempt;

    invoke-direct {v1, v3, v3, v2}, Lcom/shilapi/xcertplay/media/VideoDecoderAttempts$Attempt;-><init>(Ljava/lang/String;Ljava/lang/Integer;Z)V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 252
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz p1, :cond_0

    .line 256
    new-instance v1, Lcom/shilapi/xcertplay/media/VideoDecoderAttempts$Attempt;

    invoke-direct {v1, p1, v5, v2}, Lcom/shilapi/xcertplay/media/VideoDecoderAttempts$Attempt;-><init>(Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    :cond_0
    if-nez v3, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    :cond_1
    check-cast v3, Ljava/lang/Iterable;

    .line 252
    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
