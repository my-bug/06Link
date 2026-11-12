.class public final enum Lcom/shilapi/xcertplay/qr/QrMatrix$Ec;
.super Ljava/lang/Enum;
.source "QrMatrix.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/qr/QrMatrix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Ec"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shilapi/xcertplay/qr/QrMatrix$Ec;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/qr/QrMatrix$Ec;",
        "",
        "zxing",
        "Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;",
        "<init>",
        "(Ljava/lang/String;ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)V",
        "getZxing$shared_release",
        "()Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;",
        "L",
        "M",
        "Q",
        "H",
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
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/shilapi/xcertplay/qr/QrMatrix$Ec;

.field public static final enum H:Lcom/shilapi/xcertplay/qr/QrMatrix$Ec;

.field public static final enum L:Lcom/shilapi/xcertplay/qr/QrMatrix$Ec;

.field public static final enum M:Lcom/shilapi/xcertplay/qr/QrMatrix$Ec;

.field public static final enum Q:Lcom/shilapi/xcertplay/qr/QrMatrix$Ec;


# instance fields
.field private final zxing:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;


# direct methods
.method private static final synthetic $values()[Lcom/shilapi/xcertplay/qr/QrMatrix$Ec;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/shilapi/xcertplay/qr/QrMatrix$Ec;

    sget-object v1, Lcom/shilapi/xcertplay/qr/QrMatrix$Ec;->L:Lcom/shilapi/xcertplay/qr/QrMatrix$Ec;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/qr/QrMatrix$Ec;->M:Lcom/shilapi/xcertplay/qr/QrMatrix$Ec;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/qr/QrMatrix$Ec;->Q:Lcom/shilapi/xcertplay/qr/QrMatrix$Ec;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/qr/QrMatrix$Ec;->H:Lcom/shilapi/xcertplay/qr/QrMatrix$Ec;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 19
    new-instance v0, Lcom/shilapi/xcertplay/qr/QrMatrix$Ec;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->L:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    const-string v3, "L"

    invoke-direct {v0, v3, v1, v2}, Lcom/shilapi/xcertplay/qr/QrMatrix$Ec;-><init>(Ljava/lang/String;ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)V

    sput-object v0, Lcom/shilapi/xcertplay/qr/QrMatrix$Ec;->L:Lcom/shilapi/xcertplay/qr/QrMatrix$Ec;

    new-instance v0, Lcom/shilapi/xcertplay/qr/QrMatrix$Ec;

    const/4 v1, 0x1

    sget-object v2, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->M:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    const-string v3, "M"

    invoke-direct {v0, v3, v1, v2}, Lcom/shilapi/xcertplay/qr/QrMatrix$Ec;-><init>(Ljava/lang/String;ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)V

    sput-object v0, Lcom/shilapi/xcertplay/qr/QrMatrix$Ec;->M:Lcom/shilapi/xcertplay/qr/QrMatrix$Ec;

    new-instance v0, Lcom/shilapi/xcertplay/qr/QrMatrix$Ec;

    const/4 v1, 0x2

    sget-object v2, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->Q:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    const-string v3, "Q"

    invoke-direct {v0, v3, v1, v2}, Lcom/shilapi/xcertplay/qr/QrMatrix$Ec;-><init>(Ljava/lang/String;ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)V

    sput-object v0, Lcom/shilapi/xcertplay/qr/QrMatrix$Ec;->Q:Lcom/shilapi/xcertplay/qr/QrMatrix$Ec;

    new-instance v0, Lcom/shilapi/xcertplay/qr/QrMatrix$Ec;

    const/4 v1, 0x3

    sget-object v2, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->H:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    const-string v3, "H"

    invoke-direct {v0, v3, v1, v2}, Lcom/shilapi/xcertplay/qr/QrMatrix$Ec;-><init>(Ljava/lang/String;ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)V

    sput-object v0, Lcom/shilapi/xcertplay/qr/QrMatrix$Ec;->H:Lcom/shilapi/xcertplay/qr/QrMatrix$Ec;

    invoke-static {}, Lcom/shilapi/xcertplay/qr/QrMatrix$Ec;->$values()[Lcom/shilapi/xcertplay/qr/QrMatrix$Ec;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/qr/QrMatrix$Ec;->$VALUES:[Lcom/shilapi/xcertplay/qr/QrMatrix$Ec;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/qr/QrMatrix$Ec;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;",
            ")V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/shilapi/xcertplay/qr/QrMatrix$Ec;->zxing:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/shilapi/xcertplay/qr/QrMatrix$Ec;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/shilapi/xcertplay/qr/QrMatrix$Ec;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shilapi/xcertplay/qr/QrMatrix$Ec;
    .locals 1

    const-class v0, Lcom/shilapi/xcertplay/qr/QrMatrix$Ec;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shilapi/xcertplay/qr/QrMatrix$Ec;

    return-object p0
.end method

.method public static values()[Lcom/shilapi/xcertplay/qr/QrMatrix$Ec;
    .locals 1

    sget-object v0, Lcom/shilapi/xcertplay/qr/QrMatrix$Ec;->$VALUES:[Lcom/shilapi/xcertplay/qr/QrMatrix$Ec;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shilapi/xcertplay/qr/QrMatrix$Ec;

    return-object v0
.end method


# virtual methods
.method public final getZxing$shared_release()Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/shilapi/xcertplay/qr/QrMatrix$Ec;->zxing:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    return-object v0
.end method
