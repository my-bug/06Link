.class abstract Lorg/bouncycastle/jsse/provider/KeyStoreUtil;
.super Ljava/lang/Object;


# static fields
.field private static final getProtectionAlgorithm:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    const-string v1, "java.security.KeyStore$PasswordProtection"

    const-string v2, "getProtectionAlgorithm"

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/jsse/provider/ReflectionUtil;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jsse/provider/KeyStoreUtil;->getProtectionAlgorithm:Ljava/lang/reflect/Method;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getKey(Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/Key;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    if-eqz p2, :cond_3

    instance-of v0, p2, Ljava/security/KeyStore$PasswordProtection;

    if-eqz v0, :cond_2

    check-cast p2, Ljava/security/KeyStore$PasswordProtection;

    sget-object v0, Lorg/bouncycastle/jsse/provider/KeyStoreUtil;->getProtectionAlgorithm:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    invoke-static {p2, v0}, Lorg/bouncycastle/jsse/provider/ReflectionUtil;->invokeGetter(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/security/KeyStoreException;

    const-string p1, "unsupported password protection algorithm"

    invoke-direct {p0, p1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p2}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :cond_3
    new-instance p0, Ljava/security/UnrecoverableKeyException;

    const-string p1, "requested key requires a password"

    invoke-direct {p0, p1}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
