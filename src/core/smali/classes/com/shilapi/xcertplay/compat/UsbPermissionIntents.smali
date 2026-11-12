.class public final Lcom/shilapi/xcertplay/compat/UsbPermissionIntents;
.super Ljava/lang/Object;
.source "UsbPermissionIntents.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/compat/UsbPermissionIntents;",
        "",
        "<init>",
        "()V",
        "flags",
        "",
        "sdk",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/compat/UsbPermissionIntents;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/compat/UsbPermissionIntents;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/compat/UsbPermissionIntents;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/compat/UsbPermissionIntents;->INSTANCE:Lcom/shilapi/xcertplay/compat/UsbPermissionIntents;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic flags$default(Lcom/shilapi/xcertplay/compat/UsbPermissionIntents;IILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 14
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/compat/UsbPermissionIntents;->flags(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final flags(I)I
    .locals 1

    const/16 v0, 0x1f

    if-lt p1, v0, :cond_0

    const/high16 p1, 0x2000000

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/high16 v0, 0x8000000

    or-int/2addr p1, v0

    return p1
.end method
