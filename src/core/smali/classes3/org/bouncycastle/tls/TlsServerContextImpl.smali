.class Lorg/bouncycastle/tls/TlsServerContextImpl;
.super Lorg/bouncycastle/tls/AbstractTlsContext;

# interfaces
.implements Lorg/bouncycastle/tls/TlsServerContext;


# direct methods
.method constructor <init>(Lorg/bouncycastle/tls/crypto/TlsCrypto;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/tls/AbstractTlsContext;-><init>(Lorg/bouncycastle/tls/crypto/TlsCrypto;I)V

    return-void
.end method


# virtual methods
.method public isServer()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
