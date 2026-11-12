.class Lorg/bouncycastle/jsse/provider/KeyStoreConfig;
.super Ljava/lang/Object;


# instance fields
.field final keyStore:Ljava/security/KeyStore;

.field final password:[C


# direct methods
.method constructor <init>(Ljava/security/KeyStore;[C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/KeyStoreConfig;->keyStore:Ljava/security/KeyStore;

    iput-object p2, p0, Lorg/bouncycastle/jsse/provider/KeyStoreConfig;->password:[C

    return-void
.end method
