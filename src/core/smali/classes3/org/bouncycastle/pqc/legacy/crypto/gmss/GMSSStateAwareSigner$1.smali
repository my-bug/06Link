.class Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSStateAwareSigner$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSStateAwareSigner;-><init>(Lorg/bouncycastle/crypto/Digest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSStateAwareSigner;

.field final synthetic val$dig:Lorg/bouncycastle/util/Memoable;


# direct methods
.method constructor <init>(Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSStateAwareSigner;Lorg/bouncycastle/util/Memoable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSStateAwareSigner$1;->this$0:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSStateAwareSigner;

    iput-object p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSStateAwareSigner$1;->val$dig:Lorg/bouncycastle/util/Memoable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lorg/bouncycastle/crypto/Digest;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSStateAwareSigner$1;->val$dig:Lorg/bouncycastle/util/Memoable;

    invoke-interface {v0}, Lorg/bouncycastle/util/Memoable;->copy()Lorg/bouncycastle/util/Memoable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/Digest;

    return-object v0
.end method
