.class public final Lcom/shilapi/xcertplay/iap2/message/Iap2WirelessMessages;
.super Ljava/lang/Object;
.source "Iap2Messages.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIap2Messages.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Iap2Messages.kt\ncom/shilapi/xcertplay/iap2/message/Iap2WirelessMessages\n+ 2 Iap2Messages.kt\ncom/shilapi/xcertplay/iap2/message/Iap2Messages\n*L\n1#1,322:1\n16#2:323\n*S KotlinDebug\n*F\n+ 1 Iap2Messages.kt\ncom/shilapi/xcertplay/iap2/message/Iap2WirelessMessages\n*L\n164#1:323\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J2\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\rJ\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0005J\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0010\u001a\u00020\u0005J\u000e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0010\u001a\u00020\u0005\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/iap2/message/Iap2WirelessMessages;",
        "",
        "<init>",
        "()V",
        "accessoryWiFiConfiguration",
        "Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;",
        "ssid",
        "",
        "passphrase",
        "channel",
        "",
        "securityType",
        "bssid",
        "",
        "wifiInformation",
        "Lcom/shilapi/xcertplay/iap2/message/Iap2WifiInformation;",
        "frame",
        "wirelessCarPlayAvailability",
        "",
        "deviceTransportIdentifier",
        "Lcom/shilapi/xcertplay/iap2/message/Iap2DeviceTransportIdentifier;",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/iap2/message/Iap2WirelessMessages;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/iap2/message/Iap2WirelessMessages;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/iap2/message/Iap2WirelessMessages;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/iap2/message/Iap2WirelessMessages;->INSTANCE:Lcom/shilapi/xcertplay/iap2/message/Iap2WirelessMessages;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic accessoryWiFiConfiguration$default(Lcom/shilapi/xcertplay/iap2/message/Iap2WirelessMessages;Ljava/lang/String;Ljava/lang/String;II[BILjava/lang/Object;)Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 158
    invoke-virtual/range {v0 .. v5}, Lcom/shilapi/xcertplay/iap2/message/Iap2WirelessMessages;->accessoryWiFiConfiguration(Ljava/lang/String;Ljava/lang/String;II[B)Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final accessoryWiFiConfiguration(Ljava/lang/String;Ljava/lang/String;II[B)Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;
    .locals 2

    const-string/jumbo v0, "ssid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "passphrase"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    sget-object v0, Lcom/shilapi/xcertplay/iap2/message/Iap2Messages;->INSTANCE:Lcom/shilapi/xcertplay/iap2/message/Iap2Messages;

    sget-object v0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoints;->INSTANCE:Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoints;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoints;->getACCESSORY_WIFI_CONFIGURATION()Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoint;

    move-result-object v0

    .line 323
    sget-object v1, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->Companion:Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder$Companion;

    invoke-virtual {v1, v0}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder$Companion;->of(Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoint;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    move-result-object v0

    const/4 v1, 0x0

    .line 165
    invoke-virtual {v0, v1, p5}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->optionalBytes(I[B)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    const/4 p5, 0x1

    .line 166
    invoke-virtual {v0, p5, p1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->string(ILjava/lang/String;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    const/4 p1, 0x2

    .line 167
    invoke-virtual {v0, p1, p2}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->string(ILjava/lang/String;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    const/4 p1, 0x3

    .line 168
    invoke-virtual {v0, p1, p4}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->u8(II)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    const/4 p1, 0x4

    .line 169
    invoke-virtual {v0, p1, p3}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->u8(II)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    .line 323
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->build()Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;

    move-result-object p1

    return-object p1
.end method

.method public final deviceTransportIdentifier(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)Lcom/shilapi/xcertplay/iap2/message/Iap2DeviceTransportIdentifier;
    .locals 3

    const-string v0, "frame"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;->getMessageId()I

    move-result v0

    sget-object v1, Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoints;->INSTANCE:Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoints;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoints;->getDEVICE_TRANSPORT_IDENTIFIER()Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoint;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 202
    sget-object v0, Lcom/shilapi/xcertplay/iap2/message/Iap2Messages;->INSTANCE:Lcom/shilapi/xcertplay/iap2/message/Iap2Messages;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/iap2/message/Iap2Messages;->reader(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;

    move-result-object p1

    .line 203
    new-instance v0, Lcom/shilapi/xcertplay/iap2/message/Iap2DeviceTransportIdentifier;

    const/4 v1, 0x0

    .line 204
    invoke-virtual {p1, v1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->optionalString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 205
    invoke-virtual {p1, v2}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->optionalString(I)Ljava/lang/String;

    move-result-object p1

    .line 203
    invoke-direct {v0, v1, p1}, Lcom/shilapi/xcertplay/iap2/message/Iap2DeviceTransportIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 200
    :cond_0
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;->getMessageId()I

    move-result p1

    const/16 v0, 0x10

    invoke-static {v0}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "toString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected DeviceTransportIdentifierNotification, got 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 199
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final wifiInformation(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)Lcom/shilapi/xcertplay/iap2/message/Iap2WifiInformation;
    .locals 8

    const-string v0, "frame"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;->getMessageId()I

    move-result v0

    sget-object v1, Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoints;->INSTANCE:Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoints;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoints;->getWIFI_INFORMATION()Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoint;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 176
    sget-object v0, Lcom/shilapi/xcertplay/iap2/message/Iap2Messages;->INSTANCE:Lcom/shilapi/xcertplay/iap2/message/Iap2Messages;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/iap2/message/Iap2Messages;->reader(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;

    move-result-object p1

    const/4 v0, 0x0

    .line 177
    invoke-virtual {p1, v0}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->u8(I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    new-instance v1, Lcom/shilapi/xcertplay/iap2/message/Iap2WifiInformation;

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/shilapi/xcertplay/iap2/message/Iap2WifiInformation;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    .line 179
    :cond_0
    new-instance v0, Lcom/shilapi/xcertplay/iap2/message/Iap2WifiInformation;

    const/4 v1, 0x1

    .line 181
    invoke-virtual {p1, v1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->optionalU8(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x2

    .line 182
    invoke-virtual {p1, v3}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->optionalString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    .line 183
    invoke-virtual {p1, v4}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->optionalString(I)Ljava/lang/String;

    move-result-object p1

    .line 179
    invoke-direct {v0, v2, v1, v3, p1}, Lcom/shilapi/xcertplay/iap2/message/Iap2WifiInformation;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 174
    :cond_1
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;->getMessageId()I

    move-result p1

    const/16 v0, 0x10

    invoke-static {v0}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "toString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected WiFiInformation, got 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 173
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final wirelessCarPlayAvailability(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)Z
    .locals 3

    const-string v0, "frame"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;->getMessageId()I

    move-result v0

    sget-object v1, Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoints;->INSTANCE:Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoints;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoints;->getWIRELESS_CARPLAY_UPDATE()Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoint;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 191
    sget-object v0, Lcom/shilapi/xcertplay/iap2/message/Iap2Messages;->INSTANCE:Lcom/shilapi/xcertplay/iap2/message/Iap2Messages;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/iap2/message/Iap2Messages;->reader(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->u8(I)I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return v0

    .line 194
    :cond_0
    new-instance v0, Lcom/shilapi/xcertplay/iap2/wire/Iap2ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WirelessCarPlayUpdate availability must be 0 or 1, got "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1, v2}, Lcom/shilapi/xcertplay/iap2/wire/Iap2ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    :cond_1
    return v0

    .line 189
    :cond_2
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;->getMessageId()I

    move-result p1

    const/16 v0, 0x10

    invoke-static {v0}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "toString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected WirelessCarPlayUpdate, got 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 188
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
