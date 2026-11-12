.class public Lorg/bouncycastle/pqc/jcajce/provider/xmss/XMSSSignatureSpi$withShake256_1024andPrehash;
.super Lorg/bouncycastle/pqc/jcajce/provider/xmss/XMSSSignatureSpi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/jcajce/provider/xmss/XMSSSignatureSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "withShake256_1024andPrehash"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/DigestUtil$DoubleDigest;

    new-instance v1, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/provider/xmss/DigestUtil$DoubleDigest;-><init>(Lorg/bouncycastle/crypto/digests/SHAKEDigest;)V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSSigner;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSSigner;-><init>()V

    const-string v2, "SHAKE256(1024)withXMSS-SHAKE256"

    invoke-direct {p0, v2, v0, v1}, Lorg/bouncycastle/pqc/jcajce/provider/xmss/XMSSSignatureSpi;-><init>(Ljava/lang/String;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/pqc/crypto/xmss/XMSSSigner;)V

    return-void
.end method
