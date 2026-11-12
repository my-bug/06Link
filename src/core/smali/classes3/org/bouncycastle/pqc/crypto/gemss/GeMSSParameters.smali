.class public Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;
.super Ljava/lang/Object;


# static fields
.field public static final bluegemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field public static final bluegemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field public static final bluegemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field private static final bluegemss_128:Ljava/lang/Integer;

.field private static final bluegemss_192:Ljava/lang/Integer;

.field private static final bluegemss_256:Ljava/lang/Integer;

.field public static final cyangemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field public static final cyangemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field public static final cyangemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field private static final cyangemss_128:Ljava/lang/Integer;

.field private static final cyangemss_192:Ljava/lang/Integer;

.field private static final cyangemss_256:Ljava/lang/Integer;

.field public static final dualmodems128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field public static final dualmodems192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field public static final dualmodems256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field private static final dualmodems_128:Ljava/lang/Integer;

.field private static final dualmodems_192:Ljava/lang/Integer;

.field private static final dualmodems_256:Ljava/lang/Integer;

.field public static final fgemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field public static final fgemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field public static final fgemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field private static final fgemss_128:Ljava/lang/Integer;

.field private static final fgemss_192:Ljava/lang/Integer;

.field private static final fgemss_256:Ljava/lang/Integer;

.field public static final gemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field public static final gemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field public static final gemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field private static final gemss_128:Ljava/lang/Integer;

.field private static final gemss_192:Ljava/lang/Integer;

.field private static final gemss_256:Ljava/lang/Integer;

.field public static final magentagemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field public static final magentagemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field public static final magentagemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field private static final magentagemss_128:Ljava/lang/Integer;

.field private static final magentagemss_192:Ljava/lang/Integer;

.field private static final magentagemss_256:Ljava/lang/Integer;

.field private static final oidToParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;",
            ">;"
        }
    .end annotation
.end field

.field private static final paramsToOid:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final redgemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field public static final redgemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field public static final redgemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field private static final redgemss_128:Ljava/lang/Integer;

.field private static final redgemss_192:Ljava/lang/Integer;

.field private static final redgemss_256:Ljava/lang/Integer;

.field public static final whitegemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field public static final whitegemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field public static final whitegemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field private static final whitegemss_128:Ljava/lang/Integer;

.field private static final whitegemss_192:Ljava/lang/Integer;

.field private static final whitegemss_256:Ljava/lang/Integer;


