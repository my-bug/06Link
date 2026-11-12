.class Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext$1;
.super Ljava/util/LinkedHashMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Lorg/bouncycastle/tls/SessionID;",
        "Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext$SessionEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;


# direct methods
.method constructor <init>(Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;IFZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext$1;->this$0:Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;

    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Lorg/bouncycastle/tls/SessionID;",
            "Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext$SessionEntry;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext$1;->this$0:Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;

    iget v0, v0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->sessionCacheSize:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext$1;->size()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext$1;->this$0:Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;

    iget v1, v1, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->sessionCacheSize:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext$1;->this$0:Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext$SessionEntry;

    # invokes: Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->removeSessionByPeer(Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext$SessionEntry;)Z
    invoke-static {v1, p1}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->access$000(Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext$SessionEntry;)Z

    :cond_1
    return v0
.end method
