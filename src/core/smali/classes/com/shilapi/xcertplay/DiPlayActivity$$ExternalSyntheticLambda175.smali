.class public final synthetic Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda175;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/shilapi/xcertplay/DiPlayActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/DiPlayActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda175;->f$0:Lcom/shilapi/xcertplay/DiPlayActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda175;->f$0:Lcom/shilapi/xcertplay/DiPlayActivity;

    check-cast p1, Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->$r8$lambda$6wFAdnzQd6hh3Q7S24ULAWtj5Qc(Lcom/shilapi/xcertplay/DiPlayActivity;Landroid/content/Context;)Lcom/shilapi/xcertplay/DiagnosticReportHttp$StartResult;

    move-result-object p1

    return-object p1
.end method
