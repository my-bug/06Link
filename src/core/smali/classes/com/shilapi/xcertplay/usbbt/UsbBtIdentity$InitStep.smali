.class public final Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity$InitStep;
.super Ljava/lang/Object;
.source "UsbBtIdentity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InitStep"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\t\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u001d\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity$InitStep;",
        "",
        "name",
        "",
        "opcode",
        "",
        "required",
        "",
        "build",
        "Lkotlin/Function1;",
        "Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;",
        "",
        "<init>",
        "(Ljava/lang/String;IZLkotlin/jvm/functions/Function1;)V",
        "getName",
        "()Ljava/lang/String;",
        "getOpcode",
        "()I",
        "getRequired",
        "()Z",
        "getBuild",
        "()Lkotlin/jvm/functions/Function1;",
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
.field private final build:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;",
            "[B>;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final opcode:I

.field private final required:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IZLkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;",
            "[B>;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "build"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity$InitStep;->name:Ljava/lang/String;

    iput p2, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity$InitStep;->opcode:I

    iput-boolean p3, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity$InitStep;->required:Z

    iput-object p4, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity$InitStep;->build:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final getBuild()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;",
            "[B>;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity$InitStep;->build:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity$InitStep;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getOpcode()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity$InitStep;->opcode:I

    return v0
.end method

.method public final getRequired()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity$InitStep;->required:Z

    return v0
.end method
