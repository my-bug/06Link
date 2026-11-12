.class public final Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SessionDescriptor;
.super Ljava/lang/Object;
.source "Iap2LinkEngine.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SessionDescriptor"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\'\u0010\u000f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0013\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\t\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SessionDescriptor;",
        "",
        "id",
        "",
        "kind",
        "version",
        "<init>",
        "(III)V",
        "getId",
        "()I",
        "getKind",
        "getVersion",
        "component1",
        "component2",
        "component3",
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
.field private final id:I

.field private final kind:I

.field private final version:I


# direct methods
.method public constructor <init>(III)V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SessionDescriptor;->id:I

    .line 37
    iput p2, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SessionDescriptor;->kind:I

    .line 38
    iput p3, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SessionDescriptor;->version:I

    .line 41
    const-string v0, "Failed requirement."

    if-ltz p1, :cond_2

    const/16 v1, 0x100

    if-ge p1, v1, :cond_2

    if-ltz p2, :cond_1

    if-ge p2, v1, :cond_1

    if-ltz p3, :cond_0

    if-ge p3, v1, :cond_0

    return-void

    .line 43
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 42
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 41
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SessionDescriptor;IIIILjava/lang/Object;)Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SessionDescriptor;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SessionDescriptor;->id:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SessionDescriptor;->kind:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SessionDescriptor;->version:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SessionDescriptor;->copy(III)Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SessionDescriptor;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SessionDescriptor;->id:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SessionDescriptor;->kind:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SessionDescriptor;->version:I

    return v0
.end method

.method public final copy(III)Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SessionDescriptor;
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SessionDescriptor;

    invoke-direct {v0, p1, p2, p3}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SessionDescriptor;-><init>(III)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SessionDescriptor;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SessionDescriptor;

    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SessionDescriptor;->id:I

    iget v3, p1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SessionDescriptor;->id:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SessionDescriptor;->kind:I

    iget v3, p1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SessionDescriptor;->kind:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SessionDescriptor;->version:I

    iget p1, p1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SessionDescriptor;->version:I

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getId()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SessionDescriptor;->id:I

    return v0
.end method

.method public final getKind()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SessionDescriptor;->kind:I

    return v0
.end method

.method public final getVersion()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SessionDescriptor;->version:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SessionDescriptor;->id:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SessionDescriptor;->kind:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SessionDescriptor;->version:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SessionDescriptor;->id:I

    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SessionDescriptor;->kind:I

    iget v2, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SessionDescriptor;->version:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SessionDescriptor(id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", kind="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", version="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
