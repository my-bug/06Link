.class public final Lorg/bouncycastle/tls/SessionParameters;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/tls/SessionParameters$Builder;
    }
.end annotation


# instance fields
.field private cipherSuite:I

.field private encodedServerExtensions:[B

.field private extendedMasterSecret:Z

.field private localCertificate:Lorg/bouncycastle/tls/Certificate;

.field private masterSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

.field private negotiatedVersion:Lorg/bouncycastle/tls/ProtocolVersion;

.field private peerCertificate:Lorg/bouncycastle/tls/Certificate;

.field private pskIdentity:[B

.field private srpIdentity:[B


# direct methods
.method private constructor <init>(ILorg/bouncycastle/tls/Certificate;Lorg/bouncycastle/tls/crypto/TlsSecret;Lorg/bouncycastle/tls/ProtocolVersion;Lorg/bouncycastle/tls/Certificate;[B[B[BZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/tls/SessionParameters;->pskIdentity:[B

    iput-object v0, p0, Lorg/bouncycastle/tls/SessionParameters;->srpIdentity:[B

    iput p1, p0, Lorg/bouncycastle/tls/SessionParameters;->cipherSuite:I

    iput-object p2, p0, Lorg/bouncycastle/tls/SessionParameters;->localCertificate:Lorg/bouncycastle/tls/Certificate;

    iput-object p3, p0, Lorg/bouncycastle/tls/SessionParameters;->masterSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    iput-object p4, p0, Lorg/bouncycastle/tls/SessionParameters;->negotiatedVersion:Lorg/bouncycastle/tls/ProtocolVersion;

    iput-object p5, p0, Lorg/bouncycastle/tls/SessionParameters;->peerCertificate:Lorg/bouncycastle/tls/Certificate;

    invoke-static {p6}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tls/SessionParameters;->pskIdentity:[B

    invoke-static {p7}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tls/SessionParameters;->srpIdentity:[B

    iput-object p8, p0, Lorg/bouncycastle/tls/SessionParameters;->encodedServerExtensions:[B

    iput-boolean p9, p0, Lorg/bouncycastle/tls/SessionParameters;->extendedMasterSecret:Z

    return-void
.end method

.method synthetic constructor <init>(ILorg/bouncycastle/tls/Certificate;Lorg/bouncycastle/tls/crypto/TlsSecret;Lorg/bouncycastle/tls/ProtocolVersion;Lorg/bouncycastle/tls/Certificate;[B[B[BZLorg/bouncycastle/tls/SessionParameters$1;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lorg/bouncycastle/tls/SessionParameters;-><init>(ILorg/bouncycastle/tls/Certificate;Lorg/bouncycastle/tls/crypto/TlsSecret;Lorg/bouncycastle/tls/ProtocolVersion;Lorg/bouncycastle/tls/Certificate;[B[B[BZ)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/SessionParameters;->masterSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/bouncycastle/tls/crypto/TlsSecret;->destroy()V

    :cond_0
    return-void
.end method

.method public copy()Lorg/bouncycastle/tls/SessionParameters;
    .locals 10

    new-instance v0, Lorg/bouncycastle/tls/SessionParameters;

    iget v1, p0, Lorg/bouncycastle/tls/SessionParameters;->cipherSuite:I

    iget-object v2, p0, Lorg/bouncycastle/tls/SessionParameters;->localCertificate:Lorg/bouncycastle/tls/Certificate;

    iget-object v3, p0, Lorg/bouncycastle/tls/SessionParameters;->masterSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    iget-object v4, p0, Lorg/bouncycastle/tls/SessionParameters;->negotiatedVersion:Lorg/bouncycastle/tls/ProtocolVersion;

    iget-object v5, p0, Lorg/bouncycastle/tls/SessionParameters;->peerCertificate:Lorg/bouncycastle/tls/Certificate;

    iget-object v6, p0, Lorg/bouncycastle/tls/SessionParameters;->pskIdentity:[B

    iget-object v7, p0, Lorg/bouncycastle/tls/SessionParameters;->srpIdentity:[B

    iget-object v8, p0, Lorg/bouncycastle/tls/SessionParameters;->encodedServerExtensions:[B

    iget-boolean v9, p0, Lorg/bouncycastle/tls/SessionParameters;->extendedMasterSecret:Z

    invoke-direct/range {v0 .. v9}, Lorg/bouncycastle/tls/SessionParameters;-><init>(ILorg/bouncycastle/tls/Certificate;Lorg/bouncycastle/tls/crypto/TlsSecret;Lorg/bouncycastle/tls/ProtocolVersion;Lorg/bouncycastle/tls/Certificate;[B[B[BZ)V

    return-object v0
.end method

.method public getCipherSuite()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/tls/SessionParameters;->cipherSuite:I

    return v0
.end method

.method public getLocalCertificate()Lorg/bouncycastle/tls/Certificate;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/SessionParameters;->localCertificate:Lorg/bouncycastle/tls/Certificate;

    return-object v0
.end method

.method public getMasterSecret()Lorg/bouncycastle/tls/crypto/TlsSecret;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/SessionParameters;->masterSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    return-object v0
.end method

.method public getNegotiatedVersion()Lorg/bouncycastle/tls/ProtocolVersion;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/SessionParameters;->negotiatedVersion:Lorg/bouncycastle/tls/ProtocolVersion;

    return-object v0
.end method

.method public getPSKIdentity()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/SessionParameters;->pskIdentity:[B

    return-object v0
.end method

.method public getPeerCertificate()Lorg/bouncycastle/tls/Certificate;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/SessionParameters;->peerCertificate:Lorg/bouncycastle/tls/Certificate;

    return-object v0
.end method

.method public getSRPIdentity()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/SessionParameters;->srpIdentity:[B

    return-object v0
.end method

.method public isExtendedMasterSecret()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/tls/SessionParameters;->extendedMasterSecret:Z

    return v0
.end method

.method public readServerExtensions()Ljava/util/Hashtable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/SessionParameters;->encodedServerExtensions:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/bouncycastle/tls/SessionParameters;->encodedServerExtensions:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsProtocol;->readExtensions(Ljava/io/ByteArrayInputStream;)Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method
