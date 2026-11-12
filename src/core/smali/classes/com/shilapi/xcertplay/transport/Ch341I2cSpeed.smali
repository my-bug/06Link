.class public final enum Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;
.super Ljava/lang/Enum;
.source "Ch341I2cStreamEncoder.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0019\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\u0004\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008j\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;",
        "",
        "command",
        "",
        "bitsPerSecond",
        "<init>",
        "(Ljava/lang/String;III)V",
        "getCommand$shared_release",
        "()I",
        "getBitsPerSecond$shared_release",
        "KHZ_20",
        "KHZ_100",
        "KHZ_400",
        "KHZ_750",
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

.field private static final synthetic $VALUES:[Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;

.field public static final enum KHZ_100:Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;

.field public static final enum KHZ_20:Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;

.field public static final enum KHZ_400:Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;

.field public static final enum KHZ_750:Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;


# instance fields
.field private final bitsPerSecond:I

.field private final command:I


# direct methods
.method private static final synthetic $values()[Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;

    sget-object v1, Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;->KHZ_20:Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;->KHZ_100:Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;->KHZ_400:Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;->KHZ_750:Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 5
    new-instance v0, Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;

    const/16 v1, 0x60

    const/16 v2, 0x4e20

    const-string v3, "KHZ_20"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;->KHZ_20:Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;

    .line 6
    new-instance v0, Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;

    const/16 v1, 0x61

    const v2, 0x186a0

    const-string v3, "KHZ_100"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;->KHZ_100:Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;

    .line 7
    new-instance v0, Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;

    const/16 v1, 0x62

    const v2, 0x61a80

    const-string v3, "KHZ_400"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;->KHZ_400:Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;

    .line 8
    new-instance v0, Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;

    const/16 v1, 0x63

    const v2, 0xb71b0

    const-string v3, "KHZ_750"

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;->KHZ_750:Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;

    invoke-static {}, Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;->$values()[Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;->$VALUES:[Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;->command:I

    iput p4, p0, Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;->bitsPerSecond:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;
    .locals 1

    const-class v0, Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;

    return-object p0
.end method

.method public static values()[Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;
    .locals 1

    sget-object v0, Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;->$VALUES:[Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;

    return-object v0
.end method


# virtual methods
.method public final getBitsPerSecond$shared_release()I
    .locals 1

    .line 4
    iget v0, p0, Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;->bitsPerSecond:I

    return v0
.end method

.method public final getCommand$shared_release()I
    .locals 1

    .line 4
    iget v0, p0, Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;->command:I

    return v0
.end method
