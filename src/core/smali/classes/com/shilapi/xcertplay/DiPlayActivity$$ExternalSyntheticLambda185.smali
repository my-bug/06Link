.class public final synthetic Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda185;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lcom/shilapi/xcertplay/DiPlayActivity;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/shilapi/xcertplay/DiPlayActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda185;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda185;->f$1:Lcom/shilapi/xcertplay/DiPlayActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda185;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda185;->f$1:Lcom/shilapi/xcertplay/DiPlayActivity;

    check-cast p1, Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->$r8$lambda$0Gy9M03kA-NSZFoOxbuTE6UYM-s(Ljava/lang/String;Lcom/shilapi/xcertplay/DiPlayActivity;Landroid/content/Context;)Lcom/shilapi/xcertplay/DiagnosticUsbExport$Result;

    move-result-object p1

    return-object p1
.end method
