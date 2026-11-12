.class public final Lcom/shilapi/xcertplay/mfi/MfiDeviceScanner$Companion;
.super Ljava/lang/Object;
.source "MfiDeviceScanner.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/mfi/MfiDeviceScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\t\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\t\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000fX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000fX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u000fX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u000fX\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/mfi/MfiDeviceScanner$Companion;",
        "",
        "<init>",
        "()V",
        "DEFAULT_CANDIDATE_ADDRESSES",
        "",
        "",
        "getDEFAULT_CANDIDATE_ADDRESSES",
        "()Ljava/util/List;",
        "MIN_ADDRESS_7_BIT",
        "MAX_ADDRESS_7_BIT",
        "DEVICE_VERSION_REGISTER",
        "READ_BIT",
        "BYTE_MASK",
        "DEFAULT_PROBE_TIMEOUT_MILLIS",
        "",
        "RETRY_DELAY_MICROS",
        "MICROS_PER_MILLISECOND",
        "NANOS_PER_MICROSECOND",
        "NANOS_PER_MILLISECOND",
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

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/mfi/MfiDeviceScanner$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDEFAULT_CANDIDATE_ADDRESSES()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 107
    # getter for: Lcom/shilapi/xcertplay/mfi/MfiDeviceScanner;->DEFAULT_CANDIDATE_ADDRESSES:Ljava/util/List;
    invoke-static {}, Lcom/shilapi/xcertplay/mfi/MfiDeviceScanner;->access$getDEFAULT_CANDIDATE_ADDRESSES$cp()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
