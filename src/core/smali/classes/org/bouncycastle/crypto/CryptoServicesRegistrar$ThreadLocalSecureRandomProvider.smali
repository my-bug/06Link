.class Lorg/bouncycastle/crypto/CryptoServicesRegistrar$ThreadLocalSecureRandomProvider;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/SecureRandomProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/CryptoServicesRegistrar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThreadLocalSecureRandomProvider"
.end annotation


# instance fields
.field final defaultRandoms:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/security/SecureRandom;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/CryptoServicesRegistrar$ThreadLocalSecureRandomProvider;->defaultRandoms:Ljava/lang/ThreadLocal;

    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/crypto/CryptoServicesRegistrar$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar$ThreadLocalSecureRandomProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/security/SecureRandom;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/CryptoServicesRegistrar$ThreadLocalSecureRandomProvider;->defaultRandoms:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/CryptoServicesRegistrar$ThreadLocalSecureRandomProvider;->defaultRandoms:Ljava/lang/ThreadLocal;

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/CryptoServicesRegistrar$ThreadLocalSecureRandomProvider;->defaultRandoms:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/SecureRandom;

    return-object v0
.end method
