.class public Lorg/bouncycastle/pqc/jcajce/provider/xmss/XMSSMTSignatureSpi$withShake128_512andPrehash;
.super Lorg/bouncycastle/pqc/jcajce/provider/xmss/XMSSMTSignatureSpi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/jcajce/provider/xmss/XMSSMTSignatureSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "withShake128_512andPrehash"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/DigestUtil$DoubleDigest;

    new-instance v1, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/provider/xmss/DigestUtil$DoubleDigest;-><init>(Lorg/bouncycastle/crypto/digests/SHAKEDigest;)V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;-><init>()V

    const-string v2, "SHAKE128(512)withXMSSMT-SHAKE128"

    invoke-direct {p0, v2, v0, v1}, Lorg/bouncycastle/pqc/jcajce/provider/xmss/XMSSMTSignatureSpi;-><init>(Ljava/lang/String;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;)V

    return-void
.end method
