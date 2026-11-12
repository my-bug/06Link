.class final Lcom/shilapi/xcertplay/CarPlayHostActivity$LogEntry;
.super Ljava/lang/Object;
.source "CarPlayHostActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/CarPlayHostActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LogEntry"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0082\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\r\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001J\t\u0010\u0014\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/CarPlayHostActivity$LogEntry;",
        "",
        "timestampMillis",
        "",
        "text",
        "",
        "<init>",
        "(JLjava/lang/String;)V",
        "getTimestampMillis",
        "()J",
        "getText",
        "()Ljava/lang/String;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
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
.field private final text:Ljava/lang/String;

.field private final timestampMillis:J


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "text"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5780
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$LogEntry;->timestampMillis:J

    iput-object p3, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$LogEntry;->text:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/CarPlayHostActivity$LogEntry;JLjava/lang/String;ILjava/lang/Object;)Lcom/shilapi/xcertplay/CarPlayHostActivity$LogEntry;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-wide p1, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$LogEntry;->timestampMillis:J

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    iget-object p3, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$LogEntry;->text:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/CarPlayHostActivity$LogEntry;->copy(JLjava/lang/String;)Lcom/shilapi/xcertplay/CarPlayHostActivity$LogEntry;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$LogEntry;->timestampMillis:J

    return-wide v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$LogEntry;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(JLjava/lang/String;)Lcom/shilapi/xcertplay/CarPlayHostActivity$LogEntry;
    .locals 1

    const-string/jumbo v0, "text"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/shilapi/xcertplay/CarPlayHostActivity$LogEntry;

    invoke-direct {v0, p1, p2, p3}, Lcom/shilapi/xcertplay/CarPlayHostActivity$LogEntry;-><init>(JLjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/CarPlayHostActivity$LogEntry;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/CarPlayHostActivity$LogEntry;

    iget-wide v3, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$LogEntry;->timestampMillis:J

    iget-wide v5, p1, Lcom/shilapi/xcertplay/CarPlayHostActivity$LogEntry;->timestampMillis:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$LogEntry;->text:Ljava/lang/String;

    iget-object p1, p1, Lcom/shilapi/xcertplay/CarPlayHostActivity$LogEntry;->text:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .line 5780
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$LogEntry;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final getTimestampMillis()J
    .locals 2

    .line 5780
    iget-wide v0, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$LogEntry;->timestampMillis:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$LogEntry;->timestampMillis:J

    invoke-static {v0, v1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$LogEntry;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-wide v0, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$LogEntry;->timestampMillis:J

    iget-object v2, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$LogEntry;->text:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "LogEntry(timestampMillis="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", text="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
