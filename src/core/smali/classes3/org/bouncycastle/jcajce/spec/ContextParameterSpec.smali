.class public Lorg/bouncycastle/jcajce/spec/ContextParameterSpec;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static EMPTY_CONTEXT_SPEC:Lorg/bouncycastle/jcajce/spec/ContextParameterSpec;


# instance fields
.field private final context:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/jcajce/spec/ContextParameterSpec;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lorg/bouncycastle/jcajce/spec/ContextParameterSpec;-><init>([B)V

    sput-object v0, Lorg/bouncycastle/jcajce/spec/ContextParameterSpec;->EMPTY_CONTEXT_SPEC:Lorg/bouncycastle/jcajce/spec/ContextParameterSpec;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/spec/ContextParameterSpec;->context:[B

    return-void
.end method


# virtual methods
.method public getContext()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/ContextParameterSpec;->context:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method
