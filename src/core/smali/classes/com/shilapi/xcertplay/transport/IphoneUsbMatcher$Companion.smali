.class public final Lcom/shilapi/xcertplay/transport/IphoneUsbMatcher$Companion;
.super Ljava/lang/Object;
.source "IphoneUsbHost.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/transport/IphoneUsbMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0006\u001a\u00020\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/IphoneUsbMatcher$Companion;",
        "",
        "<init>",
        "()V",
        "APPLE_VENDOR_ID",
        "",
        "appleVendor",
        "Lcom/shilapi/xcertplay/transport/IphoneUsbMatcher;",
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

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/IphoneUsbMatcher$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final appleVendor()Lcom/shilapi/xcertplay/transport/IphoneUsbMatcher;
    .locals 3

    .line 53
    new-instance v0, Lcom/shilapi/xcertplay/transport/IphoneUsbMatcher;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/shilapi/xcertplay/transport/IphoneUsbMatcher;-><init>(Ljava/util/Set;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
