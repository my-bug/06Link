.class Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$PerConnection;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PerConnection"
.end annotation


# instance fields
.field private final localSigSchemes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final localSigSchemesCert:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final peerSigSchemes:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/List<",
            "Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final peerSigSchemesCert:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/List<",
            "Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo;",
            ">;",
            "Ljava/util/List<",
            "Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$PerConnection;->localSigSchemes:Ljava/util/List;

    iput-object p2, p0, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$PerConnection;->localSigSchemesCert:Ljava/util/List;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$PerConnection;->peerSigSchemes:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$PerConnection;->peerSigSchemesCert:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method getLocalJcaSignatureAlgorithms()[Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$PerConnection;->getLocalSigSchemesCert()Ljava/util/List;

    move-result-object v0

    # invokes: Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo;->getJcaSignatureAlgorithms(Ljava/util/Collection;)[Ljava/lang/String;
    invoke-static {v0}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo;->access$000(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLocalJcaSignatureAlgorithmsBC()[Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$PerConnection;->getLocalSigSchemesCert()Ljava/util/List;

    move-result-object v0

    # invokes: Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo;->getJcaSignatureAlgorithmsBC(Ljava/util/Collection;)[Ljava/lang/String;
    invoke-static {v0}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo;->access$100(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLocalSigSchemes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$PerConnection;->localSigSchemes:Ljava/util/List;

    return-object v0
.end method

.method getLocalSigSchemesCert()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$PerConnection;->localSigSchemesCert:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$PerConnection;->getLocalSigSchemes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getLocalSignatureAndHashAlgorithms()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$PerConnection;->localSigSchemes:Ljava/util/List;

    # invokes: Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo;->getSignatureAndHashAlgorithms(Ljava/util/Collection;)Ljava/util/Vector;
    invoke-static {v0}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo;->access$200(Ljava/util/Collection;)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method getLocalSignatureAndHashAlgorithmsCert()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$PerConnection;->localSigSchemesCert:Ljava/util/List;

    # invokes: Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo;->getSignatureAndHashAlgorithms(Ljava/util/Collection;)Ljava/util/Vector;
    invoke-static {v0}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo;->access$200(Ljava/util/Collection;)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method getPeerJcaSignatureAlgorithms()[Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$PerConnection;->getPeerSigSchemesCert()Ljava/util/List;

    move-result-object v0

    # invokes: Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo;->getJcaSignatureAlgorithms(Ljava/util/Collection;)[Ljava/lang/String;
    invoke-static {v0}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo;->access$000(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPeerJcaSignatureAlgorithmsBC()[Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$PerConnection;->getPeerSigSchemesCert()Ljava/util/List;

    move-result-object v0

    # invokes: Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo;->getJcaSignatureAlgorithmsBC(Ljava/util/Collection;)[Ljava/lang/String;
    invoke-static {v0}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo;->access$100(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPeerSigSchemes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$PerConnection;->peerSigSchemes:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method getPeerSigSchemesCert()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$PerConnection;->peerSigSchemesCert:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$PerConnection;->getPeerSigSchemes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method hasLocalSignatureScheme(Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo;)Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$PerConnection;->localSigSchemes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method notifyPeerData(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo;",
            ">;",
            "Ljava/util/List<",
            "Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$PerConnection;->peerSigSchemes:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$PerConnection;->peerSigSchemesCert:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
