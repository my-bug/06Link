.class final Lorg/bouncycastle/jsse/provider/DummyX509KeyManager;
.super Lorg/bouncycastle/jsse/BCX509ExtendedKeyManager;


# static fields
.field static final INSTANCE:Lorg/bouncycastle/jsse/BCX509ExtendedKeyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/jsse/provider/DummyX509KeyManager;

    invoke-direct {v0}, Lorg/bouncycastle/jsse/provider/DummyX509KeyManager;-><init>()V

    sput-object v0, Lorg/bouncycastle/jsse/provider/DummyX509KeyManager;->INSTANCE:Lorg/bouncycastle/jsse/BCX509ExtendedKeyManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/jsse/BCX509ExtendedKeyManager;-><init>()V

    return-void
.end method


# virtual methods
.method public chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected getKeyBC(Ljava/lang/String;Ljava/lang/String;)Lorg/bouncycastle/jsse/BCX509Key;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
