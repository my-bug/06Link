.class public final synthetic Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/shilapi/xcertplay/airplay/AirPlaySession;


# direct methods
.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$$ExternalSyntheticLambda0;->f$0:Lcom/shilapi/xcertplay/airplay/AirPlaySession;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$$ExternalSyntheticLambda0;->f$0:Lcom/shilapi/xcertplay/airplay/AirPlaySession;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, p1}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->$r8$lambda$CrqxDTYiJKLZjmZeXk4GVRQe68c(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/util/Map$Entry;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
