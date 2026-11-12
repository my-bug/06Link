.class public final Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid$Companion;
.super Ljava/lang/Object;
.source "Sdp.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid$Companion;",
        "",
        "<init>",
        "()V",
        "of16",
        "Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;",
        "value",
        "",
        "of32",
        "",
        "of128",
        "uuid",
        "Ljava/util/UUID;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final of128(Ljava/util/UUID;)Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;
    .locals 3

    const-string/jumbo v0, "uuid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance v0, Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;-><init>(Ljava/util/UUID;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final of16(I)Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;
    .locals 6

    .line 18
    new-instance v0, Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;

    sget-object v1, Lcom/shilapi/xcertplay/usbbt/Sdp;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/Sdp;

    int-to-long v2, p1

    const-wide/32 v4, 0xffff

    and-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/shilapi/xcertplay/usbbt/Sdp;->baseUuid(J)Ljava/util/UUID;

    move-result-object p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;-><init>(Ljava/util/UUID;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final of32(J)Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;
    .locals 4

    .line 19
    new-instance v0, Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;

    sget-object v1, Lcom/shilapi/xcertplay/usbbt/Sdp;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/Sdp;

    const-wide v2, 0xffffffffL

    and-long/2addr p1, v2

    invoke-virtual {v1, p1, p2}, Lcom/shilapi/xcertplay/usbbt/Sdp;->baseUuid(J)Ljava/util/UUID;

    move-result-object p1

    const/4 p2, 0x4

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;-><init>(Ljava/util/UUID;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
