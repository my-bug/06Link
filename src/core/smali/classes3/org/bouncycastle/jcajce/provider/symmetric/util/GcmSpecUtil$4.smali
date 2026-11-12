.class Lorg/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->extractGcmParameters(Ljava/security/spec/AlgorithmParameterSpec;)Lorg/bouncycastle/internal/asn1/cms/GCMParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$paramSpec:Ljava/security/spec/AlgorithmParameterSpec;


# direct methods
.method constructor <init>(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil$4;->val$paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/internal/asn1/cms/GCMParameters;

    # getter for: Lorg/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->iv:Ljava/lang/reflect/Method;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->access$100()Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil$4;->val$paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    # getter for: Lorg/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->tLen:Ljava/lang/reflect/Method;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->access$000()Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil$4;->val$paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/internal/asn1/cms/GCMParameters;-><init>([BI)V

    return-object v0
.end method
