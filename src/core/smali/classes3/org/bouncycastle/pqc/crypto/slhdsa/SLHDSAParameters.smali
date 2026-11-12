.class public Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters$Sha2EngineProvider;,
        Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters$Shake256EngineProvider;
    }
.end annotation


# static fields
.field public static final TYPE_PURE:I = 0x0

.field public static final TYPE_SHA2_256:I = 0x1

.field public static final TYPE_SHA2_512:I = 0x2

.field public static final TYPE_SHAKE128:I = 0x3

.field public static final TYPE_SHAKE256:I = 0x4

.field public static final sha2_128f:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

.field public static final sha2_128f_with_sha256:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

.field public static final sha2_128s:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

.field public static final sha2_128s_with_sha256:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

.field public static final sha2_192f:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

.field public static final sha2_192f_with_sha512:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

.field public static final sha2_192s:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

.field public static final sha2_192s_with_sha512:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

.field public static final sha2_256f:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

.field public static final sha2_256f_with_sha512:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

.field public static final sha2_256s:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

.field public static final sha2_256s_with_sha512:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

.field public static final shake_128f:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

.field public static final shake_128f_with_shake128:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

.field public static final shake_128s:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

.field public static final shake_128s_with_shake128:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

.field public static final shake_192f:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

.field public static final shake_192f_with_shake256:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

.field public static final shake_192s:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

.field public static final shake_192s_with_shake256:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

.field public static final shake_256f:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

.field public static final shake_256f_with_shake256:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

.field public static final shake_256s:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

.field public static final shake_256s_with_shake256:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;


# instance fields
.field private final engineProvider:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngineProvider;

.field private final name:Ljava/lang/String;

