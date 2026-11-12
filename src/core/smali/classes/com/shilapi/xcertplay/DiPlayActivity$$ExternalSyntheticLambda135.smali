.class public final synthetic Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda135;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/shilapi/xcertplay/DiPlayActivity;

.field public final synthetic f$1:Landroid/widget/TextView;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/shilapi/xcertplay/hud/BydAdbAccess$Status;

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/DiPlayActivity;Landroid/widget/TextView;ILcom/shilapi/xcertplay/hud/BydAdbAccess$Status;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda135;->f$0:Lcom/shilapi/xcertplay/DiPlayActivity;

    iput-object p2, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda135;->f$1:Landroid/widget/TextView;

    iput p3, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda135;->f$2:I

    iput-object p4, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda135;->f$3:Lcom/shilapi/xcertplay/hud/BydAdbAccess$Status;

    iput-boolean p5, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda135;->f$4:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda135;->f$0:Lcom/shilapi/xcertplay/DiPlayActivity;

    iget-object v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda135;->f$1:Landroid/widget/TextView;

    iget v2, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda135;->f$2:I

    iget-object v3, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda135;->f$3:Lcom/shilapi/xcertplay/hud/BydAdbAccess$Status;

    iget-boolean v4, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda135;->f$4:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/shilapi/xcertplay/DiPlayActivity;->$r8$lambda$z8OFb86AJWvEJWSMxGt7IJFXi58(Lcom/shilapi/xcertplay/DiPlayActivity;Landroid/widget/TextView;ILcom/shilapi/xcertplay/hud/BydAdbAccess$Status;Z)V

    return-void
.end method
