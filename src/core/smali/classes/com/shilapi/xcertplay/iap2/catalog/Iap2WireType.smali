.class public final enum Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;
.super Ljava/lang/Enum;
.source "Iap2Endpoint.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0011\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "VOID",
        "U8",
        "I8",
        "U16",
        "I16",
        "U32",
        "I32",
        "U64",
        "U16_LIST",
        "BYTES",
        "STRING",
        "STRING_LIST",
        "GROUP",
        "OPAQUE",
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

.field private static final synthetic $VALUES:[Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

.field public static final enum BYTES:Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

.field public static final enum GROUP:Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

.field public static final enum I16:Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

.field public static final enum I32:Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

.field public static final enum I8:Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

.field public static final enum OPAQUE:Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

.field public static final enum STRING:Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

.field public static final enum STRING_LIST:Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

.field public static final enum U16:Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

.field public static final enum U16_LIST:Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

.field public static final enum U32:Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

.field public static final enum U64:Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

.field public static final enum U8:Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

.field public static final enum VOID:Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;


# direct methods
.method private static final synthetic $values()[Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;
    .locals 3

    const/16 v0, 0xe

    new-array v0, v0, [Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    sget-object v1, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;->VOID:Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;->U8:Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;->I8:Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;->U16:Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;->I16:Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;->U32:Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;->I32:Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;->U64:Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;->U16_LIST:Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;->BYTES:Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;->STRING:Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;->STRING_LIST:Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;->GROUP:Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;->OPAQUE:Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    const-string v1, "VOID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;->VOID:Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    .line 17
    new-instance v0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    const-string v1, "U8"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;->U8:Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    .line 18
    new-instance v0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    const-string v1, "I8"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;->I8:Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    .line 19
    new-instance v0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    const-string v1, "U16"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;->U16:Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    .line 20
    new-instance v0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    const-string v1, "I16"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;->I16:Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    .line 21
    new-instance v0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    const-string v1, "U32"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;->U32:Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    .line 22
    new-instance v0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    const-string v1, "I32"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;->I32:Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    .line 23
    new-instance v0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    const-string v1, "U64"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;->U64:Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    .line 24
    new-instance v0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    const-string v1, "U16_LIST"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;->U16_LIST:Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    .line 25
    new-instance v0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    const-string v1, "BYTES"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;->BYTES:Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    .line 26
    new-instance v0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    const-string v1, "STRING"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;->STRING:Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    .line 27
    new-instance v0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    const-string v1, "STRING_LIST"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;->STRING_LIST:Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    .line 28
    new-instance v0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    const-string v1, "GROUP"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;->GROUP:Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    .line 29
    new-instance v0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    const-string v1, "OPAQUE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;->OPAQUE:Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    invoke-static {}, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;->$values()[Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;->$VALUES:[Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;
    .locals 1

    const-class v0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    return-object p0
.end method

.method public static values()[Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;
    .locals 1

    sget-object v0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;->$VALUES:[Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    return-object v0
.end method
