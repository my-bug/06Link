.class public Lorg/bouncycastle/crypto/parsers/XIESPublicKeyParser;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/KeyParser;


# instance fields
.field private final isX25519:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/parsers/XIESPublicKeyParser;->isX25519:Z

    return-void
.end method


# virtual methods
.method public readKey(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/parsers/XIESPublicKeyParser;->isX25519:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    goto :goto_0

    :cond_0
    const/16 v0, 0x38

    :goto_0
    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lorg/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[BII)I

    iget-boolean p1, p0, Lorg/bouncycastle/crypto/parsers/XIESPublicKeyParser;->isX25519:Z

    if-eqz p1, :cond_1

    new-instance p1, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    invoke-direct {p1, v1, v2}, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;-><init>([BI)V

    return-object p1

    :cond_1
    new-instance p1, Lorg/bouncycastle/crypto/params/X448PublicKeyParameters;

    invoke-direct {p1, v1, v2}, Lorg/bouncycastle/crypto/params/X448PublicKeyParameters;-><init>([BI)V

    return-object p1
.end method
