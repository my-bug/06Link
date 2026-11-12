.class public final Lcom/shilapi/xcertplay/usbbt/UsbBtPagingSchedule;
.super Ljava/lang/Object;
.source "UsbBtReconnect.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0005R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/usbbt/UsbBtPagingSchedule;",
        "",
        "<init>",
        "()V",
        "FAST_MILLIS",
        "",
        "FAST_PAGES",
        "",
        "MEDIUM_MILLIS",
        "MEDIUM_UNTIL_MILLIS",
        "SLOW_MILLIS",
        "intervalMillis",
        "pagesMade",
        "elapsedMillis",
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
.field public static final FAST_MILLIS:J = 0x2710L

.field public static final FAST_PAGES:I = 0x3

.field public static final INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtPagingSchedule;

.field public static final MEDIUM_MILLIS:J = 0x7530L

.field public static final MEDIUM_UNTIL_MILLIS:J = 0x493e0L

.field public static final SLOW_MILLIS:J = 0xea60L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/usbbt/UsbBtPagingSchedule;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtPagingSchedule;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/usbbt/UsbBtPagingSchedule;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtPagingSchedule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final intervalMillis(IJ)J
    .locals 2

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    const-wide/16 p1, 0x2710

    return-wide p1

    :cond_0
    const-wide/32 v0, 0x493e0

    cmp-long p1, p2, v0

    if-gez p1, :cond_1

    const-wide/16 p1, 0x7530

    return-wide p1

    :cond_1
    const-wide/32 p1, 0xea60

    return-wide p1
.end method
