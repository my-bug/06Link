.class public Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher$XIESwithAESCBC;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher$XIESwithCipher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XIESwithAESCBC"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-static {}, Lorg/bouncycastle/crypto/engines/AESEngine;->newInstance()Lorg/bouncycastle/crypto/MultiBlockCipher;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->newInstance(Lorg/bouncycastle/crypto/BlockCipher;)Lorg/bouncycastle/crypto/modes/CBCModeCipher;

    move-result-object v0

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher$XIESwithCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;I)V

    return-void
.end method
