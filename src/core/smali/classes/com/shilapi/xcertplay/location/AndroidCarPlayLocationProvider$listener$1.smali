.class public final Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider$listener$1;
.super Ljava/lang/Object;
.source "AndroidCarPlayLocationProvider.kt"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider;-><init>(Landroid/content/Context;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\"\u0010\n\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/shilapi/xcertplay/location/AndroidCarPlayLocationProvider$listener$1",
        "Landroid/location/LocationListener;",
        "onLocationChanged",
        "",
        "location",
        "Landroid/location/Location;",
        "onProviderEnabled",
        "provider",
        "",
        "onProviderDisabled",
        "onStatusChanged",
        "status",
        "",
        "extras",
        "Landroid/os/Bundle;",
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
.field final synthetic this$0:Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider;


# direct methods
.method constructor <init>(Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider$listener$1;->this$0:Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3

    const-string v0, "location"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider$listener$1;->this$0:Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider;

    # getter for: Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider;->preferredProviders:Ljava/util/List;
    invoke-static {v1}, Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider;->access$getPreferredProviders$p(Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    iget-object v1, p0, Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider$listener$1;->this$0:Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider;

    # getter for: Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider;->latestFixes:Lj$/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider;->access$getLatestFixes$p(Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider;)Lj$/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object p1, p0, Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider$listener$1;->this$0:Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider;

    # getter for: Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider;->receivedElapsedMillis:Lj$/util/concurrent/ConcurrentHashMap;
    invoke-static {p1}, Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider;->access$getReceivedElapsedMillis$p(Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider;)Lj$/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 1

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    const-string p2, "provider"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
