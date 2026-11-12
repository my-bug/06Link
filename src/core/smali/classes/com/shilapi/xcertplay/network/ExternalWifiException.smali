.class public final Lcom/shilapi/xcertplay/network/ExternalWifiException;
.super Ljava/io/IOException;
.source "ExternalWifiManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001:\u0001\nB\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/ExternalWifiException;",
        "Ljava/io/IOException;",
        "reason",
        "Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;",
        "message",
        "",
        "<init>",
        "(Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;Ljava/lang/String;)V",
        "getReason",
        "()Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;",
        "Reason",
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
.field private final reason:Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;


# direct methods
.method public constructor <init>(Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;Ljava/lang/String;)V
    .locals 1

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/shilapi/xcertplay/network/ExternalWifiException;->reason:Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;

    return-void
.end method


# virtual methods
.method public final getReason()Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/ExternalWifiException;->reason:Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;

    return-object v0
.end method