# instance fields
.field private final engine:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 51

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const/16 v8, 0x9

    const/4 v9, 0x0

    const-string v1, "gemss128"

    const/16 v2, 0x80

    const/16 v3, 0xae

    const/16 v4, 0xc

    const/16 v5, 0xc

    const/4 v6, 0x4

    const/16 v7, 0x201

    invoke-direct/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->gemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const/16 v9, 0x9

    const/4 v10, 0x0

    const-string v2, "gemss192"

    const/16 v3, 0xc0

    const/16 v4, 0x109

    const/16 v5, 0x14

    const/16 v6, 0x16

    const/4 v7, 0x4

    const/16 v8, 0x201

    invoke-direct/range {v1 .. v10}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->gemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const/16 v10, 0x9

    const/4 v11, 0x0

    const-string v3, "gemss256"

    const/16 v4, 0x100

    const/16 v5, 0x162

    const/16 v6, 0x21

    const/16 v7, 0x1e

    const/4 v8, 0x4

    const/16 v9, 0x201

    invoke-direct/range {v2 .. v11}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->gemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    new-instance v3, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const/4 v11, 0x7

    const/4 v12, 0x0

    const-string v4, "bluegemss128"

    const/16 v5, 0x80

    const/16 v6, 0xaf

    const/16 v7, 0xe

    const/16 v8, 0xd

    const/4 v9, 0x4

    const/16 v10, 0x81

    invoke-direct/range {v3 .. v12}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v3, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->bluegemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    new-instance v4, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const/4 v12, 0x7

    const/4 v13, 0x0

    const-string v5, "bluegemss192"

    const/16 v6, 0xc0

    const/16 v7, 0x109

    const/16 v8, 0x17

    const/16 v9, 0x16

    const/4 v10, 0x4

    const/16 v11, 0x81

    invoke-direct/range {v4 .. v13}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v4, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->bluegemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    new-instance v5, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const/4 v13, 0x7

    const/4 v14, 0x0

    const-string v6, "bluegemss256"

    const/16 v7, 0x100

    const/16 v8, 0x166

    const/16 v9, 0x20

    const/16 v10, 0x22

    const/4 v11, 0x4

    const/16 v12, 0x81

    invoke-direct/range {v5 .. v14}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v5, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->bluegemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    new-instance v6, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const/4 v14, 0x4

    const/4 v15, 0x0

    const-string v7, "redgemss128"

    const/16 v8, 0x80

    const/16 v9, 0xb1

    const/16 v10, 0xf

    const/16 v11, 0xf

    const/4 v12, 0x4

    const/16 v13, 0x11

    invoke-direct/range {v6 .. v15}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v6, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->redgemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    new-instance v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const/4 v15, 0x4

    const/16 v16, 0x0

    const-string v8, "redgemss192"

    const/16 v9, 0xc0

    const/16 v10, 0x10a

    const/16 v11, 0x19

    const/16 v12, 0x17

    const/4 v13, 0x4

    const/16 v14, 0x11

    invoke-direct/range {v7 .. v16}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->redgemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    new-instance v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const/16 v16, 0x4

    const/16 v17, 0x0

    const-string v9, "redgemss256"

    const/16 v10, 0x100

    const/16 v11, 0x166

    const/16 v12, 0x23

    const/16 v13, 0x22

    const/4 v14, 0x4

    const/16 v15, 0x11

    invoke-direct/range {v8 .. v17}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->redgemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    new-instance v9, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const/16 v17, 0x9

    const/16 v18, 0x0

    const-string v10, "whitegemss128"

    const/16 v11, 0x80

    const/16 v12, 0xaf

    const/16 v13, 0xc

    const/16 v14, 0xc

    const/4 v15, 0x3

    const/16 v16, 0x201

    invoke-direct/range {v9 .. v18}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v9, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->whitegemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    new-instance v10, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const/16 v18, 0x9

    const/16 v19, 0x0

    const-string v11, "whitegemss192"

    const/16 v12, 0xc0

    const/16 v13, 0x10c

    const/16 v14, 0x15

    const/16 v15, 0x15

    const/16 v16, 0x3

    const/16 v17, 0x201

    invoke-direct/range {v10 .. v19}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v10, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->whitegemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    new-instance v11, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const/16 v19, 0x9

    const/16 v20, 0x0

    const-string v12, "whitegemss256"

    const/16 v13, 0x100

    const/16 v14, 0x16c

    const/16 v15, 0x1d

    const/16 v16, 0x1f

    const/16 v17, 0x3

    const/16 v18, 0x201

    invoke-direct/range {v11 .. v20}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v11, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->whitegemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    new-instance v12, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const/16 v20, 0x7

    const/16 v21, 0x0

    const-string v13, "cyangemss128"

    const/16 v14, 0x80

    const/16 v15, 0xb1

    const/16 v16, 0xd

    const/16 v17, 0xe

    const/16 v18, 0x3

    const/16 v19, 0x81

    invoke-direct/range {v12 .. v21}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v12, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->cyangemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    new-instance v13, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const/16 v21, 0x7

    const/16 v22, 0x0

    const-string v14, "cyangemss192"

    const/16 v15, 0xc0

    const/16 v16, 0x10e

    const/16 v17, 0x16

    const/16 v18, 0x17

    const/16 v19, 0x3

    const/16 v20, 0x81

    invoke-direct/range {v13 .. v22}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v13, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->cyangemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    new-instance v14, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const/16 v22, 0x7

    const/16 v23, 0x0

    const-string v15, "cyangemss256"

    const/16 v16, 0x100

    const/16 v17, 0x16c

    const/16 v18, 0x20

    const/16 v19, 0x1f

    const/16 v20, 0x3

    const/16 v21, 0x81

    invoke-direct/range {v14 .. v23}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v14, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->cyangemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    new-instance v15, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const/16 v23, 0x4

    const/16 v24, 0x0

    const-string v16, "magentagemss128"

    const/16 v17, 0x80

    const/16 v18, 0xb2

    const/16 v19, 0xf

    const/16 v20, 0xf

    const/16 v21, 0x3

    const/16 v22, 0x11

    invoke-direct/range {v15 .. v24}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v15, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->magentagemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    new-instance v16, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const/16 v24, 0x4

    const/16 v25, 0x0

    const-string v17, "magentagemss192"

    const/16 v18, 0xc0

    const/16 v19, 0x10f

    const/16 v20, 0x18

    const/16 v21, 0x18

    const/16 v22, 0x3

    const/16 v23, 0x11

    invoke-direct/range {v16 .. v25}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    move-object/from16 v17, v15

    move-object/from16 v15, v16

    sput-object v15, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->magentagemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    new-instance v18, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const/16 v26, 0x4

    const/16 v27, 0x0

    const-string v19, "magentagemss256"

    const/16 v20, 0x100

    const/16 v21, 0x16e

    const/16 v22, 0x21

    const/16 v23, 0x21

    const/16 v24, 0x3

    const/16 v25, 0x11

    invoke-direct/range {v18 .. v27}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    move-object/from16 v15, v18

    sput-object v15, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->magentagemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    new-instance v18, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const/16 v26, 0x7

    const-string v19, "fgemss128"

    const/16 v20, 0x80

    const/16 v21, 0x10a

    const/16 v22, 0xb

    const/16 v23, 0xa

    const/16 v24, 0x1

    const/16 v25, 0x81

    invoke-direct/range {v18 .. v27}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    move-object/from16 v19, v15

    move-object/from16 v15, v18

    sput-object v15, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->fgemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    new-instance v20, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const/16 v28, 0x9

    const/16 v29, 0x7

    const-string v21, "fgemss192"

    const/16 v22, 0xc0

    const/16 v23, 0x192

    const/16 v24, 0x12

    const/16 v25, 0x12

    const/16 v26, 0x1

    const/16 v27, 0x280

    invoke-direct/range {v20 .. v29}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    move-object/from16 v15, v20

    sput-object v15, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->fgemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    new-instance v20, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const/16 v28, 0xa

    const-string v21, "fgemss256"

    const/16 v22, 0x100

    const/16 v23, 0x219

    const/16 v24, 0x1a

    const/16 v25, 0x19

    const/16 v27, 0x480

    invoke-direct/range {v20 .. v29}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    move-object/from16 v21, v15

    move-object/from16 v15, v20

    sput-object v15, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->fgemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    new-instance v22, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const/16 v30, 0x7

    const/16 v31, 0x0

    const-string v23, "dualmodems128"

    const/16 v24, 0x80

    const/16 v25, 0x10a

    const/16 v26, 0xb

    const/16 v27, 0xa

    const/16 v28, 0x1

    const/16 v29, 0x81

    invoke-direct/range {v22 .. v31}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    move-object/from16 v15, v22

    sput-object v15, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->dualmodems128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    new-instance v22, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const-string v23, "dualmodems192"

    const/16 v24, 0xc0

    const/16 v25, 0x192

    const/16 v26, 0x12

    const/16 v27, 0x12

    invoke-direct/range {v22 .. v31}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    move-object/from16 v23, v15

    move-object/from16 v15, v22

    sput-object v15, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->dualmodems192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    new-instance v24, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const/16 v32, 0x7

    const/16 v33, 0x0

    const-string v25, "dualmodems256"

    const/16 v26, 0x100

    const/16 v27, 0x220

    const/16 v28, 0x20

    const/16 v29, 0x20

    const/16 v30, 0x1

    const/16 v31, 0x81

    invoke-direct/range {v24 .. v33}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    move-object/from16 v15, v24

    sput-object v15, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->dualmodems256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const/16 v24, 0x101

    move-object/from16 v25, v15

    invoke-static/range {v24 .. v24}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    sput-object v15, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->gemss_128:Ljava/lang/Integer;

    const/16 v24, 0x102

    move-object/from16 v26, v14

    invoke-static/range {v24 .. v24}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    sput-object v14, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->gemss_192:Ljava/lang/Integer;

    const/16 v24, 0x103

    move-object/from16 v27, v13

    invoke-static/range {v24 .. v24}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    sput-object v13, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->gemss_256:Ljava/lang/Integer;

    const/16 v24, 0x201

    move-object/from16 v28, v12

    invoke-static/range {v24 .. v24}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    sput-object v12, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->bluegemss_128:Ljava/lang/Integer;

    const/16 v24, 0x202

    move-object/from16 v29, v11

    invoke-static/range {v24 .. v24}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    sput-object v11, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->bluegemss_192:Ljava/lang/Integer;

    const/16 v24, 0x203

    move-object/from16 v30, v10

    invoke-static/range {v24 .. v24}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    sput-object v10, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->bluegemss_256:Ljava/lang/Integer;

    const/16 v24, 0x301

    move-object/from16 v31, v9

    invoke-static/range {v24 .. v24}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sput-object v9, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->redgemss_128:Ljava/lang/Integer;

    const/16 v24, 0x302

    move-object/from16 v32, v8

    invoke-static/range {v24 .. v24}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sput-object v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->redgemss_192:Ljava/lang/Integer;

    const/16 v24, 0x303

    move-object/from16 v33, v7

    invoke-static/range {v24 .. v24}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sput-object v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->redgemss_256:Ljava/lang/Integer;

    const/16 v24, 0x401

    move-object/from16 v34, v7

    invoke-static/range {v24 .. v24}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sput-object v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->whitegemss_128:Ljava/lang/Integer;

    const/16 v24, 0x402

    move-object/from16 v35, v7

    invoke-static/range {v24 .. v24}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sput-object v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->whitegemss_192:Ljava/lang/Integer;

    const/16 v24, 0x403

    move-object/from16 v36, v7

    invoke-static/range {v24 .. v24}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sput-object v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->whitegemss_256:Ljava/lang/Integer;

    const/16 v24, 0x501

    move-object/from16 v37, v7

    invoke-static/range {v24 .. v24}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sput-object v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->cyangemss_128:Ljava/lang/Integer;

    const/16 v24, 0x502

    move-object/from16 v38, v7

    invoke-static/range {v24 .. v24}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sput-object v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->cyangemss_192:Ljava/lang/Integer;

    const/16 v24, 0x503

    move-object/from16 v39, v7

    invoke-static/range {v24 .. v24}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sput-object v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->cyangemss_256:Ljava/lang/Integer;

    const/16 v24, 0x601

    move-object/from16 v40, v7

    invoke-static/range {v24 .. v24}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sput-object v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->magentagemss_128:Ljava/lang/Integer;

    const/16 v24, 0x602

    move-object/from16 v41, v7

    invoke-static/range {v24 .. v24}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sput-object v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->magentagemss_192:Ljava/lang/Integer;

    const/16 v24, 0x603

    move-object/from16 v42, v7

    invoke-static/range {v24 .. v24}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sput-object v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->magentagemss_256:Ljava/lang/Integer;

    const/16 v24, 0x701

    move-object/from16 v43, v7

    invoke-static/range {v24 .. v24}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sput-object v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->fgemss_128:Ljava/lang/Integer;

    const/16 v24, 0x702

    move-object/from16 v44, v7

    invoke-static/range {v24 .. v24}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sput-object v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->fgemss_192:Ljava/lang/Integer;

    const/16 v24, 0x703

    move-object/from16 v45, v7

    invoke-static/range {v24 .. v24}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sput-object v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->fgemss_256:Ljava/lang/Integer;

    const/16 v24, 0x801

    move-object/from16 v46, v7

    invoke-static/range {v24 .. v24}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sput-object v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->dualmodems_128:Ljava/lang/Integer;

    const/16 v24, 0x802

    move-object/from16 v47, v7

    invoke-static/range {v24 .. v24}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sput-object v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->dualmodems_192:Ljava/lang/Integer;

    const/16 v24, 0x803

    move-object/from16 v48, v7

    invoke-static/range {v24 .. v24}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sput-object v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->dualmodems_256:Ljava/lang/Integer;

    move-object/from16 v24, v7

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    sput-object v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->oidToParams:Ljava/util/Map;

    move-object/from16 v49, v8

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    sput-object v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->paramsToOid:Ljava/util/Map;

    invoke-interface {v7, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v7, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v7, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v7, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v7, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v7, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v7, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v50, v6

    move-object/from16 v6, v33

    move-object/from16 v33, v9

    move-object/from16 v9, v49

    invoke-interface {v7, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v49, v6

    move-object/from16 v6, v32

    move-object/from16 v32, v9

    move-object/from16 v9, v34

    invoke-interface {v7, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v34, v6

    move-object/from16 v6, v31

    move-object/from16 v31, v9

    move-object/from16 v9, v35

    invoke-interface {v7, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v35, v6

    move-object/from16 v6, v30

    move-object/from16 v30, v9

    move-object/from16 v9, v36

    invoke-interface {v7, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v36, v6

    move-object/from16 v6, v29

    move-object/from16 v29, v9

    move-object/from16 v9, v37

    invoke-interface {v7, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v37, v6

    move-object/from16 v6, v28

    move-object/from16 v28, v9

    move-object/from16 v9, v38

    invoke-interface {v7, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v38, v6

    move-object/from16 v6, v27

    move-object/from16 v27, v9

    move-object/from16 v9, v39

    invoke-interface {v7, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v39, v6

    move-object/from16 v6, v26

    move-object/from16 v26, v9

    move-object/from16 v9, v40

    invoke-interface {v7, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v40, v6

    move-object/from16 v6, v17

    move-object/from16 v17, v9

    move-object/from16 v9, v41

    invoke-interface {v7, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v41, v6

    move-object/from16 v6, v16

    move-object/from16 v16, v9

    move-object/from16 v9, v42

    invoke-interface {v7, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v42, v6

    move-object/from16 v6, v19

    move-object/from16 v19, v9

    move-object/from16 v9, v43

    invoke-interface {v7, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v43, v6

    move-object/from16 v6, v18

    move-object/from16 v18, v9

    move-object/from16 v9, v44

    invoke-interface {v7, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v44, v6

    move-object/from16 v6, v21

    move-object/from16 v21, v9

    move-object/from16 v9, v45

    invoke-interface {v7, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v45, v6

    move-object/from16 v6, v20

    move-object/from16 v20, v9

    move-object/from16 v9, v46

    invoke-interface {v7, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v46, v6

    move-object/from16 v6, v23

    move-object/from16 v23, v9

    move-object/from16 v9, v47

    invoke-interface {v7, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v47, v6

    move-object/from16 v6, v22

    move-object/from16 v22, v9

    move-object/from16 v9, v48

    invoke-interface {v7, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v48, v24

    move-object/from16 v24, v9

    move-object/from16 v9, v48

    move-object/from16 v48, v6

    move-object/from16 v6, v25

    invoke-interface {v7, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v8, v0, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v8, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v8, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v8, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v8, v4, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v8, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v33

    move-object/from16 v0, v50

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v32

    move-object/from16 v7, v49

    invoke-interface {v8, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v31

    move-object/from16 v0, v34

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v30

    move-object/from16 v0, v35

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v29

    move-object/from16 v10, v36

    invoke-interface {v8, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v28

    move-object/from16 v11, v37

    invoke-interface {v8, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v27

    move-object/from16 v12, v38

    invoke-interface {v8, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v26

    move-object/from16 v13, v39

    invoke-interface {v8, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v17

    move-object/from16 v14, v40

    invoke-interface {v8, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v16

    move-object/from16 v15, v41

    invoke-interface {v8, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v19

    move-object/from16 v15, v42

    invoke-interface {v8, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v18

    move-object/from16 v15, v43

    invoke-interface {v8, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v21

    move-object/from16 v15, v44

    invoke-interface {v8, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v20

    move-object/from16 v15, v45

    invoke-interface {v8, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v23

    move-object/from16 v15, v46

    invoke-interface {v8, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v22

    move-object/from16 v15, v47

    invoke-interface {v8, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v24

    move-object/from16 v15, v48

    invoke-interface {v8, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v8, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->name:Ljava/lang/String;

    new-instance p1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;

    invoke-direct/range {p1 .. p9}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;-><init>(IIIIIIII)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->engine:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;

    return-void
.end method

.method public static getID(Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;)Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->paramsToOid:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public static getParams(Ljava/lang/Integer;)Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;
    .locals 1

    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->oidToParams:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    return-object p0
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->getID(Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getEngine()Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->engine:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->name:Ljava/lang/String;

    return-object v0
.end method
