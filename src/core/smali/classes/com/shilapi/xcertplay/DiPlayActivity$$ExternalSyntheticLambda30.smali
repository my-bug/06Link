.class public final synthetic Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda30;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/shilapi/xcertplay/DiPlayActivity;

.field public final synthetic f$1:Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome$Available;

.field public final synthetic f$2:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/DiPlayActivity;Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome$Available;Landroid/widget/TextView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda30;->f$0:Lcom/shilapi/xcertplay/DiPlayActivity;

    iput-object p2, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda30;->f$1:Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome$Available;

    iput-object p3, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda30;->f$2:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda30;->f$0:Lcom/shilapi/xcertplay/DiPlayActivity;

    iget-object v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda30;->f$1:Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome$Available;

    iget-object v2, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda30;->f$2:Landroid/widget/TextView;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/shilapi/xcertplay/DiPlayActivity;->$r8$lambda$tlXI5DJDEJE5ehUn4QdJYJGIfIU(Lcom/shilapi/xcertplay/DiPlayActivity;Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome$Available;Landroid/widget/TextView;Landroid/content/DialogInterface;I)V

    return-void
.end method
