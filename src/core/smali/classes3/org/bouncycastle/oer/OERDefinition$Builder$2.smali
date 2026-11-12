.class Lorg/bouncycastle/oer/OERDefinition$Builder$2;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/oer/OERDefinition$ItemProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/oer/OERDefinition$Builder;->replaceChild(ILorg/bouncycastle/oer/OERDefinition$Builder;)Lorg/bouncycastle/oer/OERDefinition$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field final synthetic val$index:I

.field final synthetic val$newItem:Lorg/bouncycastle/oer/OERDefinition$Builder;


# direct methods
.method constructor <init>(Lorg/bouncycastle/oer/OERDefinition$Builder;ILorg/bouncycastle/oer/OERDefinition$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/oer/OERDefinition$Builder$2;->this$0:Lorg/bouncycastle/oer/OERDefinition$Builder;

    iput p2, p0, Lorg/bouncycastle/oer/OERDefinition$Builder$2;->val$index:I

    iput-object p3, p0, Lorg/bouncycastle/oer/OERDefinition$Builder$2;->val$newItem:Lorg/bouncycastle/oer/OERDefinition$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public existingChild(ILorg/bouncycastle/oer/OERDefinition$Builder;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 1

    iget v0, p0, Lorg/bouncycastle/oer/OERDefinition$Builder$2;->val$index:I

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lorg/bouncycastle/oer/OERDefinition$Builder$2;->val$newItem:Lorg/bouncycastle/oer/OERDefinition$Builder;

    return-object p1

    :cond_0
    return-object p2
.end method
