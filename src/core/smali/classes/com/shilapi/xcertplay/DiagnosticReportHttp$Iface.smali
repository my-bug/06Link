.class public final Lcom/shilapi/xcertplay/DiagnosticReportHttp$Iface;
.super Ljava/lang/Object;
.source "DiagnosticReportHttp.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/DiagnosticReportHttp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Iface"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0011\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0005H\u00c6\u0003J\u000f\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0008H\u00c6\u0003J7\u0010\u0016\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u000e\u0008\u0002\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0008H\u00c6\u0001J\u0013\u0010\u0017\u001a\u00020\u00052\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001J\t\u0010\u001b\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000eR\u0017\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/DiagnosticReportHttp$Iface;",
        "",
        "name",
        "",
        "up",
        "",
        "loopback",
        "ipv4",
        "",
        "<init>",
        "(Ljava/lang/String;ZZLjava/util/List;)V",
        "getName",
        "()Ljava/lang/String;",
        "getUp",
        "()Z",
        "getLoopback",
        "getIpv4",
        "()Ljava/util/List;",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
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
.field private final ipv4:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final loopback:Z

.field private final name:Ljava/lang/String;

.field private final up:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ipv4"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Iface;->name:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Iface;->up:Z

    iput-boolean p3, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Iface;->loopback:Z

    iput-object p4, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Iface;->ipv4:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/DiagnosticReportHttp$Iface;Ljava/lang/String;ZZLjava/util/List;ILjava/lang/Object;)Lcom/shilapi/xcertplay/DiagnosticReportHttp$Iface;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Iface;->name:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-boolean p2, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Iface;->up:Z

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-boolean p3, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Iface;->loopback:Z

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Iface;->ipv4:Ljava/util/List;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Iface;->copy(Ljava/lang/String;ZZLjava/util/List;)Lcom/shilapi/xcertplay/DiagnosticReportHttp$Iface;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Iface;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Iface;->up:Z

    return v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Iface;->loopback:Z

    return v0
.end method

.method public final component4()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Iface;->ipv4:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;ZZLjava/util/List;)Lcom/shilapi/xcertplay/DiagnosticReportHttp$Iface;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/shilapi/xcertplay/DiagnosticReportHttp$Iface;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ipv4"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Iface;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Iface;-><init>(Ljava/lang/String;ZZLjava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Iface;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Iface;

    iget-object v1, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Iface;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Iface;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Iface;->up:Z

    iget-boolean v3, p1, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Iface;->up:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Iface;->loopback:Z

    iget-boolean v3, p1, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Iface;->loopback:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Iface;->ipv4:Ljava/util/List;

    iget-object p1, p1, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Iface;->ipv4:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getIpv4()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Iface;->ipv4:Ljava/util/List;

    return-object v0
.end method

.method public final getLoopback()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Iface;->loopback:Z

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Iface;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getUp()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Iface;->up:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Iface;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Iface;->up:Z

    invoke-static {v1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Iface;->loopback:Z

    invoke-static {v1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Iface;->ipv4:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Iface;->name:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Iface;->up:Z

    iget-boolean v2, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Iface;->loopback:Z

    iget-object v3, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Iface;->ipv4:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Iface(name="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", up="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", loopback="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", ipv4="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
