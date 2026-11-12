.class Lorg/bouncycastle/jsse/provider/JsseSessionParameters;
.super Ljava/lang/Object;


# instance fields
.field private final endpointIDAlgorithm:Ljava/lang/String;

.field private final matchedSNIServerName:Lorg/bouncycastle/jsse/BCSNIServerName;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/bouncycastle/jsse/BCSNIServerName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/JsseSessionParameters;->endpointIDAlgorithm:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/jsse/provider/JsseSessionParameters;->matchedSNIServerName:Lorg/bouncycastle/jsse/BCSNIServerName;

    return-void
.end method


# virtual methods
.method public getEndpointIDAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/JsseSessionParameters;->endpointIDAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getMatchedSNIServerName()Lorg/bouncycastle/jsse/BCSNIServerName;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/JsseSessionParameters;->matchedSNIServerName:Lorg/bouncycastle/jsse/BCSNIServerName;

    return-object v0
.end method
