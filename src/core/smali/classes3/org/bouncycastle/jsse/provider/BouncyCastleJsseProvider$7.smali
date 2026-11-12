.class Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider$7;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/jsse/provider/EngineCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;->configure(ZLorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;

.field final synthetic val$cryptoProvider:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider;

.field final synthetic val$fipsMode:Z


# direct methods
.method constructor <init>(Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;ZLorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider$7;->this$0:Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;

    iput-boolean p2, p0, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider$7;->val$fipsMode:Z

    iput-object p3, p0, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider$7;->val$cryptoProvider:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    new-instance p1, Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;

    iget-boolean v0, p0, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider$7;->val$fipsMode:Z

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider$7;->val$cryptoProvider:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "TLSv1.3"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "TLSv1.2"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "TLSv1.1"

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const-string v3, "TLSv1"

    const/4 v4, 0x3

    aput-object v3, v2, v4

    # invokes: Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;->specifyClientProtocols([Ljava/lang/String;)Ljava/util/List;
    invoke-static {v2}, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;->access$000([Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;-><init>(ZLorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider;Ljava/util/List;)V

    return-object p1
.end method
