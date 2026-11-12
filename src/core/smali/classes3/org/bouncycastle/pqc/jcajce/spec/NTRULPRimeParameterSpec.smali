.class public Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final ntrulpr1013:Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;

.field public static final ntrulpr1277:Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;

.field public static final ntrulpr653:Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;

.field public static final ntrulpr761:Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;

.field public static final ntrulpr857:Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;

.field public static final ntrulpr953:Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;

.field private static parameters:Ljava/util/Map;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->ntrulpr653:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;->ntrulpr653:Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;

    new-instance v1, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->ntrulpr761:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;)V

    sput-object v1, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;->ntrulpr761:Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;

    new-instance v2, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;

    sget-object v3, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->ntrulpr857:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;)V

    sput-object v2, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;->ntrulpr857:Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;

    new-instance v3, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;

    sget-object v4, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->ntrulpr953:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

    invoke-direct {v3, v4}, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;)V

    sput-object v3, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;->ntrulpr953:Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;

    new-instance v4, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;

    sget-object v5, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->ntrulpr1013:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

    invoke-direct {v4, v5}, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;)V

    sput-object v4, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;->ntrulpr1013:Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;

    new-instance v5, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;

    sget-object v6, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->ntrulpr1277:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

    invoke-direct {v5, v6}, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;)V

    sput-object v5, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;->ntrulpr1277:Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;->parameters:Ljava/util/Map;

    const-string v7, "ntrulpr653"

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;->parameters:Ljava/util/Map;

    const-string v6, "ntrulpr761"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "ntrulpr857"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "ntrulpr953"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "ntrulpr1013"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "ntrulpr1277"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;->name:Ljava/lang/String;

    return-void
.end method

.method public static fromName(Ljava/lang/String;)Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;
    .locals 1

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;->parameters:Ljava/util/Map;

    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;

    return-object p0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;->name:Ljava/lang/String;

    return-object v0
.end method
