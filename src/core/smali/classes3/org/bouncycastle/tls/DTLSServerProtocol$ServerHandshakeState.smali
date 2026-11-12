.class public Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/tls/DTLSServerProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ServerHandshakeState"
.end annotation


# instance fields
.field certificateRequest:Lorg/bouncycastle/tls/CertificateRequest;

.field clientHello:Lorg/bouncycastle/tls/ClientHello;

.field expectSessionTicket:Z

.field heartbeat:Lorg/bouncycastle/tls/TlsHeartbeat;

.field heartbeatPolicy:S

.field keyExchange:Lorg/bouncycastle/tls/TlsKeyExchange;

.field server:Lorg/bouncycastle/tls/TlsServer;

.field serverContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

.field serverCredentials:Lorg/bouncycastle/tls/TlsCredentials;

.field serverExtensions:Ljava/util/Hashtable;

.field sessionMasterSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

.field sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

.field sessionParametersBuilder:Lorg/bouncycastle/tls/SessionParameters$Builder;

.field tlsSession:Lorg/bouncycastle/tls/TlsSession;


# direct methods
.method protected constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/bouncycastle/tls/TlsServer;

    iput-object v0, p0, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    iput-object v0, p0, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->tlsSession:Lorg/bouncycastle/tls/TlsSession;

    iput-object v0, p0, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

    iput-object v0, p0, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->sessionMasterSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    iput-object v0, p0, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->sessionParametersBuilder:Lorg/bouncycastle/tls/SessionParameters$Builder;

    iput-object v0, p0, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->clientHello:Lorg/bouncycastle/tls/ClientHello;

    iput-object v0, p0, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->expectSessionTicket:Z

    iput-object v0, p0, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->keyExchange:Lorg/bouncycastle/tls/TlsKeyExchange;

    iput-object v0, p0, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->serverCredentials:Lorg/bouncycastle/tls/TlsCredentials;

    iput-object v0, p0, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->certificateRequest:Lorg/bouncycastle/tls/CertificateRequest;

    iput-object v0, p0, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->heartbeat:Lorg/bouncycastle/tls/TlsHeartbeat;

    const/4 v0, 0x2

    iput-short v0, p0, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->heartbeatPolicy:S

    return-void
.end method
