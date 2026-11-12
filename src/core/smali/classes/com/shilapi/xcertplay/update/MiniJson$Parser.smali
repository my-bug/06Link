.class final Lcom/shilapi/xcertplay/update/MiniJson$Parser;
.super Ljava/lang/Object;
.source "MiniJson.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/update/MiniJson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Parser"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0001\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0010\u000c\n\u0002\u0008\u0004\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0003J\u0006\u0010\r\u001a\u00020\u000eJ\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0001J(\u0010\u0010\u001a\"\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0011j\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0001`\u0012H\u0002J\u0010\u0010\u0013\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0014H\u0002J\u0008\u0010\u0015\u001a\u00020\u0003H\u0002J\u0008\u0010\u0016\u001a\u00020\u0001H\u0002J\u0008\u0010\u0017\u001a\u00020\tH\u0002J\n\u0010\u0018\u001a\u0004\u0018\u00010\u0001H\u0002J\u0008\u0010\u0019\u001a\u00020\u001aH\u0002J\u0008\u0010\u001b\u001a\u00020\u001aH\u0002J\u0010\u0010\u001c\u001a\u00020\u000e2\u0006\u0010\u001d\u001a\u00020\u001aH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/update/MiniJson$Parser;",
        "",
        "s",
        "",
        "<init>",
        "(Ljava/lang/String;)V",
        "i",
        "",
        "atEnd",
        "",
        "fail",
        "",
        "message",
        "skipWhitespace",
        "",
        "readValue",
        "readObject",
        "Ljava/util/LinkedHashMap;",
        "Lkotlin/collections/LinkedHashMap;",
        "readArray",
        "",
        "readString",
        "readNumber",
        "readBoolean",
        "readNull",
        "peek",
        "",
        "next",
        "expect",
        "c",
        "shared_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private i:I

.field private final s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->s:Ljava/lang/String;

    return-void
.end method

.method private final expect(C)V
    .locals 2

    .line 155
    invoke-direct {p0}, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->next()C

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->i:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "expected \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->fail(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method private final next()C
    .locals 3

    .line 154
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->atEnd()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->s:Ljava/lang/String;

    iget v1, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    :cond_0
    const-string/jumbo v0, "unexpected end of input"

    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->fail(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method private final peek()C
    .locals 2

    .line 153
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->atEnd()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->s:Ljava/lang/String;

    iget v1, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    :cond_0
    const-string/jumbo v0, "unexpected end of input"

    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->fail(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method private final readArray()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x5b

    .line 74
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->expect(C)V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->skipWhitespace()V

    .line 77
    invoke-direct {p0}, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->peek()C

    move-result v1

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->i:I

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->readValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->skipWhitespace()V

    .line 81
    invoke-direct {p0}, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->next()C

    move-result v1

    const/16 v3, 0x2c

    if-eq v1, v3, :cond_0

    if-ne v1, v2, :cond_1

    .line 83
    check-cast v0, Ljava/util/List;

    return-object v0

    .line 84
    :cond_1
    const-string v0, "expected \',\' or \']\' in array"

    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->fail(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    goto :goto_1

    :goto_0
    throw v0

    :goto_1
    goto :goto_0
.end method

.method private final readBoolean()Z
    .locals 7

    .line 142
    iget-object v0, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->s:Ljava/lang/String;

    iget v2, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->i:I

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string/jumbo v1, "true"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->i:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->i:I

    const/4 v0, 0x1

    return v0

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->s:Ljava/lang/String;

    iget v3, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->i:I

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "false"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->i:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->i:I

    const/4 v0, 0x0

    return v0

    .line 144
    :cond_1
    const-string v0, "invalid literal"

    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->fail(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method private final readNull()Ljava/lang/Object;
    .locals 6

    .line 148
    iget-object v0, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->s:Ljava/lang/String;

    iget v2, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->i:I

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "null"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget v0, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->i:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->i:I

    const/4 v0, 0x0

    return-object v0

    .line 148
    :cond_0
    const-string v0, "invalid literal"

    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->fail(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method private final readNumber()Ljava/lang/Object;
    .locals 8

    .line 125
    iget v0, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->i:I

    .line 126
    invoke-direct {p0}, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->peek()C

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x2d

    if-ne v1, v3, :cond_0

    iget v1, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->i:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->i:I

    .line 127
    :cond_0
    :goto_0
    iget v1, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->i:I

    iget-object v4, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->s:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x3a

    const/16 v6, 0x30

    if-ge v1, v4, :cond_1

    iget-object v1, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->s:Ljava/lang/String;

    iget v4, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->i:I

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-gt v6, v1, :cond_1

    if-ge v1, v5, :cond_1

    iget v1, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->i:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->i:I

    goto :goto_0

    .line 129
    :cond_1
    iget v1, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->i:I

    iget-object v4, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->s:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_3

    iget-object v1, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->s:Ljava/lang/String;

    iget v4, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->i:I

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x2e

    if-ne v1, v4, :cond_3

    :goto_1
    iget v1, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->i:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->i:I

    iget v1, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->i:I

    iget-object v4, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->s:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_2

    iget-object v1, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->s:Ljava/lang/String;

    iget v4, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->i:I

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-gt v6, v1, :cond_2

    if-ge v1, v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 130
    :goto_2
    iget v4, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->i:I

    iget-object v7, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->s:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v4, v7, :cond_7

    iget-object v4, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->s:Ljava/lang/String;

    iget v7, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->i:I

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v7, 0x65

    if-eq v4, v7, :cond_4

    iget-object v4, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->s:Ljava/lang/String;

    iget v7, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->i:I

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v7, 0x45

    if-ne v4, v7, :cond_7

    .line 131
    :cond_4
    iget v1, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->i:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->i:I

    .line 132
    iget-object v4, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->s:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_6

    iget-object v1, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->s:Ljava/lang/String;

    iget v4, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->i:I

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x2b

    if-eq v1, v4, :cond_5

    iget-object v1, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->s:Ljava/lang/String;

    iget v4, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->i:I

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_6

    :cond_5
    iget v1, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->i:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->i:I

    .line 133
    :cond_6
    :goto_3
    iget v1, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->i:I

    iget-object v3, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->s:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_8

    iget-object v1, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->s:Ljava/lang/String;

    iget v3, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->i:I

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-gt v6, v1, :cond_8

    if-ge v1, v5, :cond_8

    iget v1, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->i:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->i:I

    goto :goto_3

    :cond_7
    move v2, v1

    .line 135
    :cond_8
    iget-object v1, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->s:Ljava/lang/String;

    iget v3, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->i:I

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "substring(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "-"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 137
    const-string v1, "\'"

    const-string v3, "invalid number \'"

    if-eqz v2, :cond_a

    invoke-static {v0}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    return-object v2

    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->fail(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 138
    :cond_a
    invoke-static {v0}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_c

    invoke-static {v0}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    if-eqz v2, :cond_b

    return-object v2

    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->fail(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_c
    return-object v2

    .line 136
    :cond_d
    const-string v0, "invalid number"

    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->fail(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method private final readObject()Ljava/util/LinkedHashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x7b

    .line 53
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->expect(C)V

    .line 54
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 55
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->skipWhitespace()V

    .line 56
    invoke-direct {p0}, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->peek()C

    move-result v1

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->i:I

    return-object v0

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->skipWhitespace()V

    .line 59
    invoke-direct {p0}, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->peek()C

    move-result v1

    const/16 v3, 0x22

    if-ne v1, v3, :cond_2

    .line 60
    invoke-direct {p0}, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->readString()Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->skipWhitespace()V

    const/16 v3, 0x3a

    .line 62
    invoke-direct {p0, v3}, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->expect(C)V

    .line 63
    move-object v3, v0

    check-cast v3, Ljava/util/Map;

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->readValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->skipWhitespace()V

    .line 65
    invoke-direct {p0}, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->next()C

    move-result v1

    const/16 v3, 0x2c

    if-eq v1, v3, :cond_0

    if-ne v1, v2, :cond_1

    return-object v0

    .line 68
    :cond_1
    const-string v0, "expected \',\' or \'}\' in object"

    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->fail(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 59
    :cond_2
    const-string v0, "expected a string key"

    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->fail(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    goto :goto_1

    :goto_0
    throw v0

    :goto_1
    goto :goto_0
.end method

.method private final readString()Ljava/lang/String;
    .locals 6

    const/16 v0, 0x22

    .line 90
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->expect(C)V

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    :goto_0
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->atEnd()Z

    move-result v2

    if-nez v2, :cond_f

    .line 94
    iget-object v2, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->s:Ljava/lang/String;

    iget v3, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->i:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v0, :cond_0

    .line 96
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/16 v3, 0x5c

    if-ne v2, v3, :cond_d

    .line 98
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->atEnd()Z

    move-result v2

    if-nez v2, :cond_c

    .line 99
    iget-object v2, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->s:Ljava/lang/String;

    iget v4, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->i:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->i:I

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v0, :cond_b

    const/16 v4, 0x2f

    if-eq v2, v4, :cond_a

    if-eq v2, v3, :cond_9

    const/16 v3, 0x62

    if-eq v2, v3, :cond_8

    const/16 v3, 0x66

    if-eq v2, v3, :cond_7

    const/16 v3, 0x6e

    if-eq v2, v3, :cond_6

    const/16 v3, 0x72

    if-eq v2, v3, :cond_5

    const/16 v3, 0x74

    if-eq v2, v3, :cond_4

    const/16 v3, 0x75

    if-ne v2, v3, :cond_3

    .line 109
    iget v2, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->i:I

    add-int/lit8 v2, v2, 0x4

    iget-object v3, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->s:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v2, v3, :cond_2

    .line 110
    iget-object v2, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->s:Ljava/lang/String;

    iget v3, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->i:I

    add-int/lit8 v4, v3, 0x4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "substring(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x10

    .line 111
    invoke-static {v2, v3}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-char v2, v2

    .line 112
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    iget v2, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->i:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->i:I

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_0

    .line 111
    :cond_1
    const-string v0, "bad \\u escape"

    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->fail(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 109
    :cond_2
    const-string/jumbo v0, "truncated \\u escape"

    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->fail(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 115
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bad escape \'\\"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->fail(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_4
    const/16 v2, 0x9

    .line 107
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_5
    const/16 v2, 0xd

    .line 106
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_6
    const/16 v2, 0xa

    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_7
    const/16 v2, 0xc

    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_8
    const/16 v2, 0x8

    .line 103
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 101
    :cond_9
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 102
    :cond_a
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 100
    :cond_b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 98
    :cond_c
    const-string/jumbo v0, "unterminated escape"

    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->fail(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_d
    const/16 v3, 0x20

    if-lt v2, v3, :cond_e

    .line 119
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 118
    :cond_e
    const-string/jumbo v0, "unescaped control character in string"

    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->fail(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 93
    :cond_f
    const-string/jumbo v0, "unterminated string"

    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->fail(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public final atEnd()Z
    .locals 2

    .line 24
    iget v0, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->i:I

    iget-object v1, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->s:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final fail(Ljava/lang/String;)Ljava/lang/Void;
    .locals 3

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lcom/shilapi/xcertplay/update/UpdateManifest$MalformedException;

    iget v1, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->i:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " (at offset "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/shilapi/xcertplay/update/UpdateManifest$MalformedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final readValue()Ljava/lang/Object;
    .locals 3

    .line 39
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->skipWhitespace()V

    .line 40
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->atEnd()Z

    move-result v0

    if-nez v0, :cond_8

    .line 41
    iget-object v0, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->s:Ljava/lang/String;

    iget v1, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_0

    .line 42
    invoke-direct {p0}, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->readObject()Ljava/util/LinkedHashMap;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v1, 0x5b

    if-ne v0, v1, :cond_1

    .line 43
    invoke-direct {p0}, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->readArray()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v1, 0x22

    if-ne v0, v1, :cond_2

    .line 44
    invoke-direct {p0}, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/16 v1, 0x74

    if-eq v0, v1, :cond_7

    const/16 v1, 0x66

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_3
    const/16 v1, 0x6e

    if-ne v0, v1, :cond_4

    .line 46
    invoke-direct {p0}, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->readNull()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_4
    const/16 v1, 0x2d

    if-eq v0, v1, :cond_6

    const/16 v1, 0x30

    if-gt v1, v0, :cond_5

    const/16 v1, 0x3a

    if-ge v0, v1, :cond_5

    goto :goto_0

    .line 48
    :cond_5
    iget-object v0, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->s:Ljava/lang/String;

    iget v1, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unexpected character \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->fail(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 47
    :cond_6
    :goto_0
    invoke-direct {p0}, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->readNumber()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 45
    :cond_7
    :goto_1
    invoke-direct {p0}, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->readBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 40
    :cond_8
    const-string/jumbo v0, "unexpected end of input"

    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->fail(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public final skipWhitespace()V
    .locals 2

    .line 30
    :goto_0
    iget v0, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->i:I

    iget-object v1, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->s:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 31
    iget-object v0, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->s:Ljava/lang/String;

    iget v1, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 32
    :cond_0
    iget v0, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->i:I

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
