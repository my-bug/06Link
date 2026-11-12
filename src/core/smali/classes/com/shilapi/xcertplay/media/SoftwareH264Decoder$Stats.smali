.class public final Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Stats;
.super Ljava/lang/Object;
.source "SoftwareH264Decoder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/media/SoftwareH264Decoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stats"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Stats$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0019\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u0000 \"2\u00020\u0001:\u0001\"B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010 \u001a\u00020!H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\n\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\tR\u0011\u0010\u000c\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\tR\u0011\u0010\u000e\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\tR\u0011\u0010\u0010\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\tR\u0011\u0010\u0012\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\tR\u0011\u0010\u0014\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\tR\u0011\u0010\u0016\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\tR\u0011\u0010\u0018\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\tR\u0011\u0010\u001a\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\tR\u0011\u0010\u001c\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\tR\u0011\u0010\u001e\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010\t\u00a8\u0006#"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Stats;",
        "",
        "values",
        "",
        "<init>",
        "([I)V",
        "width",
        "",
        "getWidth",
        "()I",
        "height",
        "getHeight",
        "decoded",
        "getDecoded",
        "drawn",
        "getDrawn",
        "profile",
        "getProfile",
        "level",
        "getLevel",
        "pixelFormat",
        "getPixelFormat",
        "errors",
        "getErrors",
        "sampleYLeft",
        "getSampleYLeft",
        "sampleYRight",
        "getSampleYRight",
        "sampleCbRight",
        "getSampleCbRight",
        "sampleCrRight",
        "getSampleCrRight",
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
.field public static final Companion:Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Stats$Companion;

.field public static final SIZE:I = 0xc


# instance fields
.field private final values:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Stats$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Stats$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Stats;->Companion:Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Stats$Companion;

    return-void
.end method

.method public constructor <init>([I)V
    .locals 1

    const-string/jumbo v0, "values"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Stats;->values:[I

    return-void
.end method


# virtual methods
.method public final getDecoded()I
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Stats;->values:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public final getDrawn()I
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Stats;->values:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public final getErrors()I
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Stats;->values:[I

    const/4 v1, 0x7

    aget v0, v0, v1

    return v0
.end method

.method public final getHeight()I
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Stats;->values:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public final getLevel()I
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Stats;->values:[I

    const/4 v1, 0x5

    aget v0, v0, v1

    return v0
.end method

.method public final getPixelFormat()I
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Stats;->values:[I

    const/4 v1, 0x6

    aget v0, v0, v1

    return v0
.end method

.method public final getProfile()I
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Stats;->values:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    return v0
.end method

.method public final getSampleCbRight()I
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Stats;->values:[I

    const/16 v1, 0xa

    aget v0, v0, v1

    return v0
.end method

.method public final getSampleCrRight()I
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Stats;->values:[I

    const/16 v1, 0xb

    aget v0, v0, v1

    return v0
.end method

.method public final getSampleYLeft()I
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Stats;->values:[I

    const/16 v1, 0x8

    aget v0, v0, v1

    return v0
.end method

.method public final getSampleYRight()I
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Stats;->values:[I

    const/16 v1, 0x9

    aget v0, v0, v1

    return v0
.end method

.method public final getWidth()I
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Stats;->values:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 58
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Stats;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Stats;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Stats;->getDecoded()I

    move-result v2

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Stats;->getDrawn()I

    move-result v3

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Stats;->getProfile()I

    move-result v4

    .line 59
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Stats;->getLevel()I

    move-result v5

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Stats;->getPixelFormat()I

    move-result v6

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Stats;->getErrors()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "x"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " decoded="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " drawn="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " profile="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " level="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " pixfmt="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " errors="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
