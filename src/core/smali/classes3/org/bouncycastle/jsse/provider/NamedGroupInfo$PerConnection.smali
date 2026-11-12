.class Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jsse/provider/NamedGroupInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PerConnection"
.end annotation


# instance fields
.field private final local:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Lorg/bouncycastle/jsse/provider/NamedGroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final localECDSA:Z

.field private final peer:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/List<",
            "Lorg/bouncycastle/jsse/provider/NamedGroupInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/LinkedHashMap;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Lorg/bouncycastle/jsse/provider/NamedGroupInfo;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;->local:Ljava/util/LinkedHashMap;

    iput-boolean p2, p0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;->localECDSA:Z

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;->peer:Ljava/util/concurrent/atomic/AtomicReference;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "local"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$300(Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;)Ljava/util/LinkedHashMap;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;->local:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method static synthetic access$400(Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;->localECDSA:Z

    return p0
.end method


# virtual methods
.method getPeer()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bouncycastle/jsse/provider/NamedGroupInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;->peer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method notifyPeerData([I)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;->local:Ljava/util/LinkedHashMap;

    # invokes: Lorg/bouncycastle/jsse/provider/NamedGroupInfo;->getNamedGroupInfos(Ljava/util/Map;[I)Ljava/util/List;
    invoke-static {v0, p1}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;->access$000(Ljava/util/Map;[I)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;->peer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
