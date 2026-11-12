.class public final Lcom/shilapi/xcertplay/network/LegacyHotspotRadio$Settled;
.super Ljava/lang/Object;
.source "LegacyHotspotRadio.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/network/LegacyHotspotRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Settled"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLegacyHotspotRadio.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LegacyHotspotRadio.kt\ncom/shilapi/xcertplay/network/LegacyHotspotRadio$Settled\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,60:1\n1#2:61\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001f\u0010\t\u001a\u0004\u0018\u00010\u00052\u0008\u0010\n\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000b\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\u000cR\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/LegacyHotspotRadio$Settled;",
        "",
        "<init>",
        "()V",
        "frequency",
        "",
        "Ljava/lang/Integer;",
        "since",
        "",
        "observe",
        "value",
        "nowMs",
        "(Ljava/lang/Integer;J)Ljava/lang/Integer;",
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


# instance fields
.field private frequency:Ljava/lang/Integer;

.field private since:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final observe(Ljava/lang/Integer;J)Ljava/lang/Integer;
    .locals 4

    .line 50
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/LegacyHotspotRadio$Settled;->frequency:Ljava/lang/Integer;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/shilapi/xcertplay/network/LegacyHotspotRadio$Settled;->frequency:Ljava/lang/Integer;

    iput-wide p2, p0, Lcom/shilapi/xcertplay/network/LegacyHotspotRadio$Settled;->since:J

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 51
    move-object v1, p1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    iget-wide v1, p0, Lcom/shilapi/xcertplay/network/LegacyHotspotRadio$Settled;->since:J

    sub-long/2addr p2, v1

    const-wide/16 v1, 0x7d0

    cmp-long v3, p2, v1

    if-ltz v3, :cond_1

    return-object p1

    :cond_1
    return-object v0
.end method
