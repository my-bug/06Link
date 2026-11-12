.class public final Lorg/bouncycastle/tls/ProtocolVersion;
.super Ljava/lang/Object;


# static fields
.field static final CLIENT_EARLIEST_SUPPORTED_DTLS:Lorg/bouncycastle/tls/ProtocolVersion;

.field static final CLIENT_EARLIEST_SUPPORTED_TLS:Lorg/bouncycastle/tls/ProtocolVersion;

.field static final CLIENT_LATEST_SUPPORTED_DTLS:Lorg/bouncycastle/tls/ProtocolVersion;

.field static final CLIENT_LATEST_SUPPORTED_TLS:Lorg/bouncycastle/tls/ProtocolVersion;

.field public static final DTLSv10:Lorg/bouncycastle/tls/ProtocolVersion;

.field public static final DTLSv12:Lorg/bouncycastle/tls/ProtocolVersion;

.field public static final DTLSv13:Lorg/bouncycastle/tls/ProtocolVersion;

.field static final SERVER_EARLIEST_SUPPORTED_DTLS:Lorg/bouncycastle/tls/ProtocolVersion;

.field static final SERVER_EARLIEST_SUPPORTED_TLS:Lorg/bouncycastle/tls/ProtocolVersion;

.field static final SERVER_LATEST_SUPPORTED_DTLS:Lorg/bouncycastle/tls/ProtocolVersion;

.field static final SERVER_LATEST_SUPPORTED_TLS:Lorg/bouncycastle/tls/ProtocolVersion;

.field public static final SSLv3:Lorg/bouncycastle/tls/ProtocolVersion;

.field public static final TLSv10:Lorg/bouncycastle/tls/ProtocolVersion;

.field public static final TLSv11:Lorg/bouncycastle/tls/ProtocolVersion;

.field public static final TLSv12:Lorg/bouncycastle/tls/ProtocolVersion;

.field public static final TLSv13:Lorg/bouncycastle/tls/ProtocolVersion;


# instance fields
.field private name:Ljava/lang/String;

