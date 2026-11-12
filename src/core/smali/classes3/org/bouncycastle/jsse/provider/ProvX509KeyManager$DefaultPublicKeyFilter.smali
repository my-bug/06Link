.class final Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$DefaultPublicKeyFilter;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$PublicKeyFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultPublicKeyFilter"
.end annotation


# instance fields
.field final algorithm:Ljava/lang/String;

.field final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation
.end field

.field final keyUsageBit:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/security/PublicKey;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$DefaultPublicKeyFilter;->algorithm:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$DefaultPublicKeyFilter;->clazz:Ljava/lang/Class;

    iput p3, p0, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$DefaultPublicKeyFilter;->keyUsageBit:I

    return-void
.end method

.method private appliesTo(Ljava/security/PublicKey;)Z
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$DefaultPublicKeyFilter;->algorithm:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/jsse/provider/JsseUtils;->getPublicKeyAlgorithm(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$DefaultPublicKeyFilter;->clazz:Ljava/lang/Class;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public accepts(Ljava/security/PublicKey;[ZLorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;)Z
    .locals 1

    invoke-direct {p0, p1}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$DefaultPublicKeyFilter;->appliesTo(Ljava/security/PublicKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$DefaultPublicKeyFilter;->keyUsageBit:I

    invoke-static {p1, p2, v0, p3}, Lorg/bouncycastle/jsse/provider/ProvAlgorithmChecker;->permitsKeyUsage(Ljava/security/PublicKey;[ZILorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
