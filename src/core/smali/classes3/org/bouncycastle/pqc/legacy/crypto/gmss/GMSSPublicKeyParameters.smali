.class public Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPublicKeyParameters;
.super Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyParameters;


# instance fields
.field private gmssPublicKey:[B


# direct methods
.method public constructor <init>([BLorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyParameters;-><init>(ZLorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPublicKeyParameters;->gmssPublicKey:[B

    return-void
.end method


# virtual methods
.method public getPublicKey()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPublicKeyParameters;->gmssPublicKey:[B

    return-object v0
.end method
