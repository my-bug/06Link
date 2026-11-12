.class final Lorg/bouncycastle/jsse/provider/ProvX509KeyManagerSimple$Match;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jsse/provider/ProvX509KeyManagerSimple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Match"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/bouncycastle/jsse/provider/ProvX509KeyManagerSimple$Match;",
        ">;"
    }
.end annotation


# static fields
.field static final INVALID:Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$MatchQuality;

.field static final NOTHING:Lorg/bouncycastle/jsse/provider/ProvX509KeyManagerSimple$Match;


# instance fields
.field final credential:Lorg/bouncycastle/jsse/provider/ProvX509KeyManagerSimple$Credential;

.field final keyTypeIndex:I

.field final quality:Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$MatchQuality;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$MatchQuality;->MISMATCH_SNI:Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$MatchQuality;

    sput-object v0, Lorg/bouncycastle/jsse/provider/ProvX509KeyManagerSimple$Match;->INVALID:Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$MatchQuality;

    new-instance v0, Lorg/bouncycastle/jsse/provider/ProvX509KeyManagerSimple$Match;

    sget-object v1, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$MatchQuality;->NONE:Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$MatchQuality;

    const v2, 0x7fffffff

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManagerSimple$Match;-><init>(Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$MatchQuality;ILorg/bouncycastle/jsse/provider/ProvX509KeyManagerSimple$Credential;)V

    sput-object v0, Lorg/bouncycastle/jsse/provider/ProvX509KeyManagerSimple$Match;->NOTHING:Lorg/bouncycastle/jsse/provider/ProvX509KeyManagerSimple$Match;

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$MatchQuality;ILorg/bouncycastle/jsse/provider/ProvX509KeyManagerSimple$Credential;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvX509KeyManagerSimple$Match;->quality:Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$MatchQuality;

    iput p2, p0, Lorg/bouncycastle/jsse/provider/ProvX509KeyManagerSimple$Match;->keyTypeIndex:I

    iput-object p3, p0, Lorg/bouncycastle/jsse/provider/ProvX509KeyManagerSimple$Match;->credential:Lorg/bouncycastle/jsse/provider/ProvX509KeyManagerSimple$Credential;

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Lorg/bouncycastle/jsse/provider/ProvX509KeyManagerSimple$Match;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManagerSimple$Match;->compareTo(Lorg/bouncycastle/jsse/provider/ProvX509KeyManagerSimple$Match;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/bouncycastle/jsse/provider/ProvX509KeyManagerSimple$Match;)I
    .locals 4

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManagerSimple$Match;->isValid()Z

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManagerSimple$Match;->isValid()Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    return v2

    :cond_0
    return v3

    :cond_1
    iget v0, p0, Lorg/bouncycastle/jsse/provider/ProvX509KeyManagerSimple$Match;->keyTypeIndex:I

    iget v1, p1, Lorg/bouncycastle/jsse/provider/ProvX509KeyManagerSimple$Match;->keyTypeIndex:I

    if-eq v0, v1, :cond_3

    if-ge v0, v1, :cond_2

    return v2

    :cond_2
    return v3

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvX509KeyManagerSimple$Match;->quality:Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$MatchQuality;

    iget-object p1, p1, Lorg/bouncycastle/jsse/provider/ProvX509KeyManagerSimple$Match;->quality:Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$MatchQuality;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$MatchQuality;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    return p1
.end method

.method isIdeal()Z
    .locals 2

    sget-object v0, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$MatchQuality;->OK:Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$MatchQuality;

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvX509KeyManagerSimple$Match;->quality:Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$MatchQuality;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/bouncycastle/jsse/provider/ProvX509KeyManagerSimple$Match;->keyTypeIndex:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method isValid()Z
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvX509KeyManagerSimple$Match;->quality:Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$MatchQuality;

    sget-object v1, Lorg/bouncycastle/jsse/provider/ProvX509KeyManagerSimple$Match;->INVALID:Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$MatchQuality;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$MatchQuality;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
