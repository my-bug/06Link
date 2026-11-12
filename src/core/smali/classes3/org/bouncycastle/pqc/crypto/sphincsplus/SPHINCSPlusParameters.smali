.class public Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$HarakaSEngineProvider;,
        Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$Sha2EngineProvider;,
        Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$Shake256EngineProvider;
    }
.end annotation


# static fields
.field private static final ID_TO_PARAMS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;",
            ">;"
        }
    .end annotation
.end field

.field public static final haraka_128f:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final haraka_128f_simple:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final haraka_128s:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final haraka_128s_simple:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final haraka_192f:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final haraka_192f_simple:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final haraka_192s:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final haraka_192s_simple:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final haraka_256f:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final haraka_256f_simple:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final haraka_256s:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final haraka_256s_simple:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final sha2_128f:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final sha2_128f_robust:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final sha2_128s:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final sha2_128s_robust:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final sha2_192f:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final sha2_192f_robust:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final sha2_192s:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final sha2_192s_robust:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final sha2_256f:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final sha2_256f_robust:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final sha2_256s:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final sha2_256s_robust:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final shake_128f:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final shake_128f_robust:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final shake_128s:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final shake_128s_robust:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final shake_192f:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final shake_192f_robust:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final shake_192s:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final shake_192s_robust:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final shake_256f:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final shake_256f_robust:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final shake_256s:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final shake_256s_robust:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;


# instance fields
.field private final engineProvider:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngineProvider;

