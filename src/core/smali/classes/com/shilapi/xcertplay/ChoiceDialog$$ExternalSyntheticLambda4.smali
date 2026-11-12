.class public final synthetic Lcom/shilapi/xcertplay/ChoiceDialog$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;ILkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/ChoiceDialog$$ExternalSyntheticLambda4;->f$0:Lkotlin/jvm/internal/Ref$IntRef;

    iput p2, p0, Lcom/shilapi/xcertplay/ChoiceDialog$$ExternalSyntheticLambda4;->f$1:I

    iput-object p3, p0, Lcom/shilapi/xcertplay/ChoiceDialog$$ExternalSyntheticLambda4;->f$2:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/ChoiceDialog$$ExternalSyntheticLambda4;->f$0:Lkotlin/jvm/internal/Ref$IntRef;

    iget v1, p0, Lcom/shilapi/xcertplay/ChoiceDialog$$ExternalSyntheticLambda4;->f$1:I

    iget-object v2, p0, Lcom/shilapi/xcertplay/ChoiceDialog$$ExternalSyntheticLambda4;->f$2:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/shilapi/xcertplay/ChoiceDialog;->$r8$lambda$z2HP0rbrhoerr2ectCT7AifwW7E(Lkotlin/jvm/internal/Ref$IntRef;ILkotlin/jvm/functions/Function1;Landroid/content/DialogInterface;I)V

    return-void
.end method
