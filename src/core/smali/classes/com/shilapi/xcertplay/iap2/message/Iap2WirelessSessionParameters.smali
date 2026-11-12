.class public final Lcom/shilapi/xcertplay/iap2/message/Iap2WirelessSessionParameters;
.super Ljava/lang/Object;
.source "Iap2Messages.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIap2Messages.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Iap2Messages.kt\ncom/shilapi/xcertplay/iap2/message/Iap2WirelessSessionParameters\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,322:1\n1#2:323\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0012\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0008\u0012\u0006\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0006H\u00c6\u0003J\u000f\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0008H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0006H\u00c6\u0003JA\u0010\u0019\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u000e\u0008\u0002\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u0006H\u00c6\u0001J\u0013\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001d\u001a\u00020\u0006H\u00d6\u0001J\t\u0010\u001e\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0017\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0010\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/iap2/message/Iap2WirelessSessionParameters;",
        "",
        "ssid",
        "",
        "passphrase",
        "channel",
        "",
        "ipAddresses",
        "",
        "securityType",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;I)V",
        "getSsid",
        "()Ljava/lang/String;",
        "getPassphrase",
        "getChannel",
        "()I",
        "getIpAddresses",
        "()Ljava/util/List;",
        "getSecurityType",
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
.field private final channel:I

.field private final ipAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final passphrase:Ljava/lang/String;

.field private final securityType:I

.field private final ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const-string/jumbo v0, "ssid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "passphrase"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ipAddresses"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2WirelessSessionParameters;->ssid:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2WirelessSessionParameters;->passphrase:Ljava/lang/String;

    .line 30
    iput p3, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2WirelessSessionParameters;->channel:I

    .line 31
    iput-object p4, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2WirelessSessionParameters;->ipAddresses:Ljava/util/List;

    .line 32
    iput p5, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2WirelessSessionParameters;->securityType:I

    .line 35
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    if-eqz p5, :cond_1

    .line 39
    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "wireless passphrase must not be blank"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-ltz p3, :cond_4

    const/16 p1, 0x100

    if-ge p3, p1, :cond_4

    .line 41
    check-cast p4, Ljava/util/Collection;

    invoke-interface {p4}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    if-ltz p5, :cond_2

    if-ge p5, p1, :cond_2

    return-void

    .line 42
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "wireless security type must be in 0..255"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 41
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "wireless IP address list must not be empty"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "wireless channel must be in 0..255"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "wireless SSID must not be blank"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/iap2/message/Iap2WirelessSessionParameters;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;IILjava/lang/Object;)Lcom/shilapi/xcertplay/iap2/message/Iap2WirelessSessionParameters;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2WirelessSessionParameters;->ssid:Ljava/lang/String;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2WirelessSessionParameters;->passphrase:Ljava/lang/String;

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    iget p3, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2WirelessSessionParameters;->channel:I

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    iget-object p4, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2WirelessSessionParameters;->ipAddresses:Ljava/util/List;

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    iget p5, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2WirelessSessionParameters;->securityType:I

    :cond_4
    move-object p6, p4

    move p7, p5

    move-object p4, p2

    move p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p7}, Lcom/shilapi/xcertplay/iap2/message/Iap2WirelessSessionParameters;->copy(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;I)Lcom/shilapi/xcertplay/iap2/message/Iap2WirelessSessionParameters;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2WirelessSessionParameters;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2WirelessSessionParameters;->passphrase:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2WirelessSessionParameters;->channel:I

    return v0
.end method

.method public final component4()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2WirelessSessionParameters;->ipAddresses:Ljava/util/List;

    return-object v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2WirelessSessionParameters;->securityType:I

    return v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;I)Lcom/shilapi/xcertplay/iap2/message/Iap2WirelessSessionParameters;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Lcom/shilapi/xcertplay/iap2/message/Iap2WirelessSessionParameters;"
        }
    .end annotation

    const-string/jumbo v0, "ssid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "passphrase"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ipAddresses"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/shilapi/xcertplay/iap2/message/Iap2WirelessSessionParameters;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/shilapi/xcertplay/iap2/message/Iap2WirelessSessionParameters;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;I)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/iap2/message/Iap2WirelessSessionParameters;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/iap2/message/Iap2WirelessSessionParameters;

    iget-object v1, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2WirelessSessionParameters;->ssid:Ljava/lang/String;

    iget-object v3, p1, Lcom/shilapi/xcertplay/iap2/message/Iap2WirelessSessionParameters;->ssid:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2WirelessSessionParameters;->passphrase:Ljava/lang/String;

    iget-object v3, p1, Lcom/shilapi/xcertplay/iap2/message/Iap2WirelessSessionParameters;->passphrase:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2WirelessSessionParameters;->channel:I

    iget v3, p1, Lcom/shilapi/xcertplay/iap2/message/Iap2WirelessSessionParameters;->channel:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2WirelessSessionParameters;->ipAddresses:Ljava/util/List;

    iget-object v3, p1, Lcom/shilapi/xcertplay/iap2/message/Iap2WirelessSessionParameters;->ipAddresses:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2WirelessSessionParameters;->securityType:I

    iget p1, p1, Lcom/shilapi/xcertplay/iap2/message/Iap2WirelessSessionParameters;->securityType:I

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getChannel()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2WirelessSessionParameters;->channel:I

    return v0
.end method

.method public final getIpAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2WirelessSessionParameters;->ipAddresses:Ljava/util/List;

    return-object v0
.end method

.method public final getPassphrase()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2WirelessSessionParameters;->passphrase:Ljava/lang/String;

    return-object v0
.end method

.method public final getSecurityType()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2WirelessSessionParameters;->securityType:I

    return v0
.end method

.method public final getSsid()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2WirelessSessionParameters;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2WirelessSessionParameters;->ssid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2WirelessSessionParameters;->passphrase:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2WirelessSessionParameters;->channel:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2WirelessSessionParameters;->ipAddresses:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2WirelessSessionParameters;->securityType:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2WirelessSessionParameters;->ssid:Ljava/lang/String;

    iget-object v1, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2WirelessSessionParameters;->passphrase:Ljava/lang/String;

    iget v2, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2WirelessSessionParameters;->channel:I

    iget-object v3, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2WirelessSessionParameters;->ipAddresses:Ljava/util/List;

    iget v4, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2WirelessSessionParameters;->securityType:I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Iap2WirelessSessionParameters(ssid="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", passphrase="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", channel="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", ipAddresses="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", securityType="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
