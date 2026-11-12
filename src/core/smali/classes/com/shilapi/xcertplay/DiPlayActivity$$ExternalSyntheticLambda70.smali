.class public final synthetic Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda70;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/shilapi/xcertplay/DiPlayActivity;

.field public final synthetic f$1:Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome$Available;

.field public final synthetic f$2:Ljava/io/File;

.field public final synthetic f$3:Lcom/shilapi/xcertplay/update/ApkInstaller$Verification;

.field public final synthetic f$4:Z

.field public final synthetic f$5:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/DiPlayActivity;Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome$Available;Ljava/io/File;Lcom/shilapi/xcertplay/update/ApkInstaller$Verification;ZLandroid/widget/TextView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda70;->f$0:Lcom/shilapi/xcertplay/DiPlayActivity;

    iput-object p2, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda70;->f$1:Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome$Available;

    iput-object p3, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda70;->f$2:Ljava/io/File;

    iput-object p4, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda70;->f$3:Lcom/shilapi/xcertplay/update/ApkInstaller$Verification;

    iput-boolean p5, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda70;->f$4:Z

    iput-object p6, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda70;->f$5:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda70;->f$0:Lcom/shilapi/xcertplay/DiPlayActivity;

    iget-object v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda70;->f$1:Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome$Available;

    iget-object v2, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda70;->f$2:Ljava/io/File;

    iget-object v3, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda70;->f$3:Lcom/shilapi/xcertplay/update/ApkInstaller$Verification;

    iget-boolean v4, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda70;->f$4:Z

    iget-object v5, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda70;->f$5:Landroid/widget/TextView;

    invoke-static/range {v0 .. v5}, Lcom/shilapi/xcertplay/DiPlayActivity;->$r8$lambda$J6nz4rmgbIyjm7wUzo7T1A6IpAY(Lcom/shilapi/xcertplay/DiPlayActivity;Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome$Available;Ljava/io/File;Lcom/shilapi/xcertplay/update/ApkInstaller$Verification;ZLandroid/widget/TextView;)V

    return-void
.end method
