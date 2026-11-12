.class public final Lcom/shilapi/xcertplay/airplay/RtspMessage$Parsed;
.super Ljava/lang/Object;
.source "RtspMessage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/airplay/RtspMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Parsed"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0006H\u00c6\u0003J#\u0010\u000f\u001a\u00020\u00002\u000e\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006H\u00c6\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001R\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/airplay/RtspMessage$Parsed;",
        "",
        "messages",
        "",
        "Lcom/shilapi/xcertplay/airplay/RtspMessage$Request;",
        "rest",
        "",
        "<init>",
        "(Ljava/util/List;[B)V",
        "getMessages",
        "()Ljava/util/List;",
        "getRest",
        "()[B",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
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
.field private final messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/airplay/RtspMessage$Request;",
            ">;"
        }
    .end annotation
.end field

.field private final rest:[B


# direct methods
.method public constructor <init>(Ljava/util/List;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/airplay/RtspMessage$Request;",
            ">;[B)V"
        }
    .end annotation

    const-string v0, "messages"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/RtspMessage$Parsed;->messages:Ljava/util/List;

    iput-object p2, p0, Lcom/shilapi/xcertplay/airplay/RtspMessage$Parsed;->rest:[B

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/airplay/RtspMessage$Parsed;Ljava/util/List;[BILjava/lang/Object;)Lcom/shilapi/xcertplay/airplay/RtspMessage$Parsed;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/shilapi/xcertplay/airplay/RtspMessage$Parsed;->messages:Ljava/util/List;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/shilapi/xcertplay/airplay/RtspMessage$Parsed;->rest:[B

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Parsed;->copy(Ljava/util/List;[B)Lcom/shilapi/xcertplay/airplay/RtspMessage$Parsed;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/airplay/RtspMessage$Request;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/RtspMessage$Parsed;->messages:Ljava/util/List;

    return-object v0
.end method

.method public final component2()[B
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/RtspMessage$Parsed;->rest:[B

    return-object v0
.end method

.method public final copy(Ljava/util/List;[B)Lcom/shilapi/xcertplay/airplay/RtspMessage$Parsed;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/airplay/RtspMessage$Request;",
            ">;[B)",
            "Lcom/shilapi/xcertplay/airplay/RtspMessage$Parsed;"
        }
    .end annotation

    const-string v0, "messages"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/shilapi/xcertplay/airplay/RtspMessage$Parsed;

    invoke-direct {v0, p1, p2}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Parsed;-><init>(Ljava/util/List;[B)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/airplay/RtspMessage$Parsed;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/airplay/RtspMessage$Parsed;

    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/RtspMessage$Parsed;->messages:Ljava/util/List;

    iget-object v3, p1, Lcom/shilapi/xcertplay/airplay/RtspMessage$Parsed;->messages:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/RtspMessage$Parsed;->rest:[B

    iget-object p1, p1, Lcom/shilapi/xcertplay/airplay/RtspMessage$Parsed;->rest:[B

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/airplay/RtspMessage$Request;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/RtspMessage$Parsed;->messages:Ljava/util/List;

    return-object v0
.end method

.method public final getRest()[B
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/RtspMessage$Parsed;->rest:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/RtspMessage$Parsed;->messages:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/RtspMessage$Parsed;->rest:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/RtspMessage$Parsed;->messages:Ljava/util/List;

    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/RtspMessage$Parsed;->rest:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parsed(messages="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", rest="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
