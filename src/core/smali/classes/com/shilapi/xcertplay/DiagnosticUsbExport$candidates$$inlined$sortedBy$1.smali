.class public final Lcom/shilapi/xcertplay/DiagnosticUsbExport$candidates$$inlined$sortedBy$1;
.super Ljava/lang/Object;
.source "Comparisons.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/DiagnosticUsbExport;->candidates$common_release(Landroid/content/Context;)Ljava/util/List;
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
    value = "SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2\n+ 2 DiagnosticUsbExport.kt\ncom/shilapi/xcertplay/DiagnosticUsbExport\n*L\n1#1,328:1\n78#2:329\n*E\n"
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 102
    check-cast p1, Lcom/shilapi/xcertplay/DiagnosticUsbExport$Candidate;

    .line 329
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/DiagnosticUsbExport$Candidate;->getKind()Lcom/shilapi/xcertplay/DiagnosticUsbExport$Kind;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/DiagnosticUsbExport$Kind;->ordinal()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 102
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Lcom/shilapi/xcertplay/DiagnosticUsbExport$Candidate;

    .line 329
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/DiagnosticUsbExport$Candidate;->getKind()Lcom/shilapi/xcertplay/DiagnosticUsbExport$Kind;

    move-result-object p2

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/DiagnosticUsbExport$Kind;->ordinal()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 102
    check-cast p2, Ljava/lang/Comparable;

    invoke-static {p1, p2}, Lkotlin/comparisons/ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method
