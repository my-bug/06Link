.class final Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$CertificateInfo;
.super Ljava/lang/Object;
.source "RemoteMfiAuthenticationClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CertificateInfo"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0082\u0008\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0007H\u00c6\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\nH\u00c6\u0003J=\u0010\u001b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00072\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\nH\u00c6\u0001J\u0013\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001f\u001a\u00020\u0005H\u00d6\u0001J\t\u0010 \u001a\u00020!H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0012R\u0013\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\""
    }
    d2 = {
        "Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$CertificateInfo;",
        "",
        "type",
        "Lcom/shilapi/xcertplay/mfi/MfiCertificateType;",
        "protocolMajor",
        "",
        "wireCertificate",
        "",
        "iap2Certificate",
        "baaCertificates",
        "Lcom/shilapi/xcertplay/mfi/BaaCertificatePair;",
        "<init>",
        "(Lcom/shilapi/xcertplay/mfi/MfiCertificateType;I[B[BLcom/shilapi/xcertplay/mfi/BaaCertificatePair;)V",
        "getType",
        "()Lcom/shilapi/xcertplay/mfi/MfiCertificateType;",
        "getProtocolMajor",
        "()I",
        "getWireCertificate",
        "()[B",
        "getIap2Certificate",
        "getBaaCertificates",
        "()Lcom/shilapi/xcertplay/mfi/BaaCertificatePair;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
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
.field private final baaCertificates:Lcom/shilapi/xcertplay/mfi/BaaCertificatePair;

.field private final iap2Certificate:[B

.field private final protocolMajor:I

.field private final type:Lcom/shilapi/xcertplay/mfi/MfiCertificateType;

.field private final wireCertificate:[B


# direct methods
.method public constructor <init>(Lcom/shilapi/xcertplay/mfi/MfiCertificateType;I[B[BLcom/shilapi/xcertplay/mfi/BaaCertificatePair;)V
    .locals 1

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "wireCertificate"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iap2Certificate"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$CertificateInfo;->type:Lcom/shilapi/xcertplay/mfi/MfiCertificateType;

    .line 23
    iput p2, p0, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$CertificateInfo;->protocolMajor:I

    .line 24
    iput-object p3, p0, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$CertificateInfo;->wireCertificate:[B

    .line 25
    iput-object p4, p0, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$CertificateInfo;->iap2Certificate:[B

    .line 26
    iput-object p5, p0, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$CertificateInfo;->baaCertificates:Lcom/shilapi/xcertplay/mfi/BaaCertificatePair;

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$CertificateInfo;Lcom/shilapi/xcertplay/mfi/MfiCertificateType;I[B[BLcom/shilapi/xcertplay/mfi/BaaCertificatePair;ILjava/lang/Object;)Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$CertificateInfo;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$CertificateInfo;->type:Lcom/shilapi/xcertplay/mfi/MfiCertificateType;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget p2, p0, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$CertificateInfo;->protocolMajor:I

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    iget-object p3, p0, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$CertificateInfo;->wireCertificate:[B

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    iget-object p4, p0, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$CertificateInfo;->iap2Certificate:[B

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    iget-object p5, p0, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$CertificateInfo;->baaCertificates:Lcom/shilapi/xcertplay/mfi/BaaCertificatePair;

    :cond_4
    move-object p6, p4

    move-object p7, p5

    move p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p7}, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$CertificateInfo;->copy(Lcom/shilapi/xcertplay/mfi/MfiCertificateType;I[B[BLcom/shilapi/xcertplay/mfi/BaaCertificatePair;)Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$CertificateInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/shilapi/xcertplay/mfi/MfiCertificateType;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$CertificateInfo;->type:Lcom/shilapi/xcertplay/mfi/MfiCertificateType;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$CertificateInfo;->protocolMajor:I

    return v0
.end method

.method public final component3()[B
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$CertificateInfo;->wireCertificate:[B

    return-object v0
.end method

.method public final component4()[B
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$CertificateInfo;->iap2Certificate:[B

    return-object v0
.end method

.method public final component5()Lcom/shilapi/xcertplay/mfi/BaaCertificatePair;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$CertificateInfo;->baaCertificates:Lcom/shilapi/xcertplay/mfi/BaaCertificatePair;

    return-object v0
.end method

.method public final copy(Lcom/shilapi/xcertplay/mfi/MfiCertificateType;I[B[BLcom/shilapi/xcertplay/mfi/BaaCertificatePair;)Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$CertificateInfo;
    .locals 7

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "wireCertificate"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iap2Certificate"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$CertificateInfo;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$CertificateInfo;-><init>(Lcom/shilapi/xcertplay/mfi/MfiCertificateType;I[B[BLcom/shilapi/xcertplay/mfi/BaaCertificatePair;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$CertificateInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$CertificateInfo;

    iget-object v1, p0, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$CertificateInfo;->type:Lcom/shilapi/xcertplay/mfi/MfiCertificateType;

    iget-object v3, p1, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$CertificateInfo;->type:Lcom/shilapi/xcertplay/mfi/MfiCertificateType;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$CertificateInfo;->protocolMajor:I

    iget v3, p1, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$CertificateInfo;->protocolMajor:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$CertificateInfo;->wireCertificate:[B

    iget-object v3, p1, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$CertificateInfo;->wireCertificate:[B

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$CertificateInfo;->iap2Certificate:[B

    iget-object v3, p1, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$CertificateInfo;->iap2Certificate:[B

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$CertificateInfo;->baaCertificates:Lcom/shilapi/xcertplay/mfi/BaaCertificatePair;

    iget-object p1, p1, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$CertificateInfo;->baaCertificates:Lcom/shilapi/xcertplay/mfi/BaaCertificatePair;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getBaaCertificates()Lcom/shilapi/xcertplay/mfi/BaaCertificatePair;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$CertificateInfo;->baaCertificates:Lcom/shilapi/xcertplay/mfi/BaaCertificatePair;

    return-object v0
.end method

.method public final getIap2Certificate()[B
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$CertificateInfo;->iap2Certificate:[B

    return-object v0
.end method

.method public final getProtocolMajor()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$CertificateInfo;->protocolMajor:I

    return v0
.end method

.method public final getType()Lcom/shilapi/xcertplay/mfi/MfiCertificateType;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$CertificateInfo;->type:Lcom/shilapi/xcertplay/mfi/MfiCertificateType;

    return-object v0
.end method

.method public final getWireCertificate()[B
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$CertificateInfo;->wireCertificate:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$CertificateInfo;->type:Lcom/shilapi/xcertplay/mfi/MfiCertificateType;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/mfi/MfiCertificateType;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$CertificateInfo;->protocolMajor:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$CertificateInfo;->wireCertificate:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$CertificateInfo;->iap2Certificate:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$CertificateInfo;->baaCertificates:Lcom/shilapi/xcertplay/mfi/BaaCertificatePair;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/mfi/BaaCertificatePair;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$CertificateInfo;->type:Lcom/shilapi/xcertplay/mfi/MfiCertificateType;

    iget v1, p0, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$CertificateInfo;->protocolMajor:I

    iget-object v2, p0, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$CertificateInfo;->wireCertificate:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$CertificateInfo;->iap2Certificate:[B

    invoke-static {v3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient$CertificateInfo;->baaCertificates:Lcom/shilapi/xcertplay/mfi/BaaCertificatePair;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "CertificateInfo(type="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", protocolMajor="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", wireCertificate="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", iap2Certificate="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", baaCertificates="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
