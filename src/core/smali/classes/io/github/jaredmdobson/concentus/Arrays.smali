.class Lio/github/jaredmdobson/concentus/Arrays;
.super Ljava/lang/Object;
.source "Arrays.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static InitThreeDimensionalArrayByte(III)[[[B
    .locals 2

    const/4 v0, 0x3

    .line 52
    new-array v0, v0, [I

    const/4 v1, 0x2

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p1, v0, p2

    const/4 p1, 0x0

    aput p0, v0, p1

    sget-object p0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[[B

    return-object p0
.end method

.method static InitTwoDimensionalArrayByte(II)[[B
    .locals 2

    const/4 v0, 0x2

    .line 48
    new-array v0, v0, [I

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 p1, 0x0

    aput p0, v0, p1

    sget-object p0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[B

    return-object p0
.end method

.method static InitTwoDimensionalArrayFloat(II)[[F
    .locals 2

    const/4 v0, 0x2

    .line 40
    new-array v0, v0, [I

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 p1, 0x0

    aput p0, v0, p1

    sget-object p0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[F

    return-object p0
.end method

.method static InitTwoDimensionalArrayInt(II)[[I
    .locals 2

    const/4 v0, 0x2

    .line 36
    new-array v0, v0, [I

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 p1, 0x0

    aput p0, v0, p1

    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[I

    return-object p0
.end method

.method static InitTwoDimensionalArrayShort(II)[[S
    .locals 2

    const/4 v0, 0x2

    .line 44
    new-array v0, v0, [I

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 p1, 0x0

    aput p0, v0, p1

    sget-object p0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[S

    return-object p0
.end method

.method static MemMove([BIII)V
    .locals 0

    .line 100
    invoke-static {p0, p1, p0, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static MemMove([IIII)V
    .locals 0

    .line 108
    invoke-static {p0, p1, p0, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static MemMove([SIII)V
    .locals 0

    .line 104
    invoke-static {p0, p1, p0, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static MemSet([BB)V
    .locals 0

    .line 56
    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([BB)V

    return-void
.end method

.method static MemSet([BBI)V
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-static {p0, v0, p2, p1}, Ljava/util/Arrays;->fill([BIIB)V

    return-void
.end method

.method static MemSet([FF)V
    .locals 0

    .line 68
    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([FF)V

    return-void
.end method

.method static MemSet([FFI)V
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-static {p0, v0, p2, p1}, Ljava/util/Arrays;->fill([FIIF)V

    return-void
.end method

.method static MemSet([II)V
    .locals 0

    .line 64
    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method static MemSet([III)V
    .locals 1

    const/4 v0, 0x0

    .line 80
    invoke-static {p0, v0, p2, p1}, Ljava/util/Arrays;->fill([IIII)V

    return-void
.end method

.method static MemSet([SS)V
    .locals 0

    .line 60
    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([SS)V

    return-void
.end method

.method static MemSet([SSI)V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-static {p0, v0, p2, p1}, Ljava/util/Arrays;->fill([SIIS)V

    return-void
.end method

.method static MemSetWithOffset([BBII)V
    .locals 0

    add-int/2addr p3, p2

    .line 88
    invoke-static {p0, p2, p3, p1}, Ljava/util/Arrays;->fill([BIIB)V

    return-void
.end method

.method static MemSetWithOffset([IIII)V
    .locals 0

    add-int/2addr p3, p2

    .line 96
    invoke-static {p0, p2, p3, p1}, Ljava/util/Arrays;->fill([IIII)V

    return-void
.end method

.method static MemSetWithOffset([SSII)V
    .locals 0

    add-int/2addr p3, p2

    .line 92
    invoke-static {p0, p2, p3, p1}, Ljava/util/Arrays;->fill([SIIS)V

    return-void
.end method
