.class public Lorg/bouncycastle/tls/TlsFatalAlert;
.super Lorg/bouncycastle/tls/TlsException;


# instance fields
.field protected alertDescription:S


# direct methods
.method public constructor <init>(S)V
    .locals 2

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(SLjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(SLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p1, p2}, Lorg/bouncycastle/tls/TlsFatalAlert;->getMessage(SLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lorg/bouncycastle/tls/TlsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-short p1, p0, Lorg/bouncycastle/tls/TlsFatalAlert;->alertDescription:S

    return-void
.end method

.method public constructor <init>(SLjava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static getMessage(SLjava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lorg/bouncycastle/tls/AlertDescription;->getText(S)Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "; "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public getAlertDescription()S
    .locals 1

    iget-short v0, p0, Lorg/bouncycastle/tls/TlsFatalAlert;->alertDescription:S

    return v0
.end method
