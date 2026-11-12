.class public Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final haraka_128f:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

.field public static final haraka_128f_simple:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

.field public static final haraka_128s:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

.field public static final haraka_128s_simple:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

.field public static final haraka_192f:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

.field public static final haraka_192f_simple:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

.field public static final haraka_192s:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

.field public static final haraka_192s_simple:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

.field public static final haraka_256f:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

.field public static final haraka_256f_simple:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

.field public static final haraka_256s:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

.field public static final haraka_256s_simple:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

.field private static parameters:Ljava/util/Map;

.field public static final sha2_128f:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

.field public static final sha2_128f_robust:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

.field public static final sha2_128s:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

.field public static final sha2_128s_robust:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

.field public static final sha2_192f:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

.field public static final sha2_192f_robust:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

.field public static final sha2_192s:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

.field public static final sha2_192s_robust:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

.field public static final sha2_256f:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

.field public static final sha2_256f_robust:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

.field public static final sha2_256s:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

.field public static final sha2_256s_robust:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

.field public static final shake_128f:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

.field public static final shake_128f_robust:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

.field public static final shake_128s:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

.field public static final shake_128s_robust:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

.field public static final shake_192f:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

.field public static final shake_192f_robust:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

.field public static final shake_192s:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

.field public static final shake_192s_robust:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

.field public static final shake_256f:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

.field public static final shake_256f_robust:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

.field public static final shake_256s:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

