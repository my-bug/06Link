.class public final Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event$Dead;
.super Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event;
.source "Iap2LinkEngine.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dead"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0011\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000b\u0010\u0008\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0015\u0010\t\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001J\u0013\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u00d6\u0003J\t\u0010\u000e\u001a\u00020\u000fH\u00d6\u0001J\t\u0010\u0010\u001a\u00020\u0003H\u00d6\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event$Dead;",
        "Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event;",
        "reason",
        "",
        "<init>",
        "(Ljava/lang/String;)V",
        "getReason",
        "()Ljava/lang/String;",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "",
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
.field private final reason:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event$Dead;->reason:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event$Dead;Ljava/lang/String;ILjava/lang/Object;)Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event$Dead;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event$Dead;->reason:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event$Dead;->copy(Ljava/lang/String;)Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event$Dead;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event$Dead;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;)Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event$Dead;
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event$Dead;

    invoke-direct {v0, p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event$Dead;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event$Dead;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event$Dead;

    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event$Dead;->reason:Ljava/lang/String;

    iget-object p1, p1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event$Dead;->reason:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getReason()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event$Dead;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event$Dead;->reason:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event$Dead;->reason:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Dead(reason="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
