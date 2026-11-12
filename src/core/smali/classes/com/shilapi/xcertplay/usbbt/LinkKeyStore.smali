.class public interface abstract Lcom/shilapi/xcertplay/usbbt/LinkKeyStore;
.super Ljava/lang/Object;
.source "LinkKeyStore.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/usbbt/LinkKeyStore$Entry;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001:\u0001\u000eJ\u0012\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0003H&J\u0010\u0010\t\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0008\u0010\n\u001a\u00020\u000bH&J\u000e\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00050\rH&\u00a8\u0006\u000f\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/usbbt/LinkKeyStore;",
        "",
        "get",
        "Lcom/shilapi/xcertplay/usbbt/LinkKeyStore$Entry;",
        "addr",
        "Lcom/shilapi/xcertplay/usbbt/BdAddr;",
        "put",
        "",
        "entry",
        "remove",
        "count",
        "",
        "addresses",
        "",
        "Entry",
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
.method public abstract addresses()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/usbbt/BdAddr;",
            ">;"
        }
    .end annotation
.end method

.method public abstract count()I
.end method

.method public abstract get(Lcom/shilapi/xcertplay/usbbt/BdAddr;)Lcom/shilapi/xcertplay/usbbt/LinkKeyStore$Entry;
.end method

.method public abstract put(Lcom/shilapi/xcertplay/usbbt/BdAddr;Lcom/shilapi/xcertplay/usbbt/LinkKeyStore$Entry;)V
.end method

.method public abstract remove(Lcom/shilapi/xcertplay/usbbt/BdAddr;)V
.end method