.field public static final shake_256s_robust:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 50

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    const-string v1, "sha2-128f-robust"

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->sha2_128f_robust:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    new-instance v1, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    const-string v2, "sha2-128s-robust"

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->sha2_128s_robust:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    new-instance v2, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    const-string v3, "sha2-192f-robust"

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v2, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->sha2_192f_robust:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    new-instance v3, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    const-string v4, "sha2-192s-robust"

    invoke-direct {v3, v4}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v3, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->sha2_192s_robust:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    new-instance v4, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    const-string v5, "sha2-256f-robust"

    invoke-direct {v4, v5}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v4, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->sha2_256f_robust:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    new-instance v5, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    const-string v6, "sha2-256s-robust"

    invoke-direct {v5, v6}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v5, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->sha2_256s_robust:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    new-instance v6, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    const-string v7, "sha2-128f"

    invoke-direct {v6, v7}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v6, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->sha2_128f:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    new-instance v8, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    const-string v9, "sha2-128s"

    invoke-direct {v8, v9}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v8, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->sha2_128s:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    new-instance v10, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    const-string v11, "sha2-192f"

    invoke-direct {v10, v11}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v10, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->sha2_192f:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    new-instance v12, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    const-string v13, "sha2-192s"

    invoke-direct {v12, v13}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v12, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->sha2_192s:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    new-instance v14, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    const-string v15, "sha2-256f"

    invoke-direct {v14, v15}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v14, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->sha2_256f:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    move-object/from16 v16, v15

    new-instance v15, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    move-object/from16 v17, v13

    const-string v13, "sha2-256s"

    invoke-direct {v15, v13}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v15, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->sha2_256s:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    move-object/from16 v18, v13

    new-instance v13, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    move-object/from16 v19, v11

    const-string v11, "shake-128f-robust"

    invoke-direct {v13, v11}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v13, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->shake_128f_robust:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    new-instance v11, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    move-object/from16 v20, v13

    const-string v13, "shake-128s-robust"

    invoke-direct {v11, v13}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v11, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->shake_128s_robust:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    new-instance v13, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    move-object/from16 v21, v11

    const-string v11, "shake-192f-robust"

    invoke-direct {v13, v11}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v13, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->shake_192f_robust:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    new-instance v11, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    move-object/from16 v22, v13

    const-string v13, "shake-192s-robust"

    invoke-direct {v11, v13}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v11, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->shake_192s_robust:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    new-instance v13, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    move-object/from16 v23, v11

    const-string v11, "shake-256f-robust"

    invoke-direct {v13, v11}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v13, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->shake_256f_robust:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    new-instance v11, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    move-object/from16 v24, v13

    const-string v13, "shake-256s-robust"

    invoke-direct {v11, v13}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v11, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->shake_256s_robust:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    new-instance v13, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    move-object/from16 v25, v11

    const-string v11, "shake-128f"

    invoke-direct {v13, v11}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v13, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->shake_128f:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    move-object/from16 v26, v11

    new-instance v11, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    move-object/from16 v27, v13

    const-string v13, "shake-128s"

    invoke-direct {v11, v13}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v11, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->shake_128s:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    move-object/from16 v28, v13

    new-instance v13, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    move-object/from16 v29, v11

    const-string v11, "shake-192f"

    invoke-direct {v13, v11}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v13, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->shake_192f:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    move-object/from16 v30, v11

    new-instance v11, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    move-object/from16 v31, v13

    const-string v13, "shake-192s"

    invoke-direct {v11, v13}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v11, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->shake_192s:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    move-object/from16 v32, v13

    new-instance v13, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    move-object/from16 v33, v11

    const-string v11, "shake-256f"

    invoke-direct {v13, v11}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v13, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->shake_256f:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    move-object/from16 v34, v11

    new-instance v11, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    move-object/from16 v35, v13

    const-string v13, "shake-256s"

    invoke-direct {v11, v13}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v11, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->shake_256s:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    move-object/from16 v36, v13

    new-instance v13, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    move-object/from16 v37, v11

    const-string v11, "haraka-128f-robust"

    invoke-direct {v13, v11}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v13, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->haraka_128f:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    new-instance v11, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    move-object/from16 v38, v13

    const-string v13, "haraka-128s-robust"

    invoke-direct {v11, v13}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v11, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->haraka_128s:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    new-instance v13, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    move-object/from16 v39, v11

    const-string v11, "haraka-256f-robust"

    invoke-direct {v13, v11}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v13, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->haraka_256f:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    new-instance v11, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    move-object/from16 v40, v13

    const-string v13, "haraka-256s-robust"

    invoke-direct {v11, v13}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v11, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->haraka_256s:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    new-instance v13, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    move-object/from16 v41, v11

    const-string v11, "haraka-192f-robust"

    invoke-direct {v13, v11}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v13, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->haraka_192f:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    new-instance v11, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    move-object/from16 v42, v13

    const-string v13, "haraka-192s-robust"

    invoke-direct {v11, v13}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v11, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->haraka_192s:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    new-instance v13, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    move-object/from16 v43, v11

    const-string v11, "haraka-128f-simple"

    invoke-direct {v13, v11}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v13, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->haraka_128f_simple:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    new-instance v11, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    move-object/from16 v44, v13

    const-string v13, "haraka-128s-simple"

    invoke-direct {v11, v13}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v11, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->haraka_128s_simple:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    new-instance v13, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    move-object/from16 v45, v11

    const-string v11, "haraka-192f-simple"

    invoke-direct {v13, v11}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v13, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->haraka_192f_simple:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    new-instance v11, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    move-object/from16 v46, v13

    const-string v13, "haraka-192s-simple"

    invoke-direct {v11, v13}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v11, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->haraka_192s_simple:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    new-instance v13, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    move-object/from16 v47, v11

    const-string v11, "haraka-256f-simple"

    invoke-direct {v13, v11}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v13, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->haraka_256f_simple:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    new-instance v11, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    move-object/from16 v48, v13

    const-string v13, "haraka-256s-simple"

    invoke-direct {v11, v13}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v11, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->haraka_256s_simple:Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    sput-object v13, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    move-object/from16 v49, v11

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v13, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    invoke-virtual {v10}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    invoke-virtual {v12}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    invoke-virtual {v15}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    invoke-interface {v0, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    move-object/from16 v1, v16

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    invoke-virtual/range {v20 .. v20}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    invoke-virtual/range {v21 .. v21}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    invoke-virtual/range {v22 .. v22}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    invoke-virtual/range {v23 .. v23}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    invoke-virtual/range {v24 .. v24}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    invoke-virtual/range {v25 .. v25}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    invoke-virtual/range {v27 .. v27}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    invoke-virtual/range {v29 .. v29}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v29

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    invoke-virtual/range {v31 .. v31}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v4, v31

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    invoke-virtual/range {v33 .. v33}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v5, v33

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    invoke-virtual/range {v35 .. v35}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v6, v35

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    invoke-virtual/range {v37 .. v37}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v7, v37

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    move-object/from16 v1, v26

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    move-object/from16 v1, v28

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    move-object/from16 v1, v30

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    move-object/from16 v1, v32

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    move-object/from16 v1, v34

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    move-object/from16 v1, v36

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    invoke-virtual/range {v38 .. v38}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    invoke-virtual/range {v39 .. v39}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v39

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    invoke-virtual/range {v42 .. v42}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v42

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    invoke-virtual/range {v43 .. v43}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v43

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    invoke-virtual/range {v40 .. v40}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    invoke-virtual/range {v41 .. v41}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    invoke-virtual/range {v44 .. v44}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v44

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    invoke-virtual/range {v45 .. v45}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    invoke-virtual/range {v46 .. v46}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v46

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    invoke-virtual/range {v47 .. v47}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v47

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    invoke-virtual/range {v48 .. v48}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v48

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    invoke-virtual/range {v49 .. v49}, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v49

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->name:Ljava/lang/String;

    return-void
.end method

.method public static fromName(Ljava/lang/String;)Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;
    .locals 1

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->parameters:Ljava/util/Map;

    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;

    return-object p0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/SPHINCSPlusParameterSpec;->name:Ljava/lang/String;

    return-object v0
.end method
