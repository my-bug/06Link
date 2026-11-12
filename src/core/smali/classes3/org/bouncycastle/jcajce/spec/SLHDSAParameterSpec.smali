.class public Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field private static parameters:Ljava/util/Map;

.field public static final slh_dsa_sha2_128f:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

.field public static final slh_dsa_sha2_128f_with_sha256:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

.field public static final slh_dsa_sha2_128s:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

.field public static final slh_dsa_sha2_128s_with_sha256:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

.field public static final slh_dsa_sha2_192f:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

.field public static final slh_dsa_sha2_192f_with_sha512:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

.field public static final slh_dsa_sha2_192s:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

.field public static final slh_dsa_sha2_192s_with_sha512:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

.field public static final slh_dsa_sha2_256f:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

.field public static final slh_dsa_sha2_256f_with_sha512:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

.field public static final slh_dsa_sha2_256s:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

.field public static final slh_dsa_sha2_256s_with_sha512:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

.field public static final slh_dsa_shake_128f:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

.field public static final slh_dsa_shake_128f_with_shake128:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

.field public static final slh_dsa_shake_128s:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

.field public static final slh_dsa_shake_128s_with_shake128:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

.field public static final slh_dsa_shake_192f:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

.field public static final slh_dsa_shake_192f_with_shake256:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

.field public static final slh_dsa_shake_192s:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

.field public static final slh_dsa_shake_192s_with_shake256:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

.field public static final slh_dsa_shake_256f:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

.field public static final slh_dsa_shake_256f_with_shake256:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

.field public static final slh_dsa_shake_256s:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