.field private final id:Ljava/lang/Integer;

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 46

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    const v1, 0x10101

    invoke-static {v1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$Sha2EngineProvider;

    const/16 v8, 0x21

    const/16 v9, 0x42

    const/4 v3, 0x1

    const/16 v4, 0x10

    const/16 v5, 0x10

    const/16 v6, 0x16

    const/4 v7, 0x6

    invoke-direct/range {v2 .. v9}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$Sha2EngineProvider;-><init>(ZIIIIII)V

    const-string v3, "sha2-128f-robust"

    invoke-direct {v0, v1, v3, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngineProvider;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->sha2_128f_robust:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    const v2, 0x10102

    invoke-static {v2}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$Sha2EngineProvider;

    const/16 v9, 0xe

    const/16 v10, 0x3f

    const/4 v4, 0x1

    const/16 v6, 0x10

    const/4 v7, 0x7

    const/16 v8, 0xc

    invoke-direct/range {v3 .. v10}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$Sha2EngineProvider;-><init>(ZIIIIII)V

    const-string v4, "sha2-128s-robust"

    invoke-direct {v1, v2, v4, v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngineProvider;)V

    sput-object v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->sha2_128s_robust:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    const v3, 0x10103

    invoke-static {v3}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$Sha2EngineProvider;

    const/16 v10, 0x21

    const/16 v11, 0x42

    const/4 v5, 0x1

    const/16 v6, 0x18

    const/16 v7, 0x10

    const/16 v8, 0x16

    const/16 v9, 0x8

    invoke-direct/range {v4 .. v11}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$Sha2EngineProvider;-><init>(ZIIIIII)V

    const-string v5, "sha2-192f-robust"

    invoke-direct {v2, v3, v5, v4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngineProvider;)V

    sput-object v2, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->sha2_192f_robust:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v3, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    const v4, 0x10104

    invoke-static {v4}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$Sha2EngineProvider;

    const/16 v11, 0x11

    const/16 v12, 0x3f

    const/4 v6, 0x1

    const/16 v7, 0x18

    const/16 v8, 0x10

    const/4 v9, 0x7

    const/16 v10, 0xe

    invoke-direct/range {v5 .. v12}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$Sha2EngineProvider;-><init>(ZIIIIII)V

    const-string v6, "sha2-192s-robust"

    invoke-direct {v3, v4, v6, v5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngineProvider;)V

    sput-object v3, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->sha2_192s_robust:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v4, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    const v5, 0x10105

    invoke-static {v5}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$Sha2EngineProvider;

    const/16 v12, 0x23

    const/16 v13, 0x44

    const/4 v7, 0x1

    const/16 v8, 0x20

    const/16 v9, 0x10

    const/16 v10, 0x11

    const/16 v11, 0x9

    invoke-direct/range {v6 .. v13}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$Sha2EngineProvider;-><init>(ZIIIIII)V

    const-string v7, "sha2-256f-robust"

    invoke-direct {v4, v5, v7, v6}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngineProvider;)V

    sput-object v4, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->sha2_256f_robust:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v5, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    const v6, 0x10106

    invoke-static {v6}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$Sha2EngineProvider;

    const/16 v13, 0x16

    const/16 v14, 0x40

    const/4 v8, 0x1

    const/16 v9, 0x20

    const/16 v10, 0x10

    const/16 v11, 0x8

    const/16 v12, 0xe

    invoke-direct/range {v7 .. v14}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$Sha2EngineProvider;-><init>(ZIIIIII)V

    const-string v8, "sha2-256s-robust"

    invoke-direct {v5, v6, v8, v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngineProvider;)V

    sput-object v5, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->sha2_256s_robust:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v6, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    const v7, 0x10201

    invoke-static {v7}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$Sha2EngineProvider;

    const/16 v14, 0x21

    const/16 v15, 0x42

    const/4 v9, 0x0

    const/16 v11, 0x10

    const/16 v12, 0x16

    const/4 v13, 0x6

    invoke-direct/range {v8 .. v15}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$Sha2EngineProvider;-><init>(ZIIIIII)V

    const-string v9, "sha2-128f"

    invoke-direct {v6, v7, v9, v8}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngineProvider;)V

    sput-object v6, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->sha2_128f:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v7, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    const v8, 0x10202

    invoke-static {v8}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$Sha2EngineProvider;

    const/16 v15, 0xe

    const/16 v16, 0x3f

    const/4 v10, 0x0

    const/16 v12, 0x10

    const/4 v13, 0x7

    const/16 v14, 0xc

    invoke-direct/range {v9 .. v16}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$Sha2EngineProvider;-><init>(ZIIIIII)V

    const-string v10, "sha2-128s"

    invoke-direct {v7, v8, v10, v9}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngineProvider;)V

    sput-object v7, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->sha2_128s:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v8, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    const v9, 0x10203

    invoke-static {v9}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v10, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$Sha2EngineProvider;

    const/16 v16, 0x21

    const/16 v17, 0x42

    const/4 v11, 0x0

    const/16 v12, 0x18

    const/16 v13, 0x10

    const/16 v14, 0x16

    const/16 v15, 0x8

    invoke-direct/range {v10 .. v17}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$Sha2EngineProvider;-><init>(ZIIIIII)V

    const-string v11, "sha2-192f"

    invoke-direct {v8, v9, v11, v10}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngineProvider;)V

    sput-object v8, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->sha2_192f:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v9, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    const v10, 0x10204

    invoke-static {v10}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-instance v11, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$Sha2EngineProvider;

    const/16 v17, 0x11

    const/16 v18, 0x3f

    const/4 v12, 0x0

    const/16 v13, 0x18

    const/16 v14, 0x10

    const/4 v15, 0x7

    const/16 v16, 0xe

    invoke-direct/range {v11 .. v18}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$Sha2EngineProvider;-><init>(ZIIIIII)V

    const-string v12, "sha2-192s"

    invoke-direct {v9, v10, v12, v11}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngineProvider;)V

    sput-object v9, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->sha2_192s:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v10, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    const v11, 0x10205

    invoke-static {v11}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-instance v12, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$Sha2EngineProvider;

    const/16 v18, 0x23

    const/16 v19, 0x44

    const/4 v13, 0x0

    const/16 v14, 0x20

    const/16 v15, 0x10

    const/16 v16, 0x11

    const/16 v17, 0x9

    invoke-direct/range {v12 .. v19}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$Sha2EngineProvider;-><init>(ZIIIIII)V

    const-string v13, "sha2-256f"

    invoke-direct {v10, v11, v13, v12}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngineProvider;)V

    sput-object v10, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->sha2_256f:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v11, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    const v12, 0x10206

    invoke-static {v12}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    new-instance v13, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$Sha2EngineProvider;

    const/16 v19, 0x16

    const/16 v20, 0x40

    const/4 v14, 0x0

    const/16 v15, 0x20

    const/16 v16, 0x10

    const/16 v17, 0x8

    const/16 v18, 0xe

    invoke-direct/range {v13 .. v20}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$Sha2EngineProvider;-><init>(ZIIIIII)V

    const-string v14, "sha2-256s"

    invoke-direct {v11, v12, v14, v13}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngineProvider;)V

    sput-object v11, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->sha2_256s:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v12, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    const v13, 0x20101

    invoke-static {v13}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    new-instance v14, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$Shake256EngineProvider;

    const/16 v20, 0x21

    const/16 v21, 0x42

    const/4 v15, 0x1

    const/16 v17, 0x10

    const/16 v18, 0x16

    const/16 v19, 0x6

    invoke-direct/range {v14 .. v21}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$Shake256EngineProvider;-><init>(ZIIIIII)V

    const-string v15, "shake-128f-robust"

    invoke-direct {v12, v13, v15, v14}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngineProvider;)V

    sput-object v12, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->shake_128f_robust:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v13, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    const v14, 0x20102

    invoke-static {v14}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-instance v15, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$Shake256EngineProvider;

    const/16 v21, 0xe

    const/16 v22, 0x3f

    const/16 v16, 0x1

    const/16 v18, 0x10

    const/16 v19, 0x7

    const/16 v20, 0xc

    invoke-direct/range {v15 .. v22}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$Shake256EngineProvider;-><init>(ZIIIIII)V

    move-object/from16 v16, v0

    const-string v0, "shake-128s-robust"

    invoke-direct {v13, v14, v0, v15}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngineProvider;)V

    sput-object v13, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->shake_128s_robust:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    const v14, 0x20103

    invoke-static {v14}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-instance v17, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$Shake256EngineProvider;

    const/16 v23, 0x21

    const/16 v24, 0x42

    const/16 v18, 0x1

    const/16 v19, 0x18

    const/16 v20, 0x10

    const/16 v21, 0x16

    const/16 v22, 0x8

    invoke-direct/range {v17 .. v24}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$Shake256EngineProvider;-><init>(ZIIIIII)V

    move-object/from16 v15, v17

    move-object/from16 v17, v1

    const-string v1, "shake-192f-robust"

    invoke-direct {v0, v14, v1, v15}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngineProvider;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->shake_192f_robust:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    const v14, 0x20104

    invoke-static {v14}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-instance v18, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$Shake256EngineProvider;

    const/16 v24, 0x11

    const/16 v25, 0x3f

    const/16 v19, 0x1

    const/16 v20, 0x18

    const/16 v21, 0x10

    const/16 v22, 0x7

    const/16 v23, 0xe

    invoke-direct/range {v18 .. v25}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$Shake256EngineProvider;-><init>(ZIIIIII)V

    move-object/from16 v15, v18

    move-object/from16 v18, v0

    const-string v0, "shake-192s-robust"

    invoke-direct {v1, v14, v0, v15}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngineProvider;)V

    sput-object v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->shake_192s_robust:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    const v14, 0x20105

    invoke-static {v14}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-instance v19, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$Shake256EngineProvider;

    const/16 v25, 0x23

    const/16 v26, 0x44

    const/16 v20, 0x1

    const/16 v21, 0x20

    const/16 v22, 0x10

    const/16 v23, 0x11

    const/16 v24, 0x9

    invoke-direct/range {v19 .. v26}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$Shake256EngineProvider;-><init>(ZIIIIII)V

    move-object/from16 v15, v19

    move-object/from16 v19, v1

    const-string v1, "shake-256f-robust"

    invoke-direct {v0, v14, v1, v15}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngineProvider;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->shake_256f_robust:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    const v14, 0x20106

    invoke-static {v14}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-instance v20, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$Shake256EngineProvider;

    const/16 v26, 0x16

    const/16 v27, 0x40

    const/16 v21, 0x1

    const/16 v22, 0x20

    const/16 v23, 0x10

    const/16 v24, 0x8

    const/16 v25, 0xe

    invoke-direct/range {v20 .. v27}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$Shake256EngineProvider;-><init>(ZIIIIII)V

    move-object/from16 v15, v20

    move-object/from16 v20, v0

    const-string v0, "shake-256s-robust"

    invoke-direct {v1, v14, v0, v15}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngineProvider;)V

    sput-object v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->shake_256s_robust:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    const v14, 0x20201

    invoke-static {v14}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-instance v21, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$Shake256EngineProvider;

    const/16 v27, 0x21

    const/16 v28, 0x42

    const/16 v22, 0x0

    const/16 v24, 0x10

    const/16 v25, 0x16

    const/16 v26, 0x6

    invoke-direct/range {v21 .. v28}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$Shake256EngineProvider;-><init>(ZIIIIII)V

    move-object/from16 v15, v21

    move-object/from16 v21, v1

    const-string v1, "shake-128f"

    invoke-direct {v0, v14, v1, v15}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngineProvider;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->shake_128f:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    const v14, 0x20202

    invoke-static {v14}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-instance v22, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$Shake256EngineProvider;

    const/16 v28, 0xe

    const/16 v29, 0x3f

    const/16 v23, 0x0

    const/16 v25, 0x10

    const/16 v26, 0x7

    const/16 v27, 0xc

    invoke-direct/range {v22 .. v29}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$Shake256EngineProvider;-><init>(ZIIIIII)V

    move-object/from16 v15, v22

    move-object/from16 v22, v0

    const-string v0, "shake-128s"

    invoke-direct {v1, v14, v0, v15}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngineProvider;)V

    sput-object v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->shake_128s:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    const v14, 0x20203

    invoke-static {v14}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-instance v23, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$Shake256EngineProvider;

    const/16 v29, 0x21

    const/16 v30, 0x42

    const/16 v24, 0x0

    const/16 v25, 0x18

    const/16 v26, 0x10

    const/16 v27, 0x16

    const/16 v28, 0x8

    invoke-direct/range {v23 .. v30}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$Shake256EngineProvider;-><init>(ZIIIIII)V

    move-object/from16 v15, v23

    move-object/from16 v23, v1

    const-string v1, "shake-192f"

    invoke-direct {v0, v14, v1, v15}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngineProvider;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->shake_192f:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    const v14, 0x20204

    invoke-static {v14}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-instance v24, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$Shake256EngineProvider;

    const/16 v30, 0x11

    const/16 v31, 0x3f

    const/16 v25, 0x0

    const/16 v26, 0x18

    const/16 v27, 0x10

    const/16 v28, 0x7

    const/16 v29, 0xe

    invoke-direct/range {v24 .. v31}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$Shake256EngineProvider;-><init>(ZIIIIII)V

    move-object/from16 v15, v24

    move-object/from16 v24, v0

    const-string v0, "shake-192s"

    invoke-direct {v1, v14, v0, v15}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngineProvider;)V

    sput-object v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->shake_192s:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    const v14, 0x20205

    invoke-static {v14}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-instance v25, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$Shake256EngineProvider;

    const/16 v31, 0x23

    const/16 v32, 0x44

    const/16 v26, 0x0

    const/16 v27, 0x20

    const/16 v28, 0x10

    const/16 v29, 0x11

    const/16 v30, 0x9

    invoke-direct/range {v25 .. v32}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$Shake256EngineProvider;-><init>(ZIIIIII)V

    move-object/from16 v15, v25

    move-object/from16 v25, v1

    const-string v1, "shake-256f"

    invoke-direct {v0, v14, v1, v15}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngineProvider;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->shake_256f:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    const v14, 0x20206

    invoke-static {v14}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-instance v26, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$Shake256EngineProvider;

    const/16 v32, 0x16

    const/16 v33, 0x40

    const/16 v27, 0x0

    const/16 v28, 0x20

    const/16 v29, 0x10

    const/16 v30, 0x8

    const/16 v31, 0xe

    invoke-direct/range {v26 .. v33}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$Shake256EngineProvider;-><init>(ZIIIIII)V

    move-object/from16 v15, v26

    move-object/from16 v26, v0

    const-string v0, "shake-256s"

    invoke-direct {v1, v14, v0, v15}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngineProvider;)V

    sput-object v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->shake_256s:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    const v14, 0x30101

    invoke-static {v14}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-instance v27, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$HarakaSEngineProvider;

    const/16 v33, 0x21

    const/16 v34, 0x42

    const/16 v28, 0x1

    const/16 v30, 0x10

    const/16 v31, 0x16

    const/16 v32, 0x6

    invoke-direct/range {v27 .. v34}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$HarakaSEngineProvider;-><init>(ZIIIIII)V

    move-object/from16 v15, v27

    move-object/from16 v27, v1

    const-string v1, "haraka-128f-robust"

    invoke-direct {v0, v14, v1, v15}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngineProvider;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->haraka_128f:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    const v14, 0x30102

    invoke-static {v14}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-instance v28, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$HarakaSEngineProvider;

    const/16 v34, 0xe

    const/16 v35, 0x3f

    const/16 v29, 0x1

    const/16 v31, 0x10

    const/16 v32, 0x7

    const/16 v33, 0xc

    invoke-direct/range {v28 .. v35}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$HarakaSEngineProvider;-><init>(ZIIIIII)V

    move-object/from16 v15, v28

    move-object/from16 v28, v0

    const-string v0, "haraka-128s-robust"

    invoke-direct {v1, v14, v0, v15}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngineProvider;)V

    sput-object v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->haraka_128s:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    const v14, 0x30103

    invoke-static {v14}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-instance v29, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$HarakaSEngineProvider;

    const/16 v35, 0x21

    const/16 v36, 0x42

    const/16 v30, 0x1

    const/16 v31, 0x18

    const/16 v32, 0x10

    const/16 v33, 0x16

    const/16 v34, 0x8

    invoke-direct/range {v29 .. v36}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$HarakaSEngineProvider;-><init>(ZIIIIII)V

    move-object/from16 v15, v29

    move-object/from16 v29, v1

    const-string v1, "haraka-192f-robust"

    invoke-direct {v0, v14, v1, v15}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngineProvider;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->haraka_192f:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    const v14, 0x30104

    invoke-static {v14}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-instance v30, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$HarakaSEngineProvider;

    const/16 v36, 0x11

    const/16 v37, 0x3f

    const/16 v31, 0x1

    const/16 v32, 0x18

    const/16 v33, 0x10

    const/16 v34, 0x7

    const/16 v35, 0xe

    invoke-direct/range {v30 .. v37}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$HarakaSEngineProvider;-><init>(ZIIIIII)V

    move-object/from16 v15, v30

    move-object/from16 v30, v0

    const-string v0, "haraka-192s-robust"

    invoke-direct {v1, v14, v0, v15}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngineProvider;)V

    sput-object v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->haraka_192s:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    const v14, 0x30105

    invoke-static {v14}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-instance v31, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$HarakaSEngineProvider;

    const/16 v37, 0x23

    const/16 v38, 0x44

    const/16 v32, 0x1

    const/16 v33, 0x20

    const/16 v34, 0x10

    const/16 v35, 0x11

    const/16 v36, 0x9

    invoke-direct/range {v31 .. v38}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$HarakaSEngineProvider;-><init>(ZIIIIII)V

    move-object/from16 v15, v31

    move-object/from16 v31, v1

    const-string v1, "haraka-256f-robust"

    invoke-direct {v0, v14, v1, v15}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngineProvider;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->haraka_256f:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    const v14, 0x30106

    invoke-static {v14}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-instance v32, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$HarakaSEngineProvider;

    const/16 v38, 0x16

    const/16 v39, 0x40

    const/16 v33, 0x1

    const/16 v34, 0x20

    const/16 v35, 0x10

    const/16 v36, 0x8

    const/16 v37, 0xe

    invoke-direct/range {v32 .. v39}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$HarakaSEngineProvider;-><init>(ZIIIIII)V

    move-object/from16 v15, v32

    move-object/from16 v32, v0

    const-string v0, "haraka-256s-robust"

    invoke-direct {v1, v14, v0, v15}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngineProvider;)V

    sput-object v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->haraka_256s:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    const v14, 0x30201

    invoke-static {v14}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-instance v33, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$HarakaSEngineProvider;

    const/16 v39, 0x21

    const/16 v40, 0x42

    const/16 v34, 0x0

    const/16 v36, 0x10

    const/16 v37, 0x16

    const/16 v38, 0x6

    invoke-direct/range {v33 .. v40}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$HarakaSEngineProvider;-><init>(ZIIIIII)V

    move-object/from16 v15, v33

    move-object/from16 v33, v1

    const-string v1, "haraka-128f-simple"

    invoke-direct {v0, v14, v1, v15}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngineProvider;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->haraka_128f_simple:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    const v14, 0x30202

    invoke-static {v14}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-instance v34, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$HarakaSEngineProvider;

    const/16 v40, 0xe

    const/16 v41, 0x3f

    const/16 v35, 0x0

    const/16 v37, 0x10

    const/16 v38, 0x7

    const/16 v39, 0xc

    invoke-direct/range {v34 .. v41}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$HarakaSEngineProvider;-><init>(ZIIIIII)V

    move-object/from16 v15, v34

    move-object/from16 v34, v0

    const-string v0, "haraka-128s-simple"

    invoke-direct {v1, v14, v0, v15}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngineProvider;)V

    sput-object v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->haraka_128s_simple:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    const v14, 0x30203

    invoke-static {v14}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-instance v35, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$HarakaSEngineProvider;

    const/16 v41, 0x21

    const/16 v42, 0x42

    const/16 v36, 0x0

    const/16 v37, 0x18

    const/16 v38, 0x10

    const/16 v39, 0x16

    const/16 v40, 0x8

    invoke-direct/range {v35 .. v42}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$HarakaSEngineProvider;-><init>(ZIIIIII)V

    move-object/from16 v15, v35

    move-object/from16 v35, v1

    const-string v1, "haraka-192f-simple"

    invoke-direct {v0, v14, v1, v15}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngineProvider;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->haraka_192f_simple:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    const v14, 0x30204

    invoke-static {v14}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-instance v36, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$HarakaSEngineProvider;

    const/16 v42, 0x11

    const/16 v43, 0x3f

    const/16 v37, 0x0

    const/16 v38, 0x18

    const/16 v39, 0x10

    const/16 v40, 0x7

    const/16 v41, 0xe

    invoke-direct/range {v36 .. v43}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$HarakaSEngineProvider;-><init>(ZIIIIII)V

    move-object/from16 v15, v36

    move-object/from16 v36, v0

    const-string v0, "haraka-192s-simple"

    invoke-direct {v1, v14, v0, v15}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngineProvider;)V

    sput-object v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->haraka_192s_simple:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    const v14, 0x30205

    invoke-static {v14}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-instance v37, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$HarakaSEngineProvider;

    const/16 v43, 0x23

    const/16 v44, 0x44

    const/16 v38, 0x0

    const/16 v39, 0x20

    const/16 v40, 0x10

    const/16 v41, 0x11

    const/16 v42, 0x9

    invoke-direct/range {v37 .. v44}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$HarakaSEngineProvider;-><init>(ZIIIIII)V

    move-object/from16 v15, v37

    move-object/from16 v37, v1

    const-string v1, "haraka-256f-simple"

    invoke-direct {v0, v14, v1, v15}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngineProvider;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->haraka_256f_simple:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    const v14, 0x30206

    invoke-static {v14}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-instance v38, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$HarakaSEngineProvider;

    const/16 v44, 0x16

    const/16 v45, 0x40

    const/16 v39, 0x0

    const/16 v40, 0x20

    const/16 v41, 0x10

    const/16 v42, 0x8

    const/16 v43, 0xe

    invoke-direct/range {v38 .. v45}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$HarakaSEngineProvider;-><init>(ZIIIIII)V

    move-object/from16 v15, v38

    move-object/from16 v38, v0

    const-string v0, "haraka-256s-simple"

    invoke-direct {v1, v14, v0, v15}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngineProvider;)V

    sput-object v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->haraka_256s_simple:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->ID_TO_PARAMS:Ljava/util/Map;

    const/16 v0, 0x24

    new-array v14, v0, [Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    const/4 v15, 0x0

    aput-object v16, v14, v15

    const/16 v16, 0x1

    aput-object v17, v14, v16

    const/16 v16, 0x2

    aput-object v2, v14, v16

    const/4 v2, 0x3

    aput-object v3, v14, v2

    const/4 v2, 0x4

    aput-object v4, v14, v2

    const/4 v2, 0x5

    aput-object v5, v14, v2

    const/4 v2, 0x6

    aput-object v6, v14, v2

    const/4 v2, 0x7

    aput-object v7, v14, v2

    const/16 v2, 0x8

    aput-object v8, v14, v2

    const/16 v2, 0x9

    aput-object v9, v14, v2

    const/16 v2, 0xa

    aput-object v10, v14, v2

    const/16 v2, 0xb

    aput-object v11, v14, v2

    const/16 v2, 0xc

    aput-object v12, v14, v2

    const/16 v2, 0xd

    aput-object v13, v14, v2

    const/16 v2, 0xe

    aput-object v18, v14, v2

    const/16 v2, 0xf

    aput-object v19, v14, v2

    const/16 v2, 0x10

    aput-object v20, v14, v2

    const/16 v2, 0x11

    aput-object v21, v14, v2

    const/16 v2, 0x12

    aput-object v22, v14, v2

    const/16 v2, 0x13

    aput-object v23, v14, v2

    const/16 v2, 0x14

    aput-object v24, v14, v2

    const/16 v2, 0x15

    aput-object v25, v14, v2

    const/16 v2, 0x16

    aput-object v26, v14, v2

    const/16 v2, 0x17

    aput-object v27, v14, v2

    const/16 v2, 0x18

    aput-object v28, v14, v2

    const/16 v2, 0x19

    aput-object v29, v14, v2

    const/16 v2, 0x1a

    aput-object v30, v14, v2

    const/16 v2, 0x1b

    aput-object v31, v14, v2

    const/16 v2, 0x1c

    aput-object v32, v14, v2

    const/16 v2, 0x1d

    aput-object v33, v14, v2

    const/16 v2, 0x1e

    aput-object v34, v14, v2

    const/16 v2, 0x1f

    aput-object v35, v14, v2

    const/16 v2, 0x20

    aput-object v36, v14, v2

    const/16 v2, 0x21

    aput-object v37, v14, v2

    const/16 v2, 0x22

    aput-object v38, v14, v2

    const/16 v2, 0x23

    aput-object v1, v14, v2

    :goto_0
    if-ge v15, v0, :cond_0

    aget-object v1, v14, v15

    sget-object v2, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->ID_TO_PARAMS:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->getID()Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngineProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->id:Ljava/lang/Integer;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->name:Ljava/lang/String;

    iput-object p3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->engineProvider:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngineProvider;

    return-void
.end method

.method public static getID(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->getID()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static getParams(Ljava/lang/Integer;)Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;
    .locals 1

    sget-object v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->ID_TO_PARAMS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    return-object p0
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->getID()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I)[B

    move-result-object v0

    return-object v0
.end method

.method getEngine()Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->engineProvider:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngineProvider;

    invoke-interface {v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngineProvider;->get()Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    move-result-object v0

    return-object v0
.end method

.method public getID()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method getN()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->engineProvider:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngineProvider;

    invoke-interface {v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngineProvider;->getN()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->name:Ljava/lang/String;

    return-object v0
.end method
