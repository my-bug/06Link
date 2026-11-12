.class public final Lcom/shilapi/xcertplay/transport/Iap2WirelessIdentification;
.super Ljava/lang/Object;
.source "Iap2IdentificationClient.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/transport/Iap2WirelessIdentification$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIap2IdentificationClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Iap2IdentificationClient.kt\ncom/shilapi/xcertplay/transport/Iap2WirelessIdentification\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,313:1\n1#2:314\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u0012\n\u0002\u0008\u0004\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\r\u0010\u000c\u001a\u00020\u000bH\u0000\u00a2\u0006\u0002\u0008\rR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/Iap2WirelessIdentification;",
        "",
        "bluetoothMac",
        "",
        "ssid",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "getBluetoothMac",
        "()Ljava/lang/String;",
        "getSsid",
        "macBytes",
        "",
        "bluetoothMacBytes",
        "bluetoothMacBytes$shared_release",
        "Companion",
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
.field private static final Companion:Lcom/shilapi/xcertplay/transport/Iap2WirelessIdentification$Companion;

.field private static final MAC_ADDRESS:Lkotlin/text/Regex;


# instance fields
.field private final bluetoothMac:Ljava/lang/String;

.field private final macBytes:[B

.field private final ssid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/transport/Iap2WirelessIdentification$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/transport/Iap2WirelessIdentification$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/transport/Iap2WirelessIdentification;->Companion:Lcom/shilapi/xcertplay/transport/Iap2WirelessIdentification$Companion;

    .line 33
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "^[0-9A-Fa-f]{2}(:[0-9A-Fa-f]{2}){5}$"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shilapi/xcertplay/transport/Iap2WirelessIdentification;->MAC_ADDRESS:Lkotlin/text/Regex;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "bluetoothMac"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "ssid"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessIdentification;->bluetoothMac:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessIdentification;->ssid:Ljava/lang/String;

    .line 20
    sget-object v0, Lcom/shilapi/xcertplay/transport/Iap2WirelessIdentification;->MAC_ADDRESS:Lkotlin/text/Regex;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 23
    move-object p1, p2

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 24
    check-cast p2, Ljava/lang/CharSequence;

    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p2, v0, v0, v1, p1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x6

    .line 25
    new-array p2, p1, [B

    :goto_0
    if-ge v0, p1, :cond_0

    .line 26
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessIdentification;->bluetoothMac:Ljava/lang/String;

    mul-int/lit8 v2, v0, 0x3

    add-int/lit8 v3, v2, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "substring(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x10

    invoke-static {v2}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 25
    :cond_0
    iput-object p2, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessIdentification;->macBytes:[B

    return-void

    .line 24
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wireless SSID must not contain U+0000"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wireless SSID must not be blank"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bluetoothMac must be six colon-separated hexadecimal bytes"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public final bluetoothMacBytes$shared_release()[B
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessIdentification;->macBytes:[B

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    const-string v1, "copyOf(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getBluetoothMac()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessIdentification;->bluetoothMac:Ljava/lang/String;

    return-object v0
.end method

.method public final getSsid()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessIdentification;->ssid:Ljava/lang/String;

    return-object v0
.end method