.field public static final slh_dsa_shake_256s_with_shake256:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 26

    new-instance v0, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    const-string v1, "SLH-DSA-SHA2-128F"

    invoke-direct {v0, v1}, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->slh_dsa_sha2_128f:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    new-instance v1, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    const-string v2, "SLH-DSA-SHA2-128S"

    invoke-direct {v1, v2}, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->slh_dsa_sha2_128s:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    new-instance v2, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    const-string v3, "SLH-DSA-SHA2-192F"

    invoke-direct {v2, v3}, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v2, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->slh_dsa_sha2_192f:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    new-instance v3, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    const-string v4, "SLH-DSA-SHA2-192S"

    invoke-direct {v3, v4}, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v3, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->slh_dsa_sha2_192s:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    new-instance v4, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    const-string v5, "SLH-DSA-SHA2-256F"

    invoke-direct {v4, v5}, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v4, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->slh_dsa_sha2_256f:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    new-instance v5, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    const-string v6, "SLH-DSA-SHA2-256S"

    invoke-direct {v5, v6}, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v5, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->slh_dsa_sha2_256s:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    new-instance v6, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    const-string v7, "SLH-DSA-SHAKE-128F"

    invoke-direct {v6, v7}, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v6, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->slh_dsa_shake_128f:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    new-instance v7, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    const-string v8, "SLH-DSA-SHAKE-128S"

    invoke-direct {v7, v8}, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v7, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->slh_dsa_shake_128s:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    new-instance v8, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    const-string v9, "SLH-DSA-SHAKE-192F"

    invoke-direct {v8, v9}, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v8, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->slh_dsa_shake_192f:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    new-instance v9, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    const-string v10, "SLH-DSA-SHAKE-192S"

    invoke-direct {v9, v10}, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v9, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->slh_dsa_shake_192s:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    new-instance v10, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    const-string v11, "SLH-DSA-SHAKE-256F"

    invoke-direct {v10, v11}, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v10, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->slh_dsa_shake_256f:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    new-instance v11, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    const-string v12, "SLH-DSA-SHAKE-256S"

    invoke-direct {v11, v12}, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v11, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->slh_dsa_shake_256s:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    new-instance v12, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    const-string v13, "SLH-DSA-SHA2-128F-WITH-SHA256"

    invoke-direct {v12, v13}, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v12, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->slh_dsa_sha2_128f_with_sha256:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    new-instance v13, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    const-string v14, "SLH-DSA-SHA2-128S-WITH-SHA256"

    invoke-direct {v13, v14}, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v13, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->slh_dsa_sha2_128s_with_sha256:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    new-instance v14, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    const-string v15, "SLH-DSA-SHA2-192F-WITH-SHA512"

    invoke-direct {v14, v15}, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v14, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->slh_dsa_sha2_192f_with_sha512:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    new-instance v15, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    move-object/from16 v16, v14

    const-string v14, "SLH-DSA-SHA2-192S-WITH-SHA512"

    invoke-direct {v15, v14}, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v15, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->slh_dsa_sha2_192s_with_sha512:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    new-instance v14, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    move-object/from16 v17, v15

    const-string v15, "SLH-DSA-SHA2-256F-WITH-SHA512"

    invoke-direct {v14, v15}, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v14, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->slh_dsa_sha2_256f_with_sha512:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    new-instance v15, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    move-object/from16 v18, v14

    const-string v14, "SLH-DSA-SHA2-256S-WITH-SHA512"

    invoke-direct {v15, v14}, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v15, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->slh_dsa_sha2_256s_with_sha512:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    new-instance v14, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    move-object/from16 v19, v15

    const-string v15, "SLH-DSA-SHAKE-128F-WITH-SHAKE128"

    invoke-direct {v14, v15}, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v14, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->slh_dsa_shake_128f_with_shake128:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    new-instance v15, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    move-object/from16 v20, v14

    const-string v14, "SLH-DSA-SHAKE-128S-WITH-SHAKE128"

    invoke-direct {v15, v14}, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v15, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->slh_dsa_shake_128s_with_shake128:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    new-instance v14, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    move-object/from16 v21, v15

    const-string v15, "SLH-DSA-SHAKE-192F-WITH-SHAKE256"

    invoke-direct {v14, v15}, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v14, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->slh_dsa_shake_192f_with_shake256:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    new-instance v15, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    move-object/from16 v22, v14

    const-string v14, "SLH-DSA-SHAKE-192S-WITH-SHAKE256"

    invoke-direct {v15, v14}, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v15, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->slh_dsa_shake_192s_with_shake256:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    new-instance v14, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    move-object/from16 v23, v15

    const-string v15, "SLH-DSA-SHAKE-256F-WITH-SHAKE256"

    invoke-direct {v14, v15}, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v14, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->slh_dsa_shake_256f_with_shake256:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    new-instance v15, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    move-object/from16 v24, v14

    const-string v14, "SLH-DSA-SHAKE-256S-WITH-SHAKE256"

    invoke-direct {v15, v14}, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v15, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->slh_dsa_shake_256s_with_shake256:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    sput-object v14, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->parameters:Ljava/util/Map;

    move-object/from16 v25, v15

    const-string v15, "slh-dsa-sha2-128f"

    invoke-interface {v14, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v14, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->parameters:Ljava/util/Map;

    const-string v15, "slh-dsa-sha2-128s"

    invoke-interface {v14, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v14, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->parameters:Ljava/util/Map;

    const-string v15, "slh-dsa-sha2-192f"

    invoke-interface {v14, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v14, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->parameters:Ljava/util/Map;

    const-string v15, "slh-dsa-sha2-192s"

    invoke-interface {v14, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v14, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->parameters:Ljava/util/Map;

    const-string v15, "slh-dsa-sha2-256f"

    invoke-interface {v14, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v14, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->parameters:Ljava/util/Map;

    const-string v15, "slh-dsa-sha2-256s"

    invoke-interface {v14, v15, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v14, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->parameters:Ljava/util/Map;

    const-string v15, "sha2-128f"

    invoke-interface {v14, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->parameters:Ljava/util/Map;

    const-string v14, "sha2-128s"

    invoke-interface {v0, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "sha2-192f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "sha2-192s"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "sha2-256f"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "sha2-256s"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "slh-dsa-shake-128f"

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "slh-dsa-shake-128s"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "slh-dsa-shake-192f"

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "slh-dsa-shake-192s"

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "slh-dsa-shake-256f"

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "slh-dsa-shake-256s"

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "shake-128f"

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "shake-128s"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "shake-192f"

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "shake-192s"

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "shake-256f"

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "shake-256s"

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "slh-dsa-sha2-128f-with-sha256"

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "slh-dsa-sha2-128s-with-sha256"

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "slh-dsa-sha2-192f-with-sha512"

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "slh-dsa-sha2-192s-with-sha512"

    move-object/from16 v3, v17

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "slh-dsa-sha2-256f-with-sha512"

    move-object/from16 v4, v18

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "slh-dsa-sha2-256s-with-sha512"

    move-object/from16 v5, v19

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "sha2-128f-with-sha256"

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "sha2-128s-with-sha256"

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "sha2-192f-with-sha512"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "sha2-192s-with-sha512"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "sha2-256f-with-sha512"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "sha2-256s-with-sha512"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "slh-dsa-shake-128f-with-shake128"

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "slh-dsa-shake-128s-with-shake128"

    move-object/from16 v3, v21

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "slh-dsa-shake-192f-with-shake256"

    move-object/from16 v4, v22

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "slh-dsa-shake-192s-with-shake256"

    move-object/from16 v5, v23

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "slh-dsa-shake-256f-with-shake256"

    move-object/from16 v6, v24

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "slh-dsa-shake-256s-with-shake256"

    move-object/from16 v7, v25

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "shake-128f-with-shake128"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "shake-128s-with-shake128"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "shake-192f-with-shake256"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "shake-192s-with-shake256"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "shake-256f-with-shake256"

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "shake-256s-with-shake256"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->name:Ljava/lang/String;

    return-void
.end method

.method public static fromName(Ljava/lang/String;)Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;
    .locals 3

    if-eqz p0, :cond_1

    sget-object v0, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->parameters:Ljava/util/Map;

    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

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

    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->name:Ljava/lang/String;

    return-object v0
.end method
