.class Lorg/bouncycastle/crypto/digests/Utils$DefaultProperties;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/CryptoServiceProperties;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/digests/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultProperties"
.end annotation


# instance fields
.field private final algorithmName:Ljava/lang/String;

.field private final bitsOfSecurity:I

.field private final purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/crypto/digests/Utils$DefaultProperties;->bitsOfSecurity:I

    iput-object p2, p0, Lorg/bouncycastle/crypto/digests/Utils$DefaultProperties;->algorithmName:Ljava/lang/String;

    iput-object p3, p0, Lorg/bouncycastle/crypto/digests/Utils$DefaultProperties;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    return-void
.end method


# virtual methods
.method public bitsOfSecurity()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/digests/Utils$DefaultProperties;->bitsOfSecurity:I

    return v0
.end method

.method public getParams()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPurpose()Lorg/bouncycastle/crypto/CryptoServicePurpose;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Utils$DefaultProperties;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Utils$DefaultProperties;->algorithmName:Ljava/lang/String;

    return-object v0
.end method
