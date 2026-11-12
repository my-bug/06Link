.class public final synthetic Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/shilapi/xcertplay/adb/LocalAdb;


# direct methods
.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/adb/LocalAdb;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$$ExternalSyntheticLambda0;->f$0:Lcom/shilapi/xcertplay/adb/LocalAdb;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$$ExternalSyntheticLambda0;->f$0:Lcom/shilapi/xcertplay/adb/LocalAdb;

    invoke-static {v0}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->$r8$lambda$ILSEOB-WJahJ8Y3UOnW1537cKi8(Lcom/shilapi/xcertplay/adb/LocalAdb;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
