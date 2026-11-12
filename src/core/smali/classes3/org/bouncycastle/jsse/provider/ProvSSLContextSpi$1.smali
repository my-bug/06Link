.class Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;->getActiveProtocolVersions(Lorg/bouncycastle/jsse/provider/ProvSSLParameters;)[Lorg/bouncycastle/tls/ProtocolVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/bouncycastle/tls/ProtocolVersion;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;


# direct methods
.method constructor <init>(Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi$1;->this$0:Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    check-cast p1, Lorg/bouncycastle/tls/ProtocolVersion;

    check-cast p2, Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi$1;->compare(Lorg/bouncycastle/tls/ProtocolVersion;Lorg/bouncycastle/tls/ProtocolVersion;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/bouncycastle/tls/ProtocolVersion;Lorg/bouncycastle/tls/ProtocolVersion;)I
    .locals 1

    invoke-virtual {p1, p2}, Lorg/bouncycastle/tls/ProtocolVersion;->isLaterVersionOf(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-virtual {p2, p1}, Lorg/bouncycastle/tls/ProtocolVersion;->isLaterVersionOf(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
