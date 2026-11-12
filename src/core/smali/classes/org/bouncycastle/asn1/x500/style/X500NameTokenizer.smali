.class public Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;
.super Ljava/lang/Object;


# instance fields
.field private index:I

.field private final separator:C

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x2c

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;-><init>(Ljava/lang/String;C)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;C)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x22

    if-eq p2, v0, :cond_1

    const/16 v0, 0x5c

    if-eq p2, v0, :cond_1

    iput-object p1, p0, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

    iput-char p2, p0, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->separator:C

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x1

    if-ge p1, p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "reserved separator character"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public hasMoreTokens()Z
    .locals 2

    iget v0, p0, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    iget-object v1, p0, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public nextToken()Ljava/lang/String;
    .locals 7

    iget v0, p0, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    iget-object v1, p0, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_1
    :goto_0
    iget v5, p0, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    add-int/2addr v5, v1

    iput v5, p0, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    iget-object v6, p0, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_6

    iget-object v5, p0, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

    iget v6, p0, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    const/16 v6, 0x22

    if-ne v5, v6, :cond_3

    xor-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    goto :goto_0

    :cond_4
    const/16 v6, 0x5c

    if-ne v5, v6, :cond_5

    const/4 v3, 0x1

    goto :goto_0

    :cond_5
    iget-char v6, p0, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->separator:C

    if-ne v5, v6, :cond_1

    :goto_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

    iget v2, p0, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    if-nez v3, :cond_7

    if-nez v4, :cond_7

    goto :goto_1

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "badly formatted directory string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method
