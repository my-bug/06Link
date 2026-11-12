.class final Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator$DerReader;
.super Ljava/lang/Object;
.source "LockdownPairRecord.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DerReader"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLockdownPairRecord.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockdownPairRecord.kt\ncom/shilapi/xcertplay/transport/CertificateMaterialGenerator$DerReader\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,434:1\n1#2:435\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0007J\u0006\u0010\n\u001a\u00020\u000bJ\u0006\u0010\u000c\u001a\u00020\rJ\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0007H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator$DerReader;",
        "",
        "bytes",
        "",
        "<init>",
        "([B)V",
        "offset",
        "",
        "readConstructed",
        "expectedTag",
        "readPositiveInteger",
        "Ljava/math/BigInteger;",
        "exhausted",
        "",
        "readValue",
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
.field private final bytes:[B

.field private offset:I


# direct methods
.method public constructor <init>([B)V
    .locals 1

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator$DerReader;->bytes:[B

    return-void
.end method

.method private final readValue(I)[B
    .locals 7

    .line 416
    iget v0, p0, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator$DerReader;->offset:I

    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator$DerReader;->bytes:[B

    array-length v2, v1

    if-ge v0, v2, :cond_7

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator$DerReader;->offset:I

    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    if-ne v3, p1, :cond_7

    .line 417
    array-length p1, v1

    if-ge v2, p1, :cond_6

    add-int/lit8 v0, v0, 0x2

    .line 418
    iput v0, p0, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator$DerReader;->offset:I

    aget-byte p1, v1, v2

    and-int/lit16 v2, p1, 0xff

    const/16 v3, 0x80

    if-ge v2, v3, :cond_0

    goto :goto_1

    :cond_0
    and-int/lit8 p1, p1, 0x7f

    const/4 v2, 0x1

    if-gt v2, p1, :cond_5

    const/4 v2, 0x5

    if-ge p1, v2, :cond_5

    add-int v2, v0, p1

    .line 421
    array-length v4, v1

    if-gt v2, v4, :cond_5

    .line 422
    aget-byte v0, v1, v0

    const-string v1, "Non-minimal DER length"

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    shl-int/lit8 v2, v2, 0x8

    .line 424
    iget-object v4, p0, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator$DerReader;->bytes:[B

    iget v5, p0, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator$DerReader;->offset:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator$DerReader;->offset:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 425
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x27

    div-int/lit8 v0, v0, 0x8

    if-lt v2, v3, :cond_3

    if-ne p1, v0, :cond_3

    :goto_1
    if-ltz v2, :cond_2

    .line 429
    iget p1, p0, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator$DerReader;->offset:I

    add-int v0, p1, v2

    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator$DerReader;->bytes:[B

    array-length v3, v1

    if-gt v0, v3, :cond_2

    add-int v0, p1, v2

    .line 430
    invoke-static {v1, p1, v0}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object p1

    iget v0, p0, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator$DerReader;->offset:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator$DerReader;->offset:I

    return-object p1

    .line 429
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "DER value is truncated"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 426
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 422
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 421
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid DER length"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 417
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing DER length"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 416
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unexpected DER tag"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public final exhausted()Z
    .locals 2

    .line 413
    iget v0, p0, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator$DerReader;->offset:I

    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator$DerReader;->bytes:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final readConstructed(I)Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator$DerReader;
    .locals 1

    .line 402
    new-instance v0, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator$DerReader;

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator$DerReader;->readValue(I)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator$DerReader;-><init>([B)V

    return-object v0
.end method

.method public final readPositiveInteger()Ljava/math/BigInteger;
    .locals 4

    const/4 v0, 0x2

    .line 405
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator$DerReader;->readValue(I)[B

    move-result-object v0

    .line 406
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_3

    aget-byte v1, v0, v2

    and-int/lit16 v2, v1, 0x80

    if-nez v2, :cond_3

    .line 407
    array-length v2, v0

    if-eq v2, v3, :cond_2

    if-nez v1, :cond_2

    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-minimal positive DER integer"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :cond_2
    :goto_1
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    return-object v1

    .line 406
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid positive DER integer"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
