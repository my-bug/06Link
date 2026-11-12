.class public Lorg/bouncycastle/tls/DTLSRequest;
.super Ljava/lang/Object;


# instance fields
.field private final clientHello:Lorg/bouncycastle/tls/ClientHello;

.field private final message:[B

.field private final recordSeq:J


# direct methods
.method constructor <init>(J[BLorg/bouncycastle/tls/ClientHello;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/bouncycastle/tls/DTLSRequest;->recordSeq:J

    iput-object p3, p0, Lorg/bouncycastle/tls/DTLSRequest;->message:[B

    iput-object p4, p0, Lorg/bouncycastle/tls/DTLSRequest;->clientHello:Lorg/bouncycastle/tls/ClientHello;

    return-void
.end method


# virtual methods
.method getClientHello()Lorg/bouncycastle/tls/ClientHello;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/DTLSRequest;->clientHello:Lorg/bouncycastle/tls/ClientHello;

    return-object v0
.end method

.method getMessage()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/DTLSRequest;->message:[B

    return-object v0
.end method

.method getMessageSeq()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/tls/DTLSRequest;->message:[B

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lorg/bouncycastle/tls/TlsUtils;->readUint16([BI)I

    move-result v0

    return v0
.end method

.method getRecordSeq()J
    .locals 2

    iget-wide v0, p0, Lorg/bouncycastle/tls/DTLSRequest;->recordSeq:J

    return-wide v0
.end method
