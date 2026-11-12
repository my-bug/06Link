.class public final Lcom/shilapi/xcertplay/usbbt/UsbBtDrivenByKernelException;
.super Ljava/io/IOException;
.source "UsbBtClaimPolicy.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0008\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/usbbt/UsbBtDrivenByKernelException;",
        "Ljava/io/IOException;",
        "evidence",
        "Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Evidence;",
        "<init>",
        "(Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Evidence;)V",
        "getEvidence",
        "()Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Evidence;",
        "claim",
        "Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Claim;",
        "getClaim",
        "()Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Claim;",
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


# instance fields
.field private final evidence:Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Evidence;


# direct methods
.method public constructor <init>(Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Evidence;)V
    .locals 2

    const-string v0, "evidence"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy;->message(Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Evidence;Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 74
    iput-object p1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtDrivenByKernelException;->evidence:Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Evidence;

    return-void
.end method


# virtual methods
.method public final getClaim()Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Claim;
    .locals 2

    .line 76
    new-instance v0, Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Claim$DrivenByKernel;

    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtDrivenByKernelException;->evidence:Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Evidence;

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Claim$DrivenByKernel;-><init>(Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Evidence;)V

    check-cast v0, Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Claim;

    return-object v0
.end method

.method public final getEvidence()Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Evidence;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtDrivenByKernelException;->evidence:Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Evidence;

    return-object v0
.end method
