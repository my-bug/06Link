.class public final Lcom/shilapi/xcertplay/network/CarWifiPassword$Known;
.super Ljava/lang/Object;
.source "CarWifiPassword.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/network/CarWifiPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Known"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/CarWifiPassword$Known;",
        "",
        "ssid",
        "",
        "passphrase",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "getSsid",
        "()Ljava/lang/String;",
        "getPassphrase",
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
.field private final passphrase:Ljava/lang/String;

.field private final ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "ssid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "passphrase"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/network/CarWifiPassword$Known;->ssid:Ljava/lang/String;

    iput-object p2, p0, Lcom/shilapi/xcertplay/network/CarWifiPassword$Known;->passphrase:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getPassphrase()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarWifiPassword$Known;->passphrase:Ljava/lang/String;

    return-object v0
.end method

.method public final getSsid()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarWifiPassword$Known;->ssid:Ljava/lang/String;

    return-object v0
.end method
