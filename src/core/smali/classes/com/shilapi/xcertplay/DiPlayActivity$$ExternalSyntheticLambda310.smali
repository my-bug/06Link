.class public final synthetic Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda310;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/EditText;

.field public final synthetic f$1:Landroid/widget/EditText;

.field public final synthetic f$2:Lcom/shilapi/xcertplay/DiPlayActivity;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/EditText;Landroid/widget/EditText;Lcom/shilapi/xcertplay/DiPlayActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda310;->f$0:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda310;->f$1:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda310;->f$2:Lcom/shilapi/xcertplay/DiPlayActivity;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda310;->f$0:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda310;->f$1:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda310;->f$2:Lcom/shilapi/xcertplay/DiPlayActivity;

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/shilapi/xcertplay/DiPlayActivity;->$r8$lambda$4KthEAjtQ5KVpCPyO_B0RtQOSJE(Landroid/widget/EditText;Landroid/widget/EditText;Lcom/shilapi/xcertplay/DiPlayActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
