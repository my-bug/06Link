.class final Lcom/shilapi/xcertplay/network/WirelessGroupKeeper$Parked;
.super Ljava/lang/Object;
.source "WirelessGroupKeeper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Parked"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/WirelessGroupKeeper$Parked;",
        "",
        "manager",
        "Lcom/shilapi/xcertplay/network/WirelessHotspotManager;",
        "info",
        "Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;",
        "token",
        "",
        "<init>",
        "(Lcom/shilapi/xcertplay/network/WirelessHotspotManager;Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;I)V",
        "getManager",
        "()Lcom/shilapi/xcertplay/network/WirelessHotspotManager;",
        "getInfo",
        "()Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;",
        "getToken",
        "()I",
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
.field private final info:Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;

.field private final manager:Lcom/shilapi/xcertplay/network/WirelessHotspotManager;

.field private final token:I


# direct methods
.method public constructor <init>(Lcom/shilapi/xcertplay/network/WirelessHotspotManager;Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;I)V
    .locals 1

    const-string v0, "manager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper$Parked;->manager:Lcom/shilapi/xcertplay/network/WirelessHotspotManager;

    iput-object p2, p0, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper$Parked;->info:Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;

    iput p3, p0, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper$Parked;->token:I

    return-void
.end method


# virtual methods
.method public final getInfo()Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper$Parked;->info:Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;

    return-object v0
.end method

.method public final getManager()Lcom/shilapi/xcertplay/network/WirelessHotspotManager;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper$Parked;->manager:Lcom/shilapi/xcertplay/network/WirelessHotspotManager;

    return-object v0
.end method

.method public final getToken()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper$Parked;->token:I

    return v0
.end method
