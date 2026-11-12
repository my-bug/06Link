.class public final synthetic Lcom/shilapi/xcertplay/network/ManualHotspotManagerKt$WhenMappings;
.super Ljava/lang/Object;
.source "ManualHotspotManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/network/ManualHotspotManagerKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = "WhenMappings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/shilapi/xcertplay/orchestration/ManualHotspotSecurity;->values()[Lcom/shilapi/xcertplay/orchestration/ManualHotspotSecurity;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/shilapi/xcertplay/orchestration/ManualHotspotSecurity;->OPEN:Lcom/shilapi/xcertplay/orchestration/ManualHotspotSecurity;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/orchestration/ManualHotspotSecurity;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lcom/shilapi/xcertplay/orchestration/ManualHotspotSecurity;->WPA2:Lcom/shilapi/xcertplay/orchestration/ManualHotspotSecurity;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/orchestration/ManualHotspotSecurity;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Lcom/shilapi/xcertplay/orchestration/ManualHotspotSecurity;->WPA3_TRANSITION:Lcom/shilapi/xcertplay/orchestration/ManualHotspotSecurity;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/orchestration/ManualHotspotSecurity;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lcom/shilapi/xcertplay/orchestration/ManualHotspotSecurity;->WPA3:Lcom/shilapi/xcertplay/orchestration/ManualHotspotSecurity;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/orchestration/ManualHotspotSecurity;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    sput-object v0, Lcom/shilapi/xcertplay/network/ManualHotspotManagerKt$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
