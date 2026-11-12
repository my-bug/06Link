.class final Lcom/shilapi/xcertplay/CarPlayHostActivity$SettingsBaseline;
.super Ljava/lang/Object;
.source "CarPlayHostActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/CarPlayHostActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SettingsBaseline"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0082\u0008\u0018\u00002\u00020\u0001B%\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J-\u0010\u0013\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u00c6\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/CarPlayHostActivity$SettingsBaseline;",
        "",
        "safeAreaSize",
        "Lcom/shilapi/xcertplay/CarPlayHostActivity$DisplaySize;",
        "safeAreaRect",
        "Lcom/shilapi/xcertplay/airplay/SafeAreaRect;",
        "customIconBytes",
        "",
        "<init>",
        "(Lcom/shilapi/xcertplay/CarPlayHostActivity$DisplaySize;Lcom/shilapi/xcertplay/airplay/SafeAreaRect;[B)V",
        "getSafeAreaSize",
        "()Lcom/shilapi/xcertplay/CarPlayHostActivity$DisplaySize;",
        "getSafeAreaRect",
        "()Lcom/shilapi/xcertplay/airplay/SafeAreaRect;",
        "getCustomIconBytes",
        "()[B",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "common_release"
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
.field private final customIconBytes:[B

.field private final safeAreaRect:Lcom/shilapi/xcertplay/airplay/SafeAreaRect;

.field private final safeAreaSize:Lcom/shilapi/xcertplay/CarPlayHostActivity$DisplaySize;


# direct methods
.method public constructor <init>(Lcom/shilapi/xcertplay/CarPlayHostActivity$DisplaySize;Lcom/shilapi/xcertplay/airplay/SafeAreaRect;[B)V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$SettingsBaseline;->safeAreaSize:Lcom/shilapi/xcertplay/CarPlayHostActivity$DisplaySize;

    .line 123
    iput-object p2, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$SettingsBaseline;->safeAreaRect:Lcom/shilapi/xcertplay/airplay/SafeAreaRect;

    .line 124
    iput-object p3, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$SettingsBaseline;->customIconBytes:[B

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/CarPlayHostActivity$SettingsBaseline;Lcom/shilapi/xcertplay/CarPlayHostActivity$DisplaySize;Lcom/shilapi/xcertplay/airplay/SafeAreaRect;[BILjava/lang/Object;)Lcom/shilapi/xcertplay/CarPlayHostActivity$SettingsBaseline;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$SettingsBaseline;->safeAreaSize:Lcom/shilapi/xcertplay/CarPlayHostActivity$DisplaySize;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$SettingsBaseline;->safeAreaRect:Lcom/shilapi/xcertplay/airplay/SafeAreaRect;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$SettingsBaseline;->customIconBytes:[B

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/CarPlayHostActivity$SettingsBaseline;->copy(Lcom/shilapi/xcertplay/CarPlayHostActivity$DisplaySize;Lcom/shilapi/xcertplay/airplay/SafeAreaRect;[B)Lcom/shilapi/xcertplay/CarPlayHostActivity$SettingsBaseline;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/shilapi/xcertplay/CarPlayHostActivity$DisplaySize;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$SettingsBaseline;->safeAreaSize:Lcom/shilapi/xcertplay/CarPlayHostActivity$DisplaySize;

    return-object v0
.end method

.method public final component2()Lcom/shilapi/xcertplay/airplay/SafeAreaRect;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$SettingsBaseline;->safeAreaRect:Lcom/shilapi/xcertplay/airplay/SafeAreaRect;

    return-object v0
.end method

.method public final component3()[B
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$SettingsBaseline;->customIconBytes:[B

    return-object v0
.end method

.method public final copy(Lcom/shilapi/xcertplay/CarPlayHostActivity$DisplaySize;Lcom/shilapi/xcertplay/airplay/SafeAreaRect;[B)Lcom/shilapi/xcertplay/CarPlayHostActivity$SettingsBaseline;
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/CarPlayHostActivity$SettingsBaseline;

    invoke-direct {v0, p1, p2, p3}, Lcom/shilapi/xcertplay/CarPlayHostActivity$SettingsBaseline;-><init>(Lcom/shilapi/xcertplay/CarPlayHostActivity$DisplaySize;Lcom/shilapi/xcertplay/airplay/SafeAreaRect;[B)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/CarPlayHostActivity$SettingsBaseline;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/CarPlayHostActivity$SettingsBaseline;

    iget-object v1, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$SettingsBaseline;->safeAreaSize:Lcom/shilapi/xcertplay/CarPlayHostActivity$DisplaySize;

    iget-object v3, p1, Lcom/shilapi/xcertplay/CarPlayHostActivity$SettingsBaseline;->safeAreaSize:Lcom/shilapi/xcertplay/CarPlayHostActivity$DisplaySize;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$SettingsBaseline;->safeAreaRect:Lcom/shilapi/xcertplay/airplay/SafeAreaRect;

    iget-object v3, p1, Lcom/shilapi/xcertplay/CarPlayHostActivity$SettingsBaseline;->safeAreaRect:Lcom/shilapi/xcertplay/airplay/SafeAreaRect;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$SettingsBaseline;->customIconBytes:[B

    iget-object p1, p1, Lcom/shilapi/xcertplay/CarPlayHostActivity$SettingsBaseline;->customIconBytes:[B

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getCustomIconBytes()[B
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$SettingsBaseline;->customIconBytes:[B

    return-object v0
.end method

.method public final getSafeAreaRect()Lcom/shilapi/xcertplay/airplay/SafeAreaRect;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$SettingsBaseline;->safeAreaRect:Lcom/shilapi/xcertplay/airplay/SafeAreaRect;

    return-object v0
.end method

.method public final getSafeAreaSize()Lcom/shilapi/xcertplay/CarPlayHostActivity$DisplaySize;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$SettingsBaseline;->safeAreaSize:Lcom/shilapi/xcertplay/CarPlayHostActivity$DisplaySize;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$SettingsBaseline;->safeAreaSize:Lcom/shilapi/xcertplay/CarPlayHostActivity$DisplaySize;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/CarPlayHostActivity$DisplaySize;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$SettingsBaseline;->safeAreaRect:Lcom/shilapi/xcertplay/airplay/SafeAreaRect;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$SettingsBaseline;->customIconBytes:[B

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$SettingsBaseline;->safeAreaSize:Lcom/shilapi/xcertplay/CarPlayHostActivity$DisplaySize;

    iget-object v1, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$SettingsBaseline;->safeAreaRect:Lcom/shilapi/xcertplay/airplay/SafeAreaRect;

    iget-object v2, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$SettingsBaseline;->customIconBytes:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SettingsBaseline(safeAreaSize="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", safeAreaRect="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", customIconBytes="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
