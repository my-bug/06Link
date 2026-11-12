.class public final Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$handleData$$inlined$sortBy$1;
.super Ljava/lang/Object;
.source "Comparisons.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->handleData(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2\n+ 2 Iap2LinkEngine.kt\ncom/shilapi/xcertplay/transport/Iap2LinkEngine\n*L\n1#1,328:1\n428#2:329\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;


# direct methods
.method public constructor <init>(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$handleData$$inlined$sortBy$1;->this$0:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 102
    check-cast p1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;

    .line 329
    sget-object v0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->Companion:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->getSequence()I

    move-result p1

    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$handleData$$inlined$sortBy$1;->this$0:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;

    # getter for: Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->lastReceivedInOrder:I
    invoke-static {v1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->access$getLastReceivedInOrder$p(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    # invokes: Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->sequenceDistance(ILjava/lang/Integer;)I
    invoke-static {v0, p1, v1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->access$sequenceDistance(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;ILjava/lang/Integer;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 102
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;

    .line 329
    sget-object v0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->Companion:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->getSequence()I

    move-result p2

    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$handleData$$inlined$sortBy$1;->this$0:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;

    # getter for: Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->lastReceivedInOrder:I
    invoke-static {v1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->access$getLastReceivedInOrder$p(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    # invokes: Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->sequenceDistance(ILjava/lang/Integer;)I
    invoke-static {v0, p2, v1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->access$sequenceDistance(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;ILjava/lang/Integer;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 102
    check-cast p2, Ljava/lang/Comparable;

    invoke-static {p1, p2}, Lkotlin/comparisons/ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method
