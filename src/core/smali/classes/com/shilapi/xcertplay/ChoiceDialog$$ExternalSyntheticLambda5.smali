.class public final synthetic Lcom/shilapi/xcertplay/ChoiceDialog$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Landroid/app/AlertDialog;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Landroid/app/AlertDialog;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/ChoiceDialog$$ExternalSyntheticLambda5;->f$0:Landroid/app/AlertDialog;

    iput-object p2, p0, Lcom/shilapi/xcertplay/ChoiceDialog$$ExternalSyntheticLambda5;->f$1:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/ChoiceDialog$$ExternalSyntheticLambda5;->f$0:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/shilapi/xcertplay/ChoiceDialog$$ExternalSyntheticLambda5;->f$1:Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1, p1}, Lcom/shilapi/xcertplay/ChoiceDialog;->$r8$lambda$FgFzg582wEHcqja4jhFvq_AR8yQ(Landroid/app/AlertDialog;Lkotlin/jvm/functions/Function0;Landroid/content/DialogInterface;)V

    return-void
.end method
