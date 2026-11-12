.class public Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final ml_kem_1024:Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;

.field public static final ml_kem_512:Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;

.field public static final ml_kem_768:Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;

.field private static parameters:Ljava/util/Map;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;

    const-string v1, "ML-KEM-512"

    invoke-direct {v0, v1}, Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;->ml_kem_512:Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;

    new-instance v1, Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;

    const-string v2, "ML-KEM-768"

    invoke-direct {v1, v2}, Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;->ml_kem_768:Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;

    new-instance v2, Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;

    const-string v3, "ML-KEM-1024"

    invoke-direct {v2, v3}, Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v2, Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;->ml_kem_1024:Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;->parameters:Ljava/util/Map;

    const-string v4, "ml-kem-512"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;->parameters:Ljava/util/Map;

    const-string v4, "ml-kem-768"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;->parameters:Ljava/util/Map;

    const-string v4, "ml-kem-1024"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;->parameters:Ljava/util/Map;

    const-string v4, "kyber512"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;->parameters:Ljava/util/Map;

    const-string v3, "kyber768"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "kyber1024"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;->name:Ljava/lang/String;

    return-void
.end method

.method public static fromName(Ljava/lang/String;)Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;
    .locals 3

    if-eqz p0, :cond_1

    sget-object v0, Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;->parameters:Ljava/util/Map;

    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown parameter name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "name cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;->name:Ljava/lang/String;

    return-object v0
.end method
