.class abstract Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric$AesSymmetric;,
        Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric$ShakeSymmetric;
    }
.end annotation


# instance fields
.field final stream128BlockBytes:I

.field final stream256BlockBytes:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;->stream128BlockBytes:I

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;->stream256BlockBytes:I

    return-void
.end method


# virtual methods
.method abstract stream128init([BS)V
.end method

.method abstract stream128squeezeBlocks([BII)V
.end method

.method abstract stream256init([BS)V
.end method

.method abstract stream256squeezeBlocks([BII)V
.end method
