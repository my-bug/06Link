.class public final Lcom/shilapi/xcertplay/transport/IphoneUsbMatcher;
.super Ljava/lang/Object;
.source "IphoneUsbHost.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/transport/IphoneUsbMatcher$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIphoneUsbHost.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IphoneUsbHost.kt\ncom/shilapi/xcertplay/transport/IphoneUsbMatcher\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,531:1\n1740#2,3:532\n*S KotlinDebug\n*F\n+ 1 IphoneUsbHost.kt\ncom/shilapi/xcertplay/transport/IphoneUsbMatcher\n*L\n39#1:532,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u001e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB!\u0008\u0002\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008B\u0017\u0008\u0016\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\t\u00a2\u0006\u0004\u0008\u0007\u0010\nJ\u0016\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rR\u0016\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/IphoneUsbMatcher;",
        "",
        "allowedDevices",
        "",
        "Lcom/shilapi/xcertplay/transport/UsbDeviceId;",
        "allowAnyAppleProduct",
        "",
        "<init>",
        "(Ljava/util/Set;Z)V",
        "",
        "(Ljava/util/Collection;)V",
        "matches",
        "vendorId",
        "",
        "productId",
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
.field public static final APPLE_VENDOR_ID:I = 0x5ac

.field public static final Companion:Lcom/shilapi/xcertplay/transport/IphoneUsbMatcher$Companion;


# instance fields
.field private final allowAnyAppleProduct:Z

.field private final allowedDevices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/shilapi/xcertplay/transport/UsbDeviceId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/transport/IphoneUsbMatcher$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/transport/IphoneUsbMatcher$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/transport/IphoneUsbMatcher;->Companion:Lcom/shilapi/xcertplay/transport/IphoneUsbMatcher$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/shilapi/xcertplay/transport/UsbDeviceId;",
            ">;)V"
        }
    .end annotation

    const-string v0, "allowedDevices"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, v0}, Lcom/shilapi/xcertplay/transport/IphoneUsbMatcher;-><init>(Ljava/util/Set;Z)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Set;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/shilapi/xcertplay/transport/UsbDeviceId;",
            ">;Z)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/IphoneUsbMatcher;->allowedDevices:Ljava/util/Set;

    .line 28
    iput-boolean p2, p0, Lcom/shilapi/xcertplay/transport/IphoneUsbMatcher;->allowAnyAppleProduct:Z

    if-eqz p1, :cond_1

    .line 36
    move-object p2, p1

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "At least one iPhone USB identity is required when not using Apple-vendor discovery"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p1, :cond_4

    .line 39
    check-cast p1, Ljava/lang/Iterable;

    .line 532
    instance-of p2, p1, Ljava/util/Collection;

    if-eqz p2, :cond_2

    move-object p2, p1

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_2

    .line 533
    :cond_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shilapi/xcertplay/transport/UsbDeviceId;

    .line 39
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/transport/UsbDeviceId;->getVendorId()I

    move-result p2

    const/16 v0, 0x5ac

    if-ne p2, v0, :cond_3

    goto :goto_1

    :cond_3
    const/16 p1, 0x10

    .line 40
    invoke-static {p1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "toString(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "iPhone USB identities must use Apple vendor ID 0x"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 39
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    :goto_2
    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Set;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/transport/IphoneUsbMatcher;-><init>(Ljava/util/Set;Z)V

    return-void
.end method


# virtual methods
.method public final matches(II)Z
    .locals 2

    .line 45
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/transport/IphoneUsbMatcher;->allowAnyAppleProduct:Z

    if-eqz v0, :cond_1

    const/16 p2, 0x5ac

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/IphoneUsbMatcher;->allowedDevices:Ljava/util/Set;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    :cond_2
    new-instance v1, Lcom/shilapi/xcertplay/transport/UsbDeviceId;

    invoke-direct {v1, p1, p2}, Lcom/shilapi/xcertplay/transport/UsbDeviceId;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
