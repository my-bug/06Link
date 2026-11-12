.class public final synthetic Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction$$ExternalSyntheticLambda1;
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
    check-cast p1, Lkotlin/text/MatchResult;

    invoke-static {p1}, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;->$r8$lambda$WZzPLQy53VtO3UOiTgU2W6Ds998(Lkotlin/text/MatchResult;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
