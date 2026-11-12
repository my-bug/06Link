.class public final synthetic Lcom/shilapi/xcertplay/airplay/VideoSettingsChannel$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/shilapi/xcertplay/airplay/VideoSettingsChannel;

.field public final synthetic f$1:Ljava/net/ServerSocket;


# direct methods
.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/airplay/VideoSettingsChannel;Ljava/net/ServerSocket;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/VideoSettingsChannel$$ExternalSyntheticLambda2;->f$0:Lcom/shilapi/xcertplay/airplay/VideoSettingsChannel;

    iput-object p2, p0, Lcom/shilapi/xcertplay/airplay/VideoSettingsChannel$$ExternalSyntheticLambda2;->f$1:Ljava/net/ServerSocket;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/VideoSettingsChannel$$ExternalSyntheticLambda2;->f$0:Lcom/shilapi/xcertplay/airplay/VideoSettingsChannel;

    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/VideoSettingsChannel$$ExternalSyntheticLambda2;->f$1:Ljava/net/ServerSocket;

    invoke-static {v0, v1}, Lcom/shilapi/xcertplay/airplay/VideoSettingsChannel;->$r8$lambda$qVw6aCDLu8OokXkjd4j3PXAtwjA(Lcom/shilapi/xcertplay/airplay/VideoSettingsChannel;Ljava/net/ServerSocket;)V

    return-void
.end method
