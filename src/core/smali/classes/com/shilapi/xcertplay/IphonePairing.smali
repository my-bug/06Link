.class public final Lcom/shilapi/xcertplay/IphonePairing;
.super Ljava/lang/Object;
.source "IphonePairing.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/IphonePairing$Companion;,
        Lcom/shilapi/xcertplay/IphonePairing$Kind;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIphonePairing.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IphonePairing.kt\ncom/shilapi/xcertplay/IphonePairing\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,279:1\n1#2:280\n774#3:281\n865#3,2:282\n774#3:284\n865#3:285\n2746#3,3:286\n866#3:289\n1056#3:290\n1869#3,2:291\n*S KotlinDebug\n*F\n+ 1 IphonePairing.kt\ncom/shilapi/xcertplay/IphonePairing\n*L\n134#1:281\n134#1:282,2\n136#1:284\n136#1:285\n136#1:286,3\n136#1:289\n137#1:290\n141#1:291,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0008\u000e*\u0001#\u0018\u0000 /2\u00020\u0001:\u0002./B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0012\u0010%\u001a\u00020\t2\n\u0008\u0002\u0010&\u001a\u0004\u0018\u00010\u0008J\u0008\u0010\'\u001a\u00020\tH\u0002J\u0008\u0010(\u001a\u00020\tH\u0002J\u0008\u0010)\u001a\u00020\tH\u0002J\u0010\u0010*\u001a\u00020\t2\u0006\u0010+\u001a\u00020\u0008H\u0002J\u0010\u0010,\u001a\u00020\t2\u0006\u0010+\u001a\u00020\u0008H\u0002J\u0006\u0010-\u001a\u00020\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R*\u0010\u000e\u001a\u001e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00080\u000fj\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0008`\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u001f\u001a\u00020\u001d8F\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010!R\u0010\u0010\"\u001a\u00020#X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010$\u00a8\u00060"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/IphonePairing;",
        "",
        "activity",
        "Landroid/app/Activity;",
        "adapter",
        "Landroid/bluetooth/BluetoothAdapter;",
        "onPaired",
        "Lkotlin/Function1;",
        "Landroid/bluetooth/BluetoothDevice;",
        "",
        "<init>",
        "(Landroid/app/Activity;Landroid/bluetooth/BluetoothAdapter;Lkotlin/jvm/functions/Function1;)V",
        "handler",
        "Landroid/os/Handler;",
        "found",
        "Ljava/util/LinkedHashMap;",
        "",
        "Lkotlin/collections/LinkedHashMap;",
        "listDialog",
        "Landroid/app/AlertDialog;",
        "progressDialog",
        "hint",
        "Landroid/widget/TextView;",
        "items",
        "Landroid/widget/ArrayAdapter;",
        "shown",
        "",
        "pairingAddress",
        "receiverRegistered",
        "",
        "finished",
        "active",
        "getActive",
        "()Z",
        "receiver",
        "com/shilapi/xcertplay/IphonePairing$receiver$1",
        "Lcom/shilapi/xcertplay/IphonePairing$receiver$1;",
        "start",
        "remembered",
        "showList",
        "discover",
        "refreshList",
        "choose",
        "device",
        "complete",
        "stop",
        "Kind",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/shilapi/xcertplay/IphonePairing$Companion;

.field private static final IAP2_UUID:Ljava/util/UUID;

.field private static final IAP2_UUID_REVERSED:Ljava/util/UUID;


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final adapter:Landroid/bluetooth/BluetoothAdapter;

.field private finished:Z

.field private final found:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final handler:Landroid/os/Handler;

.field private hint:Landroid/widget/TextView;

.field private items:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private listDialog:Landroid/app/AlertDialog;

.field private final onPaired:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private pairingAddress:Ljava/lang/String;

.field private progressDialog:Landroid/app/AlertDialog;

.field private final receiver:Lcom/shilapi/xcertplay/IphonePairing$receiver$1;

