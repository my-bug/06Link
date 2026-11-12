.class final Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields;
.super Ljava/lang/Object;
.source "LegacySoftApManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Fields"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0018\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0082\u0008\u0018\u0000 \"2\u00020\u0001:\u0001\"B5\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u0010\u000fJ\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u0010\u000fJ\t\u0010\u0019\u001a\u00020\u0008H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0005H\u00c6\u0003JF\u0010\u001b\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u0005H\u00c6\u0001\u00a2\u0006\u0002\u0010\u001cJ\u0013\u0010\u001d\u001a\u00020\u00082\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001f\u001a\u00020\u0005H\u00d6\u0001J\t\u0010 \u001a\u00020!H\u00d6\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\n\n\u0002\u0010\u0010\u001a\u0004\u0008\u000e\u0010\u000fR\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\n\n\u0002\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u000fR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\t\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006#"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields;",
        "",
        "keyManagement",
        "Ljava/util/BitSet;",
        "band",
        "",
        "channel",
        "hidden",
        "",
        "passwordFingerprint",
        "<init>",
        "(Ljava/util/BitSet;Ljava/lang/Integer;Ljava/lang/Integer;ZI)V",
        "getKeyManagement",
        "()Ljava/util/BitSet;",
        "getBand",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getChannel",
        "getHidden",
        "()Z",
        "getPasswordFingerprint",
        "()I",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "(Ljava/util/BitSet;Ljava/lang/Integer;Ljava/lang/Integer;ZI)Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields;",
        "equals",
        "other",
        "hashCode",
        "toString",
        "",
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
.field public static final Companion:Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields$Companion;


# instance fields
.field private final band:Ljava/lang/Integer;

.field private final channel:Ljava/lang/Integer;

.field private final hidden:Z

.field private final keyManagement:Ljava/util/BitSet;

.field private final passwordFingerprint:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields;->Companion:Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/util/BitSet;Ljava/lang/Integer;Ljava/lang/Integer;ZI)V
    .locals 0

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    iput-object p1, p0, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields;->keyManagement:Ljava/util/BitSet;

    .line 366
    iput-object p2, p0, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields;->band:Ljava/lang/Integer;

    .line 367
    iput-object p3, p0, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields;->channel:Ljava/lang/Integer;

    .line 368
    iput-boolean p4, p0, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields;->hidden:Z

    .line 369
    iput p5, p0, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields;->passwordFingerprint:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields;Ljava/util/BitSet;Ljava/lang/Integer;Ljava/lang/Integer;ZIILjava/lang/Object;)Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields;->keyManagement:Ljava/util/BitSet;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields;->band:Ljava/lang/Integer;

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    iget-object p3, p0, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields;->channel:Ljava/lang/Integer;

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    iget-boolean p4, p0, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields;->hidden:Z

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    iget p5, p0, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields;->passwordFingerprint:I

    :cond_4
    move p6, p4

    move p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p7}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields;->copy(Ljava/util/BitSet;Ljava/lang/Integer;Ljava/lang/Integer;ZI)Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/BitSet;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields;->keyManagement:Ljava/util/BitSet;

    return-object v0
.end method

.method public final component2()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields;->band:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component3()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields;->channel:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields;->hidden:Z

    return v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields;->passwordFingerprint:I

    return v0
.end method

.method public final copy(Ljava/util/BitSet;Ljava/lang/Integer;Ljava/lang/Integer;ZI)Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields;
    .locals 6

    new-instance v0, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields;-><init>(Ljava/util/BitSet;Ljava/lang/Integer;Ljava/lang/Integer;ZI)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields;

    iget-object v1, p0, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields;->keyManagement:Ljava/util/BitSet;

    iget-object v3, p1, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields;->keyManagement:Ljava/util/BitSet;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields;->band:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields;->band:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields;->channel:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields;->channel:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields;->hidden:Z

    iget-boolean v3, p1, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields;->hidden:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields;->passwordFingerprint:I

    iget p1, p1, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields;->passwordFingerprint:I

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getBand()Ljava/lang/Integer;
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields;->band:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getChannel()Ljava/lang/Integer;
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields;->channel:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getHidden()Z
    .locals 1

    .line 368
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields;->hidden:Z

    return v0
.end method

.method public final getKeyManagement()Ljava/util/BitSet;
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields;->keyManagement:Ljava/util/BitSet;

    return-object v0
.end method

.method public final getPasswordFingerprint()I
    .locals 1

    .line 369
    iget v0, p0, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields;->passwordFingerprint:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields;->keyManagement:Ljava/util/BitSet;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/BitSet;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields;->band:Ljava/lang/Integer;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields;->channel:Ljava/lang/Integer;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields;->hidden:Z

    invoke-static {v1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields;->passwordFingerprint:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields;->keyManagement:Ljava/util/BitSet;

    iget-object v1, p0, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields;->band:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields;->channel:Ljava/lang/Integer;

    iget-boolean v3, p0, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields;->hidden:Z

    iget v4, p0, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$Fields;->passwordFingerprint:I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Fields(keyManagement="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", band="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", channel="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", hidden="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", passwordFingerprint="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
