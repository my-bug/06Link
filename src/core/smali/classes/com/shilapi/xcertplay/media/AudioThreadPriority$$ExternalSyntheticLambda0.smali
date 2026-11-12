.class public final synthetic Lcom/shilapi/xcertplay/media/AudioThreadPriority$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/shilapi/xcertplay/media/AudioThreadPriority;->$r8$lambda$D4_Y8Oo-8mVE-0bT_YG9Wdv5EJg(I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
