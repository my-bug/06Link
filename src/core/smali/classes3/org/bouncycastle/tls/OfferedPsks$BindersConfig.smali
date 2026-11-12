.class Lorg/bouncycastle/tls/OfferedPsks$BindersConfig;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/tls/OfferedPsks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BindersConfig"
.end annotation


# instance fields
.field final bindersSize:I

.field final earlySecrets:[Lorg/bouncycastle/tls/crypto/TlsSecret;

.field final pskKeyExchangeModes:[S

.field final psks:[Lorg/bouncycastle/tls/TlsPSK;


# direct methods
.method constructor <init>([Lorg/bouncycastle/tls/TlsPSK;[S[Lorg/bouncycastle/tls/crypto/TlsSecret;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tls/OfferedPsks$BindersConfig;->psks:[Lorg/bouncycastle/tls/TlsPSK;

    iput-object p2, p0, Lorg/bouncycastle/tls/OfferedPsks$BindersConfig;->pskKeyExchangeModes:[S

    iput-object p3, p0, Lorg/bouncycastle/tls/OfferedPsks$BindersConfig;->earlySecrets:[Lorg/bouncycastle/tls/crypto/TlsSecret;

    iput p4, p0, Lorg/bouncycastle/tls/OfferedPsks$BindersConfig;->bindersSize:I

    return-void
.end method
