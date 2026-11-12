.class public final Lcom/shilapi/xcertplay/transport/Ch341DeviceMatcher;
.super Ljava/lang/Object;
.source "Ch341DeviceMatcher.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0016\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000bR\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/Ch341DeviceMatcher;",
        "",
        "allowedDevices",
        "",
        "Lcom/shilapi/xcertplay/transport/UsbDeviceId;",
        "<init>",
        "(Ljava/util/Collection;)V",
        "",
        "matches",
        "",
        "vendorId",
        "",
        "productId",
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
.field private final allowedDevices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/shilapi/xcertplay/transport/UsbDeviceId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/shilapi/xcertplay/transport/UsbDeviceId;",
            ">;)V"
        }
    .end annotation

    const-string v0, "allowedDevices"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Ch341DeviceMatcher;->allowedDevices:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final matches(II)Z
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Ch341DeviceMatcher;->allowedDevices:Ljava/util/Set;

    new-instance v1, Lcom/shilapi/xcertplay/transport/UsbDeviceId;

    invoke-direct {v1, p1, p2}, Lcom/shilapi/xcertplay/transport/UsbDeviceId;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
