.class public final Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;
.super Ljava/lang/Object;
.source "Rfcomm.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/usbbt/RfcommFrames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Pn"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\r\n\u0002\u0010\u0012\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0006\u0010\u0010\u001a\u00020\u0011J\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J;\u0010\u0017\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001b\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001c\u001a\u00020\u001dH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000bR\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000b\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;",
        "",
        "dlci",
        "",
        "convergence",
        "priority",
        "frameSize",
        "credits",
        "<init>",
        "(IIIII)V",
        "getDlci",
        "()I",
        "getConvergence",
        "getPriority",
        "getFrameSize",
        "getCredits",
        "encode",
        "",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
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
.field public static final Companion:Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn$Companion;


# instance fields
.field private final convergence:I

.field private final credits:I

.field private final dlci:I

.field private final frameSize:I

.field private final priority:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->Companion:Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn$Companion;

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->dlci:I

    iput p2, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->convergence:I

    iput p3, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->priority:I

    iput p4, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->frameSize:I

    iput p5, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->credits:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;IIIIIILjava/lang/Object;)Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget p1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->dlci:I

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget p2, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->convergence:I

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    iget p3, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->priority:I

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    iget p4, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->frameSize:I

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    iget p5, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->credits:I

    :cond_4
    move p6, p4

    move p7, p5

    move p4, p2

    move p5, p3

    move-object p2, p0

    move p3, p1

    invoke-virtual/range {p2 .. p7}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->copy(IIIII)Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->dlci:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->convergence:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->priority:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->frameSize:I

    return v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->credits:I

    return v0
.end method

.method public final copy(IIIII)Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;
    .locals 6

    new-instance v0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;-><init>(IIIII)V

    return-object v0
.end method

.method public final encode()[B
    .locals 10

    .line 168
    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->dlci:I

    and-int/lit8 v0, v0, 0x3f

    int-to-byte v0, v0

    .line 169
    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->convergence:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x4

    shl-int/2addr v1, v2

    int-to-byte v1, v1

    .line 170
    iget v3, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->priority:I

    and-int/lit8 v3, v3, 0x3f

    int-to-byte v3, v3

    .line 172
    iget v4, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->frameSize:I

    and-int/lit16 v5, v4, 0xff

    int-to-byte v5, v5

    const/16 v6, 0x8

    ushr-int/2addr v4, v6

    int-to-byte v4, v4

    .line 174
    iget v7, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->credits:I

    const/4 v8, 0x7

    and-int/2addr v7, v8

    int-to-byte v7, v7

    new-array v6, v6, [B

    const/4 v9, 0x0

    aput-byte v0, v6, v9

    const/4 v0, 0x1

    aput-byte v1, v6, v0

    const/4 v0, 0x2

    aput-byte v3, v6, v0

    const/4 v0, 0x3

    aput-byte v9, v6, v0

    aput-byte v5, v6, v2

    const/4 v0, 0x5

    aput-byte v4, v6, v0

    const/4 v0, 0x6

    aput-byte v9, v6, v0

    aput-byte v7, v6, v8

    return-object v6
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;

    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->dlci:I

    iget v3, p1, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->dlci:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->convergence:I

    iget v3, p1, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->convergence:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->priority:I

    iget v3, p1, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->priority:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->frameSize:I

    iget v3, p1, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->frameSize:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->credits:I

    iget p1, p1, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->credits:I

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getConvergence()I
    .locals 1

    .line 166
    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->convergence:I

    return v0
.end method

.method public final getCredits()I
    .locals 1

    .line 166
    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->credits:I

    return v0
.end method

.method public final getDlci()I
    .locals 1

    .line 166
    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->dlci:I

    return v0
.end method

.method public final getFrameSize()I
    .locals 1

    .line 166
    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->frameSize:I

    return v0
.end method

.method public final getPriority()I
    .locals 1

    .line 166
    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->priority:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->dlci:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->convergence:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->priority:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->frameSize:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->credits:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->dlci:I

    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->convergence:I

    iget v2, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->priority:I

    iget v3, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->frameSize:I

    iget v4, p0, Lcom/shilapi/xcertplay/usbbt/RfcommFrames$Pn;->credits:I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Pn(dlci="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", convergence="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", priority="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", frameSize="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", credits="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
