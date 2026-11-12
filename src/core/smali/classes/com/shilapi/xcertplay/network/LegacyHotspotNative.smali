.class final Lcom/shilapi/xcertplay/network/LegacyHotspotNative;
.super Ljava/lang/Object;
.source "LegacyHotspotRadio.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u00c2\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0011\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0086 \u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/LegacyHotspotNative;",
        "",
        "<init>",
        "()V",
        "query",
        "",
        "interfaceName",
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


# static fields
.field public static final INSTANCE:Lcom/shilapi/xcertplay/network/LegacyHotspotNative;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/network/LegacyHotspotNative;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/network/LegacyHotspotNative;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/network/LegacyHotspotNative;->INSTANCE:Lcom/shilapi/xcertplay/network/LegacyHotspotNative;

    .line 57
    const-string v0, "local_hotspot_radio"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final native query(Ljava/lang/String;)[I
.end method
