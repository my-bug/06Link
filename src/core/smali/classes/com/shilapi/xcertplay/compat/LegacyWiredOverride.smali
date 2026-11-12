.class public final Lcom/shilapi/xcertplay/compat/LegacyWiredOverride;
.super Ljava/lang/Object;
.source "LegacyWiredOverride.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000b\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0006\u001a\u00020\u00078FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u000c\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\tR\u0011\u0010\u000e\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\tR\u0011\u0010\u0010\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\t\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/compat/LegacyWiredOverride;",
        "",
        "<init>",
        "()V",
        "PROPERTY",
        "",
        "forced",
        "",
        "getForced",
        "()Z",
        "forced$delegate",
        "Lkotlin/Lazy;",
        "legacyUsbConfig",
        "getLegacyUsbConfig",
        "legacyUsbRead",
        "getLegacyUsbRead",
        "legacyTlsAndTun",
        "getLegacyTlsAndTun",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/compat/LegacyWiredOverride;

.field private static final PROPERTY:Ljava/lang/String; = "debug.diplay.legacy_usb"

.field private static final forced$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$qe-1WWO6yQkGKezF9agkyt2B1l4()Z
    .locals 1

    invoke-static {}, Lcom/shilapi/xcertplay/compat/LegacyWiredOverride;->forced_delegate$lambda$1()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/compat/LegacyWiredOverride;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/compat/LegacyWiredOverride;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/compat/LegacyWiredOverride;->INSTANCE:Lcom/shilapi/xcertplay/compat/LegacyWiredOverride;

    .line 19
    new-instance v0, Lcom/shilapi/xcertplay/compat/LegacyWiredOverride$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/compat/LegacyWiredOverride$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/compat/LegacyWiredOverride;->forced$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final forced_delegate$lambda$1()Z
    .locals 4

    .line 20
    const-string v0, "debug.diplay.legacy_usb"

    invoke-static {v0}, Lcom/shilapi/xcertplay/compat/LegacyWiredOverrideKt;->readDebugProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "legacy wired paths forced on API "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "xcertplay-usb"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method


# virtual methods
.method public final getForced()Z
    .locals 1

    .line 19
    sget-object v0, Lcom/shilapi/xcertplay/compat/LegacyWiredOverride;->forced$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getLegacyTlsAndTun()Z
    .locals 2

    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/compat/LegacyWiredOverride;->getForced()Z

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

.method public final getLegacyUsbConfig()Z
    .locals 2

    .line 26
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/compat/LegacyWiredOverride;->getForced()Z

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

.method public final getLegacyUsbRead()Z
    .locals 2

    .line 29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/compat/LegacyWiredOverride;->getForced()Z

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
