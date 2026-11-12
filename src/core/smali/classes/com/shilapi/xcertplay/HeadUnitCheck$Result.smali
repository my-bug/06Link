.class public final Lcom/shilapi/xcertplay/HeadUnitCheck$Result;
.super Ljava/lang/Object;
.source "HeadUnitCheck.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/HeadUnitCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0018\u00002\u00020\u0001BQ\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0017\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0013R\u0017\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0013R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0017R\u0011\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/HeadUnitCheck$Result;",
        "",
        "at",
        "",
        "wired",
        "",
        "Lcom/shilapi/xcertplay/HeadUnitCheck$Item;",
        "wireless",
        "common",
        "wiredVerdict",
        "Lcom/shilapi/xcertplay/HeadUnitCheck$Verdict;",
        "wirelessVerdict",
        "port",
        "Lcom/shilapi/xcertplay/HeadUnitCheck$Port;",
        "<init>",
        "(JLjava/util/List;Ljava/util/List;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Verdict;Lcom/shilapi/xcertplay/HeadUnitCheck$Verdict;Lcom/shilapi/xcertplay/HeadUnitCheck$Port;)V",
        "getAt",
        "()J",
        "getWired",
        "()Ljava/util/List;",
        "getWireless",
        "getCommon",
        "getWiredVerdict",
        "()Lcom/shilapi/xcertplay/HeadUnitCheck$Verdict;",
        "getWirelessVerdict",
        "getPort",
        "()Lcom/shilapi/xcertplay/HeadUnitCheck$Port;",
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
.field private final at:J

.field private final common:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/HeadUnitCheck$Item;",
            ">;"
        }
    .end annotation
.end field

.field private final port:Lcom/shilapi/xcertplay/HeadUnitCheck$Port;

.field private final wired:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/HeadUnitCheck$Item;",
            ">;"
        }
    .end annotation
.end field

.field private final wiredVerdict:Lcom/shilapi/xcertplay/HeadUnitCheck$Verdict;

.field private final wireless:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/HeadUnitCheck$Item;",
            ">;"
        }
    .end annotation
.end field

.field private final wirelessVerdict:Lcom/shilapi/xcertplay/HeadUnitCheck$Verdict;


# direct methods
.method public constructor <init>(JLjava/util/List;Ljava/util/List;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Verdict;Lcom/shilapi/xcertplay/HeadUnitCheck$Verdict;Lcom/shilapi/xcertplay/HeadUnitCheck$Port;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/HeadUnitCheck$Item;",
            ">;",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/HeadUnitCheck$Item;",
            ">;",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/HeadUnitCheck$Item;",
            ">;",
            "Lcom/shilapi/xcertplay/HeadUnitCheck$Verdict;",
            "Lcom/shilapi/xcertplay/HeadUnitCheck$Verdict;",
            "Lcom/shilapi/xcertplay/HeadUnitCheck$Port;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "wired"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "wireless"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "common"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "wiredVerdict"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "wirelessVerdict"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "port"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-wide p1, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$Result;->at:J

    .line 50
    iput-object p3, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$Result;->wired:Ljava/util/List;

    .line 51
    iput-object p4, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$Result;->wireless:Ljava/util/List;

    .line 52
    iput-object p5, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$Result;->common:Ljava/util/List;

    .line 53
    iput-object p6, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$Result;->wiredVerdict:Lcom/shilapi/xcertplay/HeadUnitCheck$Verdict;

    .line 54
    iput-object p7, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$Result;->wirelessVerdict:Lcom/shilapi/xcertplay/HeadUnitCheck$Verdict;

    .line 55
    iput-object p8, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$Result;->port:Lcom/shilapi/xcertplay/HeadUnitCheck$Port;

    return-void
.end method


# virtual methods
.method public final getAt()J
    .locals 2

    .line 49
    iget-wide v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$Result;->at:J

    return-wide v0
.end method

.method public final getCommon()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/HeadUnitCheck$Item;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$Result;->common:Ljava/util/List;

    return-object v0
.end method

.method public final getPort()Lcom/shilapi/xcertplay/HeadUnitCheck$Port;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$Result;->port:Lcom/shilapi/xcertplay/HeadUnitCheck$Port;

    return-object v0
.end method

.method public final getWired()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/HeadUnitCheck$Item;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$Result;->wired:Ljava/util/List;

    return-object v0
.end method

.method public final getWiredVerdict()Lcom/shilapi/xcertplay/HeadUnitCheck$Verdict;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$Result;->wiredVerdict:Lcom/shilapi/xcertplay/HeadUnitCheck$Verdict;

    return-object v0
.end method

.method public final getWireless()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/HeadUnitCheck$Item;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$Result;->wireless:Ljava/util/List;

    return-object v0
.end method

.method public final getWirelessVerdict()Lcom/shilapi/xcertplay/HeadUnitCheck$Verdict;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$Result;->wirelessVerdict:Lcom/shilapi/xcertplay/HeadUnitCheck$Verdict;

    return-object v0
.end method
