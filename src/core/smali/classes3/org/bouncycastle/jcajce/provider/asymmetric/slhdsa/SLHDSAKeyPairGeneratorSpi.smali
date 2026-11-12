.class public Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;
.super Ljava/security/KeyPairGenerator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi$Hash;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi$HashSha2_128f;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi$HashSha2_128s;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi$HashSha2_192f;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi$HashSha2_192s;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi$HashSha2_256f;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi$HashSha2_256s;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi$HashShake_128f;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi$HashShake_128s;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi$HashShake_192f;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi$HashShake_192s;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi$HashShake_256f;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi$HashShake_256s;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi$Pure;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi$Sha2_128f;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi$Sha2_128s;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi$Sha2_192f;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi$Sha2_192s;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi$Sha2_256f;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi$Sha2_256s;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi$Shake_128f;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi$Shake_128s;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi$Shake_192f;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi$Shake_192s;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi$Shake_256f;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi$Shake_256s;
    }
.end annotation


# static fields
.field private static parameters:Ljava/util/Map;


# instance fields
.field engine:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAKeyPairGenerator;

.field initialised:Z

.field param:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAKeyGenerationParameters;

.field random:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->slh_dsa_sha2_128f:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;->sha2_128f:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->slh_dsa_sha2_128s:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;->sha2_128s:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->slh_dsa_sha2_192f:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;->sha2_192f:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->slh_dsa_sha2_192s:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;->sha2_192s:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->slh_dsa_sha2_256f:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;->sha2_256f:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->slh_dsa_sha2_256s:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;->sha2_256s:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->slh_dsa_shake_128f:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;->shake_128f:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->slh_dsa_shake_128s:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;->shake_128s:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->slh_dsa_shake_192f:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;->shake_192f:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->slh_dsa_shake_192s:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;->shake_192s:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->slh_dsa_shake_256f:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;->shake_256f:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->slh_dsa_shake_256s:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;->shake_256s:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->slh_dsa_sha2_128f_with_sha256:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;->sha2_128f_with_sha256:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->slh_dsa_sha2_128s_with_sha256:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;->sha2_128s_with_sha256:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->slh_dsa_sha2_192f_with_sha512:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;->sha2_192f_with_sha512:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->slh_dsa_sha2_192s_with_sha512:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;->sha2_192s_with_sha512:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->slh_dsa_sha2_256f_with_sha512:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;->sha2_256f_with_sha512:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->slh_dsa_sha2_256s_with_sha512:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;->sha2_256s_with_sha512:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->slh_dsa_shake_128f_with_shake128:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;->shake_128f_with_shake128:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->slh_dsa_shake_128s_with_shake128:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;->shake_128s_with_shake128:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->slh_dsa_shake_192f_with_shake256:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;->shake_192f_with_shake256:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->slh_dsa_shake_192s_with_shake256:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;->shake_192s_with_shake256:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->slh_dsa_shake_256f_with_shake256:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;->shake_256f_with_shake256:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->slh_dsa_shake_256s_with_shake256:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;->shake_256s_with_shake256:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    new-instance p1, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAKeyPairGenerator;

    invoke-direct {p1}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAKeyPairGenerator;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->engine:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAKeyPairGenerator;

    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->initialised:Z

    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SLH-DSA-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAKeyPairGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAKeyPairGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->engine:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAKeyPairGenerator;

    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->initialised:Z

    new-instance v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAKeyGenerationParameters;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    sget-object v2, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->param:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAKeyGenerationParameters;

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->engine:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAKeyPairGenerator;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAKeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->initialised:Z

    return-void
.end method

.method private static getNameFromParams(Ljava/security/spec/AlgorithmParameterSpec;)Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/pqc/jcajce/provider/util/SpecUtil;->getNameFrom(Ljava/security/spec/AlgorithmParameterSpec;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 4

    iget-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->initialised:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HASH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAKeyGenerationParameters;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;->sha2_128f_with_sha256:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAKeyGenerationParameters;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;->sha2_128f:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;)V

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->param:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAKeyGenerationParameters;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->engine:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAKeyPairGenerator;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->param:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAKeyGenerationParameters;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAKeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->initialised:Z

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->engine:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAKeyPairGenerator;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAKeyPairGenerator;->generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPrivateKeyParameters;

    new-instance v2, Ljava/security/KeyPair;

    new-instance v3, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/BCSLHDSAPublicKey;

    invoke-direct {v3, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/BCSLHDSAPublicKey;-><init>(Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPublicKeyParameters;)V

    new-instance v1, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/BCSLHDSAPrivateKey;

    invoke-direct {v1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/BCSLHDSAPrivateKey;-><init>(Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPrivateKeyParameters;)V

    invoke-direct {v2, v3, v1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v2
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "use AlgorithmParameterSpec"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->getNameFromParams(Ljava/security/spec/AlgorithmParameterSpec;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance p1, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAKeyGenerationParameters;

    sget-object v1, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    invoke-direct {p1, p2, v0}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;)V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->param:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAKeyGenerationParameters;

    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->engine:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAKeyPairGenerator;

    invoke-virtual {p2, p1}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAKeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->initialised:Z

    return-void

    :cond_0
    new-instance p2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invalid ParameterSpec: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
