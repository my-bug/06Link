.class public final Lcom/shilapi/xcertplay/compat/AnyLocalBind$Attempt;
.super Ljava/lang/Object;
.source "AnyLocalBind.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/compat/AnyLocalBind;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Attempt"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0008\u0010\u0010\u001a\u00020\u0011H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/compat/AnyLocalBind$Attempt;",
        "",
        "address",
        "Ljava/net/InetAddress;",
        "port",
        "",
        "error",
        "",
        "<init>",
        "(Ljava/net/InetAddress;ILjava/lang/Throwable;)V",
        "getAddress",
        "()Ljava/net/InetAddress;",
        "getPort",
        "()I",
        "getError",
        "()Ljava/lang/Throwable;",
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
.field private final address:Ljava/net/InetAddress;

.field private final error:Ljava/lang/Throwable;

.field private final port:I


# direct methods
.method public constructor <init>(Ljava/net/InetAddress;ILjava/lang/Throwable;)V
    .locals 1

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/compat/AnyLocalBind$Attempt;->address:Ljava/net/InetAddress;

    iput p2, p0, Lcom/shilapi/xcertplay/compat/AnyLocalBind$Attempt;->port:I

    iput-object p3, p0, Lcom/shilapi/xcertplay/compat/AnyLocalBind$Attempt;->error:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final getAddress()Ljava/net/InetAddress;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/shilapi/xcertplay/compat/AnyLocalBind$Attempt;->address:Ljava/net/InetAddress;

    return-object v0
.end method

.method public final getError()Ljava/lang/Throwable;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/shilapi/xcertplay/compat/AnyLocalBind$Attempt;->error:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final getPort()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/shilapi/xcertplay/compat/AnyLocalBind$Attempt;->port:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 35
    sget-object v0, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->INSTANCE:Lcom/shilapi/xcertplay/compat/AnyLocalBind;

    iget-object v1, p0, Lcom/shilapi/xcertplay/compat/AnyLocalBind$Attempt;->address:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->describe(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/shilapi/xcertplay/compat/AnyLocalBind$Attempt;->port:I

    iget-object v2, p0, Lcom/shilapi/xcertplay/compat/AnyLocalBind$Attempt;->error:Ljava/lang/Throwable;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/shilapi/xcertplay/compat/AnyLocalBind$Attempt;->error:Ljava/lang/Throwable;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
