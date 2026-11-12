.class public final Lorg/bouncycastle/tls/crypto/TlsDecodeResult;
.super Ljava/lang/Object;


# instance fields
.field public final buf:[B

.field public final contentType:S

.field public final len:I

.field public final off:I


# direct methods
.method public constructor <init>([BIIS)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/TlsDecodeResult;->buf:[B

    iput p2, p0, Lorg/bouncycastle/tls/crypto/TlsDecodeResult;->off:I

    iput p3, p0, Lorg/bouncycastle/tls/crypto/TlsDecodeResult;->len:I

    iput-short p4, p0, Lorg/bouncycastle/tls/crypto/TlsDecodeResult;->contentType:S

    return-void
.end method
