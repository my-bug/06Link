.class Lorg/bouncycastle/jsse/provider/DefaultSSLContextSpi$LazyInstance;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jsse/provider/DefaultSSLContextSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyInstance"
.end annotation


# static fields
.field private static final initException:Ljava/lang/Exception;

.field private static final instance:Lorg/bouncycastle/jsse/provider/DefaultSSLContextSpi;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    # getter for: Lorg/bouncycastle/jsse/provider/DefaultSSLContextSpi$LazyManagers;->initException:Ljava/lang/Exception;
    invoke-static {}, Lorg/bouncycastle/jsse/provider/DefaultSSLContextSpi$LazyManagers;->access$000()Ljava/lang/Exception;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v2, Lorg/bouncycastle/jsse/provider/DefaultSSLContextSpi;

    new-instance v3, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider;

    invoke-direct {v3}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider;-><init>()V

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3}, Lorg/bouncycastle/jsse/provider/DefaultSSLContextSpi;-><init>(ZLorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    # getter for: Lorg/bouncycastle/jsse/provider/DefaultSSLContextSpi;->LOG:Ljava/util/logging/Logger;
    invoke-static {}, Lorg/bouncycastle/jsse/provider/DefaultSSLContextSpi;->access$100()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Failed to load default SSLContext"

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    # invokes: Lorg/bouncycastle/jsse/provider/DefaultSSLContextSpi;->avoidCapturingException(Ljava/lang/Exception;)Ljava/lang/Exception;
    invoke-static {v0}, Lorg/bouncycastle/jsse/provider/DefaultSSLContextSpi;->access$200(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object v0

    :cond_0
    :goto_0
    sput-object v0, Lorg/bouncycastle/jsse/provider/DefaultSSLContextSpi$LazyInstance;->initException:Ljava/lang/Exception;

    sput-object v1, Lorg/bouncycastle/jsse/provider/DefaultSSLContextSpi$LazyInstance;->instance:Lorg/bouncycastle/jsse/provider/DefaultSSLContextSpi;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/Exception;
    .locals 1

    sget-object v0, Lorg/bouncycastle/jsse/provider/DefaultSSLContextSpi$LazyInstance;->initException:Ljava/lang/Exception;

    return-object v0
.end method

.method static synthetic access$400()Lorg/bouncycastle/jsse/provider/DefaultSSLContextSpi;
    .locals 1

    sget-object v0, Lorg/bouncycastle/jsse/provider/DefaultSSLContextSpi$LazyInstance;->instance:Lorg/bouncycastle/jsse/provider/DefaultSSLContextSpi;

    return-object v0
.end method
