.class public Lorg/bouncycastle/pqc/jcajce/spec/NTRUParameterSpec;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final ntruhps2048509:Lorg/bouncycastle/pqc/jcajce/spec/NTRUParameterSpec;

.field public static final ntruhps2048677:Lorg/bouncycastle/pqc/jcajce/spec/NTRUParameterSpec;

.field public static final ntruhps40961229:Lorg/bouncycastle/pqc/jcajce/spec/NTRUParameterSpec;

.field public static final ntruhps4096821:Lorg/bouncycastle/pqc/jcajce/spec/NTRUParameterSpec;

.field public static final ntruhrss1373:Lorg/bouncycastle/pqc/jcajce/spec/NTRUParameterSpec;

.field public static final ntruhrss701:Lorg/bouncycastle/pqc/jcajce/spec/NTRUParameterSpec;

.field private static parameters:Ljava/util/Map;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/NTRUParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;->ntruhps2048509:Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/NTRUParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/NTRUParameterSpec;->ntruhps2048509:Lorg/bouncycastle/pqc/jcajce/spec/NTRUParameterSpec;

    new-instance v1, Lorg/bouncycastle/pqc/jcajce/spec/NTRUParameterSpec;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;->ntruhps2048677:Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/jcajce/spec/NTRUParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;)V

    sput-object v1, Lorg/bouncycastle/pqc/jcajce/spec/NTRUParameterSpec;->ntruhps2048677:Lorg/bouncycastle/pqc/jcajce/spec/NTRUParameterSpec;

    new-instance v2, Lorg/bouncycastle/pqc/jcajce/spec/NTRUParameterSpec;

    sget-object v3, Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;->ntruhps4096821:Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/jcajce/spec/NTRUParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;)V

    sput-object v2, Lorg/bouncycastle/pqc/jcajce/spec/NTRUParameterSpec;->ntruhps4096821:Lorg/bouncycastle/pqc/jcajce/spec/NTRUParameterSpec;

    new-instance v3, Lorg/bouncycastle/pqc/jcajce/spec/NTRUParameterSpec;

    sget-object v4, Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;->ntruhps40961229:Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;

    invoke-direct {v3, v4}, Lorg/bouncycastle/pqc/jcajce/spec/NTRUParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;)V

    sput-object v3, Lorg/bouncycastle/pqc/jcajce/spec/NTRUParameterSpec;->ntruhps40961229:Lorg/bouncycastle/pqc/jcajce/spec/NTRUParameterSpec;

    new-instance v4, Lorg/bouncycastle/pqc/jcajce/spec/NTRUParameterSpec;

    sget-object v5, Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;->ntruhrss701:Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;

    invoke-direct {v4, v5}, Lorg/bouncycastle/pqc/jcajce/spec/NTRUParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;)V

    sput-object v4, Lorg/bouncycastle/pqc/jcajce/spec/NTRUParameterSpec;->ntruhrss701:Lorg/bouncycastle/pqc/jcajce/spec/NTRUParameterSpec;

    new-instance v5, Lorg/bouncycastle/pqc/jcajce/spec/NTRUParameterSpec;

    sget-object v6, Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;->ntruhrss1373:Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;

    invoke-direct {v5, v6}, Lorg/bouncycastle/pqc/jcajce/spec/NTRUParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;)V

    sput-object v5, Lorg/bouncycastle/pqc/jcajce/spec/NTRUParameterSpec;->ntruhrss1373:Lorg/bouncycastle/pqc/jcajce/spec/NTRUParameterSpec;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, Lorg/bouncycastle/pqc/jcajce/spec/NTRUParameterSpec;->parameters:Ljava/util/Map;

    const-string v7, "ntruhps2048509"

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/NTRUParameterSpec;->parameters:Ljava/util/Map;

    const-string v6, "ntruhps2048677"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/NTRUParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "ntruhps4096821"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/NTRUParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "ntruhps40961229"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/NTRUParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "ntruhrss701"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/NTRUParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "ntruhrss1373"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/spec/NTRUParameterSpec;->name:Ljava/lang/String;

    return-void
.end method

.method public static fromName(Ljava/lang/String;)Lorg/bouncycastle/pqc/jcajce/spec/NTRUParameterSpec;
    .locals 1

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/NTRUParameterSpec;->parameters:Ljava/util/Map;

    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/pqc/jcajce/spec/NTRUParameterSpec;

    return-object p0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/NTRUParameterSpec;->name:Ljava/lang/String;

    return-object v0
.end method
