.class public final synthetic Lcom/shilapi/xcertplay/transport/IphoneUsbHost$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f$1:Lcom/shilapi/xcertplay/transport/IphoneUsbHost;

.field public final synthetic f$2:Lcom/shilapi/xcertplay/transport/IphoneUsbHost$registerReceiver$receiver$1;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/shilapi/xcertplay/transport/IphoneUsbHost;Lcom/shilapi/xcertplay/transport/IphoneUsbHost$registerReceiver$receiver$1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$$ExternalSyntheticLambda4;->f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$$ExternalSyntheticLambda4;->f$1:Lcom/shilapi/xcertplay/transport/IphoneUsbHost;

    iput-object p3, p0, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$$ExternalSyntheticLambda4;->f$2:Lcom/shilapi/xcertplay/transport/IphoneUsbHost$registerReceiver$receiver$1;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$$ExternalSyntheticLambda4;->f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$$ExternalSyntheticLambda4;->f$1:Lcom/shilapi/xcertplay/transport/IphoneUsbHost;

    iget-object v2, p0, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$$ExternalSyntheticLambda4;->f$2:Lcom/shilapi/xcertplay/transport/IphoneUsbHost$registerReceiver$receiver$1;

    invoke-static {v0, v1, v2}, Lcom/shilapi/xcertplay/transport/IphoneUsbHost;->$r8$lambda$l-aNvb387pF9RqbKMT2QHwb3Bt8(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/shilapi/xcertplay/transport/IphoneUsbHost;Lcom/shilapi/xcertplay/transport/IphoneUsbHost$registerReceiver$receiver$1;)V

    return-void
.end method
