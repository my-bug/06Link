.class public interface abstract Lcom/shilapi/xcertplay/orchestration/CarPlayVideoListener;
.super Ljava/lang/Object;
.source "CarPlayVideoListener.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J\u000f\u0010\u0002\u001a\u0004\u0018\u00010\u0003H&\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0003H&J&\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\n2\u0014\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000cH&J\u0008\u0010\u000e\u001a\u00020\u0006H&J\u0008\u0010\u000f\u001a\u00020\u0006H&\u00a8\u0006\u0010\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/orchestration/CarPlayVideoListener;",
        "",
        "readParked",
        "",
        "()Ljava/lang/Boolean;",
        "onVideoAllowedChanged",
        "",
        "allowed",
        "onVideoMessage",
        "streamId",
        "",
        "message",
        "",
        "",
        "onVideoUiRequested",
        "onVideoSessionEnded",
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


# virtual methods
.method public abstract onVideoAllowedChanged(Z)V
.end method

.method public abstract onVideoMessage(JLjava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onVideoSessionEnded()V
.end method

.method public abstract onVideoUiRequested()V
.end method

.method public abstract readParked()Ljava/lang/Boolean;
.end method
