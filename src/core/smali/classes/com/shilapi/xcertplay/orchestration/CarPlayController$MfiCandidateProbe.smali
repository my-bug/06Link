.class final Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;
.super Ljava/lang/Object;
.source "CarPlayController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/orchestration/CarPlayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MfiCandidateProbe"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0013\u0008\u0082\u0008\u0018\u00002\u00020\u0001BC\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0006\u0010\u0019\u001a\u00020\tJ\u0017\u0010\u001a\u001a\u00020\t2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0003H\u0002\u00a2\u0006\u0002\u0010\u001cJ\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\rJ\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\rJ\u0010\u0010\u001f\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\rJ\u0010\u0010 \u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\rJ\u0010\u0010!\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\rJ\u000b\u0010\"\u001a\u0004\u0018\u00010\tH\u00c6\u0003JV\u0010#\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\tH\u00c6\u0001\u00a2\u0006\u0002\u0010$J\u0013\u0010%\u001a\u00020\u00162\u0008\u0010&\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\'\u001a\u00020\u0003H\u00d6\u0001J\t\u0010(\u001a\u00020\tH\u00d6\u0001R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\u000e\u001a\u0004\u0008\u000c\u0010\rR\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\u000e\u001a\u0004\u0008\u000f\u0010\rR\u0015\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\u000e\u001a\u0004\u0008\u0010\u0010\rR\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\u000e\u001a\u0004\u0008\u0011\u0010\rR\u0015\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\u000e\u001a\u0004\u0008\u0012\u0010\rR\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0015\u001a\u00020\u00168F\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006)"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;",
        "",
        "deviceVersion",
        "",
        "firmwareVersion",
        "protocolMajor",
        "accessoryCertificateLength",
        "appleCertificateLength",
        "failure",
        "",
        "<init>",
        "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V",
        "getDeviceVersion",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getFirmwareVersion",
        "getProtocolMajor",
        "getAccessoryCertificateLength",
        "getAppleCertificateLength",
        "getFailure",
        "()Ljava/lang/String;",
        "hasAccessoryCertificate",
        "",
        "getHasAccessoryCertificate",
        "()Z",
        "describe",
        "hex",
        "value",
        "(Ljava/lang/Integer;)Ljava/lang/String;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;",
        "equals",
        "other",
        "hashCode",
        "toString",
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
.field private final accessoryCertificateLength:Ljava/lang/Integer;

.field private final appleCertificateLength:Ljava/lang/Integer;

.field private final deviceVersion:Ljava/lang/Integer;

.field private final failure:Ljava/lang/String;

.field private final firmwareVersion:Ljava/lang/Integer;

.field private final protocolMajor:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    .line 991
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 992
    iput-object p1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;->deviceVersion:Ljava/lang/Integer;

    .line 993
    iput-object p2, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;->firmwareVersion:Ljava/lang/Integer;

    .line 994
    iput-object p3, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;->protocolMajor:Ljava/lang/Integer;

    .line 995
    iput-object p4, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;->accessoryCertificateLength:Ljava/lang/Integer;

    .line 996
    iput-object p5, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;->appleCertificateLength:Ljava/lang/Integer;

    .line 997
    iput-object p6, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;->failure:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;
    .locals 0

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;->deviceVersion:Ljava/lang/Integer;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;->firmwareVersion:Ljava/lang/Integer;

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    iget-object p3, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;->protocolMajor:Ljava/lang/Integer;

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    iget-object p4, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;->accessoryCertificateLength:Ljava/lang/Integer;

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    iget-object p5, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;->appleCertificateLength:Ljava/lang/Integer;

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    iget-object p6, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;->failure:Ljava/lang/String;

    :cond_5
    move-object p7, p5

    move-object p8, p6

    move-object p5, p3

    move-object p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p8}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;->copy(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;

    move-result-object p0

    return-object p0
.end method

.method private final hex(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    .line 1012
    const-string p1, "?"

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x10

    invoke-static {v0}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "toString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/16 v1, 0x30

    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final component1()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;->deviceVersion:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component2()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;->firmwareVersion:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component3()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;->protocolMajor:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component4()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;->accessoryCertificateLength:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component5()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;->appleCertificateLength:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;->failure:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;
    .locals 7

    new-instance v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    return-object v0
.end method

.method public final describe()Ljava/lang/String;
    .locals 7

    .line 1003
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;->failure:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 1004
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;->deviceVersion:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;->hex(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    .line 1005
    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;->firmwareVersion:Ljava/lang/Integer;

    invoke-direct {p0, v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;->hex(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    .line 1006
    iget-object v2, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;->protocolMajor:Ljava/lang/Integer;

    invoke-direct {p0, v2}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;->hex(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    .line 1007
    iget-object v3, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;->accessoryCertificateLength:Ljava/lang/Integer;

    .line 1008
    iget-object v4, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;->appleCertificateLength:Ljava/lang/Integer;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "deviceVersion="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " firmwareVersion="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " protocolMajor="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " accessoryCertificateLength="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " appleCertificateLength="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;

    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;->deviceVersion:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;->deviceVersion:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;->firmwareVersion:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;->firmwareVersion:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;->protocolMajor:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;->protocolMajor:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;->accessoryCertificateLength:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;->accessoryCertificateLength:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;->appleCertificateLength:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;->appleCertificateLength:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;->failure:Ljava/lang/String;

    iget-object p1, p1, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;->failure:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getAccessoryCertificateLength()Ljava/lang/Integer;
    .locals 1

    .line 995
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;->accessoryCertificateLength:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getAppleCertificateLength()Ljava/lang/Integer;
    .locals 1

    .line 996
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;->appleCertificateLength:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getDeviceVersion()Ljava/lang/Integer;
    .locals 1

    .line 992
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;->deviceVersion:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getFailure()Ljava/lang/String;
    .locals 1

    .line 997
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;->failure:Ljava/lang/String;

    return-object v0
.end method

.method public final getFirmwareVersion()Ljava/lang/Integer;
    .locals 1

    .line 993
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;->firmwareVersion:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getHasAccessoryCertificate()Z
    .locals 4

    .line 1000
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;->accessoryCertificateLength:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x1

    if-gt v2, v0, :cond_1

    const/16 v3, 0x501

    if-ge v0, v3, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method public final getProtocolMajor()Ljava/lang/Integer;
    .locals 1

    .line 994
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;->protocolMajor:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;->deviceVersion:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;->firmwareVersion:Ljava/lang/Integer;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;->protocolMajor:Ljava/lang/Integer;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;->accessoryCertificateLength:Ljava/lang/Integer;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;->appleCertificateLength:Ljava/lang/Integer;

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;->failure:Ljava/lang/String;

    if-nez v2, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;->deviceVersion:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;->firmwareVersion:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;->protocolMajor:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;->accessoryCertificateLength:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;->appleCertificateLength:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;->failure:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "MfiCandidateProbe(deviceVersion="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", firmwareVersion="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", protocolMajor="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", accessoryCertificateLength="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", appleCertificateLength="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", failure="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
