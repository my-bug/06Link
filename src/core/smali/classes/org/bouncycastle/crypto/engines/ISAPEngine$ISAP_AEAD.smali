.class interface abstract Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/ISAPEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "ISAP_AEAD"
.end annotation


# virtual methods
.method public abstract init()V
.end method

.method public abstract isap_enc([BII[BII)V
.end method

.method public abstract isap_mac([BI[BI[BI)V
.end method

.method public abstract reset()V
.end method
