.class Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Codeword"
.end annotation


# instance fields
.field type32:[I

.field type8:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;->type32:[I

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;->type8:[I

    return-void
.end method
