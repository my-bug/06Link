.class public final Lcom/shilapi/xcertplay/iap2/message/Iap2ClusterAsset;
.super Ljava/lang/Object;
.source "Iap2Messages.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIap2Messages.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Iap2Messages.kt\ncom/shilapi/xcertplay/iap2/message/Iap2ClusterAsset\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,322:1\n1#2:323\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\r\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001J\t\u0010\u0014\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/iap2/message/Iap2ClusterAsset;",
        "",
        "assetId",
        "",
        "assetVersion",
        "",
        "<init>",
        "(Ljava/lang/String;J)V",
        "getAssetId",
        "()Ljava/lang/String;",
        "getAssetVersion",
        "()J",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
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
.field private final assetId:Ljava/lang/String;

.field private final assetVersion:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2

    const-string v0, "assetId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2ClusterAsset;->assetId:Ljava/lang/String;

    .line 48
    iput-wide p2, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2ClusterAsset;->assetVersion:J

    .line 51
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-wide/16 v0, 0x0

    cmp-long p1, v0, p2

    if-gtz p1, :cond_0

    const-wide v0, 0x100000000L

    cmp-long p1, p2, v0

    if-gez p1, :cond_0

    return-void

    .line 52
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cluster asset version must fit in u32"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 51
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cluster asset ID must not be blank"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/iap2/message/Iap2ClusterAsset;Ljava/lang/String;JILjava/lang/Object;)Lcom/shilapi/xcertplay/iap2/message/Iap2ClusterAsset;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2ClusterAsset;->assetId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    iget-wide p2, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2ClusterAsset;->assetVersion:J

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/iap2/message/Iap2ClusterAsset;->copy(Ljava/lang/String;J)Lcom/shilapi/xcertplay/iap2/message/Iap2ClusterAsset;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2ClusterAsset;->assetId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2ClusterAsset;->assetVersion:J

    return-wide v0
.end method

.method public final copy(Ljava/lang/String;J)Lcom/shilapi/xcertplay/iap2/message/Iap2ClusterAsset;
    .locals 1

    const-string v0, "assetId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/shilapi/xcertplay/iap2/message/Iap2ClusterAsset;

    invoke-direct {v0, p1, p2, p3}, Lcom/shilapi/xcertplay/iap2/message/Iap2ClusterAsset;-><init>(Ljava/lang/String;J)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/iap2/message/Iap2ClusterAsset;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/iap2/message/Iap2ClusterAsset;

    iget-object v1, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2ClusterAsset;->assetId:Ljava/lang/String;

    iget-object v3, p1, Lcom/shilapi/xcertplay/iap2/message/Iap2ClusterAsset;->assetId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2ClusterAsset;->assetVersion:J

    iget-wide v5, p1, Lcom/shilapi/xcertplay/iap2/message/Iap2ClusterAsset;->assetVersion:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getAssetId()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2ClusterAsset;->assetId:Ljava/lang/String;

    return-object v0
.end method

.method public final getAssetVersion()J
    .locals 2

    .line 48
    iget-wide v0, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2ClusterAsset;->assetVersion:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2ClusterAsset;->assetId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2ClusterAsset;->assetVersion:J

    invoke-static {v1, v2}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2ClusterAsset;->assetId:Ljava/lang/String;

    iget-wide v1, p0, Lcom/shilapi/xcertplay/iap2/message/Iap2ClusterAsset;->assetVersion:J

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Iap2ClusterAsset(assetId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", assetVersion="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
