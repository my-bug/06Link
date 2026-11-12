.class public Lorg/bouncycastle/pqc/jcajce/spec/FalconParameterSpec;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final falcon_1024:Lorg/bouncycastle/pqc/jcajce/spec/FalconParameterSpec;

.field public static final falcon_512:Lorg/bouncycastle/pqc/jcajce/spec/FalconParameterSpec;

.field private static parameters:Ljava/util/Map;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/FalconParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;->falcon_512:Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/FalconParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/FalconParameterSpec;->falcon_512:Lorg/bouncycastle/pqc/jcajce/spec/FalconParameterSpec;

    new-instance v1, Lorg/bouncycastle/pqc/jcajce/spec/FalconParameterSpec;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;->falcon_1024:Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/jcajce/spec/FalconParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;)V

    sput-object v1, Lorg/bouncycastle/pqc/jcajce/spec/FalconParameterSpec;->falcon_1024:Lorg/bouncycastle/pqc/jcajce/spec/FalconParameterSpec;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lorg/bouncycastle/pqc/jcajce/spec/FalconParameterSpec;->parameters:Ljava/util/Map;

    const-string v3, "falcon-512"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/FalconParameterSpec;->parameters:Ljava/util/Map;

    const-string v2, "falcon-1024"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/spec/FalconParameterSpec;->name:Ljava/lang/String;

    return-void
.end method

.method public static fromName(Ljava/lang/String;)Lorg/bouncycastle/pqc/jcajce/spec/FalconParameterSpec;
    .locals 1

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/FalconParameterSpec;->parameters:Ljava/util/Map;

    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/pqc/jcajce/spec/FalconParameterSpec;

    return-object p0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/FalconParameterSpec;->name:Ljava/lang/String;

    return-object v0
.end method
