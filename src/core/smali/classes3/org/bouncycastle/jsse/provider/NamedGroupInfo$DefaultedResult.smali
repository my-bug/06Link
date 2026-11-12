.class Lorg/bouncycastle/jsse/provider/NamedGroupInfo$DefaultedResult;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jsse/provider/NamedGroupInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DefaultedResult"
.end annotation


# instance fields
.field private final defaulted:Z

.field private final result:I


# direct methods
.method constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$DefaultedResult;->result:I

    iput-boolean p2, p0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$DefaultedResult;->defaulted:Z

    return-void
.end method


# virtual methods
.method getResult()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$DefaultedResult;->result:I

    return v0
.end method

.method isDefaulted()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$DefaultedResult;->defaulted:Z

    return v0
.end method
