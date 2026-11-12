.class public final Lcom/shilapi/xcertplay/transport/UsbDescriptorParser;
.super Ljava/lang/Object;
.source "UsbConfigCompat.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Configuration;,
        Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Interface;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUsbConfigCompat.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UsbConfigCompat.kt\ncom/shilapi/xcertplay/transport/UsbDescriptorParser\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,191:1\n1#2:192\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0003\u0008\u00c0\u0002\u0018\u00002\u00020\u0001:\u0002\u000c\rB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010\n\u001a\u00020\u000bR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/UsbDescriptorParser;",
        "",
        "<init>",
        "()V",
        "CONFIGURATION",
        "",
        "INTERFACE",
        "parse",
        "",
        "Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Configuration;",
        "raw",
        "",
        "Interface",
        "Configuration",
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
.field private static final CONFIGURATION:I = 0x2

.field public static final INSTANCE:Lcom/shilapi/xcertplay/transport/UsbDescriptorParser;

.field private static final INTERFACE:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/transport/UsbDescriptorParser;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/transport/UsbDescriptorParser;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/transport/UsbDescriptorParser;->INSTANCE:Lcom/shilapi/xcertplay/transport/UsbDescriptorParser;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final parse([B)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Configuration;",
            ">;"
        }
    .end annotation

    const-string v0, "raw"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x0

    :goto_0
    add-int/lit8 v4, v2, 0x2

    .line 70
    array-length v5, p1

    if-gt v4, v5, :cond_5

    .line 71
    aget-byte v5, p1, v2

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v2, 0x1

    .line 72
    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    const/4 v7, 0x2

    if-lt v5, v7, :cond_5

    add-int v11, v2, v5

    .line 73
    array-length v8, p1

    if-le v11, v8, :cond_0

    goto :goto_2

    :cond_0
    const/16 v8, 0x9

    if-ne v6, v7, :cond_2

    if-lt v5, v8, :cond_2

    if-eqz v1, :cond_1

    .line 76
    move-object v4, v0

    check-cast v4, Ljava/util/Collection;

    new-instance v5, Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Configuration;

    invoke-direct {v5, v3, v1}, Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Configuration;-><init>(ILjava/util/List;)V

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    add-int/lit8 v2, v2, 0x5

    .line 78
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    move v3, v2

    goto :goto_1

    :cond_2
    const/4 v7, 0x4

    if-ne v6, v7, :cond_4

    if-lt v5, v8, :cond_4

    if-eqz v1, :cond_3

    move v5, v4

    .line 82
    new-instance v4, Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Interface;

    .line 83
    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v2, 0x3

    .line 84
    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v2, 0x5

    .line 85
    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v8, v2, 0x6

    .line 86
    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    add-int/lit8 v2, v2, 0x7

    .line 87
    aget-byte v2, p1, v2

    and-int/lit16 v9, v2, 0xff

    .line 82
    invoke-direct/range {v4 .. v10}, Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Interface;-><init>(IIIIII)V

    .line 81
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v10, v10, 0x1

    :cond_4
    :goto_1
    move v2, v11

    goto :goto_0

    :cond_5
    :goto_2
    if-eqz v1, :cond_6

    .line 96
    move-object p1, v0

    check-cast p1, Ljava/util/Collection;

    new-instance v2, Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Configuration;

    invoke-direct {v2, v3, v1}, Lcom/shilapi/xcertplay/transport/UsbDescriptorParser$Configuration;-><init>(ILjava/util/List;)V

    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object v0
.end method
