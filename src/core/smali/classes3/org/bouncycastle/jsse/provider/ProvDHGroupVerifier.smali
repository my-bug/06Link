.class Lorg/bouncycastle/jsse/provider/ProvDHGroupVerifier;
.super Lorg/bouncycastle/tls/DefaultTlsDHGroupVerifier;


# static fields
.field private static final provMinimumPrimeBits:I

.field private static final provUnrestrictedGroups:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x400

    const/16 v1, 0x4000

    const-string v2, "org.bouncycastle.jsse.client.dh.minimumPrimeBits"

    const/16 v3, 0x800

    invoke-static {v2, v3, v0, v1}, Lorg/bouncycastle/jsse/provider/PropertyUtils;->getIntegerSystemProperty(Ljava/lang/String;III)I

    move-result v0

    sput v0, Lorg/bouncycastle/jsse/provider/ProvDHGroupVerifier;->provMinimumPrimeBits:I

    const-string v0, "org.bouncycastle.jsse.client.dh.unrestrictedGroups"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/PropertyUtils;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/bouncycastle/jsse/provider/ProvDHGroupVerifier;->provUnrestrictedGroups:Z

    return-void
.end method

.method constructor <init>()V
    .locals 1

    sget v0, Lorg/bouncycastle/jsse/provider/ProvDHGroupVerifier;->provMinimumPrimeBits:I

    invoke-direct {p0, v0}, Lorg/bouncycastle/tls/DefaultTlsDHGroupVerifier;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected checkGroup(Lorg/bouncycastle/tls/crypto/DHGroup;)Z
    .locals 1

    sget-boolean v0, Lorg/bouncycastle/jsse/provider/ProvDHGroupVerifier;->provUnrestrictedGroups:Z

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lorg/bouncycastle/tls/DefaultTlsDHGroupVerifier;->checkGroup(Lorg/bouncycastle/tls/crypto/DHGroup;)Z

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
