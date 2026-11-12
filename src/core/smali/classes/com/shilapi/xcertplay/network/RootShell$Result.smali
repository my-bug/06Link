.class public final Lcom/shilapi/xcertplay/network/RootShell$Result;
.super Ljava/lang/Object;
.source "RootShell.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/network/RootShell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0008\u0010\u0011\u001a\u00020\u0007H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\n\n\u0002\u0010\u000e\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/RootShell$Result;",
        "",
        "ok",
        "",
        "exitCode",
        "",
        "output",
        "",
        "<init>",
        "(ZLjava/lang/Integer;Ljava/lang/String;)V",
        "getOk",
        "()Z",
        "getExitCode",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getOutput",
        "()Ljava/lang/String;",
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
.field private final exitCode:Ljava/lang/Integer;

.field private final ok:Z

.field private final output:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/Integer;Ljava/lang/String;)V
    .locals 1

    const-string v0, "output"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/shilapi/xcertplay/network/RootShell$Result;->ok:Z

    iput-object p2, p0, Lcom/shilapi/xcertplay/network/RootShell$Result;->exitCode:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/shilapi/xcertplay/network/RootShell$Result;->output:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getExitCode()Ljava/lang/Integer;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/RootShell$Result;->exitCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getOk()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/network/RootShell$Result;->ok:Z

    return v0
.end method

.method public final getOutput()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/RootShell$Result;->output:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 29
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/network/RootShell$Result;->ok:Z

    iget-object v1, p0, Lcom/shilapi/xcertplay/network/RootShell$Result;->exitCode:Ljava/lang/Integer;

    if-nez v1, :cond_0

    const-string v1, "none"

    :cond_0
    iget-object v2, p0, Lcom/shilapi/xcertplay/network/RootShell$Result;->output:Ljava/lang/String;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x12c

    invoke-static {v2, v3}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/16 v5, 0xa

    const/16 v6, 0x20

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ok="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " exit="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " output="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
