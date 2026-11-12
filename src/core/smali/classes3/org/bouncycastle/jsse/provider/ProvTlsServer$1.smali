.class Lorg/bouncycastle/jsse/provider/ProvTlsServer$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/jsse/provider/ProvTlsServer;->getDefaultDHEParameters()[Lorg/bouncycastle/tls/crypto/DHGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/bouncycastle/tls/crypto/DHGroup;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

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

    check-cast p1, Lorg/bouncycastle/tls/crypto/DHGroup;

    check-cast p2, Lorg/bouncycastle/tls/crypto/DHGroup;

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/jsse/provider/ProvTlsServer$1;->compare(Lorg/bouncycastle/tls/crypto/DHGroup;Lorg/bouncycastle/tls/crypto/DHGroup;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/bouncycastle/tls/crypto/DHGroup;Lorg/bouncycastle/tls/crypto/DHGroup;)I
    .locals 0

    invoke-virtual {p1}, Lorg/bouncycastle/tls/crypto/DHGroup;->getP()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    invoke-virtual {p2}, Lorg/bouncycastle/tls/crypto/DHGroup;->getP()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method
