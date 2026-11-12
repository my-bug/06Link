.class Lorg/bouncycastle/crypto/util/SSHNamedCurves$2;
.super Ljava/util/HashMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/util/SSHNamedCurves;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 7

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/16 v0, 0xc

    new-array v1, v0, [[Ljava/lang/String;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "secp256r1"

    aput-object v5, v3, v4

    const/4 v5, 0x1

    const-string v6, "nistp256"

    aput-object v6, v3, v5

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v6, "secp384r1"

    aput-object v6, v3, v4

    const-string v6, "nistp384"

    aput-object v6, v3, v5

    aput-object v3, v1, v5

    new-array v3, v2, [Ljava/lang/String;

    const-string v6, "secp521r1"

    aput-object v6, v3, v4

    const-string v6, "nistp521"

    aput-object v6, v3, v5

    aput-object v3, v1, v2

    new-array v3, v2, [Ljava/lang/String;

    const-string v6, "sect163k1"

    aput-object v6, v3, v4

    const-string v6, "nistk163"

    aput-object v6, v3, v5

    const/4 v6, 0x3

    aput-object v3, v1, v6

    new-array v3, v2, [Ljava/lang/String;

    const-string v6, "secp192r1"

    aput-object v6, v3, v4

    const-string v6, "nistp192"

    aput-object v6, v3, v5

    const/4 v6, 0x4

    aput-object v3, v1, v6

    new-array v3, v2, [Ljava/lang/String;

    const-string v6, "secp224r1"

    aput-object v6, v3, v4

    const-string v6, "nistp224"

    aput-object v6, v3, v5

    const/4 v6, 0x5

    aput-object v3, v1, v6

    new-array v3, v2, [Ljava/lang/String;

    const-string v6, "sect233k1"

    aput-object v6, v3, v4

    const-string v6, "nistk233"

    aput-object v6, v3, v5

    const/4 v6, 0x6

    aput-object v3, v1, v6

    new-array v3, v2, [Ljava/lang/String;

    const-string v6, "sect233r1"

    aput-object v6, v3, v4

    const-string v6, "nistb233"

    aput-object v6, v3, v5

    const/4 v6, 0x7

    aput-object v3, v1, v6

    new-array v3, v2, [Ljava/lang/String;

    const-string v6, "sect283k1"

    aput-object v6, v3, v4

    const-string v6, "nistk283"

    aput-object v6, v3, v5

    const/16 v6, 0x8

    aput-object v3, v1, v6

    new-array v3, v2, [Ljava/lang/String;

    const-string v6, "sect409k1"

    aput-object v6, v3, v4

    const-string v6, "nistk409"

    aput-object v6, v3, v5

    const/16 v6, 0x9

    aput-object v3, v1, v6

    new-array v3, v2, [Ljava/lang/String;

    const-string v6, "sect409r1"

    aput-object v6, v3, v4

    const-string v6, "nistb409"

    aput-object v6, v3, v5

    const/16 v6, 0xa

    aput-object v3, v1, v6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "sect571k1"

    aput-object v3, v2, v4

    const-string v3, "nistt571"

    aput-object v3, v2, v5

    const/16 v3, 0xb

    aput-object v2, v1, v3

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    aget-object v3, v1, v2

    aget-object v6, v3, v4

    aget-object v3, v3, v5

    invoke-virtual {p0, v6, v3}, Lorg/bouncycastle/crypto/util/SSHNamedCurves$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
