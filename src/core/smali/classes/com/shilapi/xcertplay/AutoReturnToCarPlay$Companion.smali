.class public final Lcom/shilapi/xcertplay/AutoReturnToCarPlay$Companion;
.super Ljava/lang/Object;
.source "AutoReturnToCarPlay.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/AutoReturnToCarPlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J \u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fR\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/AutoReturnToCarPlay$Companion;",
        "",
        "<init>",
        "()V",
        "TIMEOUT_MILLIS",
        "",
        "shared",
        "Lcom/shilapi/xcertplay/AutoReturnToCarPlay;",
        "getShared",
        "()Lcom/shilapi/xcertplay/AutoReturnToCarPlay;",
        "pauseFor",
        "Lcom/shilapi/xcertplay/AutoReturnToCarPlay$Pause;",
        "page",
        "",
        "typing",
        "",
        "dialogOpen",
        "common_release"
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

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/AutoReturnToCarPlay$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getShared()Lcom/shilapi/xcertplay/AutoReturnToCarPlay;
    .locals 1

    .line 59
    # getter for: Lcom/shilapi/xcertplay/AutoReturnToCarPlay;->shared:Lcom/shilapi/xcertplay/AutoReturnToCarPlay;
    invoke-static {}, Lcom/shilapi/xcertplay/AutoReturnToCarPlay;->access$getShared$cp()Lcom/shilapi/xcertplay/AutoReturnToCarPlay;

    move-result-object v0

    return-object v0
.end method

.method public final pauseFor(Ljava/lang/String;ZZ)Lcom/shilapi/xcertplay/AutoReturnToCarPlay$Pause;
    .locals 1

    const-string v0, "page"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 63
    sget-object p1, Lcom/shilapi/xcertplay/AutoReturnToCarPlay$Pause;->TYPING:Lcom/shilapi/xcertplay/AutoReturnToCarPlay$Pause;

    return-object p1

    :cond_0
    if-eqz p3, :cond_1

    .line 64
    sget-object p1, Lcom/shilapi/xcertplay/AutoReturnToCarPlay$Pause;->DIALOG:Lcom/shilapi/xcertplay/AutoReturnToCarPlay$Pause;

    return-object p1

    .line 65
    :cond_1
    const-string/jumbo p2, "steps-wl"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string/jumbo p2, "steps-wd"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1

    :cond_3
    :goto_0
    sget-object p1, Lcom/shilapi/xcertplay/AutoReturnToCarPlay$Pause;->READING:Lcom/shilapi/xcertplay/AutoReturnToCarPlay$Pause;

    return-object p1
.end method
