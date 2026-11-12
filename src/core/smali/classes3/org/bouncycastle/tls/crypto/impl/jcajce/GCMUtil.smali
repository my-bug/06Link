.class Lorg/bouncycastle/tls/crypto/impl/jcajce/GCMUtil;
.super Ljava/lang/Object;


# static fields
.field static final gcmParameterSpec:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "Ljava/security/spec/AlgorithmParameterSpec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/bouncycastle/tls/crypto/impl/jcajce/GCMUtil;->getConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/tls/crypto/impl/jcajce/GCMUtil;->gcmParameterSpec:Ljava/lang/reflect/Constructor;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createGCMParameterSpec(I[B)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/crypto/impl/jcajce/GCMUtil;->gcmParameterSpec:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/tls/crypto/impl/jcajce/GCMUtil$1;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/GCMUtil$1;-><init>(I[B)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/spec/AlgorithmParameterSpec;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method private static getConstructor()Ljava/lang/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor<",
            "Ljava/security/spec/AlgorithmParameterSpec;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/tls/crypto/impl/jcajce/GCMUtil$2;

    invoke-direct {v0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/GCMUtil$2;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    return-object v0
.end method

.method static isGCMParameterSpecAvailable()Z
    .locals 1

    sget-object v0, Lorg/bouncycastle/tls/crypto/impl/jcajce/GCMUtil;->gcmParameterSpec:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
