.class public final Lcom/shilapi/xcertplay/transport/NativeUsbfsReadOps;
.super Ljava/lang/Object;
.source "LegacyUsbfs.kt"

# interfaces
.implements Lcom/shilapi/xcertplay/transport/UsbfsReadOps;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J \u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0016J \u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0007H\u0016J\u0018\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0005H\u0016J\u0010\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\u0005H\u0016\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/NativeUsbfsReadOps;",
        "Lcom/shilapi/xcertplay/transport/UsbfsReadOps;",
        "<init>",
        "()V",
        "submitRead",
        "",
        "fd",
        "",
        "endpoint",
        "length",
        "awaitRead",
        "handle",
        "target",
        "",
        "timeoutMillis",
        "discardRead",
        "",
        "freeRead",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/transport/NativeUsbfsReadOps;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/transport/NativeUsbfsReadOps;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/transport/NativeUsbfsReadOps;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/transport/NativeUsbfsReadOps;->INSTANCE:Lcom/shilapi/xcertplay/transport/NativeUsbfsReadOps;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public awaitRead(J[BI)I
    .locals 1

    const-string/jumbo v0, "target"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-static {p1, p2, p3, p4}, Lcom/shilapi/xcertplay/transport/LegacyUsbfs;->awaitRead(J[BI)I

    move-result p1

    return p1
.end method

.method public discardRead(IJ)V
    .locals 0

    .line 45
    invoke-static {p1, p2, p3}, Lcom/shilapi/xcertplay/transport/LegacyUsbfs;->discardRead(IJ)V

    return-void
.end method

.method public freeRead(J)V
    .locals 0

    .line 46
    invoke-static {p1, p2}, Lcom/shilapi/xcertplay/transport/LegacyUsbfs;->freeRead(J)V

    return-void
.end method

.method public submitRead(III)J
    .locals 0

    .line 42
    invoke-static {p1, p2, p3}, Lcom/shilapi/xcertplay/transport/LegacyUsbfs;->submitRead(III)J

    move-result-wide p1

    return-wide p1
.end method
