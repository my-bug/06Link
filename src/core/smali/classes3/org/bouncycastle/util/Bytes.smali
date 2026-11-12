.class public Lorg/bouncycastle/util/Bytes;
.super Ljava/lang/Object;


# static fields
.field public static final BYTES:I = 0x1

.field public static final SIZE:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static xor(I[BI[BI[BI)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    add-int v1, p6, v0

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    add-int v3, p4, v0

    aget-byte v3, p3, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p5, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static xor(I[B[B[B)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static xorTo(I[BI[BI)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    add-int v1, p4, v0

    aget-byte v2, p3, v1

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static xorTo(I[B[B)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    aget-byte v1, p2, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