.field private receiverRegistered:Z

.field private shown:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$T3EEO9YESaQcVab87RbWjW4M19s(Lcom/shilapi/xcertplay/IphonePairing;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/IphonePairing;->choose$lambda$21(Lcom/shilapi/xcertplay/IphonePairing;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$TRgIBAMMrjLrpoNBkLKByxwQ_mw(Lcom/shilapi/xcertplay/IphonePairing;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/IphonePairing;->showList$lambda$6(Lcom/shilapi/xcertplay/IphonePairing;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$V8WEpEGH0QwHc5j0r6kXE7fAUD8(Lcom/shilapi/xcertplay/IphonePairing;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/shilapi/xcertplay/IphonePairing;->showList$lambda$4$lambda$3(Lcom/shilapi/xcertplay/IphonePairing;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$hn33gpDeYeemMq52v0urX-t9mfU(Lcom/shilapi/xcertplay/IphonePairing;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/IphonePairing;->showList$lambda$5(Lcom/shilapi/xcertplay/IphonePairing;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$vZr4tXa1nwE9PcfBUu_X0CdjOUo(Lcom/shilapi/xcertplay/IphonePairing;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/IphonePairing;->showList$lambda$8(Lcom/shilapi/xcertplay/IphonePairing;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/shilapi/xcertplay/IphonePairing$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/IphonePairing$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/IphonePairing;->Companion:Lcom/shilapi/xcertplay/IphonePairing$Companion;

    .line 209
    const-string v0, "00000000-deca-fade-deca-deafdecacafe"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    const-string v1, "fromString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/shilapi/xcertplay/IphonePairing;->IAP2_UUID:Ljava/util/UUID;

    const/16 v1, 0x10

    .line 215
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 216
    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 217
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const-string v1, "array(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->reversedArray([B)[B

    move-result-object v0

    .line 218
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    new-instance v1, Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    .line 215
    sput-object v1, Lcom/shilapi/xcertplay/IphonePairing;->IAP2_UUID_REVERSED:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/bluetooth/BluetoothAdapter;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/bluetooth/BluetoothAdapter;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onPaired"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/shilapi/xcertplay/IphonePairing;->activity:Landroid/app/Activity;

    .line 30
    iput-object p2, p0, Lcom/shilapi/xcertplay/IphonePairing;->adapter:Landroid/bluetooth/BluetoothAdapter;

    .line 31
    iput-object p3, p0, Lcom/shilapi/xcertplay/IphonePairing;->onPaired:Lkotlin/jvm/functions/Function1;

    .line 33
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/shilapi/xcertplay/IphonePairing;->handler:Landroid/os/Handler;

    .line 34
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/IphonePairing;->found:Ljava/util/LinkedHashMap;

    .line 39
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/shilapi/xcertplay/IphonePairing;->shown:Ljava/util/List;

    .line 47
    new-instance p1, Lcom/shilapi/xcertplay/IphonePairing$receiver$1;

    invoke-direct {p1, p0}, Lcom/shilapi/xcertplay/IphonePairing$receiver$1;-><init>(Lcom/shilapi/xcertplay/IphonePairing;)V

    iput-object p1, p0, Lcom/shilapi/xcertplay/IphonePairing;->receiver:Lcom/shilapi/xcertplay/IphonePairing$receiver$1;

    return-void
.end method

.method public static final synthetic access$complete(Lcom/shilapi/xcertplay/IphonePairing;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/IphonePairing;->complete(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public static final synthetic access$getActivity$p(Lcom/shilapi/xcertplay/IphonePairing;)Landroid/app/Activity;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/shilapi/xcertplay/IphonePairing;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method public static final synthetic access$getFinished$p(Lcom/shilapi/xcertplay/IphonePairing;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/shilapi/xcertplay/IphonePairing;->finished:Z

    return p0
.end method

.method public static final synthetic access$getFound$p(Lcom/shilapi/xcertplay/IphonePairing;)Ljava/util/LinkedHashMap;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/shilapi/xcertplay/IphonePairing;->found:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method public static final synthetic access$getHint$p(Lcom/shilapi/xcertplay/IphonePairing;)Landroid/widget/TextView;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/shilapi/xcertplay/IphonePairing;->hint:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic access$getIAP2_UUID$cp()Ljava/util/UUID;
    .locals 1

    .line 28
    sget-object v0, Lcom/shilapi/xcertplay/IphonePairing;->IAP2_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method public static final synthetic access$getIAP2_UUID_REVERSED$cp()Ljava/util/UUID;
    .locals 1

    .line 28
    sget-object v0, Lcom/shilapi/xcertplay/IphonePairing;->IAP2_UUID_REVERSED:Ljava/util/UUID;

    return-object v0
.end method

.method public static final synthetic access$getPairingAddress$p(Lcom/shilapi/xcertplay/IphonePairing;)Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/shilapi/xcertplay/IphonePairing;->pairingAddress:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getProgressDialog$p(Lcom/shilapi/xcertplay/IphonePairing;)Landroid/app/AlertDialog;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/shilapi/xcertplay/IphonePairing;->progressDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method public static final synthetic access$getShown$p(Lcom/shilapi/xcertplay/IphonePairing;)Ljava/util/List;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/shilapi/xcertplay/IphonePairing;->shown:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$refreshList(Lcom/shilapi/xcertplay/IphonePairing;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/shilapi/xcertplay/IphonePairing;->refreshList()V

    return-void
.end method

.method public static final synthetic access$setPairingAddress$p(Lcom/shilapi/xcertplay/IphonePairing;Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/shilapi/xcertplay/IphonePairing;->pairingAddress:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$showList(Lcom/shilapi/xcertplay/IphonePairing;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/shilapi/xcertplay/IphonePairing;->showList()V

    return-void
.end method

.method private final choose(Landroid/bluetooth/BluetoothDevice;)V
    .locals 5

    .line 150
    sget-object v0, Lcom/shilapi/xcertplay/IphonePairing;->Companion:Lcom/shilapi/xcertplay/IphonePairing$Companion;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/IphonePairing$Companion;->kind(Landroid/bluetooth/BluetoothDevice;)Lcom/shilapi/xcertplay/IphonePairing$Kind;

    move-result-object v0

    sget-object v1, Lcom/shilapi/xcertplay/IphonePairing$Kind;->NOT_IPHONE:Lcom/shilapi/xcertplay/IphonePairing$Kind;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 151
    iget-object p1, p0, Lcom/shilapi/xcertplay/IphonePairing;->activity:Landroid/app/Activity;

    check-cast p1, Landroid/content/Context;

    sget v0, Lcom/shilapi/xcertplay/host/R$string;->pair_not_iphone:I

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 154
    :cond_0
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/IphonePairing;

    iget-object v0, p0, Lcom/shilapi/xcertplay/IphonePairing;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :goto_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 156
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/IphonePairing;->complete(Landroid/bluetooth/BluetoothDevice;)V

    return-void

    .line 159
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shilapi/xcertplay/IphonePairing;->pairingAddress:Ljava/lang/String;

    const/4 v0, 0x0

    .line 160
    :try_start_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/IphonePairing;

    .line 161
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v1, v3, :cond_2

    invoke-static {p1}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    goto :goto_1

    .line 162
    :cond_2
    const-class v1, Landroid/bluetooth/BluetoothDevice;

    const-string v3, "createBond"

    invoke-virtual {v1, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 160
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    const/4 v1, 0x0

    .line 163
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object p1, v3

    :cond_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_4

    .line 165
    iput-object v0, p0, Lcom/shilapi/xcertplay/IphonePairing;->pairingAddress:Ljava/lang/String;

    .line 166
    iget-object p1, p0, Lcom/shilapi/xcertplay/IphonePairing;->activity:Landroid/app/Activity;

    check-cast p1, Landroid/content/Context;

    sget v0, Lcom/shilapi/xcertplay/host/R$string;->pair_failed:I

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 169
    :cond_4
    iget-object p1, p0, Lcom/shilapi/xcertplay/IphonePairing;->listDialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 170
    :cond_5
    iget-object p1, p0, Lcom/shilapi/xcertplay/IphonePairing;->listDialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 171
    :cond_6
    sget-object p1, Lcom/shilapi/xcertplay/Appearance;->INSTANCE:Lcom/shilapi/xcertplay/Appearance;

    iget-object v2, p0, Lcom/shilapi/xcertplay/IphonePairing;->activity:Landroid/app/Activity;

    check-cast v2, Landroid/content/Context;

    const/4 v3, 0x2

    invoke-static {p1, v2, v1, v3, v0}, Lcom/shilapi/xcertplay/Appearance;->dialog$default(Lcom/shilapi/xcertplay/Appearance;Landroid/content/Context;ZILjava/lang/Object;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 172
    sget v0, Lcom/shilapi/xcertplay/host/R$string;->pair_in_progress_title:I

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 173
    sget v0, Lcom/shilapi/xcertplay/host/R$string;->pair_in_progress_message:I

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 174
    new-instance v0, Lcom/shilapi/xcertplay/IphonePairing$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/shilapi/xcertplay/IphonePairing$$ExternalSyntheticLambda1;-><init>(Lcom/shilapi/xcertplay/IphonePairing;)V

    const/high16 v2, 0x1040000

    invoke-virtual {p1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 175
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 176
    invoke-static {p1}, Lcom/shilapi/xcertplay/E01Dialogs;->show(Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog;

    move-result-object p1

    .line 171
    iput-object p1, p0, Lcom/shilapi/xcertplay/IphonePairing;->progressDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private static final choose$lambda$21(Lcom/shilapi/xcertplay/IphonePairing;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 174
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/IphonePairing;->stop()V

    return-void
.end method

.method private final complete(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .line 180
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/IphonePairing;->finished:Z

    if-eqz v0, :cond_0

    return-void

    .line 182
    :cond_0
    sget-object v0, Lcom/shilapi/xcertplay/IphonePairing;->Companion:Lcom/shilapi/xcertplay/IphonePairing$Companion;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/IphonePairing$Companion;->kind(Landroid/bluetooth/BluetoothDevice;)Lcom/shilapi/xcertplay/IphonePairing$Kind;

    move-result-object v0

    sget-object v1, Lcom/shilapi/xcertplay/IphonePairing$Kind;->NOT_IPHONE:Lcom/shilapi/xcertplay/IphonePairing$Kind;

    if-ne v0, v1, :cond_3

    const/4 p1, 0x0

    .line 183
    iput-object p1, p0, Lcom/shilapi/xcertplay/IphonePairing;->pairingAddress:Ljava/lang/String;

    .line 184
    iget-object p1, p0, Lcom/shilapi/xcertplay/IphonePairing;->progressDialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 185
    :cond_1
    iget-object p1, p0, Lcom/shilapi/xcertplay/IphonePairing;->activity:Landroid/app/Activity;

    check-cast p1, Landroid/content/Context;

    sget v0, Lcom/shilapi/xcertplay/host/R$string;->pair_not_iphone:I

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 186
    iget-object p1, p0, Lcom/shilapi/xcertplay/IphonePairing;->listDialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-ne p1, v1, :cond_2

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/shilapi/xcertplay/IphonePairing;->showList()V

    return-void

    .line 189
    :cond_3
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/IphonePairing;->stop()V

    .line 190
    iget-object v0, p0, Lcom/shilapi/xcertplay/IphonePairing;->onPaired:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final discover()V
    .locals 3

    .line 126
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/IphonePairing;

    .line 127
    iget-object v0, p0, Lcom/shilapi/xcertplay/IphonePairing;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shilapi/xcertplay/IphonePairing;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/IphonePairing;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 126
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :goto_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/IphonePairing;->hint:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/shilapi/xcertplay/IphonePairing;->activity:Landroid/app/Activity;

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->pair_searching_hint:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private final refreshList()V
    .locals 9

    .line 134
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/IphonePairing;

    iget-object v0, p0, Lcom/shilapi/xcertplay/IphonePairing;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    const-string v1, "getBondedDevices(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    sget-object v1, Lcom/shilapi/xcertplay/IphonePairing;->Companion:Lcom/shilapi/xcertplay/IphonePairing$Companion;

    .line 281
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 282
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 134
    invoke-virtual {v1, v4}, Lcom/shilapi/xcertplay/IphonePairing$Companion;->isCandidate(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 282
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 283
    :cond_1
    check-cast v2, Ljava/util/List;

    .line 134
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    :cond_2
    check-cast v0, Ljava/util/List;

    .line 136
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    iget-object v2, p0, Lcom/shilapi/xcertplay/IphonePairing;->found:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    const-string v3, "<get-values>(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Iterable;

    .line 284
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .line 285
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    .line 136
    move-object v6, v0

    check-cast v6, Ljava/lang/Iterable;

    .line 286
    instance-of v7, v6, Ljava/util/Collection;

    if-eqz v7, :cond_3

    move-object v7, v6

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_3

    .line 287
    :cond_3
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    .line 136
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_2

    .line 285
    :cond_5
    :goto_3
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 289
    :cond_6
    check-cast v3, Ljava/util/List;

    .line 284
    check-cast v3, Ljava/lang/Iterable;

    .line 136
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 290
    new-instance v1, Lcom/shilapi/xcertplay/IphonePairing$refreshList$$inlined$sortedBy$1;

    invoke-direct {v1}, Lcom/shilapi/xcertplay/IphonePairing$refreshList$$inlined$sortedBy$1;-><init>()V

    check-cast v1, Ljava/util/Comparator;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    .line 136
    iput-object v0, p0, Lcom/shilapi/xcertplay/IphonePairing;->shown:Ljava/util/List;

    .line 138
    iget-object v0, p0, Lcom/shilapi/xcertplay/IphonePairing;->activity:Landroid/app/Activity;

    sget v1, Lcom/shilapi/xcertplay/host/R$string;->pair_paired_suffix:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/shilapi/xcertplay/IphonePairing;->items:Landroid/widget/ArrayAdapter;

    if-eqz v1, :cond_d

    .line 140
    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->clear()V

    .line 141
    iget-object v2, p0, Lcom/shilapi/xcertplay/IphonePairing;->shown:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    .line 291
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 142
    :try_start_1
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v4

    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v4}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :goto_5
    invoke-static {v4}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_7

    move-object v4, v6

    :cond_7
    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_9

    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    move-object v6, v4

    :cond_8
    if-nez v6, :cond_a

    :cond_9
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    .line 143
    :cond_a
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " \u00b7 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_b
    invoke-virtual {v1, v6}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_4

    .line 145
    :cond_c
    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :cond_d
    return-void
.end method

.method private final showList()V
    .locals 6

    .line 93
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/IphonePairing;->finished:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/shilapi/xcertplay/IphonePairing;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 94
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/shilapi/xcertplay/IphonePairing;->activity:Landroid/app/Activity;

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 95
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x14

    int-to-float v1, v1

    .line 96
    iget-object v2, p0, Lcom/shilapi/xcertplay/IphonePairing;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 97
    div-int/lit8 v2, v1, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 99
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/shilapi/xcertplay/IphonePairing;->activity:Landroid/app/Activity;

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 100
    iget-object v2, p0, Lcom/shilapi/xcertplay/IphonePairing;->activity:Landroid/app/Activity;

    sget v4, Lcom/shilapi/xcertplay/host/R$string;->pair_searching_hint:I

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x41700000    # 15.0f

    .line 101
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 99
    iput-object v1, p0, Lcom/shilapi/xcertplay/IphonePairing;->hint:Landroid/widget/TextView;

    .line 103
    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 104
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/shilapi/xcertplay/IphonePairing;->activity:Landroid/app/Activity;

    check-cast v2, Landroid/content/Context;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/List;

    const v5, 0x1090003

    invoke-direct {v1, v2, v5, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/shilapi/xcertplay/IphonePairing;->items:Landroid/widget/ArrayAdapter;

    .line 105
    new-instance v1, Landroid/widget/ListView;

    iget-object v2, p0, Lcom/shilapi/xcertplay/IphonePairing;->activity:Landroid/app/Activity;

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 106
    iget-object v2, p0, Lcom/shilapi/xcertplay/IphonePairing;->items:Landroid/widget/ArrayAdapter;

    check-cast v2, Landroid/widget/ListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 107
    new-instance v2, Lcom/shilapi/xcertplay/IphonePairing$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/shilapi/xcertplay/IphonePairing$$ExternalSyntheticLambda2;-><init>(Lcom/shilapi/xcertplay/IphonePairing;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 109
    check-cast v1, Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x118

    int-to-float v4, v4

    iget-object v5, p0, Lcom/shilapi/xcertplay/IphonePairing;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    const/4 v5, -0x1

    invoke-direct {v2, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    sget-object v1, Lcom/shilapi/xcertplay/Appearance;->INSTANCE:Lcom/shilapi/xcertplay/Appearance;

    iget-object v2, p0, Lcom/shilapi/xcertplay/IphonePairing;->activity:Landroid/app/Activity;

    check-cast v2, Landroid/content/Context;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/shilapi/xcertplay/Appearance;->dialog$default(Lcom/shilapi/xcertplay/Appearance;Landroid/content/Context;ZILjava/lang/Object;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 111
    sget v2, Lcom/shilapi/xcertplay/host/R$string;->pair_choose_iphone_title:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 112
    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 113
    sget v1, Lcom/shilapi/xcertplay/host/R$string;->pair_search_again:I

    invoke-virtual {v0, v1, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 114
    new-instance v1, Lcom/shilapi/xcertplay/IphonePairing$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/shilapi/xcertplay/IphonePairing$$ExternalSyntheticLambda3;-><init>(Lcom/shilapi/xcertplay/IphonePairing;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 115
    new-instance v1, Lcom/shilapi/xcertplay/IphonePairing$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/shilapi/xcertplay/IphonePairing$$ExternalSyntheticLambda4;-><init>(Lcom/shilapi/xcertplay/IphonePairing;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 110
    iput-object v0, p0, Lcom/shilapi/xcertplay/IphonePairing;->listDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 117
    invoke-static {v0}, Lcom/shilapi/xcertplay/E01Dialogs;->showDialog(Landroid/app/AlertDialog;)V

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/shilapi/xcertplay/IphonePairing;->listDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/shilapi/xcertplay/Appearance;->INSTANCE:Lcom/shilapi/xcertplay/Appearance;

    invoke-virtual {v1, v0}, Lcom/shilapi/xcertplay/Appearance;->followAppDirection(Landroid/app/AlertDialog;)V

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/shilapi/xcertplay/IphonePairing;->listDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Lcom/shilapi/xcertplay/IphonePairing$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/shilapi/xcertplay/IphonePairing$$ExternalSyntheticLambda5;-><init>(Lcom/shilapi/xcertplay/IphonePairing;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    :cond_3
    invoke-direct {p0}, Lcom/shilapi/xcertplay/IphonePairing;->refreshList()V

    .line 122
    invoke-direct {p0}, Lcom/shilapi/xcertplay/IphonePairing;->discover()V

    :cond_4
    :goto_0
    return-void
.end method

.method private static final showList$lambda$4$lambda$3(Lcom/shilapi/xcertplay/IphonePairing;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 107
    iget-object p1, p0, Lcom/shilapi/xcertplay/IphonePairing;->shown:Ljava/util/List;

    invoke-static {p1, p3}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/IphonePairing;->choose(Landroid/bluetooth/BluetoothDevice;)V

    :cond_0
    return-void
.end method

.method private static final showList$lambda$5(Lcom/shilapi/xcertplay/IphonePairing;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 114
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/IphonePairing;->stop()V

    return-void
.end method

.method private static final showList$lambda$6(Lcom/shilapi/xcertplay/IphonePairing;Landroid/content/DialogInterface;)V
    .locals 0

    .line 115
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/IphonePairing;->stop()V

    return-void
.end method

.method private static final showList$lambda$8(Lcom/shilapi/xcertplay/IphonePairing;Landroid/view/View;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/shilapi/xcertplay/IphonePairing;->discover()V

    return-void
.end method

.method public static synthetic start$default(Lcom/shilapi/xcertplay/IphonePairing;Landroid/bluetooth/BluetoothDevice;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 76
    :cond_0
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/IphonePairing;->start(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method


# virtual methods
.method public final getActive()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/IphonePairing;->finished:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final start(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .line 79
    sget-object v0, Lcom/shilapi/xcertplay/DiPlayBluetooth;->INSTANCE:Lcom/shilapi/xcertplay/DiPlayBluetooth;

    iget-object v1, p0, Lcom/shilapi/xcertplay/IphonePairing;->activity:Landroid/app/Activity;

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/shilapi/xcertplay/IphonePairing;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/shilapi/xcertplay/DiPlayBluetooth;->route(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;)Lcom/shilapi/xcertplay/BluetoothRoute;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/BluetoothRoute;->getTouchesAdapter()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/shilapi/xcertplay/IphonePairing;->finished:Z

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 81
    sget-object v0, Lcom/shilapi/xcertplay/IphonePairing;->Companion:Lcom/shilapi/xcertplay/IphonePairing$Companion;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/IphonePairing$Companion;->isCandidate(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/shilapi/xcertplay/IphonePairing;->found:Ljava/util/LinkedHashMap;

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_1
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 83
    const-string v0, "android.bluetooth.device.action.FOUND"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    const-string v0, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    const-string v0, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/shilapi/xcertplay/IphonePairing;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/shilapi/xcertplay/IphonePairing;->receiver:Lcom/shilapi/xcertplay/IphonePairing$receiver$1;

    check-cast v2, Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, p1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 88
    iput-boolean v1, p0, Lcom/shilapi/xcertplay/IphonePairing;->receiverRegistered:Z

    .line 89
    invoke-direct {p0}, Lcom/shilapi/xcertplay/IphonePairing;->showList()V

    return-void
.end method

.method public final stop()V
    .locals 3

    .line 194
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/IphonePairing;->finished:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    .line 195
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/IphonePairing;->finished:Z

    .line 196
    iget-object v0, p0, Lcom/shilapi/xcertplay/IphonePairing;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 197
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/IphonePairing;

    iget-object v0, p0, Lcom/shilapi/xcertplay/IphonePairing;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :goto_0
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/IphonePairing;->receiverRegistered:Z

    if-eqz v0, :cond_1

    :try_start_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/IphonePairing;

    iget-object v0, p0, Lcom/shilapi/xcertplay/IphonePairing;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/shilapi/xcertplay/IphonePairing;->receiver:Lcom/shilapi/xcertplay/IphonePairing$receiver$1;

    check-cast v2, Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    const/4 v0, 0x0

    .line 199
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/IphonePairing;->receiverRegistered:Z

    .line 200
    iget-object v0, p0, Lcom/shilapi/xcertplay/IphonePairing;->listDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 201
    :cond_2
    iget-object v0, p0, Lcom/shilapi/xcertplay/IphonePairing;->listDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 202
    :cond_3
    iget-object v0, p0, Lcom/shilapi/xcertplay/IphonePairing;->progressDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_4
    :goto_2
    return-void
.end method
