.class public final Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Result;
.super Ljava/lang/Object;
.source "NetworkAdbPersistence.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0008\u0010\u0010\u001a\u00020\u0005H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u000c\u001a\u00020\r8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Result;",
        "",
        "outcome",
        "Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Outcome;",
        "detail",
        "",
        "<init>",
        "(Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Outcome;Ljava/lang/String;)V",
        "getOutcome",
        "()Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Outcome;",
        "getDetail",
        "()Ljava/lang/String;",
        "persisted",
        "",
        "getPersisted",
        "()Z",
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
.field private final detail:Ljava/lang/String;

.field private final outcome:Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Outcome;


# direct methods
.method public constructor <init>(Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Outcome;Ljava/lang/String;)V
    .locals 1

    const-string v0, "outcome"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detail"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Result;->outcome:Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Outcome;

    iput-object p2, p0, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Result;->detail:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getDetail()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Result;->detail:Ljava/lang/String;

    return-object v0
.end method

.method public final getOutcome()Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Outcome;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Result;->outcome:Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Outcome;

    return-object v0
.end method

.method public final getPersisted()Z
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Result;->outcome:Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Outcome;

    sget-object v1, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Outcome;->PERSISTED:Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Outcome;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Result;->outcome:Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Outcome;

    sget-object v1, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Outcome;->ALREADY:Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Outcome;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 31
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Result;->outcome:Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Outcome;

    iget-object v1, p0, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Result;->detail:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "networkAdbPersist="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
