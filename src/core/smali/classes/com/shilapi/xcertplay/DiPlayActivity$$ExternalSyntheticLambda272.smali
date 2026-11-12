.class public final synthetic Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda272;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/shilapi/xcertplay/DiPlayActivity;

.field public final synthetic f$1:Lcom/shilapi/xcertplay/GenericClusterDisplay$Choice;

.field public final synthetic f$2:Lcom/shilapi/xcertplay/GenericClusterDisplay$Candidate;


# direct methods
.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/DiPlayActivity;Lcom/shilapi/xcertplay/GenericClusterDisplay$Choice;Lcom/shilapi/xcertplay/GenericClusterDisplay$Candidate;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda272;->f$0:Lcom/shilapi/xcertplay/DiPlayActivity;

    iput-object p2, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda272;->f$1:Lcom/shilapi/xcertplay/GenericClusterDisplay$Choice;

    iput-object p3, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda272;->f$2:Lcom/shilapi/xcertplay/GenericClusterDisplay$Candidate;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda272;->f$0:Lcom/shilapi/xcertplay/DiPlayActivity;

    iget-object v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda272;->f$1:Lcom/shilapi/xcertplay/GenericClusterDisplay$Choice;

    iget-object v2, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda272;->f$2:Lcom/shilapi/xcertplay/GenericClusterDisplay$Candidate;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, v1, v2, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->$r8$lambda$Td1GYKyqQbzcw1KSyIe3dImbtYc(Lcom/shilapi/xcertplay/DiPlayActivity;Lcom/shilapi/xcertplay/GenericClusterDisplay$Choice;Lcom/shilapi/xcertplay/GenericClusterDisplay$Candidate;Z)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
