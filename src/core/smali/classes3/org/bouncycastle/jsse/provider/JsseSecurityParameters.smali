.class Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;
.super Ljava/lang/Object;


# instance fields
.field namedGroups:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;

.field signatureSchemes:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$PerConnection;

.field statusResponses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field trustedIssuers:[Ljava/security/Principal;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;->namedGroups:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;

    iput-object v0, p0, Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;->signatureSchemes:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$PerConnection;

    iput-object v0, p0, Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;->statusResponses:Ljava/util/List;

    iput-object v0, p0, Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;->trustedIssuers:[Ljava/security/Principal;

    return-void
.end method
