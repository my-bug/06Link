.class public final synthetic Ljavax/jmdns/impl/DNSIncoming$MessageInputStream$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream$$ExternalSyntheticLambda0;->f$0:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    iput-object p2, p0, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream$$ExternalSyntheticLambda0;->f$0:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    iget-object v1, p0, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, p1, p2}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->lambda$readName$0$javax-jmdns-impl-DNSIncoming$MessageInputStream(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p1

    return-object p1
.end method
