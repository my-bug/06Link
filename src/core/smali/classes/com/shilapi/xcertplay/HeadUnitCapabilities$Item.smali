.class public final Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;
.super Ljava/lang/Object;
.source "HeadUnitCapabilities.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/HeadUnitCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Item"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000eR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0013\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;",
        "",
        "label",
        "",
        "value",
        "status",
        "Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;",
        "technical",
        "",
        "fix",
        "Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;)V",
        "getLabel",
        "()Ljava/lang/String;",
        "getValue",
        "getStatus",
        "()Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;",
        "getTechnical",
        "()Z",
        "getFix",
        "()Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;",
        "common_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final fix:Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;

.field private final label:Ljava/lang/String;

.field private final status:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

.field private final technical:Z

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;)V
    .locals 1

    const-string v0, "label"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "status"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;->label:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;->value:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;->status:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    .line 48
    iput-boolean p4, p0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;->technical:Z

    .line 49
    iput-object p5, p0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;->fix:Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_0

    const/4 p4, 0x0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    move v4, p4

    :goto_0
    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    const/4 p5, 0x0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    .line 44
    invoke-direct/range {v0 .. v5}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;)V

    return-void
.end method


# virtual methods
.method public final getFix()Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;->fix:Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;

    return-object v0
.end method

.method public final getLabel()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;->label:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;->status:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    return-object v0
.end method

.method public final getTechnical()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;->technical:Z

    return v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;->value:Ljava/lang/String;

    return-object v0
.end method
