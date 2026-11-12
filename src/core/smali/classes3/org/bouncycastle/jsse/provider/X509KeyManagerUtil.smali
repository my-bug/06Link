.class abstract Lorg/bouncycastle/jsse/provider/X509KeyManagerUtil;
.super Ljava/lang/Object;


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/bouncycastle/jsse/provider/X509KeyManagerUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jsse/provider/X509KeyManagerUtil;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static exportX509KeyManager(Lorg/bouncycastle/jsse/BCX509ExtendedKeyManager;)Ljavax/net/ssl/X509KeyManager;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/jsse/provider/ImportX509KeyManager;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/jsse/provider/ImportX509KeyManager;

    invoke-interface {p0}, Lorg/bouncycastle/jsse/provider/ImportX509KeyManager;->unwrap()Ljavax/net/ssl/X509KeyManager;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method static importX509KeyManager(Lorg/bouncycastle/jcajce/util/JcaJceHelper;Ljavax/net/ssl/X509KeyManager;)Lorg/bouncycastle/jsse/BCX509ExtendedKeyManager;
    .locals 2

    sget-object p0, Lorg/bouncycastle/jsse/provider/X509KeyManagerUtil;->LOG:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Importing X509KeyManager implementation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    instance-of p0, p1, Lorg/bouncycastle/jsse/BCX509ExtendedKeyManager;

    if-eqz p0, :cond_0

    check-cast p1, Lorg/bouncycastle/jsse/BCX509ExtendedKeyManager;

    return-object p1

    :cond_0
    instance-of p0, p1, Ljavax/net/ssl/X509ExtendedKeyManager;

    if-eqz p0, :cond_1

    new-instance p0, Lorg/bouncycastle/jsse/provider/ImportX509KeyManager_5;

    check-cast p1, Ljavax/net/ssl/X509ExtendedKeyManager;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jsse/provider/ImportX509KeyManager_5;-><init>(Ljavax/net/ssl/X509ExtendedKeyManager;)V

    return-object p0

    :cond_1
    new-instance p0, Lorg/bouncycastle/jsse/provider/ImportX509KeyManager_4;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jsse/provider/ImportX509KeyManager_4;-><init>(Ljavax/net/ssl/X509KeyManager;)V

    return-object p0
.end method
