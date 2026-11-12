.class public final Lcom/shilapi/xcertplay/adb/AdbPacket;
.super Ljava/lang/Object;
.source "AdbPacket.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/adb/AdbPacket$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAdbPacket.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdbPacket.kt\ncom/shilapi/xcertplay/adb/AdbPacket\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,61:1\n1#2:62\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\u000b\u0008\u0000\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0006\u0010\u0010\u001a\u00020\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/adb/AdbPacket;",
        "",
        "command",
        "",
        "arg0",
        "arg1",
        "payload",
        "",
        "<init>",
        "(III[B)V",
        "getCommand",
        "()I",
        "getArg0",
        "getArg1",
        "getPayload",
        "()[B",
        "encode",
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
.field public static final AUTH:I = 0x48545541

.field public static final AUTH_PUBLIC_KEY:I = 0x3

.field public static final AUTH_SIGNATURE:I = 0x2

.field public static final AUTH_TOKEN:I = 0x1

.field public static final CLSE:I = 0x45534c43

.field public static final CNXN:I = 0x4e584e43

.field public static final Companion:Lcom/shilapi/xcertplay/adb/AdbPacket$Companion;

.field private static final HEADER_BYTES:I = 0x18

.field public static final MAX_PAYLOAD:I = 0x40000

.field public static final OKAY:I = 0x59414b4f

.field public static final OPEN:I = 0x4e45504f

.field public static final STLS:I = 0x534c5453

.field public static final VERSION:I = 0x1000000

.field public static final WRTE:I = 0x45545257


# instance fields
.field private final arg0:I

.field private final arg1:I

.field private final command:I

.field private final payload:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/adb/AdbPacket$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/adb/AdbPacket$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/adb/AdbPacket;->Companion:Lcom/shilapi/xcertplay/adb/AdbPacket$Companion;

    return-void
.end method

.method public constructor <init>(III[B)V
    .locals 1

    const-string v0, "payload"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/shilapi/xcertplay/adb/AdbPacket;->command:I

    iput p2, p0, Lcom/shilapi/xcertplay/adb/AdbPacket;->arg0:I

    iput p3, p0, Lcom/shilapi/xcertplay/adb/AdbPacket;->arg1:I

    iput-object p4, p0, Lcom/shilapi/xcertplay/adb/AdbPacket;->payload:[B

    return-void
.end method


# virtual methods
.method public final encode()[B
    .locals 6

    .line 11
    iget-object v0, p0, Lcom/shilapi/xcertplay/adb/AdbPacket;->payload:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x18

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 12
    iget v1, p0, Lcom/shilapi/xcertplay/adb/AdbPacket;->command:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 13
    iget v1, p0, Lcom/shilapi/xcertplay/adb/AdbPacket;->arg0:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 14
    iget v1, p0, Lcom/shilapi/xcertplay/adb/AdbPacket;->arg1:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 15
    iget-object v1, p0, Lcom/shilapi/xcertplay/adb/AdbPacket;->payload:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 16
    iget-object v1, p0, Lcom/shilapi/xcertplay/adb/AdbPacket;->payload:[B

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-byte v5, v1, v3

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 17
    iget v1, p0, Lcom/shilapi/xcertplay/adb/AdbPacket;->command:I

    xor-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 18
    iget-object v1, p0, Lcom/shilapi/xcertplay/adb/AdbPacket;->payload:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 19
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const-string v1, "array(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getArg0()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/shilapi/xcertplay/adb/AdbPacket;->arg0:I

    return v0
.end method

.method public final getArg1()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/shilapi/xcertplay/adb/AdbPacket;->arg1:I

    return v0
.end method

.method public final getCommand()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/shilapi/xcertplay/adb/AdbPacket;->command:I

    return v0
.end method

.method public final getPayload()[B
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/shilapi/xcertplay/adb/AdbPacket;->payload:[B

    return-object v0
.end method
