.class public final Lcom/shilapi/xcertplay/usbbt/HciEvent$LinkKeyNotification;
.super Lcom/shilapi/xcertplay/usbbt/HciEvent;
.source "HciEvents.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/usbbt/HciEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LinkKeyNotification"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0008\u0010\u0010\u001a\u00020\u0011H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/usbbt/HciEvent$LinkKeyNotification;",
        "Lcom/shilapi/xcertplay/usbbt/HciEvent;",
        "addr",
        "Lcom/shilapi/xcertplay/usbbt/BdAddr;",
        "key",
        "",
        "keyType",
        "",
        "<init>",
        "(Lcom/shilapi/xcertplay/usbbt/BdAddr;[BI)V",
        "getAddr",
        "()Lcom/shilapi/xcertplay/usbbt/BdAddr;",
        "getKey",
        "()[B",
        "getKeyType",
        "()I",
        "toString",
        "",
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
.field private final addr:Lcom/shilapi/xcertplay/usbbt/BdAddr;

.field private final key:[B

.field private final keyType:I


# direct methods
.method public constructor <init>(Lcom/shilapi/xcertplay/usbbt/BdAddr;[BI)V
    .locals 1

    const-string v0, "addr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/usbbt/HciEvent;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$LinkKeyNotification;->addr:Lcom/shilapi/xcertplay/usbbt/BdAddr;

    iput-object p2, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$LinkKeyNotification;->key:[B

    iput p3, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$LinkKeyNotification;->keyType:I

    return-void
.end method


# virtual methods
.method public final getAddr()Lcom/shilapi/xcertplay/usbbt/BdAddr;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$LinkKeyNotification;->addr:Lcom/shilapi/xcertplay/usbbt/BdAddr;

    return-object v0
.end method

.method public final getKey()[B
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$LinkKeyNotification;->key:[B

    return-object v0
.end method

.method public final getKeyType()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$LinkKeyNotification;->keyType:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 27
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$LinkKeyNotification;->addr:Lcom/shilapi/xcertplay/usbbt/BdAddr;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/BdAddr;->redacted()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/HciEvent$LinkKeyNotification;->keyType:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LinkKeyNotification("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", type="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
