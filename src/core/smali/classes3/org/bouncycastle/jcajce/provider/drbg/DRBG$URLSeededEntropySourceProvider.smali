.class Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededEntropySourceProvider;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/prng/EntropySourceProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/drbg/DRBG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "URLSeededEntropySourceProvider"
.end annotation


# instance fields
.field private final seedStream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/net/URL;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededEntropySourceProvider$1;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededEntropySourceProvider$1;-><init>(Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededEntropySourceProvider;Ljava/net/URL;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/InputStream;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededEntropySourceProvider;->seedStream:Ljava/io/InputStream;

    return-void
.end method

.method static synthetic access$300(Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededEntropySourceProvider;)Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededEntropySourceProvider;->seedStream:Ljava/io/InputStream;

    return-object p0
.end method

.method static synthetic access$400(Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededEntropySourceProvider;[BII)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededEntropySourceProvider;->privilegedRead([BII)I

    move-result p0

    return p0
.end method

.method private privilegedRead([BII)I
    .locals 1

    new-instance v0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededEntropySourceProvider$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededEntropySourceProvider$2;-><init>(Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededEntropySourceProvider;[BII)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method


# virtual methods
.method public get(I)Lorg/bouncycastle/crypto/prng/EntropySource;
    .locals 1

    new-instance v0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededEntropySourceProvider$3;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededEntropySourceProvider$3;-><init>(Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededEntropySourceProvider;I)V

    return-object v0
.end method
