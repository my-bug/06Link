.class public final Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;
.super Ljava/lang/Object;
.source "Iap2Wire.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIap2Wire.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Iap2Wire.kt\ncom/shilapi/xcertplay/iap2/wire/Iap2Parameter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,152:1\n1#2:153\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\r\u0010\r\u001a\u00020\u0005H\u0000\u00a2\u0006\u0002\u0008\u000eJ\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u0012\u001a\u00020\u0003H\u0016J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u000e\u0010\n\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;",
        "",
        "id",
        "",
        "payload",
        "",
        "<init>",
        "(I[B)V",
        "getId",
        "()I",
        "bytes",
        "getPayload",
        "()[B",
        "payloadView",
        "payloadView$shared_release",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter$Companion;

.field public static final HEADER_BYTES:I = 0x4


# instance fields
.field private final bytes:[B

.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;->Companion:Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter$Companion;

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 2

    const-string v0, "payload"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_1

    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_1

    .line 13
    array-length v0, p2

    const v1, 0xfffb

    if-gt v0, v1, :cond_0

    .line 16
    iput p1, p0, Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;->id:I

    .line 17
    array-length p1, p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    const-string p2, "copyOf(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;->bytes:[B

    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "CSM parameter payload exceeds 65531 bytes"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "CSM parameter id must fit in u16"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 26
    instance-of v0, p1, Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;->id:I

    check-cast p1, Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;

    iget v1, p1, Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;->id:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;->bytes:[B

    iget-object p1, p1, Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;->bytes:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final getId()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;->id:I

    return v0
.end method

.method public final getPayload()[B
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;->bytes:[B

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    const-string v1, "copyOf(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 28
    iget v0, p0, Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;->id:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;->bytes:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final payloadView$shared_release()[B
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;->bytes:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 31
    iget v0, p0, Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;->id:I

    const/16 v1, 0x10

    invoke-static {v1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x4

    const/16 v2, 0x30

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;->bytes:[B

    array-length v1, v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Iap2Parameter(id=0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", payload="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
