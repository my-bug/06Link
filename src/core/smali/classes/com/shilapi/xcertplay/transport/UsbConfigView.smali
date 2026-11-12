.class public final Lcom/shilapi/xcertplay/transport/UsbConfigView;
.super Ljava/lang/Object;
.source "UsbConfigCompat.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000e\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0003R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u0001X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0010\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u000b\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/UsbConfigView;",
        "",
        "id",
        "",
        "interfaces",
        "",
        "Lcom/shilapi/xcertplay/transport/UsbInterfaceView;",
        "framework",
        "<init>",
        "(ILjava/util/List;Ljava/lang/Object;)V",
        "getId",
        "()I",
        "getInterfaces",
        "()Ljava/util/List;",
        "getFramework$shared_release",
        "()Ljava/lang/Object;",
        "interfaceCount",
        "getInterfaceCount",
        "getInterface",
        "index",
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
.field private final framework:Ljava/lang/Object;

.field private final id:I

.field private final interfaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/transport/UsbInterfaceView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/util/List;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/transport/UsbInterfaceView;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string v0, "interfaces"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/shilapi/xcertplay/transport/UsbConfigView;->id:I

    .line 40
    iput-object p2, p0, Lcom/shilapi/xcertplay/transport/UsbConfigView;->interfaces:Ljava/util/List;

    .line 41
    iput-object p3, p0, Lcom/shilapi/xcertplay/transport/UsbConfigView;->framework:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/List;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 38
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/transport/UsbConfigView;-><init>(ILjava/util/List;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getFramework$shared_release()Ljava/lang/Object;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/UsbConfigView;->framework:Ljava/lang/Object;

    return-object v0
.end method

.method public final getId()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/shilapi/xcertplay/transport/UsbConfigView;->id:I

    return v0
.end method

.method public final getInterface(I)Lcom/shilapi/xcertplay/transport/UsbInterfaceView;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/UsbConfigView;->interfaces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shilapi/xcertplay/transport/UsbInterfaceView;

    return-object p1
.end method

.method public final getInterfaceCount()I
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/UsbConfigView;->interfaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getInterfaces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/transport/UsbInterfaceView;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/UsbConfigView;->interfaces:Ljava/util/List;

    return-object v0
.end method
