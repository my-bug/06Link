.class public final Lcom/shilapi/xcertplay/usbbt/UsbBtIdentityKt;
.super Ljava/lang/Object;
.source "UsbBtIdentity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u00a8\u0006\u0005"
    }
    d2 = {
        "uuidBigEndian",
        "",
        "uuid",
        "Ljava/util/UUID;",
        "uuidLittleEndian",
        "shared_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final uuidBigEndian(Ljava/util/UUID;)[B
    .locals 7

    const-string/jumbo v0, "uuid"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x10

    .line 149
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    rsub-int/lit8 v6, v2, 0x7

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v4

    rsub-int/lit8 v6, v2, 0xf

    :goto_1
    mul-int/lit8 v6, v6, 0x8

    ushr-long v3, v4, v6

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static final uuidLittleEndian(Ljava/util/UUID;)[B
    .locals 1

    const-string/jumbo v0, "uuid"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    invoke-static {p0}, Lcom/shilapi/xcertplay/usbbt/UsbBtIdentityKt;->uuidBigEndian(Ljava/util/UUID;)[B

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/ArraysKt;->reversedArray([B)[B

    move-result-object p0

    return-object p0
.end method
