.class public final synthetic Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lcom/shilapi/xcertplay/DiPlayActivity;

.field public final synthetic f$1:Landroid/widget/TextView;

.field public final synthetic f$2:Ljava/io/File;

.field public final synthetic f$3:Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome$Available;


# direct methods
.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/DiPlayActivity;Landroid/widget/TextView;Ljava/io/File;Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome$Available;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda25;->f$0:Lcom/shilapi/xcertplay/DiPlayActivity;

    iput-object p2, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda25;->f$1:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda25;->f$2:Ljava/io/File;

    iput-object p4, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda25;->f$3:Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome$Available;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda25;->f$0:Lcom/shilapi/xcertplay/DiPlayActivity;

    iget-object v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda25;->f$1:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda25;->f$2:Ljava/io/File;

    iget-object v3, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda25;->f$3:Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome$Available;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move-object v5, p2

    check-cast v5, Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/shilapi/xcertplay/DiPlayActivity;->$r8$lambda$QP-poGWKuYo2CjT0ycTPlWvJeFY(Lcom/shilapi/xcertplay/DiPlayActivity;Landroid/widget/TextView;Ljava/io/File;Lcom/shilapi/xcertplay/update/UpdateChecker$Outcome$Available;ZLjava/lang/String;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
