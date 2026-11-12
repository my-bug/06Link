.class Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A_128;
.super Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/ISAPEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ISAPAEAD_A_128"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/engines/ISAPEngine;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A_128;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;-><init>(Lorg/bouncycastle/crypto/engines/ISAPEngine;)V

    const-wide v0, 0x18040010c0c0c0cL

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A_128;->ISAP_IV1_64:J

    const-wide v0, 0x28040010c0c0c0cL

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A_128;->ISAP_IV2_64:J

    const-wide v0, 0x38040010c0c0c0cL    # 8.14194196761063E-292

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A_128;->ISAP_IV3_64:J

    return-void
.end method


# virtual methods
.method protected PX1()V
    .locals 0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A_128;->P12()V

    return-void
.end method

.method protected PX2()V
    .locals 0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A_128;->P12()V

    return-void
.end method
