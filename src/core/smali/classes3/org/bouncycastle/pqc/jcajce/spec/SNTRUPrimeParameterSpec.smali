.class public Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field private static parameters:Ljava/util/Map;

.field public static final sntrup1013:Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;

.field public static final sntrup1277:Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;

.field public static final sntrup653:Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;

.field public static final sntrup761:Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;

.field public static final sntrup857:Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;

.field public static final sntrup953:Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->sntrup653:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;->sntrup653:Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;

    new-instance v1, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->sntrup761:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;)V

    sput-object v1, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;->sntrup761:Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;

    new-instance v2, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;

    sget-object v3, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->sntrup857:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;)V

    sput-object v2, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;->sntrup857:Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;

    new-instance v3, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;

    sget-object v4, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->sntrup953:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    invoke-direct {v3, v4}, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;)V

    sput-object v3, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;->sntrup953:Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;

    new-instance v4, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;

    sget-object v5, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->sntrup1013:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    invoke-direct {v4, v5}, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;)V

    sput-object v4, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;->sntrup1013:Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;

    new-instance v5, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;

    sget-object v6, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->sntrup1277:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    invoke-direct {v5, v6}, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;)V

    sput-object v5, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;->sntrup1277:Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;->parameters:Ljava/util/Map;

    const-string v7, "sntrup653"

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;->parameters:Ljava/util/Map;

    const-string v6, "sntrup761"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "sntrup857"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "sntrup953"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "sntrup1013"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "sntrup1277"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;->name:Ljava/lang/String;

    return-void
.end method

.method public static fromName(Ljava/lang/String;)Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;
    .locals 1

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;->parameters:Ljava/util/Map;

    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;

    return-object p0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;->name:Ljava/lang/String;

    return-object v0
.end method
