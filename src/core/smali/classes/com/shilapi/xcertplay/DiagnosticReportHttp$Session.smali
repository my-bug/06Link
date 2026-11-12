.class public final Lcom/shilapi/xcertplay/DiagnosticReportHttp$Session;
.super Ljava/lang/Object;
.source "DiagnosticReportHttp.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/DiagnosticReportHttp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Session"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0015\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0008H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0003H\u00c6\u0003JE\u0010\u001c\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00032\u0008\u0008\u0002\u0010\n\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u001d\u001a\u00020\u001e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010 \u001a\u00020\u0006H\u00d6\u0001J\t\u0010!\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000eR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u000eR\u0011\u0010\n\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u000e\u00a8\u0006\""
    }
    d2 = {
        "Lcom/shilapi/xcertplay/DiagnosticReportHttp$Session;",
        "",
        "url",
        "",
        "token",
        "port",
        "",
        "expiresAtElapsed",
        "",
        "interfaceName",
        "host",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)V",
        "getUrl",
        "()Ljava/lang/String;",
        "getToken",
        "getPort",
        "()I",
        "getExpiresAtElapsed",
        "()J",
        "getInterfaceName",
        "getHost",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
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
.field private final expiresAtElapsed:J

.field private final host:Ljava/lang/String;

.field private final interfaceName:Ljava/lang/String;

.field private final port:I

.field private final token:Ljava/lang/String;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "token"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interfaceName"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "host"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Session;->url:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Session;->token:Ljava/lang/String;

    .line 43
    iput p3, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Session;->port:I

    .line 44
    iput-wide p4, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Session;->expiresAtElapsed:J

    .line 45
    iput-object p6, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Session;->interfaceName:Ljava/lang/String;

    .line 46
    iput-object p7, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Session;->host:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/DiagnosticReportHttp$Session;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/shilapi/xcertplay/DiagnosticReportHttp$Session;
    .locals 0

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget-object p1, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Session;->url:Ljava/lang/String;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-object p2, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Session;->token:Ljava/lang/String;

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    iget p3, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Session;->port:I

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    iget-wide p4, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Session;->expiresAtElapsed:J

    :cond_3
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_4

    iget-object p6, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Session;->interfaceName:Ljava/lang/String;

    :cond_4
    and-int/lit8 p8, p8, 0x20

    if-eqz p8, :cond_5

    iget-object p7, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Session;->host:Ljava/lang/String;

    :cond_5
    move-object p8, p6

    move-object p9, p7

    move-wide p6, p4

    move-object p4, p2

    move p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p9}, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Session;->copy(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)Lcom/shilapi/xcertplay/DiagnosticReportHttp$Session;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Session;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Session;->token:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Session;->port:I

    return v0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Session;->expiresAtElapsed:J

    return-wide v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Session;->interfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Session;->host:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)Lcom/shilapi/xcertplay/DiagnosticReportHttp$Session;
    .locals 9

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "token"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interfaceName"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "host"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Session;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    move-object v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Session;-><init>(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Session;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Session;

    iget-object v1, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Session;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Session;->url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Session;->token:Ljava/lang/String;

    iget-object v3, p1, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Session;->token:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Session;->port:I

    iget v3, p1, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Session;->port:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Session;->expiresAtElapsed:J

    iget-wide v5, p1, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Session;->expiresAtElapsed:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Session;->interfaceName:Ljava/lang/String;

    iget-object v3, p1, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Session;->interfaceName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Session;->host:Ljava/lang/String;

    iget-object p1, p1, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Session;->host:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getExpiresAtElapsed()J
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Session;->expiresAtElapsed:J

    return-wide v0
.end method

.method public final getHost()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Session;->host:Ljava/lang/String;

    return-object v0
.end method

.method public final getInterfaceName()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Session;->interfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public final getPort()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Session;->port:I

    return v0
.end method

.method public final getToken()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Session;->token:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Session;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Session;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Session;->token:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Session;->port:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Session;->expiresAtElapsed:J

    invoke-static {v1, v2}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Session;->interfaceName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Session;->host:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Session;->url:Ljava/lang/String;

    iget-object v1, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Session;->token:Ljava/lang/String;

    iget v2, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Session;->port:I

    iget-wide v3, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Session;->expiresAtElapsed:J

    iget-object v5, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Session;->interfaceName:Ljava/lang/String;

    iget-object v6, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Session;->host:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Session(url="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", token="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", port="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", expiresAtElapsed="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", interfaceName="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", host="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
