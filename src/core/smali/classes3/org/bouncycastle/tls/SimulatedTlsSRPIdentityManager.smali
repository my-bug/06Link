.class public Lorg/bouncycastle/tls/SimulatedTlsSRPIdentityManager;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/tls/TlsSRPIdentityManager;


# static fields
.field private static final PREFIX_PASSWORD:[B

.field private static final PREFIX_SALT:[B


# instance fields
.field protected group:Lorg/bouncycastle/tls/crypto/SRP6Group;

.field protected mac:Lorg/bouncycastle/tls/crypto/TlsMAC;

.field protected verifierGenerator:Lorg/bouncycastle/tls/crypto/TlsSRP6VerifierGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "password"

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/tls/SimulatedTlsSRPIdentityManager;->PREFIX_PASSWORD:[B

    const-string v0, "salt"

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/tls/SimulatedTlsSRPIdentityManager;->PREFIX_SALT:[B

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/tls/crypto/SRP6Group;Lorg/bouncycastle/tls/crypto/TlsSRP6VerifierGenerator;Lorg/bouncycastle/tls/crypto/TlsMAC;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tls/SimulatedTlsSRPIdentityManager;->group:Lorg/bouncycastle/tls/crypto/SRP6Group;

    iput-object p2, p0, Lorg/bouncycastle/tls/SimulatedTlsSRPIdentityManager;->verifierGenerator:Lorg/bouncycastle/tls/crypto/TlsSRP6VerifierGenerator;

    iput-object p3, p0, Lorg/bouncycastle/tls/SimulatedTlsSRPIdentityManager;->mac:Lorg/bouncycastle/tls/crypto/TlsMAC;

    return-void
.end method

.method public static getRFC5054Default(Lorg/bouncycastle/tls/crypto/TlsCrypto;Lorg/bouncycastle/tls/crypto/SRP6Group;[B)Lorg/bouncycastle/tls/SimulatedTlsSRPIdentityManager;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->createHMAC(I)Lorg/bouncycastle/tls/crypto/TlsHMAC;

    move-result-object v1

    array-length v2, p2

    const/4 v3, 0x0

    invoke-interface {v1, p2, v3, v2}, Lorg/bouncycastle/tls/crypto/TlsMAC;->setKey([BII)V

    new-instance p2, Lorg/bouncycastle/tls/crypto/TlsSRPConfig;

    invoke-direct {p2}, Lorg/bouncycastle/tls/crypto/TlsSRPConfig;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/tls/crypto/SRP6Group;->getN()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lorg/bouncycastle/tls/crypto/SRP6Group;->getG()Ljava/math/BigInteger;

    move-result-object v4

    new-array v0, v0, [Ljava/math/BigInteger;

    aput-object v2, v0, v3

    const/4 v2, 0x1

    aput-object v4, v0, v2

    invoke-virtual {p2, v0}, Lorg/bouncycastle/tls/crypto/TlsSRPConfig;->setExplicitNG([Ljava/math/BigInteger;)V

    new-instance v0, Lorg/bouncycastle/tls/SimulatedTlsSRPIdentityManager;

    invoke-interface {p0, p2}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->createSRP6VerifierGenerator(Lorg/bouncycastle/tls/crypto/TlsSRPConfig;)Lorg/bouncycastle/tls/crypto/TlsSRP6VerifierGenerator;

    move-result-object p0

    invoke-direct {v0, p1, p0, v1}, Lorg/bouncycastle/tls/SimulatedTlsSRPIdentityManager;-><init>(Lorg/bouncycastle/tls/crypto/SRP6Group;Lorg/bouncycastle/tls/crypto/TlsSRP6VerifierGenerator;Lorg/bouncycastle/tls/crypto/TlsMAC;)V

    return-object v0
.end method


# virtual methods
.method public getLoginParameters([B)Lorg/bouncycastle/tls/TlsSRPLoginParameters;
    .locals 7

    iget-object v0, p0, Lorg/bouncycastle/tls/SimulatedTlsSRPIdentityManager;->mac:Lorg/bouncycastle/tls/crypto/TlsMAC;

    sget-object v1, Lorg/bouncycastle/tls/SimulatedTlsSRPIdentityManager;->PREFIX_SALT:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/bouncycastle/tls/crypto/TlsMAC;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/tls/SimulatedTlsSRPIdentityManager;->mac:Lorg/bouncycastle/tls/crypto/TlsMAC;

    array-length v1, p1

    invoke-interface {v0, p1, v3, v1}, Lorg/bouncycastle/tls/crypto/TlsMAC;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/tls/SimulatedTlsSRPIdentityManager;->mac:Lorg/bouncycastle/tls/crypto/TlsMAC;

    invoke-interface {v0}, Lorg/bouncycastle/tls/crypto/TlsMAC;->calculateMAC()[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/tls/SimulatedTlsSRPIdentityManager;->mac:Lorg/bouncycastle/tls/crypto/TlsMAC;

    sget-object v2, Lorg/bouncycastle/tls/SimulatedTlsSRPIdentityManager;->PREFIX_PASSWORD:[B

    array-length v4, v2

    invoke-interface {v1, v2, v3, v4}, Lorg/bouncycastle/tls/crypto/TlsMAC;->update([BII)V

    iget-object v1, p0, Lorg/bouncycastle/tls/SimulatedTlsSRPIdentityManager;->mac:Lorg/bouncycastle/tls/crypto/TlsMAC;

    array-length v2, p1

    invoke-interface {v1, p1, v3, v2}, Lorg/bouncycastle/tls/crypto/TlsMAC;->update([BII)V

    iget-object v1, p0, Lorg/bouncycastle/tls/SimulatedTlsSRPIdentityManager;->mac:Lorg/bouncycastle/tls/crypto/TlsMAC;

    invoke-interface {v1}, Lorg/bouncycastle/tls/crypto/TlsMAC;->calculateMAC()[B

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/tls/SimulatedTlsSRPIdentityManager;->verifierGenerator:Lorg/bouncycastle/tls/crypto/TlsSRP6VerifierGenerator;

    invoke-interface {v2, v0, p1, v1}, Lorg/bouncycastle/tls/crypto/TlsSRP6VerifierGenerator;->generateVerifier([B[B[B)Ljava/math/BigInteger;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/tls/crypto/TlsSRPConfig;

    invoke-direct {v2}, Lorg/bouncycastle/tls/crypto/TlsSRPConfig;-><init>()V

    iget-object v4, p0, Lorg/bouncycastle/tls/SimulatedTlsSRPIdentityManager;->group:Lorg/bouncycastle/tls/crypto/SRP6Group;

    invoke-virtual {v4}, Lorg/bouncycastle/tls/crypto/SRP6Group;->getN()Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, p0, Lorg/bouncycastle/tls/SimulatedTlsSRPIdentityManager;->group:Lorg/bouncycastle/tls/crypto/SRP6Group;

    invoke-virtual {v5}, Lorg/bouncycastle/tls/crypto/SRP6Group;->getG()Ljava/math/BigInteger;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/math/BigInteger;

    aput-object v4, v6, v3

    const/4 v3, 0x1

    aput-object v5, v6, v3

    invoke-virtual {v2, v6}, Lorg/bouncycastle/tls/crypto/TlsSRPConfig;->setExplicitNG([Ljava/math/BigInteger;)V

    new-instance v3, Lorg/bouncycastle/tls/TlsSRPLoginParameters;

    invoke-direct {v3, p1, v2, v1, v0}, Lorg/bouncycastle/tls/TlsSRPLoginParameters;-><init>([BLorg/bouncycastle/tls/crypto/TlsSRPConfig;Ljava/math/BigInteger;[B)V

    return-object v3
.end method
