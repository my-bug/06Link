.class public Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/CipherParameters;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters$L1Constants;,
        Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters$L3Constants;,
        Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters$L5Constants;
    }
.end annotation


# static fields
.field public static final picnic3l1:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

.field public static final picnic3l3:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

.field public static final picnic3l5:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

.field public static final picnicl1fs:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

.field public static final picnicl1full:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

.field public static final picnicl1ur:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

.field public static final picnicl3fs:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

.field public static final picnicl3full:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

.field public static final picnicl3ur:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

.field public static final picnicl5fs:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

.field public static final picnicl5full:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

.field public static final picnicl5ur:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;


# instance fields
.field private final name:Ljava/lang/String;

.field private final param:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    const-string v1, "picnicl1fs"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;->picnicl1fs:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    const-string v1, "picnicl1ur"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;->picnicl1ur:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    const-string v1, "picnicl3fs"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;->picnicl3fs:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    const-string v1, "picnicl3ur"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;->picnicl3ur:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    const-string v1, "picnicl5fs"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;->picnicl5fs:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    const-string v1, "picnicl5ur"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;->picnicl5ur:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    const-string v1, "picnic3l1"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;->picnic3l1:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    const-string v1, "picnic3l3"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;->picnic3l3:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    const-string v1, "picnic3l5"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;->picnic3l5:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    const-string v1, "picnicl1full"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;->picnicl1full:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    const-string v1, "picnicl3full"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;->picnicl3full:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    const-string v1, "picnicl5full"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;->picnicl5full:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;->name:Ljava/lang/String;

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;->param:I

    return-void
.end method


# virtual methods
.method getEngine()Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;
    .locals 3

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;->param:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;->param:I

    sget-object v2, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters$L5Constants;->INSTANCE:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL5;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;-><init>(ILorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;)V

    return-object v0

    :pswitch_1
    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;->param:I

    sget-object v2, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters$L3Constants;->INSTANCE:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL3;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;-><init>(ILorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;)V

    return-object v0

    :pswitch_2
    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;->param:I

    sget-object v2, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters$L1Constants;->INSTANCE:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL1;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;-><init>(ILorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;->name:Ljava/lang/String;

    return-object v0
.end method
