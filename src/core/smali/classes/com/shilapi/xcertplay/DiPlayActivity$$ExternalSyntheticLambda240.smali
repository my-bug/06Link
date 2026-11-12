.class public final synthetic Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda240;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome$Available;

.field public final synthetic f$1:Ljava/io/File;

.field public final synthetic f$2:Lcom/shilapi/xcertplay/DiPlayActivity;

.field public final synthetic f$3:Landroid/widget/ProgressBar;

.field public final synthetic f$4:Landroid/widget/TextView;

.field public final synthetic f$5:Landroid/app/AlertDialog;

.field public final synthetic f$6:Landroid/widget/TextView;

.field public final synthetic f$7:Z


# direct methods
.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome$Available;Ljava/io/File;Lcom/shilapi/xcertplay/DiPlayActivity;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/app/AlertDialog;Landroid/widget/TextView;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda240;->f$0:Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome$Available;

    iput-object p2, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda240;->f$1:Ljava/io/File;

    iput-object p3, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda240;->f$2:Lcom/shilapi/xcertplay/DiPlayActivity;

    iput-object p4, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda240;->f$3:Landroid/widget/ProgressBar;

    iput-object p5, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda240;->f$4:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda240;->f$5:Landroid/app/AlertDialog;

    iput-object p7, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda240;->f$6:Landroid/widget/TextView;

    iput-boolean p8, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda240;->f$7:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda240;->f$0:Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome$Available;

    iget-object v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda240;->f$1:Ljava/io/File;

    iget-object v2, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda240;->f$2:Lcom/shilapi/xcertplay/DiPlayActivity;

    iget-object v3, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda240;->f$3:Landroid/widget/ProgressBar;

    iget-object v4, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda240;->f$4:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda240;->f$5:Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda240;->f$6:Landroid/widget/TextView;

    iget-boolean v7, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda240;->f$7:Z

    invoke-static/range {v0 .. v7}, Lcom/shilapi/xcertplay/DiPlayActivity;->$r8$lambda$adCGbxpK4U_kZ16rXCFehedFzIQ(Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome$Available;Ljava/io/File;Lcom/shilapi/xcertplay/DiPlayActivity;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/app/AlertDialog;Landroid/widget/TextView;Z)V

    return-void
.end method
