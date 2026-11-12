.class public Lorg/bouncycastle/tls/TlsFatalAlertReceived;
.super Lorg/bouncycastle/tls/TlsException;


# instance fields
.field protected alertDescription:S


# direct methods
.method public constructor <init>(S)V
    .locals 1

    invoke-static {p1}, Lorg/bouncycastle/tls/AlertDescription;->getText(S)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/tls/TlsException;-><init>(Ljava/lang/String;)V

    iput-short p1, p0, Lorg/bouncycastle/tls/TlsFatalAlertReceived;->alertDescription:S

    return-void
.end method


# virtual methods
.method public getAlertDescription()S
    .locals 1

    iget-short v0, p0, Lorg/bouncycastle/tls/TlsFatalAlertReceived;->alertDescription:S

    return v0
.end method