.field private final preHashDigest:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters$Sha2EngineProvider;

    const/16 v6, 0x21

    const/16 v7, 0x42

    const/16 v2, 0x10

    const/16 v3, 0x10

    const/16 v4, 0x16

    const/4 v5, 0x6

    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters$Sha2EngineProvider;-><init>(IIIIII)V

    const-string v2, "sha2-128f"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;-><init>(Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngineProvider;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;->sha2_128f:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    new-instance v4, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters$Sha2EngineProvider;

    const/16 v9, 0xe

    const/16 v10, 0x3f

    const/16 v5, 0x10

    const/16 v6, 0x10

    const/4 v7, 0x7

    const/16 v8, 0xc

    invoke-direct/range {v4 .. v10}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters$Sha2EngineProvider;-><init>(IIIIII)V

    const-string v1, "sha2-128s"

    invoke-direct {v0, v1, v4, v3}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;-><init>(Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngineProvider;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;->sha2_128s:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    new-instance v4, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters$Sha2EngineProvider;

    const/16 v9, 0x21

    const/16 v10, 0x42

    const/16 v5, 0x18

    const/16 v7, 0x16

    const/16 v8, 0x8

    invoke-direct/range {v4 .. v10}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters$Sha2EngineProvider;-><init>(IIIIII)V

    const-string v1, "sha2-192f"

    invoke-direct {v0, v1, v4, v3}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;-><init>(Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngineProvider;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;->sha2_192f:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    new-instance v4, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters$Sha2EngineProvider;

    const/16 v9, 0x11

    const/16 v10, 0x3f

    const/4 v7, 0x7

    const/16 v8, 0xe

    invoke-direct/range {v4 .. v10}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters$Sha2EngineProvider;-><init>(IIIIII)V

    const-string v1, "sha2-192s"

    invoke-direct {v0, v1, v4, v3}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;-><init>(Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngineProvider;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;->sha2_192s:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    new-instance v4, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters$Sha2EngineProvider;

    const/16 v9, 0x23

    const/16 v10, 0x44

    const/16 v5, 0x20

    const/16 v7, 0x11

    const/16 v8, 0x9

    invoke-direct/range {v4 .. v10}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters$Sha2EngineProvider;-><init>(IIIIII)V

    const-string v1, "sha2-256f"

    invoke-direct {v0, v1, v4, v3}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;-><init>(Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngineProvider;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;->sha2_256f:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    new-instance v4, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters$Sha2EngineProvider;

    const/16 v9, 0x16

    const/16 v10, 0x40

    const/16 v7, 0x8

    const/16 v8, 0xe

    invoke-direct/range {v4 .. v10}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters$Sha2EngineProvider;-><init>(IIIIII)V

    const-string v1, "sha2-256s"

    invoke-direct {v0, v1, v4, v3}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;-><init>(Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngineProvider;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;->sha2_256s:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    new-instance v4, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters$Shake256EngineProvider;

    const/16 v9, 0x21

    const/16 v10, 0x42

    const/16 v5, 0x10

    const/16 v7, 0x16

    const/4 v8, 0x6

    invoke-direct/range {v4 .. v10}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters$Shake256EngineProvider;-><init>(IIIIII)V

    const-string v1, "shake-128f"

    invoke-direct {v0, v1, v4, v3}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;-><init>(Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngineProvider;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;->shake_128f:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    new-instance v4, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters$Shake256EngineProvider;

    const/16 v9, 0xe

    const/16 v10, 0x3f

    const/4 v7, 0x7

    const/16 v8, 0xc

    invoke-direct/range {v4 .. v10}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters$Shake256EngineProvider;-><init>(IIIIII)V

    const-string v1, "shake-128s"

    invoke-direct {v0, v1, v4, v3}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;-><init>(Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngineProvider;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;->shake_128s:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    new-instance v4, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters$Shake256EngineProvider;

    const/16 v9, 0x21

    const/16 v10, 0x42

    const/16 v5, 0x18

    const/16 v7, 0x16

    const/16 v8, 0x8

    invoke-direct/range {v4 .. v10}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters$Shake256EngineProvider;-><init>(IIIIII)V

    const-string v1, "shake-192f"

    invoke-direct {v0, v1, v4, v3}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;-><init>(Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngineProvider;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;->shake_192f:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    new-instance v4, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters$Shake256EngineProvider;

    const/16 v9, 0x11

    const/16 v10, 0x3f

    const/4 v7, 0x7

    const/16 v8, 0xe

    invoke-direct/range {v4 .. v10}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters$Shake256EngineProvider;-><init>(IIIIII)V

    const-string v1, "shake-192s"

    invoke-direct {v0, v1, v4, v3}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;-><init>(Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngineProvider;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;->shake_192s:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    new-instance v4, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters$Shake256EngineProvider;

    const/16 v9, 0x23

    const/16 v10, 0x44

    const/16 v5, 0x20

    const/16 v7, 0x11

    const/16 v8, 0x9

    invoke-direct/range {v4 .. v10}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters$Shake256EngineProvider;-><init>(IIIIII)V

    const-string v1, "shake-256f"

    invoke-direct {v0, v1, v4, v3}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;-><init>(Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngineProvider;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;->shake_256f:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    new-instance v4, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters$Shake256EngineProvider;

    const/16 v9, 0x16

    const/16 v10, 0x40

    const/16 v7, 0x8

    const/16 v8, 0xe

    invoke-direct/range {v4 .. v10}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters$Shake256EngineProvider;-><init>(IIIIII)V

    const-string v1, "shake-256s"

    invoke-direct {v0, v1, v4, v3}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;-><init>(Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngineProvider;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;->shake_256s:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters$Sha2EngineProvider;

    const/16 v6, 0x21

    const/16 v7, 0x42

    const/16 v2, 0x10

    const/16 v3, 0x10

    const/16 v4, 0x16

    const/4 v5, 0x6

    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters$Sha2EngineProvider;-><init>(IIIIII)V

    const-string v2, "sha2-128f-with-sha256"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v1, v3}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;-><init>(Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngineProvider;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;->sha2_128f_with_sha256:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    new-instance v4, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters$Sha2EngineProvider;

    const/16 v9, 0xe

    const/16 v10, 0x3f

    const/16 v5, 0x10

    const/16 v6, 0x10

    const/4 v7, 0x7

    const/16 v8, 0xc

    invoke-direct/range {v4 .. v10}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters$Sha2EngineProvider;-><init>(IIIIII)V

    const-string v1, "sha2-128s-with-sha256"

    invoke-direct {v0, v1, v4, v3}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;-><init>(Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngineProvider;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;->sha2_128s_with_sha256:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters$Sha2EngineProvider;

    const/16 v6, 0x21

    const/16 v7, 0x42

    const/16 v2, 0x18

    const/16 v3, 0x10

    const/16 v4, 0x16

    const/16 v5, 0x8

    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters$Sha2EngineProvider;-><init>(IIIIII)V

    const-string v2, "sha2-192f-with-sha512"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v1, v3}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;-><init>(Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngineProvider;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;->sha2_192f_with_sha512:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    new-instance v4, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters$Sha2EngineProvider;

    const/16 v9, 0x11

    const/16 v5, 0x18

    const/16 v6, 0x10

    const/4 v7, 0x7

    const/16 v8, 0xe

    invoke-direct/range {v4 .. v10}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters$Sha2EngineProvider;-><init>(IIIIII)V

    const-string v1, "sha2-192s-with-sha512"

    invoke-direct {v0, v1, v4, v3}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;-><init>(Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngineProvider;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;->sha2_192s_with_sha512:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    new-instance v4, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters$Sha2EngineProvider;

    const/16 v9, 0x23

    const/16 v10, 0x44

    const/16 v5, 0x20

    const/16 v7, 0x11

    const/16 v8, 0x9

    invoke-direct/range {v4 .. v10}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters$Sha2EngineProvider;-><init>(IIIIII)V

    const-string v1, "sha2-256f-with-sha512"

    invoke-direct {v0, v1, v4, v3}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;-><init>(Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngineProvider;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;->sha2_256f_with_sha512:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    new-instance v4, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters$Sha2EngineProvider;

    const/16 v9, 0x16

    const/16 v10, 0x40

    const/16 v7, 0x8

    const/16 v8, 0xe

    invoke-direct/range {v4 .. v10}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters$Sha2EngineProvider;-><init>(IIIIII)V

    const-string v1, "sha2-256s-with-sha512"

    invoke-direct {v0, v1, v4, v3}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;-><init>(Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngineProvider;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;->sha2_256s_with_sha512:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters$Shake256EngineProvider;

    const/16 v6, 0x21

    const/16 v7, 0x42

    const/16 v2, 0x10

    const/16 v3, 0x10

    const/16 v4, 0x16

    const/4 v5, 0x6

    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters$Shake256EngineProvider;-><init>(IIIIII)V

    const-string v2, "shake-128f-with-shake128"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v1, v3}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;-><init>(Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngineProvider;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;->shake_128f_with_shake128:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    new-instance v4, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters$Shake256EngineProvider;

    const/16 v9, 0xe

    const/16 v10, 0x3f

    const/16 v5, 0x10

    const/16 v6, 0x10

    const/4 v7, 0x7

    const/16 v8, 0xc

    invoke-direct/range {v4 .. v10}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters$Shake256EngineProvider;-><init>(IIIIII)V

    const-string v1, "shake-128s-with-shake128"

    invoke-direct {v0, v1, v4, v3}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;-><init>(Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngineProvider;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;->shake_128s_with_shake128:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters$Shake256EngineProvider;

    const/16 v6, 0x21

    const/16 v7, 0x42

    const/16 v2, 0x18

    const/16 v3, 0x10

    const/16 v4, 0x16

    const/16 v5, 0x8

    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters$Shake256EngineProvider;-><init>(IIIIII)V

    const-string v2, "shake-192f-with-shake256"

    const/4 v3, 0x4

    invoke-direct {v0, v2, v1, v3}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;-><init>(Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngineProvider;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;->shake_192f_with_shake256:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    new-instance v4, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters$Shake256EngineProvider;

    const/16 v9, 0x11

    const/16 v5, 0x18

    const/16 v6, 0x10

    const/4 v7, 0x7

    const/16 v8, 0xe

    invoke-direct/range {v4 .. v10}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters$Shake256EngineProvider;-><init>(IIIIII)V

    const-string v1, "shake-192s-with-shake256"

    invoke-direct {v0, v1, v4, v3}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;-><init>(Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngineProvider;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;->shake_192s_with_shake256:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    new-instance v4, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters$Shake256EngineProvider;

    const/16 v9, 0x23

    const/16 v10, 0x44

    const/16 v5, 0x20

    const/16 v7, 0x11

    const/16 v8, 0x9

    invoke-direct/range {v4 .. v10}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters$Shake256EngineProvider;-><init>(IIIIII)V

    const-string v1, "shake-256f-with-shake256"

    invoke-direct {v0, v1, v4, v3}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;-><init>(Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngineProvider;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;->shake_256f_with_shake256:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    new-instance v4, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters$Shake256EngineProvider;

    const/16 v9, 0x16

    const/16 v10, 0x40

    const/16 v7, 0x8

    const/16 v8, 0xe

    invoke-direct/range {v4 .. v10}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters$Shake256EngineProvider;-><init>(IIIIII)V

    const-string v1, "shake-256s-with-shake256"

    invoke-direct {v0, v1, v4, v3}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;-><init>(Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngineProvider;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;->shake_256s_with_shake256:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngineProvider;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;->name:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;->engineProvider:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngineProvider;

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;->preHashDigest:I

    return-void
.end method


# virtual methods
.method getEngine()Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;->engineProvider:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngineProvider;

    invoke-interface {v0}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngineProvider;->get()Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;

    move-result-object v0

    return-object v0
.end method

.method getN()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;->engineProvider:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngineProvider;

    invoke-interface {v0}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngineProvider;->getN()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;->preHashDigest:I

    return v0
.end method

.method public isPreHash()Z
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;->preHashDigest:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
