.class public final Lcom/shilapi/xcertplay/media/CallAudioMode$Companion;
.super Ljava/lang/Object;
.source "CallAudioMode.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/media/CallAudioMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCallAudioMode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CallAudioMode.kt\ncom/shilapi/xcertplay/media/CallAudioMode$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,155:1\n12637#2,2:156\n*S KotlinDebug\n*F\n+ 1 CallAudioMode.kt\ncom/shilapi/xcertplay/media/CallAudioMode$Companion\n*L\n149#1:156,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J$\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\n2\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\r0\u000cJ\u0016\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u0011R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/media/CallAudioMode$Companion;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "PREFS",
        "forContext",
        "Lcom/shilapi/xcertplay/media/CallAudioMode;",
        "context",
        "Landroid/content/Context;",
        "report",
        "Lkotlin/Function1;",
        "",
        "hasEarpiece",
        "",
        "audio",
        "Landroid/media/AudioManager;",
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
.method public static synthetic $r8$lambda$PnWSAJL8cy6m9u9xEOcg9JcMpGI(Lkotlin/jvm/functions/Function1;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/media/CallAudioMode$Companion;->forContext$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/media/CallAudioMode$Companion;-><init>()V

    return-void
.end method

.method private static final forContext$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "line"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    const-string/jumbo v0, "xcertplay-usb"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final forContext(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/media/CallAudioMode;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/shilapi/xcertplay/media/CallAudioMode;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "report"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 117
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/media/AudioManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroid/media/AudioManager;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    return-object v2

    .line 118
    :cond_1
    const-string v1, "free_auto_call_audio"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 119
    new-instance v2, Lcom/shilapi/xcertplay/media/CallAudioMode$Companion$forContext$controls$1;

    invoke-direct {v2, v0, p1}, Lcom/shilapi/xcertplay/media/CallAudioMode$Companion$forContext$controls$1;-><init>(Landroid/media/AudioManager;Landroid/content/Context;)V

    .line 128
    new-instance p1, Lcom/shilapi/xcertplay/media/CallAudioMode$Companion$forContext$saved$1;

    invoke-direct {p1, v1}, Lcom/shilapi/xcertplay/media/CallAudioMode$Companion$forContext$saved$1;-><init>(Landroid/content/SharedPreferences;)V

    .line 139
    new-instance v0, Lcom/shilapi/xcertplay/media/CallAudioMode;

    check-cast v2, Lcom/shilapi/xcertplay/media/CallAudioMode$Controls;

    check-cast p1, Lcom/shilapi/xcertplay/media/CallAudioMode$SavedState;

    new-instance v1, Lcom/shilapi/xcertplay/media/CallAudioMode$Companion$$ExternalSyntheticLambda2;

    invoke-direct {v1, p2}, Lcom/shilapi/xcertplay/media/CallAudioMode$Companion$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-direct {v0, v2, p1, v1}, Lcom/shilapi/xcertplay/media/CallAudioMode;-><init>(Lcom/shilapi/xcertplay/media/CallAudioMode$Controls;Lcom/shilapi/xcertplay/media/CallAudioMode$SavedState;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method public final hasEarpiece(Landroid/content/Context;Landroid/media/AudioManager;)Z
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audio"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    const/4 p1, 0x2

    .line 148
    invoke-static {p2, p1}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/media/AudioManager;I)[Landroid/media/AudioDeviceInfo;

    move-result-object p1

    const-string p2, "getDevices(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [Ljava/lang/Object;

    .line 156
    array-length p2, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    aget-object v2, p1, v1

    invoke-static {v2}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Ljava/lang/Object;)Landroid/media/AudioDeviceInfo;

    move-result-object v2

    .line 149
    invoke-static {v2}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/media/AudioDeviceInfo;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0

    .line 151
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string p2, "android.hardware.telephony"

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
