.class public final synthetic Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/shilapi/xcertplay/adb/LocalAdb;


# direct methods
.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/adb/LocalAdb;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$$ExternalSyntheticLambda1;->f$0:Lcom/shilapi/xcertplay/adb/LocalAdb;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$$ExternalSyntheticLambda1;->f$0:Lcom/shilapi/xcertplay/adb/LocalAdb;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->$r8$lambda$QVLVaK_mlyD5LLQ9mVEjsFhT_co(Lcom/shilapi/xcertplay/adb/LocalAdb;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
