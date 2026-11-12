.class public Lorg/bouncycastle/jcajce/provider/digest/SHA256$Digest;
.super Lorg/bouncycastle/jcajce/provider/digest/BCMessageDigest;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/digest/SHA256;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Digest"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->newInstance()Lorg/bouncycastle/crypto/SavableDigest;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/BCMessageDigest;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lorg/bouncycastle/jcajce/provider/digest/BCMessageDigest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/jcajce/provider/digest/SHA256$Digest;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/digest/SHA256$Digest;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-static {v1}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->newInstance(Lorg/bouncycastle/crypto/Digest;)Lorg/bouncycastle/crypto/SavableDigest;

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/jcajce/provider/digest/SHA256$Digest;->digest:Lorg/bouncycastle/crypto/Digest;

    return-object v0
.end method
