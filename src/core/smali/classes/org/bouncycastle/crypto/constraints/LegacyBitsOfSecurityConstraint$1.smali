.class synthetic Lorg/bouncycastle/crypto/constraints/LegacyBitsOfSecurityConstraint$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/constraints/LegacyBitsOfSecurityConstraint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$bouncycastle$crypto$CryptoServicePurpose:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicePurpose;->values()[Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/bouncycastle/crypto/constraints/LegacyBitsOfSecurityConstraint$1;->$SwitchMap$org$bouncycastle$crypto$CryptoServicePurpose:[I

    :try_start_0
    sget-object v1, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/bouncycastle/crypto/constraints/LegacyBitsOfSecurityConstraint$1;->$SwitchMap$org$bouncycastle$crypto$CryptoServicePurpose:[I

    sget-object v1, Lorg/bouncycastle/crypto/CryptoServicePurpose;->VERIFYING:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lorg/bouncycastle/crypto/constraints/LegacyBitsOfSecurityConstraint$1;->$SwitchMap$org$bouncycastle$crypto$CryptoServicePurpose:[I

    sget-object v1, Lorg/bouncycastle/crypto/CryptoServicePurpose;->DECRYPTION:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lorg/bouncycastle/crypto/constraints/LegacyBitsOfSecurityConstraint$1;->$SwitchMap$org$bouncycastle$crypto$CryptoServicePurpose:[I

    sget-object v1, Lorg/bouncycastle/crypto/CryptoServicePurpose;->VERIFICATION:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
