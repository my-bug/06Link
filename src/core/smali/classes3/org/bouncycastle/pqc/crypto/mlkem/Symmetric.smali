.class abstract Lorg/bouncycastle/pqc/crypto/mlkem/Symmetric;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/mlkem/Symmetric$ShakeSymmetric;
    }
.end annotation


# instance fields
.field final xofBlockBytes:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mlkem/Symmetric;->xofBlockBytes:I

    return-void
.end method


# virtual methods
.method abstract hash_g([B[B)V
.end method

.method abstract hash_h([B[BI)V
.end method

.method abstract kdf([B[B)V
.end method

.method abstract prf([B[BB)V
.end method

.method abstract xofAbsorb([BBB)V
.end method

.method abstract xofSqueezeBlocks([BII)V
.end method
