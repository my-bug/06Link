.class Lorg/bouncycastle/jsse/provider/DefaultSSLContextSpi$LazyManagers;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jsse/provider/DefaultSSLContextSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyManagers"
.end annotation


# static fields
.field private static final initException:Ljava/lang/Exception;

.field private static final keyManagers:[Ljavax/net/ssl/KeyManager;

.field private static final trustManagers:[Ljavax/net/ssl/TrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;->getDefaultTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v1

    # getter for: Lorg/bouncycastle/jsse/provider/DefaultSSLContextSpi;->LOG:Ljava/util/logging/Logger;
    invoke-static {}, Lorg/bouncycastle/jsse/provider/DefaultSSLContextSpi;->access$100()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Failed to load default trust managers"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v0

    :goto_0
    if-nez v1, :cond_0

    :try_start_1
    invoke-static {}, Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;->getDefaultKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    # getter for: Lorg/bouncycastle/jsse/provider/DefaultSSLContextSpi;->LOG:Ljava/util/logging/Logger;
    invoke-static {}, Lorg/bouncycastle/jsse/provider/DefaultSSLContextSpi;->access$100()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "Failed to load default key managers"

    invoke-virtual {v3, v4, v5, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move-object v3, v0

    :goto_1
    if-eqz v1, :cond_1

    # invokes: Lorg/bouncycastle/jsse/provider/DefaultSSLContextSpi;->avoidCapturingException(Ljava/lang/Exception;)Ljava/lang/Exception;
    invoke-static {v1}, Lorg/bouncycastle/jsse/provider/DefaultSSLContextSpi;->access$200(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object v1

    move-object v2, v0

    goto :goto_2

    :cond_1
    move-object v0, v3

    :goto_2
    sput-object v1, Lorg/bouncycastle/jsse/provider/DefaultSSLContextSpi$LazyManagers;->initException:Ljava/lang/Exception;

    sput-object v0, Lorg/bouncycastle/jsse/provider/DefaultSSLContextSpi$LazyManagers;->keyManagers:[Ljavax/net/ssl/KeyManager;

    sput-object v2, Lorg/bouncycastle/jsse/provider/DefaultSSLContextSpi$LazyManagers;->trustManagers:[Ljavax/net/ssl/TrustManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Exception;
    .locals 1

    sget-object v0, Lorg/bouncycastle/jsse/provider/DefaultSSLContextSpi$LazyManagers;->initException:Ljava/lang/Exception;

    return-object v0
.end method

.method static synthetic access$500()[Ljavax/net/ssl/KeyManager;
    .locals 1

    sget-object v0, Lorg/bouncycastle/jsse/provider/DefaultSSLContextSpi$LazyManagers;->keyManagers:[Ljavax/net/ssl/KeyManager;

    return-object v0
.end method

.method static synthetic access$600()[Ljavax/net/ssl/TrustManager;
    .locals 1

    sget-object v0, Lorg/bouncycastle/jsse/provider/DefaultSSLContextSpi$LazyManagers;->trustManagers:[Ljavax/net/ssl/TrustManager;

    return-object v0
.end method
