.class public final synthetic Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda127;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/shilapi/xcertplay/DiPlayActivity;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Landroid/widget/TextView;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/io/File;

.field public final synthetic f$5:Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome$Available;


# direct methods
.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/DiPlayActivity;ZLandroid/widget/TextView;Ljava/lang/String;Ljava/io/File;Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome$Available;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda127;->f$0:Lcom/shilapi/xcertplay/DiPlayActivity;

    iput-boolean p2, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda127;->f$1:Z

    iput-object p3, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda127;->f$2:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda127;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda127;->f$4:Ljava/io/File;

    iput-object p6, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda127;->f$5:Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome$Available;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda127;->f$0:Lcom/shilapi/xcertplay/DiPlayActivity;

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda127;->f$1:Z

    iget-object v2, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda127;->f$2:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda127;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda127;->f$4:Ljava/io/File;

    iget-object v5, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda127;->f$5:Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome$Available;

    invoke-static/range {v0 .. v5}, Lcom/shilapi/xcertplay/DiPlayActivity;->$r8$lambda$09eN4xw8lrlVHQE1oZQbz9L48v8(Lcom/shilapi/xcertplay/DiPlayActivity;ZLandroid/widget/TextView;Ljava/lang/String;Ljava/io/File;Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome$Available;)V

    return-void
.end method
