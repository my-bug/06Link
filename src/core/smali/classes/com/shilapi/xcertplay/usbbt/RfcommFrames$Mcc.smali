.class public final Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Mcc;
.super Ljava/lang/Object;
.source "Rfcomm.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/usbbt/RfcommFrames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mcc"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0010\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0013\u0010\u0010\u001a\u00020\u00052\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u0012\u001a\u00020\u0003H\u0016J\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0007H\u00c6\u0003J\'\u0010\u0016\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Mcc;",
        "",
        "type",
        "",
        "command",
        "",
        "value",
        "",
        "<init>",
        "(IZ[B)V",
        "getType",
        "()I",
        "getCommand",
        "()Z",
        "getValue",
        "()[B",
        "equals",
        "other",
        "hashCode",
        "component1",
        "component2",
        "component3",
        "copy",
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
.field private final command:Z

.field private final type:I

.field private final value:[B


# direct methods
.method public constructor <init>(IZ[B)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Mcc;->type:I

    iput-boolean p2, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Mcc;->command:Z

    iput-object p3, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Mcc;->value:[B

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Mcc;IZ[BILjava/lang/Object;)Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Mcc;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Mcc;->type:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-boolean p2, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Mcc;->command:Z

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Mcc;->value:[B

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Mcc;->copy(IZ[B)Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Mcc;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Mcc;->type:I

    return v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Mcc;->command:Z

    return v0
.end method

.method public final component3()[B
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Mcc;->value:[B

    return-object v0
.end method

.method public final copy(IZ[B)Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Mcc;
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Mcc;

    invoke-direct {v0, p1, p2, p3}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Mcc;-><init>(IZ[B)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 131
    instance-of v0, p1, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Mcc;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Mcc;

    iget v0, p1, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Mcc;->type:I

    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Mcc;->type:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Mcc;->command:Z

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Mcc;->command:Z

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Mcc;->value:[B

    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Mcc;->value:[B

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final getCommand()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Mcc;->command:Z

    return v0
.end method

.method public final getType()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Mcc;->type:I

    return v0
.end method

.method public final getValue()[B
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Mcc;->value:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 132
    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Mcc;->type:I

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Mcc;->command:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Mcc;->value:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Mcc;->type:I

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Mcc;->command:Z

    iget-object v2, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Mcc;->value:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Mcc(type="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", command="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", value="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
