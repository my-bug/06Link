.class public final synthetic Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda229;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic f$0:Landroid/app/AlertDialog;

.field public final synthetic f$1:Landroid/widget/EditText;

.field public final synthetic f$2:Landroid/widget/TextView;

.field public final synthetic f$3:Lcom/shilapi/xcertplay/DiPlayActivity;

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/app/AlertDialog;Landroid/widget/EditText;Landroid/widget/TextView;Lcom/shilapi/xcertplay/DiPlayActivity;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda229;->f$0:Landroid/app/AlertDialog;

    iput-object p2, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda229;->f$1:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda229;->f$2:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda229;->f$3:Lcom/shilapi/xcertplay/DiPlayActivity;

    iput-object p5, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda229;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda229;->f$0:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda229;->f$1:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda229;->f$2:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda229;->f$3:Lcom/shilapi/xcertplay/DiPlayActivity;

    iget-object v4, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda229;->f$4:Ljava/lang/String;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/shilapi/xcertplay/DiPlayActivity;->$r8$lambda$Cc8jgDNpmx6e_IoZfZnuNYvI1_Y(Landroid/app/AlertDialog;Landroid/widget/EditText;Landroid/widget/TextView;Lcom/shilapi/xcertplay/DiPlayActivity;Ljava/lang/String;Landroid/content/DialogInterface;)V

    return-void
.end method
