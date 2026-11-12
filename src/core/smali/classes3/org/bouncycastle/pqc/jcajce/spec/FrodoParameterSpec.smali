.class public Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final frodokem1344aes:Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

.field public static final frodokem1344shake:Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

.field public static final frodokem640aes:Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

.field public static final frodokem640shake:Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

.field public static final frodokem976aes:Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

.field public static final frodokem976shake:Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

.field private static parameters:Ljava/util/Map;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->frodokem640aes:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;->frodokem640aes:Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

    new-instance v1, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->frodokem640shake:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;)V

    sput-object v1, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;->frodokem640shake:Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

    new-instance v2, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

    sget-object v3, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->frodokem976aes:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;)V

    sput-object v2, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;->frodokem976aes:Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

    new-instance v3, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

    sget-object v4, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->frodokem976shake:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    invoke-direct {v3, v4}, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;)V

    sput-object v3, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;->frodokem976shake:Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

    new-instance v4, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

    sget-object v5, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->frodokem1344aes:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    invoke-direct {v4, v5}, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;)V

    sput-object v4, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;->frodokem1344aes:Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

    new-instance v5, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

    sget-object v6, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->frodokem1344shake:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    invoke-direct {v5, v6}, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;)V

    sput-object v5, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;->frodokem1344shake:Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;->parameters:Ljava/util/Map;

    const-string v7, "frodokem19888r3"

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;->parameters:Ljava/util/Map;

    const-string v7, "frodokem19888shaker3"

    invoke-interface {v6, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;->parameters:Ljava/util/Map;

    const-string v7, "frodokem31296r3"

    invoke-interface {v6, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;->parameters:Ljava/util/Map;

    const-string v7, "frodokem31296shaker3"

    invoke-interface {v6, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;->parameters:Ljava/util/Map;

    const-string v7, "frodokem43088r3"

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;->parameters:Ljava/util/Map;

    const-string v7, "frodokem43088shaker3"

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;->parameters:Ljava/util/Map;

    const-string v7, "frodokem640aes"

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;->parameters:Ljava/util/Map;

    const-string v6, "frodokem640shake"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "frodokem976aes"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "frodokem976shake"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "frodokem1344aes"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "frodokem1344shake"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;->name:Ljava/lang/String;

    return-void
.end method

.method public static fromName(Ljava/lang/String;)Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;
    .locals 1

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;->parameters:Ljava/util/Map;

    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

    return-object p0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;->name:Ljava/lang/String;

    return-object v0
.end method
