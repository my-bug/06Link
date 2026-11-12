.class public final Lcom/shilapi/xcertplay/usbbt/HciPacketAssembler$Companion;
.super Ljava/lang/Object;
.source "HciEvents.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/usbbt/HciPacketAssembler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0004\u001a\u00020\u0005J\u0006\u0010\u0006\u001a\u00020\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/usbbt/HciPacketAssembler$Companion;",
        "",
        "<init>",
        "()V",
        "events",
        "Lcom/shilapi/xcertplay/usbbt/HciPacketAssembler;",
        "acl",
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
.method public static synthetic $r8$lambda$AZN10VZzwTdbsh5tDEtLi0ErS_A([B)I
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/usbbt/HciPacketAssembler$Companion;->events$lambda$0([B)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$IMuBqnyZamD_F4aHxzvi1FhTdMM([B)I
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/usbbt/HciPacketAssembler$Companion;->acl$lambda$1([B)I

    move-result p0

    return p0
.end method

.method private constructor <init>()V
    .locals 0

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/usbbt/HciPacketAssembler$Companion;-><init>()V

    return-void
.end method

.method private static final acl$lambda$1([B)I
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 194
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x3

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    return p0
.end method

.method private static final events$lambda$0([B)I
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 193
    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method


# virtual methods
.method public final acl()Lcom/shilapi/xcertplay/usbbt/HciPacketAssembler;
    .locals 5

    .line 194
    new-instance v0, Lcom/shilapi/xcertplay/usbbt/HciPacketAssembler;

    new-instance v1, Lcom/shilapi/xcertplay/usbbt/HciPacketAssembler$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/shilapi/xcertplay/usbbt/HciPacketAssembler$Companion$$ExternalSyntheticLambda0;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x4

    const v4, 0x10003

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/shilapi/xcertplay/usbbt/HciPacketAssembler;-><init>(IILkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final events()Lcom/shilapi/xcertplay/usbbt/HciPacketAssembler;
    .locals 5

    .line 193
    new-instance v0, Lcom/shilapi/xcertplay/usbbt/HciPacketAssembler;

    new-instance v1, Lcom/shilapi/xcertplay/usbbt/HciPacketAssembler$Companion$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/shilapi/xcertplay/usbbt/HciPacketAssembler$Companion$$ExternalSyntheticLambda1;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x101

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/shilapi/xcertplay/usbbt/HciPacketAssembler;-><init>(IILkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
