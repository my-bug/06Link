.class public final Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;
.super Ljava/lang/Object;
.source "Rfcomm.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/usbbt/RfcommFrames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Frame"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0012\n\u0002\u0008\u0019\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0013\u0010\u0018\u001a\u00020\u00052\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u001a\u001a\u00020\u0003H\u0016J\t\u0010\u001b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001e\u001a\u00020\u0005H\u00c6\u0003J\u0010\u0010\u001f\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0014J\t\u0010 \u001a\u00020\nH\u00c6\u0003JL\u0010!\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00052\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\t\u001a\u00020\nH\u00c6\u0001\u00a2\u0006\u0002\u0010\"J\t\u0010#\u001a\u00020$H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0010R\u0015\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\u0015\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006%"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;",
        "",
        "dlci",
        "",
        "cr",
        "",
        "type",
        "pf",
        "credits",
        "info",
        "",
        "<init>",
        "(IZIZLjava/lang/Integer;[B)V",
        "getDlci",
        "()I",
        "getCr",
        "()Z",
        "getType",
        "getPf",
        "getCredits",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getInfo",
        "()[B",
        "equals",
        "other",
        "hashCode",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "(IZIZLjava/lang/Integer;[B)Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;",
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
.field private final cr:Z

.field private final credits:Ljava/lang/Integer;

.field private final dlci:I

.field private final info:[B

.field private final pf:Z

.field private final type:I


# direct methods
.method public constructor <init>(IZIZLjava/lang/Integer;[B)V
    .locals 1

    const-string v0, "info"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->dlci:I

    .line 65
    iput-boolean p2, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->cr:Z

    .line 67
    iput p3, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->type:I

    .line 68
    iput-boolean p4, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->pf:Z

    .line 70
    iput-object p5, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->credits:Ljava/lang/Integer;

    .line 71
    iput-object p6, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->info:[B

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;IZIZLjava/lang/Integer;[BILjava/lang/Object;)Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;
    .locals 0

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget p1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->dlci:I

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-boolean p2, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->cr:Z

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    iget p3, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->type:I

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    iget-boolean p4, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->pf:Z

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    iget-object p5, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->credits:Ljava/lang/Integer;

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    iget-object p6, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->info:[B

    :cond_5
    move-object p7, p5

    move-object p8, p6

    move p5, p3

    move p6, p4

    move p3, p1

    move p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p8}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->copy(IZIZLjava/lang/Integer;[B)Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->dlci:I

    return v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->cr:Z

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->type:I

    return v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->pf:Z

    return v0
.end method

.method public final component5()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->credits:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component6()[B
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->info:[B

    return-object v0
.end method

.method public final copy(IZIZLjava/lang/Integer;[B)Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;
    .locals 8

    const-string v0, "info"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;-><init>(IZIZLjava/lang/Integer;[B)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 73
    instance-of v0, p1, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;

    iget v0, p1, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->dlci:I

    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->dlci:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->cr:Z

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->cr:Z

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->type:I

    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->type:I

    if-ne v0, v1, :cond_0

    .line 74
    iget-boolean v0, p1, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->pf:Z

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->pf:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->credits:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->credits:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->info:[B

    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->info:[B

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final getCr()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->cr:Z

    return v0
.end method

.method public final getCredits()Ljava/lang/Integer;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->credits:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getDlci()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->dlci:I

    return v0
.end method

.method public final getInfo()[B
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->info:[B

    return-object v0
.end method

.method public final getPf()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->pf:Z

    return v0
.end method

.method public final getType()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 75
    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->dlci:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->type:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->credits:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->info:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->dlci:I

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->cr:Z

    iget v2, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->type:I

    iget-boolean v3, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->pf:Z

    iget-object v4, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->credits:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Frame;->info:[B

    invoke-static {v5}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Frame(dlci="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", cr="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", type="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", pf="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", credits="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", info="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
