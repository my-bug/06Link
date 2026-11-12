.class public final synthetic Lcom/shilapi/xcertplay/network/ExternalWifiManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/shilapi/xcertplay/network/ExternalWifiManager;


# direct methods
.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/network/ExternalWifiManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/network/ExternalWifiManager$$ExternalSyntheticLambda1;->f$0:Lcom/shilapi/xcertplay/network/ExternalWifiManager;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/ExternalWifiManager$$ExternalSyntheticLambda1;->f$0:Lcom/shilapi/xcertplay/network/ExternalWifiManager;

    check-cast p1, Ljava/net/NetworkInterface;

    invoke-static {v0, p1}, Lcom/shilapi/xcertplay/network/ExternalWifiManager;->$r8$lambda$MJsTMKepqcj3tt80l1dBml43AKo(Lcom/shilapi/xcertplay/network/ExternalWifiManager;Ljava/net/NetworkInterface;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
