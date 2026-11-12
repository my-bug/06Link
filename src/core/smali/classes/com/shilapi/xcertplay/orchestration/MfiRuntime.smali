.class public final Lcom/shilapi/xcertplay/orchestration/MfiRuntime;
.super Ljava/lang/Object;
.source "MfiRuntime.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007R\u000e\u0010\u0008\u001a\u00020\tX\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/orchestration/MfiRuntime;",
        "",
        "<init>",
        "()V",
        "scan",
        "Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;",
        "transport",
        "Lcom/shilapi/xcertplay/transport/I2cTransport;",
        "MFI_STARTUP_PROBE_TIMEOUT_MILLIS",
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


# static fields
.field public static final INSTANCE:Lcom/shilapi/xcertplay/orchestration/MfiRuntime;

.field private static final MFI_STARTUP_PROBE_TIMEOUT_MILLIS:J = 0x3a98L


# direct methods
.method public static synthetic $r8$lambda$nuJPuTiy_srg55k1lEL758Bnshc(Lcom/shilapi/xcertplay/mfi/MfiDiscoveryFailure;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/orchestration/MfiRuntime;->scan$lambda$0(Lcom/shilapi/xcertplay/mfi/MfiDiscoveryFailure;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/orchestration/MfiRuntime;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/orchestration/MfiRuntime;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/orchestration/MfiRuntime;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/MfiRuntime;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final scan$lambda$0(Lcom/shilapi/xcertplay/mfi/MfiDiscoveryFailure;)Ljava/lang/CharSequence;
    .locals 3

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/mfi/MfiDiscoveryFailure;->getAddress7Bit()I

    move-result v0

    const/16 v1, 0x10

    invoke-static {v1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/mfi/MfiDiscoveryFailure;->getError()Lcom/shilapi/xcertplay/mfi/MfiDiscoveryError;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method


# virtual methods
.method public final scan(Lcom/shilapi/xcertplay/transport/I2cTransport;)Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;
    .locals 10

    const-string/jumbo v0, "transport"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v1, Lcom/shilapi/xcertplay/mfi/MfiDeviceScanner;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x3a98

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/shilapi/xcertplay/mfi/MfiDeviceScanner;-><init>(Lcom/shilapi/xcertplay/transport/I2cTransport;Ljava/util/List;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 31
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/mfi/MfiDeviceScanner;->scan()Lcom/shilapi/xcertplay/mfi/MfiDiscoveryResult;

    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/mfi/MfiDiscoveryResult;->getChip()Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    new-instance p1, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;->getAddress7Bit()I

    move-result v0

    invoke-direct {p1, v2, v0}, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;-><init>(Lcom/shilapi/xcertplay/transport/I2cTransport;I)V

    return-object p1

    .line 33
    :cond_0
    new-instance v0, Lcom/shilapi/xcertplay/orchestration/MfiCoprocessorNotFoundException;

    .line 35
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/mfi/MfiDiscoveryResult;->getFailures()Ljava/util/List;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v7, Lcom/shilapi/xcertplay/orchestration/MfiRuntime$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lcom/shilapi/xcertplay/orchestration/MfiRuntime$$ExternalSyntheticLambda0;-><init>()V

    const/16 v8, 0x1f

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No MFi authentication coprocessor responded: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 33
    invoke-direct {v0, p1}, Lcom/shilapi/xcertplay/orchestration/MfiCoprocessorNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
