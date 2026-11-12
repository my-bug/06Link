.class public interface abstract Lcom/shilapi/xcertplay/transport/UsbfsReadOps;
.super Ljava/lang/Object;
.source "LegacyUsbfs.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008`\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005H&J \u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0005H&J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0003H&J\u0010\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\u0003H&\u00a8\u0006\u0010\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/UsbfsReadOps;",
        "",
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


# virtual methods
.method public abstract awaitRead(J[BI)I
.end method

.method public abstract discardRead(IJ)V
.end method

.method public abstract freeRead(J)V
.end method

.method public abstract submitRead(III)J
.end method
