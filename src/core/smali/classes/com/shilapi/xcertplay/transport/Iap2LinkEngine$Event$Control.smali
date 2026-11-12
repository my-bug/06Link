.class public final Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event$Control;
.super Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event;
.source "Iap2LinkEngine.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Control"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\t\u0010\u0008\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\t\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u00d6\u0003J\t\u0010\u000e\u001a\u00020\u000fH\u00d6\u0001J\t\u0010\u0010\u001a\u00020\u0011H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event$Control;",
        "Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event;",
        "bytes",
        "",
        "<init>",
        "([B)V",
        "getBytes",
        "()[B",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "",
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
.field private final bytes:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event$Control;->bytes:[B

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event$Control;[BILjava/lang/Object;)Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event$Control;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event$Control;->bytes:[B

    :cond_0
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event$Control;->copy([B)Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event$Control;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()[B
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event$Control;->bytes:[B

    return-object v0
.end method

.method public final copy([B)Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event$Control;
    .locals 1

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event$Control;

    invoke-direct {v0, p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event$Control;-><init>([B)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event$Control;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event$Control;

    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event$Control;->bytes:[B

    iget-object p1, p1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event$Control;->bytes:[B

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getBytes()[B
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event$Control;->bytes:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event$Control;->bytes:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event$Control;->bytes:[B

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Control(bytes="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
