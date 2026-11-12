.class public final Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Probed;
.super Ljava/lang/Object;
.source "CarPlayBonjour.kt"

# interfaces
.implements Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Probed"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\tH\u00c6\u0003J5\u0010\u0018\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\tH\u00c6\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u00d6\u0003J\t\u0010\u001d\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u001e\u001a\u00020\u0007H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Probed;",
        "Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent;",
        "endpoint",
        "Lcom/shilapi/xcertplay/network/CarPlayBonjourEndpoint;",
        "attempts",
        "",
        "statusLine",
        "",
        "error",
        "Ljava/io/IOException;",
        "<init>",
        "(Lcom/shilapi/xcertplay/network/CarPlayBonjourEndpoint;ILjava/lang/String;Ljava/io/IOException;)V",
        "getEndpoint",
        "()Lcom/shilapi/xcertplay/network/CarPlayBonjourEndpoint;",
        "getAttempts",
        "()I",
        "getStatusLine",
        "()Ljava/lang/String;",
        "getError",
        "()Ljava/io/IOException;",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "",
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
.field private final attempts:I

.field private final endpoint:Lcom/shilapi/xcertplay/network/CarPlayBonjourEndpoint;

.field private final error:Ljava/io/IOException;

.field private final statusLine:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/shilapi/xcertplay/network/CarPlayBonjourEndpoint;ILjava/lang/String;Ljava/io/IOException;)V
    .locals 1

    const-string v0, "endpoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Probed;->endpoint:Lcom/shilapi/xcertplay/network/CarPlayBonjourEndpoint;

    .line 49
    iput p2, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Probed;->attempts:I

    .line 50
    iput-object p3, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Probed;->statusLine:Ljava/lang/String;

    .line 51
    iput-object p4, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Probed;->error:Ljava/io/IOException;

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Probed;Lcom/shilapi/xcertplay/network/CarPlayBonjourEndpoint;ILjava/lang/String;Ljava/io/IOException;ILjava/lang/Object;)Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Probed;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Probed;->endpoint:Lcom/shilapi/xcertplay/network/CarPlayBonjourEndpoint;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Probed;->attempts:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Probed;->statusLine:Ljava/lang/String;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Probed;->error:Ljava/io/IOException;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Probed;->copy(Lcom/shilapi/xcertplay/network/CarPlayBonjourEndpoint;ILjava/lang/String;Ljava/io/IOException;)Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Probed;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/shilapi/xcertplay/network/CarPlayBonjourEndpoint;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Probed;->endpoint:Lcom/shilapi/xcertplay/network/CarPlayBonjourEndpoint;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Probed;->attempts:I

    return v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Probed;->statusLine:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/io/IOException;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Probed;->error:Ljava/io/IOException;

    return-object v0
.end method

.method public final copy(Lcom/shilapi/xcertplay/network/CarPlayBonjourEndpoint;ILjava/lang/String;Ljava/io/IOException;)Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Probed;
    .locals 1

    const-string v0, "endpoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Probed;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Probed;-><init>(Lcom/shilapi/xcertplay/network/CarPlayBonjourEndpoint;ILjava/lang/String;Ljava/io/IOException;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Probed;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Probed;

    iget-object v1, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Probed;->endpoint:Lcom/shilapi/xcertplay/network/CarPlayBonjourEndpoint;

    iget-object v3, p1, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Probed;->endpoint:Lcom/shilapi/xcertplay/network/CarPlayBonjourEndpoint;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Probed;->attempts:I

    iget v3, p1, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Probed;->attempts:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Probed;->statusLine:Ljava/lang/String;

    iget-object v3, p1, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Probed;->statusLine:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Probed;->error:Ljava/io/IOException;

    iget-object p1, p1, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Probed;->error:Ljava/io/IOException;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getAttempts()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Probed;->attempts:I

    return v0
.end method

.method public final getEndpoint()Lcom/shilapi/xcertplay/network/CarPlayBonjourEndpoint;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Probed;->endpoint:Lcom/shilapi/xcertplay/network/CarPlayBonjourEndpoint;

    return-object v0
.end method

.method public final getError()Ljava/io/IOException;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Probed;->error:Ljava/io/IOException;

    return-object v0
.end method

.method public final getStatusLine()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Probed;->statusLine:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Probed;->endpoint:Lcom/shilapi/xcertplay/network/CarPlayBonjourEndpoint;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/CarPlayBonjourEndpoint;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Probed;->attempts:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Probed;->statusLine:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Probed;->error:Ljava/io/IOException;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/io/IOException;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Probed;->endpoint:Lcom/shilapi/xcertplay/network/CarPlayBonjourEndpoint;

    iget v1, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Probed;->attempts:I

    iget-object v2, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Probed;->statusLine:Ljava/lang/String;

    iget-object v3, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Probed;->error:Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Probed(endpoint="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", attempts="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", statusLine="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", error="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
