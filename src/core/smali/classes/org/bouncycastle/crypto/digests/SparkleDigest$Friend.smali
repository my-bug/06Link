.class public Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/digests/SparkleDigest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Friend"
.end annotation


# static fields
.field private static final INSTANCE:Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;->INSTANCE:Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;->INSTANCE:Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;

    return-object v0
.end method
