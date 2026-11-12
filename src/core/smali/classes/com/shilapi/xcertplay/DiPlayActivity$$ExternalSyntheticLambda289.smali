.class public final synthetic Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda289;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/shilapi/xcertplay/DiPlayActivity;

.field public final synthetic f$1:Ljava/io/File;

.field public final synthetic f$2:Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome$Available;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/DiPlayActivity;Ljava/io/File;Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome$Available;ZLandroid/widget/TextView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda289;->f$0:Lcom/shilapi/xcertplay/DiPlayActivity;

    iput-object p2, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda289;->f$1:Ljava/io/File;

    iput-object p3, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda289;->f$2:Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome$Available;

    iput-boolean p4, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda289;->f$3:Z

    iput-object p5, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda289;->f$4:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda289;->f$0:Lcom/shilapi/xcertplay/DiPlayActivity;

    iget-object v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda289;->f$1:Ljava/io/File;

    iget-object v2, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda289;->f$2:Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome$Available;

    iget-boolean v3, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda289;->f$3:Z

    iget-object v4, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda289;->f$4:Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/shilapi/xcertplay/DiPlayActivity;->$r8$lambda$Z3YKSuuR4wkPvscCb5LdD6DE11o(Lcom/shilapi/xcertplay/DiPlayActivity;Ljava/io/File;Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome$Available;ZLandroid/widget/TextView;)V

    return-void
.end method
