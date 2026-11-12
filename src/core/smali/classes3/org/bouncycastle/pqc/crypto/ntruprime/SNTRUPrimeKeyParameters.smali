.class public Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyParameters;
.super Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;


# instance fields
.field private final params:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;


# direct methods
.method public constructor <init>(ZLorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    return-void
.end method


# virtual methods
.method public getParameters()Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    return-object v0
.end method
