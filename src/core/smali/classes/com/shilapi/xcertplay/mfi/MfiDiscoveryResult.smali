.class public final Lcom/shilapi/xcertplay/mfi/MfiDiscoveryResult;
.super Ljava/lang/Object;
.source "MfiDeviceScanner.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000f\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B)\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000f\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0008H\u00c6\u0003J/\u0010\u0014\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u000e\u0008\u0002\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u00c6\u0001J\u0013\u0010\u0015\u001a\u00020\u00082\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/mfi/MfiDiscoveryResult;",
        "",
        "chip",
        "Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;",
        "failures",
        "",
        "Lcom/shilapi/xcertplay/mfi/MfiDiscoveryFailure;",
        "interrupted",
        "",
        "<init>",
        "(Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;Ljava/util/List;Z)V",
        "getChip",
        "()Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;",
        "getFailures",
        "()Ljava/util/List;",
        "getInterrupted",
        "()Z",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
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
.field private final chip:Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;

.field private final failures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/mfi/MfiDiscoveryFailure;",
            ">;"
        }
    .end annotation
.end field

.field private final interrupted:Z


# direct methods
.method public constructor <init>(Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/mfi/MfiDiscoveryFailure;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "failures"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Lcom/shilapi/xcertplay/mfi/MfiDiscoveryResult;->chip:Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;

    .line 126
    iput-object p2, p0, Lcom/shilapi/xcertplay/mfi/MfiDiscoveryResult;->failures:Ljava/util/List;

    .line 127
    iput-boolean p3, p0, Lcom/shilapi/xcertplay/mfi/MfiDiscoveryResult;->interrupted:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 124
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/mfi/MfiDiscoveryResult;-><init>(Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;Ljava/util/List;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/mfi/MfiDiscoveryResult;Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;Ljava/util/List;ZILjava/lang/Object;)Lcom/shilapi/xcertplay/mfi/MfiDiscoveryResult;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/shilapi/xcertplay/mfi/MfiDiscoveryResult;->chip:Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/shilapi/xcertplay/mfi/MfiDiscoveryResult;->failures:Ljava/util/List;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-boolean p3, p0, Lcom/shilapi/xcertplay/mfi/MfiDiscoveryResult;->interrupted:Z

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/mfi/MfiDiscoveryResult;->copy(Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;Ljava/util/List;Z)Lcom/shilapi/xcertplay/mfi/MfiDiscoveryResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/mfi/MfiDiscoveryResult;->chip:Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;

    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/mfi/MfiDiscoveryFailure;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/shilapi/xcertplay/mfi/MfiDiscoveryResult;->failures:Ljava/util/List;

    return-object v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/mfi/MfiDiscoveryResult;->interrupted:Z

    return v0
.end method

.method public final copy(Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;Ljava/util/List;Z)Lcom/shilapi/xcertplay/mfi/MfiDiscoveryResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/mfi/MfiDiscoveryFailure;",
            ">;Z)",
            "Lcom/shilapi/xcertplay/mfi/MfiDiscoveryResult;"
        }
    .end annotation

    const-string v0, "failures"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/shilapi/xcertplay/mfi/MfiDiscoveryResult;

    invoke-direct {v0, p1, p2, p3}, Lcom/shilapi/xcertplay/mfi/MfiDiscoveryResult;-><init>(Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;Ljava/util/List;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/mfi/MfiDiscoveryResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/mfi/MfiDiscoveryResult;

    iget-object v1, p0, Lcom/shilapi/xcertplay/mfi/MfiDiscoveryResult;->chip:Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;

    iget-object v3, p1, Lcom/shilapi/xcertplay/mfi/MfiDiscoveryResult;->chip:Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/shilapi/xcertplay/mfi/MfiDiscoveryResult;->failures:Ljava/util/List;

    iget-object v3, p1, Lcom/shilapi/xcertplay/mfi/MfiDiscoveryResult;->failures:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/mfi/MfiDiscoveryResult;->interrupted:Z

    iget-boolean p1, p1, Lcom/shilapi/xcertplay/mfi/MfiDiscoveryResult;->interrupted:Z

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getChip()Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/shilapi/xcertplay/mfi/MfiDiscoveryResult;->chip:Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;

    return-object v0
.end method

.method public final getFailures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/mfi/MfiDiscoveryFailure;",
            ">;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/shilapi/xcertplay/mfi/MfiDiscoveryResult;->failures:Ljava/util/List;

    return-object v0
.end method

.method public final getInterrupted()Z
    .locals 1

    .line 127
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/mfi/MfiDiscoveryResult;->interrupted:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/shilapi/xcertplay/mfi/MfiDiscoveryResult;->chip:Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/mfi/MfiDiscoveryResult;->failures:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/mfi/MfiDiscoveryResult;->interrupted:Z

    invoke-static {v1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/shilapi/xcertplay/mfi/MfiDiscoveryResult;->chip:Lcom/shilapi/xcertplay/mfi/MfiDiscoveredChip;

    iget-object v1, p0, Lcom/shilapi/xcertplay/mfi/MfiDiscoveryResult;->failures:Ljava/util/List;

    iget-boolean v2, p0, Lcom/shilapi/xcertplay/mfi/MfiDiscoveryResult;->interrupted:Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MfiDiscoveryResult(chip="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", failures="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", interrupted="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
