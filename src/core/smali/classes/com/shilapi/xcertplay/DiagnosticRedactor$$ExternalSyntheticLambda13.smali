.class public final synthetic Lcom/shilapi/xcertplay/DiagnosticRedactor$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/DiagnosticRedactor$$ExternalSyntheticLambda13;->f$0:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiagnosticRedactor$$ExternalSyntheticLambda13;->f$0:Lkotlin/jvm/functions/Function1;

    check-cast p1, Lkotlin/text/MatchResult;

    invoke-static {v0, p1}, Lcom/shilapi/xcertplay/DiagnosticRedactor;->$r8$lambda$7-ydNhAQc0QuWFYOBA6oZxvEHQM(Lkotlin/jvm/functions/Function1;Lkotlin/text/MatchResult;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
