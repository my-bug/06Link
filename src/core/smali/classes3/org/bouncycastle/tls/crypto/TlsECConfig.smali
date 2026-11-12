.class public Lorg/bouncycastle/tls/crypto/TlsECConfig;
.super Ljava/lang/Object;


# instance fields
.field protected final namedGroup:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/tls/crypto/TlsECConfig;->namedGroup:I

    return-void
.end method


# virtual methods
.method public getNamedGroup()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/tls/crypto/TlsECConfig;->namedGroup:I

    return v0
.end method
