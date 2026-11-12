.class public final Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload$Companion;
.super Ljava/lang/Object;
.source "Iap2LinkEngine.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;
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
        "Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload$Companion;",
        "",
        "<init>",
        "()V",
        "decode",
        "Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;",
        "bytes",
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

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final decode([B)Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;
    .locals 17

    move-object/from16 v0, p1

    const-string v1, "bytes"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    array-length v1, v0

    const/16 v2, 0xa

    if-lt v1, v2, :cond_2

    sget-object v1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->Companion:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;

    const/4 v3, 0x0

    aget-byte v3, v0, v3

    # invokes: Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->u8(B)I
    invoke-static {v1, v3}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->access$u8(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;B)I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    goto :goto_1

    .line 87
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    add-int/lit8 v4, v2, 0x3

    .line 89
    array-length v5, v0

    if-gt v4, v5, :cond_1

    .line 90
    move-object v5, v1

    check-cast v5, Ljava/util/Collection;

    new-instance v6, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SessionDescriptor;

    sget-object v7, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->Companion:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;

    aget-byte v8, v0, v2

    # invokes: Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->u8(B)I
    invoke-static {v7, v8}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->access$u8(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;B)I

    move-result v7

    sget-object v8, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->Companion:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;

    add-int/lit8 v9, v2, 0x1

    aget-byte v9, v0, v9

    # invokes: Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->u8(B)I
    invoke-static {v8, v9}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->access$u8(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;B)I

    move-result v8

    sget-object v9, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->Companion:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;

    add-int/lit8 v2, v2, 0x2

    aget-byte v2, v0, v2

    # invokes: Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->u8(B)I
    invoke-static {v9, v2}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->access$u8(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;B)I

    move-result v2

    invoke-direct {v6, v7, v8, v2}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SessionDescriptor;-><init>(III)V

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v2, v4

    goto :goto_0

    .line 93
    :cond_1
    new-instance v9, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;

    .line 94
    sget-object v2, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->Companion:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;

    aget-byte v3, v0, v3

    # invokes: Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->u8(B)I
    invoke-static {v2, v3}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->access$u8(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;B)I

    move-result v10

    .line 95
    sget-object v2, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->Companion:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;

    const/4 v3, 0x2

    # invokes: Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->readU16([BI)I
    invoke-static {v2, v0, v3}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->access$readU16(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;[BI)I

    move-result v11

    .line 96
    sget-object v2, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->Companion:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;

    const/4 v3, 0x4

    # invokes: Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->readU16([BI)I
    invoke-static {v2, v0, v3}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->access$readU16(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;[BI)I

    move-result v12

    .line 97
    sget-object v2, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->Companion:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;

    const/4 v3, 0x6

    # invokes: Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->readU16([BI)I
    invoke-static {v2, v0, v3}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->access$readU16(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;[BI)I

    move-result v13

    .line 98
    sget-object v2, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->Companion:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;

    const/16 v3, 0x8

    aget-byte v3, v0, v3

    # invokes: Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->u8(B)I
    invoke-static {v2, v3}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->access$u8(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;B)I

    move-result v14

    .line 99
    sget-object v2, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->Companion:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;

    const/16 v3, 0x9

    aget-byte v0, v0, v3

    # invokes: Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->u8(B)I
    invoke-static {v2, v0}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->access$u8(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;B)I

    move-result v15

    .line 100
    move-object/from16 v16, v1

    check-cast v16, Ljava/util/List;

    .line 93
    invoke-direct/range {v9 .. v16}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;-><init>(IIIIIILjava/util/List;)V

    return-object v9

    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method
