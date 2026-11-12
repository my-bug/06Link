.class public final Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;
.super Ljava/lang/Object;
.source "AudioPacketCapture.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/airplay/AudioPacketCapture$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0002\u0008\u0004\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ1\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00172\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001b\u00a2\u0006\u0002\u0010\u001cJ\u0008\u0010\u001d\u001a\u00020\u0015H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0011\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;",
        "Ljava/io/Closeable;",
        "directory",
        "Ljava/io/File;",
        "streamType",
        "",
        "maxPackets",
        "maxBytes",
        "",
        "<init>",
        "(Ljava/io/File;IIJ)V",
        "closed",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "packets",
        "bytesWritten",
        "output",
        "Ljava/io/DataOutputStream;",
        "file",
        "getFile",
        "()Ljava/io/File;",
        "record",
        "",
        "wire",
        "",
        "rtp",
        "sample",
        "error",
        "",
        "([B[BLjava/lang/Integer;Ljava/lang/Throwable;)V",
        "close",
        "Companion",
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
.field private static final Companion:Lcom/shilapi/xcertplay/airplay/AudioPacketCapture$Companion;

.field public static final FLUSH_INTERVAL_PACKETS:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HEADER_BYTES:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final MAGIC:[B

.field public static final TAG:Ljava/lang/String; = "xcertplay-usb"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VERSION:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private bytesWritten:J

.field private final closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final file:Ljava/io/File;

.field private final maxBytes:J

.field private final maxPackets:I

.field private final output:Ljava/io/DataOutputStream;

.field private packets:I

.field private final streamType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;->Companion:Lcom/shilapi/xcertplay/airplay/AudioPacketCapture$Companion;

    .line 134
    const-string v0, "XCAUDIO1"

    sget-object v1, Lkotlin/text/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "getBytes(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;->MAGIC:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/File;IIJ)V
    .locals 8

    const-string/jumbo v0, "xcertplay-usb"

    const-string v1, "audio capture started type="

    const-string v2, "directory"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p2, p0, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;->streamType:I

    .line 33
    iput p3, p0, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;->maxPackets:I

    .line 34
    iput-wide p4, p0, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;->maxBytes:J

    .line 36
    new-instance p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p4, 0x0

    invoke-direct {p3, p4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p3, p0, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    sget-object p3, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;->MAGIC:[B

    array-length p5, p3

    add-int/lit8 p5, p5, 0x10

    int-to-long v2, p5

    iput-wide v2, p0, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;->bytesWritten:J

    .line 44
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p5

    const/4 v2, 0x0

    if-nez p5, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p5

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    move-object p5, v2

    goto :goto_1

    :cond_1
    :goto_0
    move-object p5, p1

    .line 49
    :goto_1
    const-string v3, ".xcap"

    if-nez p5, :cond_2

    .line 50
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "audio-capture-unavailable-type-"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_2

    .line 52
    :cond_2
    new-instance v4, Ljava/io/File;

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v7, "audio-"

    invoke-direct {p1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "-type-"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 52
    invoke-direct {v4, p5, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 49
    :goto_2
    iput-object v4, p0, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;->file:Ljava/io/File;

    if-nez p5, :cond_3

    goto :goto_3

    .line 61
    :cond_3
    :try_start_0
    new-instance p1, Ljava/io/DataOutputStream;

    new-instance p5, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4, p4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    check-cast v3, Ljava/io/OutputStream;

    invoke-direct {p5, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    check-cast p5, Ljava/io/OutputStream;

    invoke-direct {p1, p5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 62
    invoke-virtual {p1, p3}, Ljava/io/DataOutputStream;->write([B)V

    const/4 p3, 0x1

    .line 63
    invoke-virtual {p1, p3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 64
    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 66
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 67
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " file="

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 70
    iget p2, p0, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;->streamType:I

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "audio capture could not open type="

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    :goto_3
    iput-object v2, p0, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;->output:Ljava/io/DataOutputStream;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/File;IIJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    const/16 p3, 0x200

    const/16 v3, 0x200

    goto :goto_0

    :cond_0
    move v3, p3

    :goto_0
    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    const-wide/32 p4, 0x1000000

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v4, p4

    .line 30
    invoke-direct/range {v0 .. v5}, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;-><init>(Ljava/io/File;IIJ)V

    return-void
.end method

.method public static final synthetic access$getMAGIC$cp()[B
    .locals 1

    .line 30
    sget-object v0, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;->MAGIC:[B

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 12

    .line 112
    const-string v0, " file="

    const-string v1, " bytes="

    const-string v2, " packets="

    const-string v3, "audio capture stopped type="

    const-string/jumbo v4, "xcertplay-usb"

    .line 0
    const-string v5, "audio capture close failed type="

    .line 112
    iget-object v6, p0, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v6

    if-nez v6, :cond_0

    goto/16 :goto_0

    .line 114
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;->output:Ljava/io/DataOutputStream;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    .line 115
    :cond_1
    iget-object v6, p0, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;->output:Ljava/io/DataOutputStream;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    :cond_2
    iget-object v5, p0, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;->output:Ljava/io/DataOutputStream;

    if-eqz v5, :cond_3

    .line 122
    iget v5, p0, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;->streamType:I

    iget v6, p0, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;->packets:I

    .line 123
    iget-wide v7, p0, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;->bytesWritten:J

    iget-object v9, p0, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;->file:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v5

    goto :goto_1

    :catch_0
    move-exception v6

    .line 117
    :try_start_1
    iget v7, p0, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;->streamType:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    check-cast v6, Ljava/lang/Throwable;

    invoke-static {v4, v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    iget-object v5, p0, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;->output:Ljava/io/DataOutputStream;

    if-eqz v5, :cond_3

    .line 122
    iget v5, p0, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;->streamType:I

    iget v6, p0, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;->packets:I

    .line 123
    iget-wide v7, p0, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;->bytesWritten:J

    iget-object v9, p0, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;->file:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void

    .line 119
    :goto_1
    iget-object v6, p0, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;->output:Ljava/io/DataOutputStream;

    if-eqz v6, :cond_4

    .line 122
    iget v6, p0, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;->streamType:I

    iget v7, p0, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;->packets:I

    .line 123
    iget-wide v8, p0, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;->bytesWritten:J

    iget-object v10, p0, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;->file:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    throw v5
.end method

.method public final getFile()Ljava/io/File;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;->file:Ljava/io/File;

    return-object v0
.end method

.method public final record([B[BLjava/lang/Integer;Ljava/lang/Throwable;)V
    .locals 8

    const-string v0, "audio capture write failed type="

    const-string/jumbo v1, "wire"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;->output:Ljava/io/DataOutputStream;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 83
    :cond_0
    monitor-enter p0

    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_b

    iget v1, p0, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;->packets:I

    iget v2, p0, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;->maxPackets:I

    if-lt v1, v2, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 v1, 0x0

    if-eqz p4, :cond_2

    .line 85
    invoke-virtual {p4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_2

    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p4, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p4

    const-string v2, "getBytes(...)"

    invoke-static {p4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p4, :cond_3

    :cond_2
    new-array p4, v1, [B

    .line 86
    :cond_3
    array-length v2, p1

    int-to-long v2, v2

    const-wide/16 v4, 0x18

    add-long/2addr v2, v4

    if-eqz p2, :cond_4

    array-length v1, p2

    :cond_4
    int-to-long v4, v1

    add-long/2addr v2, v4

    array-length v1, p4

    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 87
    iget-wide v4, p0, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;->bytesWritten:J

    add-long/2addr v4, v2

    iget-wide v6, p0, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;->maxBytes:J

    cmp-long v1, v4, v6

    if-lez v1, :cond_5

    .line 88
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    .line 92
    :cond_5
    :try_start_1
    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;->output:Ljava/io/DataOutputStream;

    array-length v4, p1

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 93
    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;->output:Ljava/io/DataOutputStream;

    const/4 v4, -0x1

    if-eqz p2, :cond_6

    array-length v5, p2

    goto :goto_0

    :cond_6
    const/4 v5, -0x1

    :goto_0
    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 94
    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;->output:Ljava/io/DataOutputStream;

    if-eqz p3, :cond_7

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :cond_7
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 95
    iget-object p3, p0, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;->output:Ljava/io/DataOutputStream;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {p3, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 96
    iget-object p3, p0, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;->output:Ljava/io/DataOutputStream;

    array-length v1, p4

    invoke-virtual {p3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 97
    iget-object p3, p0, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;->output:Ljava/io/DataOutputStream;

    invoke-virtual {p3, p1}, Ljava/io/DataOutputStream;->write([B)V

    if-eqz p2, :cond_8

    .line 98
    iget-object p1, p0, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;->output:Ljava/io/DataOutputStream;

    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->write([B)V

    .line 99
    :cond_8
    iget-object p1, p0, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;->output:Ljava/io/DataOutputStream;

    invoke-virtual {p1, p4}, Ljava/io/DataOutputStream;->write([B)V

    .line 100
    iget p1, p0, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;->packets:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;->packets:I

    .line 101
    iget-wide p2, p0, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;->bytesWritten:J

    add-long/2addr p2, v2

    iput-wide p2, p0, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;->bytesWritten:J

    .line 102
    rem-int/lit8 p1, p1, 0x10

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;->output:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 103
    :cond_9
    iget p1, p0, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;->packets:I

    iget p2, p0, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;->maxPackets:I

    if-lt p1, p2, :cond_a

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 105
    :try_start_2
    const-string/jumbo p2, "xcertplay-usb"

    iget p3, p0, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;->streamType:I

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/airplay/AudioPacketCapture;->close()V

    .line 108
    :cond_a
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    .line 84
    :cond_b
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 83
    monitor-exit p0

    throw p1

    :cond_c
    :goto_3
    return-void
.end method
