.class final Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;
.super Ljava/lang/Object;
.source "Iap2LinkEngine.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Header"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0013\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0082\u0008\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J;\u0010\u0015\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0019\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001a\u001a\u00020\u001bH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000bR\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000b\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;",
        "",
        "length",
        "",
        "control",
        "sequence",
        "acknowledgement",
        "sessionId",
        "<init>",
        "(IIIII)V",
        "getLength",
        "()I",
        "getControl",
        "getSequence",
        "getAcknowledgement",
        "getSessionId",
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
.field private final acknowledgement:I

.field private final control:I

.field private final length:I

.field private final sequence:I

.field private final sessionId:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;->length:I

    .line 108
    iput p2, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;->control:I

    .line 109
    iput p3, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;->sequence:I

    .line 110
    iput p4, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;->acknowledgement:I

    .line 111
    iput p5, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;->sessionId:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;IIIIIILjava/lang/Object;)Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;->length:I

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget p2, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;->control:I

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    iget p3, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;->sequence:I

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    iget p4, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;->acknowledgement:I

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    iget p5, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;->sessionId:I

    :cond_4
    move p6, p4

    move p7, p5

    move p4, p2

    move p5, p3

    move-object p2, p0

    move p3, p1

    invoke-virtual/range {p2 .. p7}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;->copy(IIIII)Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;->length:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;->control:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;->sequence:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;->acknowledgement:I

    return v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;->sessionId:I

    return v0
.end method

.method public final copy(IIIII)Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;
    .locals 6

    new-instance v0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;-><init>(IIIII)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;

    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;->length:I

    iget v3, p1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;->length:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;->control:I

    iget v3, p1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;->control:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;->sequence:I

    iget v3, p1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;->sequence:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;->acknowledgement:I

    iget v3, p1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;->acknowledgement:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;->sessionId:I

    iget p1, p1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;->sessionId:I

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getAcknowledgement()I
    .locals 1

    .line 110
    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;->acknowledgement:I

    return v0
.end method

.method public final getControl()I
    .locals 1

    .line 108
    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;->control:I

    return v0
.end method

.method public final getLength()I
    .locals 1

    .line 107
    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;->length:I

    return v0
.end method

.method public final getSequence()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;->sequence:I

    return v0
.end method

.method public final getSessionId()I
    .locals 1

    .line 111
    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;->sessionId:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;->length:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;->control:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;->sequence:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;->acknowledgement:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;->sessionId:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;->length:I

    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;->control:I

    iget v2, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;->sequence:I

    iget v3, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;->acknowledgement:I

    iget v4, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;->sessionId:I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Header(length="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", control="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", sequence="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", acknowledgement="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", sessionId="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
