.class public Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/KEMParameters;


# static fields
.field public static final firesaberkem128r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

.field public static final firesaberkem192r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

.field public static final firesaberkem256r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

.field public static final firesaberkem90sr3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

.field public static final lightsaberkem128r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

.field public static final lightsaberkem192r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

.field public static final lightsaberkem256r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

.field public static final lightsaberkem90sr3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

.field public static final saberkem128r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

.field public static final saberkem192r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

.field public static final saberkem256r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

.field public static final saberkem90sr3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

.field public static final ufiresaberkem90sr3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

.field public static final ufiresaberkemr3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

.field public static final ulightsaberkem90sr3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

.field public static final ulightsaberkemr3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

.field public static final usaberkem90sr3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

.field public static final usaberkemr3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;


# instance fields
.field private final defaultKeySize:I

.field private final engine:Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;

.field private final l:I

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v1, "lightsaberkem128r3"

    const/4 v2, 0x2

    const/16 v3, 0x80

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->lightsaberkem128r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    const/4 v6, 0x0

    const-string v2, "saberkem128r3"

    const/4 v3, 0x3

    const/16 v4, 0x80

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v1, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->saberkem128r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    const/4 v7, 0x0

    const-string v3, "firesaberkem128r3"

    const/4 v4, 0x4

    const/16 v5, 0x80

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v2, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->firesaberkem128r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    new-instance v3, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    const/4 v8, 0x0

    const-string v4, "lightsaberkem192r3"

    const/4 v5, 0x2

    const/16 v6, 0xc0

    invoke-direct/range {v3 .. v8}, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v3, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->lightsaberkem192r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    new-instance v4, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    const/4 v9, 0x0

    const-string v5, "saberkem192r3"

    const/4 v6, 0x3

    const/16 v7, 0xc0

    invoke-direct/range {v4 .. v9}, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v4, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->saberkem192r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    new-instance v5, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    const/4 v10, 0x0

    const-string v6, "firesaberkem192r3"

    const/4 v7, 0x4

    const/16 v8, 0xc0

    invoke-direct/range {v5 .. v10}, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v5, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->firesaberkem192r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    new-instance v6, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    const/4 v11, 0x0

    const-string v7, "lightsaberkem256r3"

    const/4 v8, 0x2

    const/16 v9, 0x100

    invoke-direct/range {v6 .. v11}, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v6, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->lightsaberkem256r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v1, "saberkem256r3"

    const/4 v2, 0x3

    const/16 v3, 0x100

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->saberkem256r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    const/4 v6, 0x0

    const-string v2, "firesaberkem256r3"

    const/4 v3, 0x4

    const/16 v4, 0x100

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v1, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->firesaberkem256r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v3, "lightsaberkem90sr3"

    const/4 v4, 0x2

    const/16 v5, 0x100

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v2, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->lightsaberkem90sr3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    new-instance v3, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v4, "saberkem90sr3"

    const/4 v5, 0x3

    const/16 v6, 0x100

    invoke-direct/range {v3 .. v8}, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v3, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->saberkem90sr3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    new-instance v4, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v5, "firesaberkem90sr3"

    const/4 v6, 0x4

    const/16 v7, 0x100

    invoke-direct/range {v4 .. v9}, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v4, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->firesaberkem90sr3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    new-instance v5, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    const/4 v10, 0x1

    const-string v6, "ulightsaberkemr3"

    const/4 v7, 0x2

    const/16 v8, 0x100

    invoke-direct/range {v5 .. v10}, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v5, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->ulightsaberkemr3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    new-instance v6, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-string v7, "usaberkemr3"

    const/4 v8, 0x3

    const/16 v9, 0x100

    invoke-direct/range {v6 .. v11}, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v6, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->usaberkemr3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v1, "ufiresaberkemr3"

    const/4 v2, 0x4

    const/16 v3, 0x100

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->ufiresaberkemr3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    const/4 v6, 0x1

    const-string v2, "ulightsaberkem90sr3"

    const/4 v3, 0x2

    const/16 v4, 0x100

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v1, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->ulightsaberkem90sr3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    const/4 v7, 0x1

    const-string v3, "usaberkem90sr3"

    const/4 v4, 0x3

    const/16 v5, 0x100

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v2, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->usaberkem90sr3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    new-instance v3, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    const/4 v8, 0x1

    const-string v4, "ufiresaberkem90sr3"

    const/4 v5, 0x4

    const/16 v6, 0x100

    invoke-direct/range {v3 .. v8}, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v3, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->ufiresaberkem90sr3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->name:Ljava/lang/String;

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->l:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->defaultKeySize:I

    new-instance p1, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;

    invoke-direct {p1, p2, p3, p4, p5}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;-><init>(IIZZ)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->engine:Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;

    return-void
.end method


# virtual methods
.method public getEngine()Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->engine:Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;

    return-object v0
.end method

.method public getL()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->l:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionKeySize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->defaultKeySize:I

    return v0
.end method
