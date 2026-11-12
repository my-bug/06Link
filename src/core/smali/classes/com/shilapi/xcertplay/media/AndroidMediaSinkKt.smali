.class public final Lcom/shilapi/xcertplay/media/AndroidMediaSinkKt;
.super Ljava/lang/Object;
.source "AndroidMediaSink.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u001b\u0010\u0004\u001a\u0004\u0018\u00010\u0003*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0001H\u0002\u00a2\u0006\u0002\u0010\u0007\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0003X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "TELEPHONY_AUDIO_TYPE",
        "",
        "MAIN_SCREEN_TYPE",
        "",
        "intOrNull",
        "Landroid/media/MediaFormat;",
        "key",
        "(Landroid/media/MediaFormat;Ljava/lang/String;)Ljava/lang/Integer;",
        "shared_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final MAIN_SCREEN_TYPE:I = 0x6e

.field private static final TELEPHONY_AUDIO_TYPE:Ljava/lang/String; = "telephony"


# direct methods
.method public static final synthetic access$intOrNull(Landroid/media/MediaFormat;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/media/AndroidMediaSinkKt;->intOrNull(Landroid/media/MediaFormat;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static final intOrNull(Landroid/media/MediaFormat;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    .line 961
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaFormat;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 965
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaFormat;Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v1
.end method
