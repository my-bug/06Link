.class public final enum Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;
.super Ljava/lang/Enum;
.source "ManualHotspotValidation.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;",
        "",
        "message",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getMessage",
        "()Ljava/lang/String;",
        "EMPTY_NAME",
        "LONG_NAME",
        "INVALID_CHARACTER",
        "PASSWORD_LENGTH",
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

.field private static final synthetic $VALUES:[Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;

.field public static final enum EMPTY_NAME:Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;

.field public static final enum INVALID_CHARACTER:Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;

.field public static final enum LONG_NAME:Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;

.field public static final enum PASSWORD_LENGTH:Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;


# instance fields
.field private final message:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;->EMPTY_NAME:Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;->LONG_NAME:Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;->INVALID_CHARACTER:Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;->PASSWORD_LENGTH:Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 10
    new-instance v0, Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;

    const/4 v1, 0x0

    const-string v2, "Enter the car hotspot name"

    const-string v3, "EMPTY_NAME"

    invoke-direct {v0, v3, v1, v2}, Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;->EMPTY_NAME:Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;

    .line 11
    new-instance v0, Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;

    const/4 v1, 0x1

    const-string v2, "The hotspot name must be at most 32 bytes"

    const-string v3, "LONG_NAME"

    invoke-direct {v0, v3, v1, v2}, Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;->LONG_NAME:Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;

    .line 12
    new-instance v0, Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;

    const/4 v1, 0x2

    const-string v2, "The name or password contains an invalid character"

    const-string v3, "INVALID_CHARACTER"

    invoke-direct {v0, v3, v1, v2}, Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;->INVALID_CHARACTER:Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;

    .line 13
    new-instance v0, Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;

    const/4 v1, 0x3

    const-string v2, "The hotspot password must be 8\u201363 characters"

    const-string v3, "PASSWORD_LENGTH"

    invoke-direct {v0, v3, v1, v2}, Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;->PASSWORD_LENGTH:Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;

    invoke-static {}, Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;->$values()[Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;->$VALUES:[Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;->message:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;
    .locals 1

    const-class v0, Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;

    return-object p0
.end method

.method public static values()[Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;
    .locals 1

    sget-object v0, Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;->$VALUES:[Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;

    return-object v0
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;->message:Ljava/lang/String;

    return-object v0
.end method
