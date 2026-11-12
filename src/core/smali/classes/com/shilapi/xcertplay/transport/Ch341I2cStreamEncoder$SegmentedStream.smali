.class final Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder$SegmentedStream;
.super Ljava/lang/Object;
.source "Ch341I2cStreamEncoder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SegmentedStream"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCh341I2cStreamEncoder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Ch341I2cStreamEncoder.kt\ncom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder$SegmentedStream\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,183:1\n13479#2,2:184\n*S KotlinDebug\n*F\n+ 1 Ch341I2cStreamEncoder.kt\ncom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder$SegmentedStream\n*L\n134#1:184,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\rJ\u0016\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\rJ\u000e\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u0011J\u0006\u0010\u0012\u001a\u00020\rJ\u0010\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\rH\u0002J\u0008\u0010\u0015\u001a\u00020\nH\u0002R\u001e\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\u0008\u0012\u0004\u0012\u00020\u0006`\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0008\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\u0008\u0012\u0004\u0012\u00020\u0006`\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder$SegmentedStream;",
        "",
        "<init>",
        "()V",
        "result",
        "Ljava/util/ArrayList;",
        "",
        "Lkotlin/collections/ArrayList;",
        "segment",
        "startAndWrite",
        "",
        "address",
        "data",
        "",
        "write",
        "read",
        "length",
        "",
        "finish",
        "command",
        "bytes",
        "finishIntermediate",
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
.field private final result:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private segment:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder$SegmentedStream;->result:Ljava/util/ArrayList;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder$SegmentedStream;->segment:Ljava/util/ArrayList;

    .line 109
    check-cast v0, Ljava/util/Collection;

    const/16 v1, -0x56

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final command([B)V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder$SegmentedStream;->segment:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    array-length v1, p1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x20

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder$SegmentedStream;->finishIntermediate()V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder$SegmentedStream;->segment:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->toList([B)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    return-void
.end method

.method private final finishIntermediate()V
    .locals 4

    .line 164
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder$SegmentedStream;->segment:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 165
    :goto_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder$SegmentedStream;->segment:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v3, 0x20

    if-ge v0, v3, :cond_0

    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder$SegmentedStream;->segment:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder$SegmentedStream;->result:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    iget-object v2, p0, Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder$SegmentedStream;->segment:Ljava/util/ArrayList;

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    const/16 v0, -0x56

    .line 167
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Byte;

    aput-object v0, v2, v1

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder$SegmentedStream;->segment:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final finish()[B
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder$SegmentedStream;->segment:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    const/16 v1, 0x20

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder$SegmentedStream;->finishIntermediate()V

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder$SegmentedStream;->segment:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    const/16 v1, 0x75

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder$SegmentedStream;->segment:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder$SegmentedStream;->result:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder$SegmentedStream;->segment:Ljava/util/ArrayList;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 155
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder$SegmentedStream;->result:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toByteArray(Ljava/util/Collection;)[B

    move-result-object v0

    return-object v0
.end method

.method public final read(I)V
    .locals 3

    :goto_0
    const/16 v0, 0x20

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le p1, v0, :cond_0

    .line 142
    new-array v0, v2, [B

    const/16 v2, -0x20

    aput-byte v2, v0, v1

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder$SegmentedStream;->command([B)V

    .line 143
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder$SegmentedStream;->finishIntermediate()V

    add-int/lit8 p1, p1, -0x20

    goto :goto_0

    :cond_0
    if-le p1, v2, :cond_1

    add-int/lit16 p1, p1, 0xbf

    int-to-byte p1, p1

    .line 146
    new-array v0, v2, [B

    aput-byte p1, v0, v1

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder$SegmentedStream;->command([B)V

    .line 147
    :cond_1
    new-array p1, v2, [B

    const/16 v0, -0x40

    aput-byte v0, p1, v1

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder$SegmentedStream;->command([B)V

    return-void
.end method

.method public final startAndWrite(B[B)V
    .locals 2

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder$SegmentedStream;->segment:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    const/16 v1, 0x20

    if-le v0, v1, :cond_0

    .line 114
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder$SegmentedStream;->finishIntermediate()V

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder$SegmentedStream;->segment:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    const/16 v1, 0x74

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder$SegmentedStream;->write(B[B)V

    return-void
.end method

.method public final write(B[B)V
    .locals 7

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    array-length v0, p2

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 128
    new-array p2, v1, [B

    const/16 v0, -0x7f

    aput-byte v0, p2, v3

    aput-byte p1, p2, v2

    invoke-direct {p0, p2}, Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder$SegmentedStream;->command([B)V

    return-void

    .line 133
    :cond_0
    new-array v0, v1, [B

    const/16 v4, -0x80

    aput-byte v4, v0, v3

    aput-byte p1, v0, v2

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder$SegmentedStream;->command([B)V

    .line 184
    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    aget-byte v5, p2, v0

    .line 135
    new-array v6, v1, [B

    aput-byte v4, v6, v3

    aput-byte v5, v6, v2

    invoke-direct {p0, v6}, Lcom/shilapi/xcertplay/transport/Ch341I2cStreamEncoder$SegmentedStream;->command([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