.field private version:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/bouncycastle/tls/ProtocolVersion;

    const/16 v1, 0x300

    const-string v2, "SSL 3.0"

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/tls/ProtocolVersion;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/tls/ProtocolVersion;->SSLv3:Lorg/bouncycastle/tls/ProtocolVersion;

    new-instance v1, Lorg/bouncycastle/tls/ProtocolVersion;

    const/16 v2, 0x301

    const-string v3, "TLS 1.0"

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/tls/ProtocolVersion;-><init>(ILjava/lang/String;)V

    sput-object v1, Lorg/bouncycastle/tls/ProtocolVersion;->TLSv10:Lorg/bouncycastle/tls/ProtocolVersion;

    new-instance v1, Lorg/bouncycastle/tls/ProtocolVersion;

    const/16 v2, 0x302

    const-string v3, "TLS 1.1"

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/tls/ProtocolVersion;-><init>(ILjava/lang/String;)V

    sput-object v1, Lorg/bouncycastle/tls/ProtocolVersion;->TLSv11:Lorg/bouncycastle/tls/ProtocolVersion;

    new-instance v1, Lorg/bouncycastle/tls/ProtocolVersion;

    const/16 v2, 0x303

    const-string v3, "TLS 1.2"

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/tls/ProtocolVersion;-><init>(ILjava/lang/String;)V

    sput-object v1, Lorg/bouncycastle/tls/ProtocolVersion;->TLSv12:Lorg/bouncycastle/tls/ProtocolVersion;

    new-instance v1, Lorg/bouncycastle/tls/ProtocolVersion;

    const/16 v2, 0x304

    const-string v3, "TLS 1.3"

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/tls/ProtocolVersion;-><init>(ILjava/lang/String;)V

    sput-object v1, Lorg/bouncycastle/tls/ProtocolVersion;->TLSv13:Lorg/bouncycastle/tls/ProtocolVersion;

    new-instance v2, Lorg/bouncycastle/tls/ProtocolVersion;

    const v3, 0xfeff

    const-string v4, "DTLS 1.0"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/tls/ProtocolVersion;-><init>(ILjava/lang/String;)V

    sput-object v2, Lorg/bouncycastle/tls/ProtocolVersion;->DTLSv10:Lorg/bouncycastle/tls/ProtocolVersion;

    new-instance v3, Lorg/bouncycastle/tls/ProtocolVersion;

    const v4, 0xfefd

    const-string v5, "DTLS 1.2"

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/tls/ProtocolVersion;-><init>(ILjava/lang/String;)V

    sput-object v3, Lorg/bouncycastle/tls/ProtocolVersion;->DTLSv12:Lorg/bouncycastle/tls/ProtocolVersion;

    new-instance v4, Lorg/bouncycastle/tls/ProtocolVersion;

    const v5, 0xfefc

    const-string v6, "DTLS 1.3"

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/tls/ProtocolVersion;-><init>(ILjava/lang/String;)V

    sput-object v4, Lorg/bouncycastle/tls/ProtocolVersion;->DTLSv13:Lorg/bouncycastle/tls/ProtocolVersion;

    sput-object v2, Lorg/bouncycastle/tls/ProtocolVersion;->CLIENT_EARLIEST_SUPPORTED_DTLS:Lorg/bouncycastle/tls/ProtocolVersion;

    sput-object v0, Lorg/bouncycastle/tls/ProtocolVersion;->CLIENT_EARLIEST_SUPPORTED_TLS:Lorg/bouncycastle/tls/ProtocolVersion;

    sput-object v3, Lorg/bouncycastle/tls/ProtocolVersion;->CLIENT_LATEST_SUPPORTED_DTLS:Lorg/bouncycastle/tls/ProtocolVersion;

    sput-object v1, Lorg/bouncycastle/tls/ProtocolVersion;->CLIENT_LATEST_SUPPORTED_TLS:Lorg/bouncycastle/tls/ProtocolVersion;

    sput-object v2, Lorg/bouncycastle/tls/ProtocolVersion;->SERVER_EARLIEST_SUPPORTED_DTLS:Lorg/bouncycastle/tls/ProtocolVersion;

    sput-object v0, Lorg/bouncycastle/tls/ProtocolVersion;->SERVER_EARLIEST_SUPPORTED_TLS:Lorg/bouncycastle/tls/ProtocolVersion;

    sput-object v3, Lorg/bouncycastle/tls/ProtocolVersion;->SERVER_LATEST_SUPPORTED_DTLS:Lorg/bouncycastle/tls/ProtocolVersion;

    sput-object v1, Lorg/bouncycastle/tls/ProtocolVersion;->SERVER_LATEST_SUPPORTED_TLS:Lorg/bouncycastle/tls/ProtocolVersion;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xffff

    and-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/tls/ProtocolVersion;->version:I

    iput-object p2, p0, Lorg/bouncycastle/tls/ProtocolVersion;->name:Ljava/lang/String;

    return-void
.end method

