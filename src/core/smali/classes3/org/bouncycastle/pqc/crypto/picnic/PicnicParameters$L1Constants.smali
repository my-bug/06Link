.class Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters$L1Constants;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "L1Constants"
.end annotation


# static fields
.field static final INSTANCE:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL1;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL1;-><init>()V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters$L1Constants;->INSTANCE:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
