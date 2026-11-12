.class public Lj$/util/Base64;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/util/Base64$Decoder;,
        Lj$/util/Base64$Encoder;
    }
.end annotation


# direct methods
.method public static getDecoder()Lj$/util/Base64$Decoder;
    .locals 1

    .line 157
    sget-object v0, Lj$/util/Base64$Decoder;->RFC4648:Lj$/util/Base64$Decoder;

    return-object v0
.end method

.method public static getEncoder()Lj$/util/Base64$Encoder;
    .locals 1

    .line 92
    sget-object v0, Lj$/util/Base64$Encoder;->RFC4648:Lj$/util/Base64$Encoder;

    return-object v0
.end method

.method public static getMimeDecoder()Lj$/util/Base64$Decoder;
    .locals 1

    .line 178
    sget-object v0, Lj$/util/Base64$Decoder;->RFC2045:Lj$/util/Base64$Decoder;

    return-object v0
.end method

.method public static getMimeEncoder(I[B)Lj$/util/Base64$Encoder;
    .locals 6

    .line 135
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-static {}, Lj$/util/Base64$Decoder;->-$$Nest$sfgetfromBase64()[I

    move-result-object v0

    .line 137
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p1, v2

    and-int/lit16 v4, v3, 0xff

    .line 138
    aget v4, v0, v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 139
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/16 p1, 0x10

    .line 140
    invoke-static {v3, p1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal base64 line separator character 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    and-int/lit8 v3, p0, -0x4

    if-gtz v3, :cond_2

    .line 145
    sget-object p0, Lj$/util/Base64$Encoder;->RFC4648:Lj$/util/Base64$Encoder;

    return-object p0

    .line 147
    :cond_2
    new-instance v0, Lj$/util/Base64$Encoder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lj$/util/Base64$Encoder;-><init>(Z[BIZLj$/util/Base64-IA;)V

    return-object v0
.end method
