.class public final synthetic Lcom/shilapi/xcertplay/DiagnosticEnvironment$$ExternalSyntheticLambda37;
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
    check-cast p1, Ljava/net/NetworkInterface;

    invoke-static {p1}, Lcom/shilapi/xcertplay/DiagnosticEnvironment;->$r8$lambda$OjyHeUxCJC-F8HDzF8qmq4sqZ28(Ljava/net/NetworkInterface;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
