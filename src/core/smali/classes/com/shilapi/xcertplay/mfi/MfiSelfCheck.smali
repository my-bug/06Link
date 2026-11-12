.class public final Lcom/shilapi/xcertplay/mfi/MfiSelfCheck;
.super Ljava/lang/Object;
.source "MfiSelfCheck.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010\u0006\u001a\u00020\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/mfi/MfiSelfCheck;",
        "",
        "transport",
        "Lcom/shilapi/xcertplay/transport/I2cTransport;",
        "<init>",
        "(Lcom/shilapi/xcertplay/transport/I2cTransport;)V",
        "run",
        "Lcom/shilapi/xcertplay/mfi/MfiSelfCheckResult;",
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
.field private final transport:Lcom/shilapi/xcertplay/transport/I2cTransport;


# direct methods
.method public constructor <init>(Lcom/shilapi/xcertplay/transport/I2cTransport;)V
    .locals 1

    const-string/jumbo v0, "transport"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/shilapi/xcertplay/mfi/MfiSelfCheck;->transport:Lcom/shilapi/xcertplay/transport/I2cTransport;

    return-void
.end method


# virtual methods
.method public final run()Lcom/shilapi/xcertplay/mfi/MfiSelfCheckResult;
    .locals 9

    .line 11
    new-instance v0, Lcom/shilapi/xcertplay/mfi/MfiDeviceScanner;

    iget-object v1, p0, Lcom/shilapi/xcertplay/mfi/MfiSelfCheck;->transport:Lcom/shilapi/xcertplay/transport/I2cTransport;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/shilapi/xcertplay/mfi/MfiDeviceScanner;-><init>(Lcom/shilapi/xcertplay/transport/I2cTransport;Ljava/util/List;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/mfi/MfiDeviceScanner;->scan()Lcom/shilapi/xcertplay/mfi/MfiDiscoveryResult;

    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/mfi/MfiDiscoveryResult;->getChip()Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v0, Lcom/shilapi/xcertplay/mfi/MfiSelfCheckResult;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/mfi/MfiSelfCheckResult;-><init>(Lcom/shilapi/xcertplay/mfi/MfiDiscoveryResult;Lcom/shilapi/xcertplay/mfi/MfiSelfCheckChip;)V

    return-object v0

    .line 16
    :cond_0
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;->getAddress7Bit()I

    move-result v3

    .line 17
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;->getDeviceVersion()I

    move-result v4

    .line 19
    :try_start_0
    new-instance v0, Lcom/shilapi/xcertplay/mfi/MfiProtocolMajorResult$Value;

    .line 20
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;->getAddress7Bit()I

    move-result v5

    .line 21
    new-instance v6, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;

    iget-object v7, p0, Lcom/shilapi/xcertplay/mfi/MfiSelfCheck;->transport:Lcom/shilapi/xcertplay/transport/I2cTransport;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;->getAddress7Bit()I

    move-result v8

    invoke-direct {v6, v7, v8}, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;-><init>(Lcom/shilapi/xcertplay/transport/I2cTransport;I)V

    invoke-virtual {v6}, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;->protocolMajor()I

    move-result v6

    .line 19
    invoke-direct {v0, v5, v6}, Lcom/shilapi/xcertplay/mfi/MfiProtocolMajorResult$Value;-><init>(II)V

    check-cast v0, Lcom/shilapi/xcertplay/mfi/MfiProtocolMajorResult;
    :try_end_0
    .catch Lcom/shilapi/xcertplay/mfi/MfiException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/shilapi/xcertplay/transport/I2cTransportException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 26
    new-instance v5, Lcom/shilapi/xcertplay/mfi/MfiProtocolMajorResult$TransportFailure;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;->getAddress7Bit()I

    move-result v2

    invoke-direct {v5, v2, v0}, Lcom/shilapi/xcertplay/mfi/MfiProtocolMajorResult$TransportFailure;-><init>(ILcom/shilapi/xcertplay/transport/I2cTransportException;)V

    move-object v0, v5

    check-cast v0, Lcom/shilapi/xcertplay/mfi/MfiProtocolMajorResult;

    goto :goto_0

    :catch_1
    move-exception v0

    .line 24
    new-instance v5, Lcom/shilapi/xcertplay/mfi/MfiProtocolMajorResult$MfiFailure;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;->getAddress7Bit()I

    move-result v2

    invoke-direct {v5, v2, v0}, Lcom/shilapi/xcertplay/mfi/MfiProtocolMajorResult$MfiFailure;-><init>(ILcom/shilapi/xcertplay/mfi/MfiException;)V

    move-object v0, v5

    check-cast v0, Lcom/shilapi/xcertplay/mfi/MfiProtocolMajorResult;

    .line 15
    :goto_0
    new-instance v2, Lcom/shilapi/xcertplay/mfi/MfiSelfCheckChip;

    invoke-direct {v2, v3, v4, v0}, Lcom/shilapi/xcertplay/mfi/MfiSelfCheckChip;-><init>(IILcom/shilapi/xcertplay/mfi/MfiProtocolMajorResult;)V

    .line 13
    new-instance v0, Lcom/shilapi/xcertplay/mfi/MfiSelfCheckResult;

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/mfi/MfiSelfCheckResult;-><init>(Lcom/shilapi/xcertplay/mfi/MfiDiscoveryResult;Lcom/shilapi/xcertplay/mfi/MfiSelfCheckChip;)V

    return-object v0
.end method
