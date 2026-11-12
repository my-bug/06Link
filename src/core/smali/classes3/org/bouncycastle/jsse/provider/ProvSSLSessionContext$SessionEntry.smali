.class final Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext$SessionEntry;
.super Ljava/lang/ref/SoftReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SessionEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/SoftReference<",
        "Lorg/bouncycastle/jsse/provider/ProvSSLSession;",
        ">;"
    }
.end annotation


# instance fields
.field private final peerKey:Ljava/lang/String;

.field private final sessionID:Lorg/bouncycastle/tls/SessionID;


# direct methods
.method constructor <init>(Lorg/bouncycastle/tls/SessionID;Lorg/bouncycastle/jsse/provider/ProvSSLSession;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/tls/SessionID;",
            "Lorg/bouncycastle/jsse/provider/ProvSSLSession;",
            "Ljava/lang/ref/ReferenceQueue<",
            "Lorg/bouncycastle/jsse/provider/ProvSSLSession;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext$SessionEntry;->sessionID:Lorg/bouncycastle/tls/SessionID;

    # invokes: Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->makePeerKey(Lorg/bouncycastle/jsse/provider/ProvSSLSession;)Ljava/lang/String;
    invoke-static {p2}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->access$100(Lorg/bouncycastle/jsse/provider/ProvSSLSession;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext$SessionEntry;->peerKey:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method public getPeerKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext$SessionEntry;->peerKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionID()Lorg/bouncycastle/tls/SessionID;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext$SessionEntry;->sessionID:Lorg/bouncycastle/tls/SessionID;

    return-object v0
.end method
