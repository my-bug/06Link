.class Lorg/bouncycastle/jsse/provider/ProvX509KeyManagerSimple$Credential;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jsse/provider/ProvX509KeyManagerSimple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Credential"
.end annotation


# instance fields
.field private final alias:Ljava/lang/String;

.field private final certificateChain:[Ljava/security/cert/X509Certificate;

.field private final privateKey:Ljava/security/PrivateKey;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvX509KeyManagerSimple$Credential;->alias:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/jsse/provider/ProvX509KeyManagerSimple$Credential;->privateKey:Ljava/security/PrivateKey;

    iput-object p3, p0, Lorg/bouncycastle/jsse/provider/ProvX509KeyManagerSimple$Credential;->certificateChain:[Ljava/security/cert/X509Certificate;

    return-void
.end method

.method static synthetic access$000(Lorg/bouncycastle/jsse/provider/ProvX509KeyManagerSimple$Credential;)[Ljava/security/cert/X509Certificate;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jsse/provider/ProvX509KeyManagerSimple$Credential;->certificateChain:[Ljava/security/cert/X509Certificate;

    return-object p0
.end method

.method static synthetic access$100(Lorg/bouncycastle/jsse/provider/ProvX509KeyManagerSimple$Credential;)Ljava/security/PrivateKey;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jsse/provider/ProvX509KeyManagerSimple$Credential;->privateKey:Ljava/security/PrivateKey;

    return-object p0
.end method

.method static synthetic access$200(Lorg/bouncycastle/jsse/provider/ProvX509KeyManagerSimple$Credential;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jsse/provider/ProvX509KeyManagerSimple$Credential;->alias:Ljava/lang/String;

    return-object p0
.end method
