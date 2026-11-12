.class public Lorg/bouncycastle/tls/CertificateType;
.super Ljava/lang/Object;


# static fields
.field public static final OpenPGP:S = 0x1s

.field public static final RawPublicKey:S = 0x2s

.field public static final X509:S


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isValid(S)Z
    .locals 1

    if-ltz p0, :cond_0

    const/4 v0, 0x2

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
