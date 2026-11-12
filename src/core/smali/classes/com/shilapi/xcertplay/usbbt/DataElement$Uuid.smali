.class public final Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;
.super Lcom/shilapi/xcertplay/usbbt/DataElement;
.source "Sdp.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/usbbt/DataElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Uuid"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u0019\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0013\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\u0008\u0010\u0010\u001a\u00020\u0005H\u0016J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;",
        "Lcom/shilapi/xcertplay/usbbt/DataElement;",
        "uuid",
        "Ljava/util/UUID;",
        "bytes",
        "",
        "<init>",
        "(Ljava/util/UUID;I)V",
        "getUuid",
        "()Ljava/util/UUID;",
        "getBytes",
        "()I",
        "equals",
        "",
        "other",
        "",
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
.field public static final Companion:Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid$Companion;


# instance fields
.field private final bytes:I

.field private final uuid:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;->Companion:Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/util/UUID;I)V
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/usbbt/DataElement;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;->uuid:Ljava/util/UUID;

    iput p2, p0, Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;->bytes:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/UUID;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;-><init>(Ljava/util/UUID;I)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 13
    instance-of v0, p1, Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;

    iget-object p1, p1, Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;->uuid:Ljava/util/UUID;

    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;->uuid:Ljava/util/UUID;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final getBytes()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;->bytes:I

    return v0
.end method

.method public final getUuid()Ljava/util/UUID;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;->uuid:Ljava/util/UUID;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;->uuid:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 15
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;->uuid:Ljava/util/UUID;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Uuid("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