.method private static checkUint8(I)V
    .locals 1

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->isValidUint8(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'versionOctet\' is not a valid octet"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static contains([Lorg/bouncycastle/tls/ProtocolVersion;Lorg/bouncycastle/tls/ProtocolVersion;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {p1, v2}, Lorg/bouncycastle/tls/ProtocolVersion;->equals(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static get(II)Lorg/bouncycastle/tls/ProtocolVersion;
    .locals 2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/16 v0, 0xfe

    if-eq p0, v0, :cond_0

    const-string v0, "UNKNOWN"

    :goto_0
    invoke-static {p0, p1, v0}, Lorg/bouncycastle/tls/ProtocolVersion;->getUnknownVersion(IILjava/lang/String;)Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object p0

    return-object p0

    :cond_0
    packed-switch p1, :pswitch_data_0

    const-string v0, "DTLS"

    goto :goto_0

    :pswitch_0
    sget-object p0, Lorg/bouncycastle/tls/ProtocolVersion;->DTLSv10:Lorg/bouncycastle/tls/ProtocolVersion;

    return-object p0

    :pswitch_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "{0xFE, 0xFE} is a reserved protocol version"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    sget-object p0, Lorg/bouncycastle/tls/ProtocolVersion;->DTLSv12:Lorg/bouncycastle/tls/ProtocolVersion;

    return-object p0

    :pswitch_3
    sget-object p0, Lorg/bouncycastle/tls/ProtocolVersion;->DTLSv13:Lorg/bouncycastle/tls/ProtocolVersion;

    return-object p0

    :cond_1
    if-eqz p1, :cond_6

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const-string v0, "TLS"

    goto :goto_0

    :cond_2
    sget-object p0, Lorg/bouncycastle/tls/ProtocolVersion;->TLSv13:Lorg/bouncycastle/tls/ProtocolVersion;

    return-object p0

    :cond_3
    sget-object p0, Lorg/bouncycastle/tls/ProtocolVersion;->TLSv12:Lorg/bouncycastle/tls/ProtocolVersion;

    return-object p0

    :cond_4
    sget-object p0, Lorg/bouncycastle/tls/ProtocolVersion;->TLSv11:Lorg/bouncycastle/tls/ProtocolVersion;

    return-object p0

    :cond_5
    sget-object p0, Lorg/bouncycastle/tls/ProtocolVersion;->TLSv10:Lorg/bouncycastle/tls/ProtocolVersion;

    return-object p0

    :cond_6
    sget-object p0, Lorg/bouncycastle/tls/ProtocolVersion;->SSLv3:Lorg/bouncycastle/tls/ProtocolVersion;

    return-object p0

    :pswitch_data_0
    .packed-switch 0xfc
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getEarliestDTLS([Lorg/bouncycastle/tls/ProtocolVersion;)Lorg/bouncycastle/tls/ProtocolVersion;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    aget-object v2, p0, v1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/bouncycastle/tls/ProtocolVersion;->isDTLS()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lorg/bouncycastle/tls/ProtocolVersion;->getMinorVersion()I

    move-result v3

    invoke-virtual {v0}, Lorg/bouncycastle/tls/ProtocolVersion;->getMinorVersion()I

    move-result v4

    if-le v3, v4, :cond_1

    :cond_0
    move-object v0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static getEarliestTLS([Lorg/bouncycastle/tls/ProtocolVersion;)Lorg/bouncycastle/tls/ProtocolVersion;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    aget-object v2, p0, v1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/bouncycastle/tls/ProtocolVersion;->isTLS()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lorg/bouncycastle/tls/ProtocolVersion;->getMinorVersion()I

    move-result v3

    invoke-virtual {v0}, Lorg/bouncycastle/tls/ProtocolVersion;->getMinorVersion()I

    move-result v4

    if-ge v3, v4, :cond_1

    :cond_0
    move-object v0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static getLatestDTLS([Lorg/bouncycastle/tls/ProtocolVersion;)Lorg/bouncycastle/tls/ProtocolVersion;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    aget-object v2, p0, v1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/bouncycastle/tls/ProtocolVersion;->isDTLS()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lorg/bouncycastle/tls/ProtocolVersion;->getMinorVersion()I

    move-result v3

    invoke-virtual {v0}, Lorg/bouncycastle/tls/ProtocolVersion;->getMinorVersion()I

    move-result v4

    if-ge v3, v4, :cond_1

    :cond_0
    move-object v0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static getLatestTLS([Lorg/bouncycastle/tls/ProtocolVersion;)Lorg/bouncycastle/tls/ProtocolVersion;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    aget-object v2, p0, v1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/bouncycastle/tls/ProtocolVersion;->isTLS()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lorg/bouncycastle/tls/ProtocolVersion;->getMinorVersion()I

    move-result v3

    invoke-virtual {v0}, Lorg/bouncycastle/tls/ProtocolVersion;->getMinorVersion()I

    move-result v4

    if-le v3, v4, :cond_1

    :cond_0
    move-object v0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static getUnknownVersion(IILjava/lang/String;)Lorg/bouncycastle/tls/ProtocolVersion;
    .locals 2

    invoke-static {p0}, Lorg/bouncycastle/tls/ProtocolVersion;->checkUint8(I)V

    invoke-static {p1}, Lorg/bouncycastle/tls/ProtocolVersion;->checkUint8(I)V

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, p1

    const/high16 p1, 0x10000

    or-int/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/bouncycastle/tls/ProtocolVersion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " 0x"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/tls/ProtocolVersion;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method static isSupportedDTLSVersionClient(Lorg/bouncycastle/tls/ProtocolVersion;)Z
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lorg/bouncycastle/tls/ProtocolVersion;->CLIENT_EARLIEST_SUPPORTED_DTLS:Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/tls/ProtocolVersion;->isEqualOrLaterVersionOf(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/bouncycastle/tls/ProtocolVersion;->CLIENT_LATEST_SUPPORTED_DTLS:Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static isSupportedDTLSVersionServer(Lorg/bouncycastle/tls/ProtocolVersion;)Z
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lorg/bouncycastle/tls/ProtocolVersion;->SERVER_EARLIEST_SUPPORTED_DTLS:Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/tls/ProtocolVersion;->isEqualOrLaterVersionOf(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/bouncycastle/tls/ProtocolVersion;->SERVER_LATEST_SUPPORTED_DTLS:Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static isSupportedTLSVersionClient(Lorg/bouncycastle/tls/ProtocolVersion;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/tls/ProtocolVersion;->getFullVersion()I

    move-result p0

    sget-object v1, Lorg/bouncycastle/tls/ProtocolVersion;->CLIENT_EARLIEST_SUPPORTED_TLS:Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-virtual {v1}, Lorg/bouncycastle/tls/ProtocolVersion;->getFullVersion()I

    move-result v1

    if-lt p0, v1, :cond_1

    sget-object v1, Lorg/bouncycastle/tls/ProtocolVersion;->CLIENT_LATEST_SUPPORTED_TLS:Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-virtual {v1}, Lorg/bouncycastle/tls/ProtocolVersion;->getFullVersion()I

    move-result v1

    if-gt p0, v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method static isSupportedTLSVersionServer(Lorg/bouncycastle/tls/ProtocolVersion;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/tls/ProtocolVersion;->getFullVersion()I

    move-result p0

    sget-object v1, Lorg/bouncycastle/tls/ProtocolVersion;->SERVER_EARLIEST_SUPPORTED_TLS:Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-virtual {v1}, Lorg/bouncycastle/tls/ProtocolVersion;->getFullVersion()I

    move-result v1

    if-lt p0, v1, :cond_1

    sget-object v1, Lorg/bouncycastle/tls/ProtocolVersion;->SERVER_LATEST_SUPPORTED_TLS:Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-virtual {v1}, Lorg/bouncycastle/tls/ProtocolVersion;->getFullVersion()I

    move-result v1

    if-gt p0, v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method


# virtual methods
.method public downTo(Lorg/bouncycastle/tls/ProtocolVersion;)[Lorg/bouncycastle/tls/ProtocolVersion;
    .locals 3

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/ProtocolVersion;->isEqualOrLaterVersionOf(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move-object v1, p0

    :goto_0
    invoke-virtual {v1, p1}, Lorg/bouncycastle/tls/ProtocolVersion;->equals(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lorg/bouncycastle/tls/ProtocolVersion;->getPreviousVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p1

    new-array p1, p1, [Lorg/bouncycastle/tls/ProtocolVersion;

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/tls/ProtocolVersion;

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'min\' must be an equal or earlier version of this one"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lorg/bouncycastle/tls/ProtocolVersion;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/ProtocolVersion;->equals(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public equals(Lorg/bouncycastle/tls/ProtocolVersion;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lorg/bouncycastle/tls/ProtocolVersion;->version:I

    iget p1, p1, Lorg/bouncycastle/tls/ProtocolVersion;->version:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getEquivalentTLSVersion()Lorg/bouncycastle/tls/ProtocolVersion;
    .locals 3

    invoke-virtual {p0}, Lorg/bouncycastle/tls/ProtocolVersion;->getMajorVersion()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/16 v1, 0xfe

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/tls/ProtocolVersion;->getMinorVersion()I

    move-result v0

    const/16 v1, 0xfc

    if-eq v0, v1, :cond_3

    const/16 v1, 0xfd

    if-eq v0, v1, :cond_2

    const/16 v1, 0xff

    if-eq v0, v1, :cond_1

    return-object v2

    :cond_1
    sget-object v0, Lorg/bouncycastle/tls/ProtocolVersion;->TLSv11:Lorg/bouncycastle/tls/ProtocolVersion;

    return-object v0

    :cond_2
    sget-object v0, Lorg/bouncycastle/tls/ProtocolVersion;->TLSv12:Lorg/bouncycastle/tls/ProtocolVersion;

    return-object v0

    :cond_3
    sget-object v0, Lorg/bouncycastle/tls/ProtocolVersion;->TLSv13:Lorg/bouncycastle/tls/ProtocolVersion;

    return-object v0

    :cond_4
    return-object p0
.end method

.method public getFullVersion()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/tls/ProtocolVersion;->version:I

    return v0
.end method

.method public getMajorVersion()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/tls/ProtocolVersion;->version:I

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public getMinorVersion()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/tls/ProtocolVersion;->version:I

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/ProtocolVersion;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNextVersion()Lorg/bouncycastle/tls/ProtocolVersion;
    .locals 5

    invoke-virtual {p0}, Lorg/bouncycastle/tls/ProtocolVersion;->getMajorVersion()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/ProtocolVersion;->getMinorVersion()I

    move-result v1

    const/4 v2, 0x3

    const/16 v3, 0xff

    const/4 v4, 0x0

    if-eq v0, v2, :cond_3

    const/16 v2, 0xfe

    if-eq v0, v2, :cond_0

    return-object v4

    :cond_0
    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    invoke-static {v0, v1}, Lorg/bouncycastle/tls/ProtocolVersion;->get(II)Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v0, Lorg/bouncycastle/tls/ProtocolVersion;->DTLSv12:Lorg/bouncycastle/tls/ProtocolVersion;

    return-object v0

    :cond_2
    return-object v4

    :cond_3
    if-eq v1, v3, :cond_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object v4
.end method

.method public getPreviousVersion()Lorg/bouncycastle/tls/ProtocolVersion;
    .locals 4

    invoke-virtual {p0}, Lorg/bouncycastle/tls/ProtocolVersion;->getMajorVersion()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/ProtocolVersion;->getMinorVersion()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq v0, v2, :cond_3

    const/16 v2, 0xfe

    if-eq v0, v2, :cond_0

    return-object v3

    :cond_0
    const/16 v2, 0xfd

    if-eq v1, v2, :cond_2

    const/16 v2, 0xff

    if-eq v1, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    :goto_0
    invoke-static {v0, v1}, Lorg/bouncycastle/tls/ProtocolVersion;->get(II)Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v3

    :cond_2
    sget-object v0, Lorg/bouncycastle/tls/ProtocolVersion;->DTLSv10:Lorg/bouncycastle/tls/ProtocolVersion;

    return-object v0

    :cond_3
    if-eqz v1, :cond_4

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    return-object v3
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/tls/ProtocolVersion;->version:I

    return v0
.end method

.method public isDTLS()Z
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/tls/ProtocolVersion;->getMajorVersion()I

    move-result v0

    const/16 v1, 0xfe

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isEarlierVersionOf(Lorg/bouncycastle/tls/ProtocolVersion;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lorg/bouncycastle/tls/ProtocolVersion;->getMajorVersion()I

    move-result v1

    invoke-virtual {p1}, Lorg/bouncycastle/tls/ProtocolVersion;->getMajorVersion()I

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/tls/ProtocolVersion;->getMinorVersion()I

    move-result v1

    invoke-virtual {p1}, Lorg/bouncycastle/tls/ProtocolVersion;->getMinorVersion()I

    move-result p1

    sub-int/2addr v1, p1

    invoke-virtual {p0}, Lorg/bouncycastle/tls/ProtocolVersion;->isDTLS()Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    if-lez v1, :cond_1

    return v2

    :cond_1
    return v0

    :cond_2
    if-gez v1, :cond_3

    return v2

    :cond_3
    :goto_0
    return v0
.end method

.method public isEqualOrEarlierVersionOf(Lorg/bouncycastle/tls/ProtocolVersion;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lorg/bouncycastle/tls/ProtocolVersion;->getMajorVersion()I

    move-result v1

    invoke-virtual {p1}, Lorg/bouncycastle/tls/ProtocolVersion;->getMajorVersion()I

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/tls/ProtocolVersion;->getMinorVersion()I

    move-result v1

    invoke-virtual {p1}, Lorg/bouncycastle/tls/ProtocolVersion;->getMinorVersion()I

    move-result p1

    sub-int/2addr v1, p1

    invoke-virtual {p0}, Lorg/bouncycastle/tls/ProtocolVersion;->isDTLS()Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    if-ltz v1, :cond_1

    return v2

    :cond_1
    return v0

    :cond_2
    if-gtz v1, :cond_3

    return v2

    :cond_3
    :goto_0
    return v0
.end method

.method public isEqualOrLaterVersionOf(Lorg/bouncycastle/tls/ProtocolVersion;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lorg/bouncycastle/tls/ProtocolVersion;->getMajorVersion()I

    move-result v1

    invoke-virtual {p1}, Lorg/bouncycastle/tls/ProtocolVersion;->getMajorVersion()I

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/tls/ProtocolVersion;->getMinorVersion()I

    move-result v1

    invoke-virtual {p1}, Lorg/bouncycastle/tls/ProtocolVersion;->getMinorVersion()I

    move-result p1

    sub-int/2addr v1, p1

    invoke-virtual {p0}, Lorg/bouncycastle/tls/ProtocolVersion;->isDTLS()Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    if-gtz v1, :cond_1

    return v2

    :cond_1
    return v0

    :cond_2
    if-ltz v1, :cond_3

    return v2

    :cond_3
    :goto_0
    return v0
.end method

.method public isLaterVersionOf(Lorg/bouncycastle/tls/ProtocolVersion;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lorg/bouncycastle/tls/ProtocolVersion;->getMajorVersion()I

    move-result v1

    invoke-virtual {p1}, Lorg/bouncycastle/tls/ProtocolVersion;->getMajorVersion()I

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/tls/ProtocolVersion;->getMinorVersion()I

    move-result v1

    invoke-virtual {p1}, Lorg/bouncycastle/tls/ProtocolVersion;->getMinorVersion()I

    move-result p1

    sub-int/2addr v1, p1

    invoke-virtual {p0}, Lorg/bouncycastle/tls/ProtocolVersion;->isDTLS()Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    if-gez v1, :cond_1

    return v2

    :cond_1
    return v0

    :cond_2
    if-lez v1, :cond_3

    return v2

    :cond_3
    :goto_0
    return v0
.end method

.method public isSSL()Z
    .locals 1

    sget-object v0, Lorg/bouncycastle/tls/ProtocolVersion;->SSLv3:Lorg/bouncycastle/tls/ProtocolVersion;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTLS()Z
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/tls/ProtocolVersion;->getMajorVersion()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public only()[Lorg/bouncycastle/tls/ProtocolVersion;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/bouncycastle/tls/ProtocolVersion;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/ProtocolVersion;->name:Ljava/lang/String;

    return-object v0
.end method
