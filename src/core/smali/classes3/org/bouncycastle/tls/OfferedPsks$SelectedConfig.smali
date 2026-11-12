.class Lorg/bouncycastle/tls/OfferedPsks$SelectedConfig;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/tls/OfferedPsks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SelectedConfig"
.end annotation


# instance fields
.field final earlySecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

.field final index:I

.field final psk:Lorg/bouncycastle/tls/TlsPSK;

.field final pskKeyExchangeModes:[S


# direct methods
.method constructor <init>(ILorg/bouncycastle/tls/TlsPSK;[SLorg/bouncycastle/tls/crypto/TlsSecret;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/tls/OfferedPsks$SelectedConfig;->index:I

    iput-object p2, p0, Lorg/bouncycastle/tls/OfferedPsks$SelectedConfig;->psk:Lorg/bouncycastle/tls/TlsPSK;

    iput-object p3, p0, Lorg/bouncycastle/tls/OfferedPsks$SelectedConfig;->pskKeyExchangeModes:[S

    iput-object p4, p0, Lorg/bouncycastle/tls/OfferedPsks$SelectedConfig;->earlySecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    return-void
.end method
