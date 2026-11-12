.class public final synthetic Lcom/shilapi/xcertplay/hud/BydBatteryStatus$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/shilapi/xcertplay/hud/BydBatteryStatus;->$r8$lambda$iZkywH8BjH06IpF9Yy6-EiR4Gxk(Landroid/content/Context;)Lcom/shilapi/xcertplay/hud/BydBatteryReading;

    move-result-object p1

    return-object p1
.end method
