.class public final synthetic Lcom/shilapi/xcertplay/airplay/ScreenStream$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/shilapi/xcertplay/airplay/ScreenStream;

.field public final synthetic f$1:Ljava/net/ServerSocket;


# direct methods
.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/airplay/ScreenStream;Ljava/net/ServerSocket;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/ScreenStream$$ExternalSyntheticLambda2;->f$0:Lcom/shilapi/xcertplay/airplay/ScreenStream;

    iput-object p2, p0, Lcom/shilapi/xcertplay/airplay/ScreenStream$$ExternalSyntheticLambda2;->f$1:Ljava/net/ServerSocket;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/ScreenStream$$ExternalSyntheticLambda2;->f$0:Lcom/shilapi/xcertplay/airplay/ScreenStream;

    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/ScreenStream$$ExternalSyntheticLambda2;->f$1:Ljava/net/ServerSocket;

    invoke-static {v0, v1}, Lcom/shilapi/xcertplay/airplay/ScreenStream;->$r8$lambda$7H9jWpaQCgUibmMZRkG-PaoEGvw(Lcom/shilapi/xcertplay/airplay/ScreenStream;Ljava/net/ServerSocket;)V

    return-void
.end method
