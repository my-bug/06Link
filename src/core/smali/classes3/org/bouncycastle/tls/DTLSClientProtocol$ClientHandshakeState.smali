.class public Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/tls/DTLSClientProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ClientHandshakeState"
.end annotation


# instance fields
.field authentication:Lorg/bouncycastle/tls/TlsAuthentication;

.field certificateRequest:Lorg/bouncycastle/tls/CertificateRequest;

.field certificateStatus:Lorg/bouncycastle/tls/CertificateStatus;

.field client:Lorg/bouncycastle/tls/TlsClient;

.field clientAgreements:Ljava/util/Hashtable;

.field clientBinders:Lorg/bouncycastle/tls/OfferedPsks$BindersConfig;

.field clientContext:Lorg/bouncycastle/tls/TlsClientContextImpl;

.field clientExtensions:Ljava/util/Hashtable;

.field expectSessionTicket:Z

.field heartbeat:Lorg/bouncycastle/tls/TlsHeartbeat;

.field heartbeatPolicy:S

.field keyExchange:Lorg/bouncycastle/tls/TlsKeyExchange;

.field offeredCipherSuites:[I

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

    iput-object v0, p0, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/bouncycastle/tls/TlsClient;

    iput-object v0, p0, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/tls/TlsClientContextImpl;

    iput-object v0, p0, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/bouncycastle/tls/TlsSession;

    iput-object v0, p0, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

    iput-object v0, p0, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->sessionMasterSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    iput-object v0, p0, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->sessionParametersBuilder:Lorg/bouncycastle/tls/SessionParameters$Builder;

    iput-object v0, p0, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->offeredCipherSuites:[I

    iput-object v0, p0, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    iput-object v0, p0, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->expectSessionTicket:Z

    iput-object v0, p0, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->clientAgreements:Ljava/util/Hashtable;

    iput-object v0, p0, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->clientBinders:Lorg/bouncycastle/tls/OfferedPsks$BindersConfig;

    iput-object v0, p0, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->keyExchange:Lorg/bouncycastle/tls/TlsKeyExchange;

    iput-object v0, p0, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->authentication:Lorg/bouncycastle/tls/TlsAuthentication;

    iput-object v0, p0, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->certificateStatus:Lorg/bouncycastle/tls/CertificateStatus;

    iput-object v0, p0, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->certificateRequest:Lorg/bouncycastle/tls/CertificateRequest;

    iput-object v0, p0, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->heartbeat:Lorg/bouncycastle/tls/TlsHeartbeat;

    const/4 v0, 0x2

    iput-short v0, p0, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->heartbeatPolicy:S

    return-void
.end method
