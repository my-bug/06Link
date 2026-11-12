.class final Lcom/shilapi/xcertplay/usbbt/RfcommDlc$Companion;
.super Ljava/lang/Object;
.source "Rfcomm.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/usbbt/RfcommDlc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0003\u0008\u0082\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/usbbt/RfcommDlc$Companion;",
        "",
        "<init>",
        "()V",
        "WAIT_SLICE_MILLIS",
        "",
        "EMPTY",
        "",
        "getEMPTY",
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

    .line 603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/usbbt/RfcommDlc$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEMPTY()[B
    .locals 1

    .line 605
    # getter for: Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->EMPTY:[B
    invoke-static {}, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->access$getEMPTY$cp()[B

    move-result-object v0

    return-object v0
.end method
