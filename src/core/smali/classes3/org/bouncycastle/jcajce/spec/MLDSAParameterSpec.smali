.class public Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final ml_dsa_44:Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;

.field public static final ml_dsa_44_with_sha512:Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;

.field public static final ml_dsa_65:Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;

.field public static final ml_dsa_65_with_sha512:Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;

.field public static final ml_dsa_87:Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;

.field public static final ml_dsa_87_with_sha512:Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;

.field private static parameters:Ljava/util/Map;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;

    const-string v1, "ML-DSA-44"

    invoke-direct {v0, v1}, Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;->ml_dsa_44:Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;

    new-instance v1, Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;

    const-string v2, "ML-DSA-65"

    invoke-direct {v1, v2}, Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;->ml_dsa_65:Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;

    new-instance v2, Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;

    const-string v3, "ML-DSA-87"

    invoke-direct {v2, v3}, Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v2, Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;->ml_dsa_87:Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;

    new-instance v3, Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;

    const-string v4, "ML-DSA-44-WITH-SHA512"

    invoke-direct {v3, v4}, Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v3, Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;->ml_dsa_44_with_sha512:Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;

    new-instance v4, Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;

    const-string v5, "ML-DSA-65-WITH-SHA512"

    invoke-direct {v4, v5}, Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v4, Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;->ml_dsa_65_with_sha512:Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;

    new-instance v5, Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;

    const-string v6, "ML-DSA-87-WITH-SHA512"

    invoke-direct {v5, v6}, Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v5, Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;->ml_dsa_87_with_sha512:Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;->parameters:Ljava/util/Map;

    const-string v7, "ml-dsa-44"

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;->parameters:Ljava/util/Map;

    const-string v6, "ml-dsa-65"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "ml-dsa-87"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "ml-dsa-44-with-sha512"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "ml-dsa-65-with-sha512"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "ml-dsa-87-with-sha512"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;->name:Ljava/lang/String;

    return-void
.end method

.method public static fromName(Ljava/lang/String;)Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;
    .locals 3

    if-eqz p0, :cond_1

    sget-object v0, Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;->parameters:Ljava/util/Map;

    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;

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

    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;->name:Ljava/lang/String;

    return-object v0
.end method
