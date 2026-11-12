.class abstract Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;,
        Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;,
        Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED358_TRINOMIAL_GF2X;,
        Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;,
        Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;,
        Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;,
        Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;,
        Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;
    }
.end annotation


# instance fields
.field protected ki:I

.field protected ki64:I

.field protected mask:J


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract rem_gf2n([JI[J)V
.end method

.method public abstract rem_gf2n_xor([JI[J)V
.end method
