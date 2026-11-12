.class public final Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn$Companion;
.super Ljava/lang/Object;
.source "Rfcomm.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn$Companion;",
        "",
        "<init>",
        "()V",
        "decode",
        "Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;",
        "v",
        "",
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

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final decode([B)Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;
    .locals 7

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    array-length v0, p1

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;

    const/4 v2, 0x0

    .line 179
    aget-byte v2, p1, v2

    and-int/lit8 v2, v2, 0x3f

    const/4 v3, 0x1

    .line 180
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xf0

    const/4 v4, 0x4

    ushr-int/2addr v3, v4

    const/4 v5, 0x2

    .line 181
    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x3f

    .line 182
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    const/4 v6, 0x5

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v1, v6, 0x8

    or-int/2addr v4, v1

    const/4 v1, 0x7

    .line 183
    aget-byte p1, p1, v1

    and-int/2addr p1, v1

    move v1, v2

    move v2, v3

    move v3, v5

    move v5, p1

    .line 178
    invoke-direct/range {v0 .. v5}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;-><init>(IIIII)V

    return-object v0
.end method
