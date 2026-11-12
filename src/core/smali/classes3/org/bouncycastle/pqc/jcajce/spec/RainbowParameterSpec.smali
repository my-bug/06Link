.class public Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field private static parameters:Ljava/util/Map;

.field public static final rainbowIIIcircumzenithal:Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;

.field public static final rainbowIIIclassic:Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;

.field public static final rainbowIIIcompressed:Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;

.field public static final rainbowVcircumzenithal:Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;

.field public static final rainbowVclassic:Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;

.field public static final rainbowVcompressed:Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->rainbowIIIclassic:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;->rainbowIIIclassic:Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;

    new-instance v1, Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->rainbowIIIcircumzenithal:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;)V

    sput-object v1, Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;->rainbowIIIcircumzenithal:Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;

    new-instance v2, Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;

    sget-object v3, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->rainbowIIIcompressed:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;)V

    sput-object v2, Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;->rainbowIIIcompressed:Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;

    new-instance v3, Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;

    sget-object v4, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->rainbowVclassic:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    invoke-direct {v3, v4}, Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;)V

    sput-object v3, Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;->rainbowVclassic:Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;

    new-instance v4, Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;

    sget-object v5, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->rainbowVcircumzenithal:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    invoke-direct {v4, v5}, Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;)V

    sput-object v4, Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;->rainbowVcircumzenithal:Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;

    new-instance v5, Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;

    sget-object v6, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->rainbowVcompressed:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    invoke-direct {v5, v6}, Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;)V

    sput-object v5, Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;->rainbowVcompressed:Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;->parameters:Ljava/util/Map;

    const-string v7, "rainbow-iii-classic"

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;->parameters:Ljava/util/Map;

    const-string v6, "rainbow-iii-circumzenithal"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "rainbow-iii-compressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "rainbow-v-classic"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "rainbow-v-circumzenithal"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "rainbow-v-compressed"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;->name:Ljava/lang/String;

    return-void
.end method

.method public static fromName(Ljava/lang/String;)Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;
    .locals 1

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;->parameters:Ljava/util/Map;

    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;

    return-object p0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;->name:Ljava/lang/String;

    return-object v0
.end method
