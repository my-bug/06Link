.class abstract Lorg/bouncycastle/pqc/crypto/saber/Symmetric;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/saber/Symmetric$AesSymmetric;,
        Lorg/bouncycastle/pqc/crypto/saber/Symmetric$ShakeSymmetric;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract hash_g([B[B)V
.end method

.method abstract hash_h([B[BI)V
.end method

.method abstract prf([B[BII)V
.end method
