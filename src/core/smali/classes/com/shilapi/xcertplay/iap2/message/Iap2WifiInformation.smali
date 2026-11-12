.class public final Lcom/shilapi/xcertplay/iap2/message/Iap2WifiInformation;
.super Ljava/lang/Object;
.source "Iap2Messages.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\r\u0008\u0086\u0008\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\rJ\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J<\u0010\u001a\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u00c6\u0001\u00a2\u0006\u0002\u0010\u001bJ\u0013\u0010\u001c\u001a\u00020\u00132\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001e\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001f\u001a\u00020\u0006H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\u000e\u001a\u0004\u0008\u000c\u0010\rR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0010R\u0011\u0010\u0012\u001a\u00020\u00138F\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006 "
    }
    d2 = {
        "Lcom/shilapi/xcertplay/iap2/message/Iap2WifiInformation;",
        "",
        "status",
        "",
        "securityType",
        "ssid",
        "",
        "passphrase",
        "<init>",
        "(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V",
        "getStatus",
        "()I",
        "getSecurityType",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getSsid",
        "()Ljava/lang/String;",
        "getPassphrase",
        "successful",
        "",
        "getSuccessful",
        "()Z",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/shilapi/xcertplay/iap2/message/Iap2WifiInformation;",
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
.field private final passphrase:Ljava/lang/String;

.field private final securityType:Ljava/lang/Integer;

.field private final ssid:Ljava/lang/String;

.field private final status:I


# direct methods
.method public constructor <init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput p1, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2WifiInformation;->status:I

    .line 253
    iput-object p2, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2WifiInformation;->securityType:Ljava/lang/Integer;

    .line 254
    iput-object p3, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2WifiInformation;->ssid:Ljava/lang/String;

    .line 255
    iput-object p4, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2WifiInformation;->passphrase:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move-object p4, v0

    .line 251
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/iap2/message/Iap2WifiInformation;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/iap2/message/Iap2WifiInformation;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/shilapi/xcertplay/iap2/message/Iap2WifiInformation;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2WifiInformation;->status:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2WifiInformation;->securityType:Ljava/lang/Integer;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2WifiInformation;->ssid:Ljava/lang/String;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2WifiInformation;->passphrase:Ljava/lang/String;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/iap2/message/Iap2WifiInformation;->copy(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/shilapi/xcertplay/iap2/message/Iap2WifiInformation;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2WifiInformation;->status:I

    return v0
.end method

.method public final component2()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2WifiInformation;->securityType:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2WifiInformation;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2WifiInformation;->passphrase:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/shilapi/xcertplay/iap2/message/Iap2WifiInformation;
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/iap2/message/Iap2WifiInformation;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/iap2/message/Iap2WifiInformation;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/iap2/message/Iap2WifiInformation;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/iap2/message/Iap2WifiInformation;

    iget v1, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2WifiInformation;->status:I

    iget v3, p1, Lcom/shilapi/xcertplay/iap2/message/Iap2WifiInformation;->status:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2WifiInformation;->securityType:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/shilapi/xcertplay/iap2/message/Iap2WifiInformation;->securityType:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2WifiInformation;->ssid:Ljava/lang/String;

    iget-object v3, p1, Lcom/shilapi/xcertplay/iap2/message/Iap2WifiInformation;->ssid:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2WifiInformation;->passphrase:Ljava/lang/String;

    iget-object p1, p1, Lcom/shilapi/xcertplay/iap2/message/Iap2WifiInformation;->passphrase:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getPassphrase()Ljava/lang/String;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2WifiInformation;->passphrase:Ljava/lang/String;

    return-object v0
.end method

.method public final getSecurityType()Ljava/lang/Integer;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2WifiInformation;->securityType:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getSsid()Ljava/lang/String;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2WifiInformation;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()I
    .locals 1

    .line 252
    iget v0, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2WifiInformation;->status:I

    return v0
.end method

.method public final getSuccessful()Z
    .locals 1

    .line 257
    iget v0, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2WifiInformation;->status:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2WifiInformation;->status:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2WifiInformation;->securityType:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2WifiInformation;->ssid:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2WifiInformation;->passphrase:Ljava/lang/String;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2WifiInformation;->status:I

    iget-object v1, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2WifiInformation;->securityType:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2WifiInformation;->ssid:Ljava/lang/String;

    iget-object v3, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2WifiInformation;->passphrase:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Iap2WifiInformation(status="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", securityType="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", ssid="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", passphrase="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
