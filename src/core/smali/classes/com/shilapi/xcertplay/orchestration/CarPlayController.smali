.class public final Lcom/shilapi/xcertplay/orchestration/CarPlayController;
.super Ljava/lang/Object;
.source "CarPlayController.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/orchestration/CarPlayController$Companion;,
        Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;,
        Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;,
        Lcom/shilapi/xcertplay/orchestration/CarPlayController$UsbBtWait;,
        Lcom/shilapi/xcertplay/orchestration/CarPlayController$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCarPlayController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CarPlayController.kt\ncom/shilapi/xcertplay/orchestration/CarPlayController\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,3412:1\n1#2:3413\n295#3,2:3414\n2746#3,3:3416\n295#3,2:3419\n774#3:3421\n865#3,2:3422\n774#3:3424\n865#3,2:3425\n1634#3,3:3427\n774#3:3430\n865#3,2:3431\n295#3,2:3433\n1869#3,2:3435\n295#3,2:3439\n1563#3:3441\n1634#3,3:3442\n1788#3,4:3445\n1285#3,2:3452\n1299#3,4:3454\n1255#4,2:3437\n3829#5:3449\n4344#5,2:3450\n*S KotlinDebug\n*F\n+ 1 CarPlayController.kt\ncom/shilapi/xcertplay/orchestration/CarPlayController\n*L\n1055#1:3414,2\n2548#1:3416,3\n2667#1:3419,2\n2670#1:3421\n2670#1:3422,2\n2673#1:3424\n2673#1:3425,2\n2682#1:3427,3\n2685#1:3430\n2685#1:3431,2\n2890#1:3433,2\n3005#1:3435,2\n3058#1:3439,2\n3196#1:3441\n3196#1:3442,3\n3197#1:3445,4\n957#1:3452,2\n957#1:3454,4\n3034#1:3437,2\n3284#1:3449\n3284#1:3450,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a2\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0008\n\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0012\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0010*\u0004\u0096\u0001\u0099\u0001\u0018\u0000 \u00d1\u00022\u00020\u0001:\u0008\u00ce\u0002\u00cf\u0002\u00d0\u0002\u00d1\u0002B\u00b3\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u0011\u0012\u0010\u0008\u0002\u0010\u0014\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00160\u0015\u0012\u0014\u0008\u0002\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00130\u0011\u0012\u000e\u0008\u0002\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0015\u0012\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a\u0012\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001c\u0012\u000e\u0008\u0002\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0015\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ$\u0010b\u001a\u00020A2\u0006\u0010c\u001a\u0002082\u0014\u0010d\u001a\u0010\u0012\u0004\u0012\u00020/\u0012\u0006\u0012\u0004\u0018\u0001020eJ#\u0010\u009b\u0001\u001a\u00020\u00132\u0006\u0010\u000c\u001a\u00020\r2\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u0011J\u0007\u0010\u009c\u0001\u001a\u00020AJ\u0007\u0010\u009d\u0001\u001a\u00020AJ\u0007\u0010\u009e\u0001\u001a\u00020\u0013J\u0007\u0010\u009f\u0001\u001a\u00020\u0013J\u0007\u0010\u00a0\u0001\u001a\u00020\u0013J\u0018\u0010\u00a1\u0001\u001a\u00020A2\u000f\u0010\u00a2\u0001\u001a\n\u0012\u0005\u0012\u00030\u00a4\u00010\u00a3\u0001J\u0007\u0010\u00a5\u0001\u001a\u00020AJ\u0007\u0010\u00a6\u0001\u001a\u00020AJ\u001e\u0010\u00a7\u0001\u001a\u00020A2\u0013\u0010\u00a8\u0001\u001a\u000e\u0012\u0004\u0012\u00020N\u0012\u0004\u0012\u00020\u00130\u0011H\u0002J\u0011\u0010\u00a9\u0001\u001a\u00020A2\u0008\u0010\u00aa\u0001\u001a\u00030\u00ab\u0001J\u0019\u0010\u00ac\u0001\u001a\u00020A2\u0007\u0010\u00ad\u0001\u001a\u00020<2\u0007\u0010\u00ae\u0001\u001a\u00020AJ\u0010\u0010\u00af\u0001\u001a\u00020A2\u0007\u0010\u00ae\u0001\u001a\u00020AJ\u0010\u0010\u00b0\u0001\u001a\u00020A2\u0007\u0010\u00b1\u0001\u001a\u00020/J\u0010\u0010\u00b2\u0001\u001a\u00020A2\u0007\u0010\u00ad\u0001\u001a\u00020<J\u0010\u0010\u00b3\u0001\u001a\u00020A2\u0007\u0010\u00ad\u0001\u001a\u00020<J\t\u0010\u00b4\u0001\u001a\u00020\u0013H\u0016J\u0012\u0010\u00b5\u0001\u001a\u00020\u00132\u0007\u0010\u00b6\u0001\u001a\u00020AH\u0002J\u0010\u0010\u00b7\u0001\u001a\u00020A2\u0007\u0010\u00b8\u0001\u001a\u000208J\u0013\u0010\u00b9\u0001\u001a\u00020\u00132\u0008\u0010\u00ba\u0001\u001a\u00030\u00bb\u0001H\u0002J\t\u0010\u00bc\u0001\u001a\u00020\u0013H\u0002J\u0013\u0010\u00bd\u0001\u001a\u00020\u00132\u0008\u0010\u00be\u0001\u001a\u00030\u00bf\u0001H\u0002J\t\u0010\u00c0\u0001\u001a\u00020\u0013H\u0002J\u0012\u0010\u00c1\u0001\u001a\u00020\u00132\u0007\u0010\u00c2\u0001\u001a\u00020FH\u0002J\t\u0010\u00c3\u0001\u001a\u00020\u0013H\u0002J\u0013\u0010\u00c4\u0001\u001a\u00020\u00132\u0008\u0010\u00c5\u0001\u001a\u00030\u00c6\u0001H\u0002J\u0013\u0010\u00c7\u0001\u001a\u00020\u00132\u0008\u0010\u00c8\u0001\u001a\u00030\u00c9\u0001H\u0002J\u0013\u0010\u00ca\u0001\u001a\u00020\u00132\u0008\u0010\u00c5\u0001\u001a\u00030\u00c6\u0001H\u0002J\u0013\u0010\u00cb\u0001\u001a\u00020\u00132\u0008\u0010\u00c5\u0001\u001a\u00030\u00c6\u0001H\u0002J\u001d\u0010\u00ce\u0001\u001a\u00030\u00cf\u00012\u0008\u0010\u00d0\u0001\u001a\u00030\u00d1\u00012\u0007\u0010\u00d2\u0001\u001a\u00020<H\u0002J.\u0010\u00d3\u0001\u001a\u00020<2\u0008\u0010\u00d0\u0001\u001a\u00030\u00d1\u00012\u0007\u0010\u00d2\u0001\u001a\u00020<2\u0007\u0010\u00d4\u0001\u001a\u00020<2\u0007\u0010\u00d5\u0001\u001a\u00020<H\u0002J4\u0010\u00d6\u0001\u001a\u00030\u00d7\u00012\u0008\u0010\u00d8\u0001\u001a\u00030\u00d7\u00012\u0008\u0010\u00d0\u0001\u001a\u00030\u00d1\u00012\u0014\u0010\u00d9\u0001\u001a\u000f\u0012\u0004\u0012\u00020<\u0012\u0005\u0012\u00030\u00cf\u00010eH\u0002J\t\u0010\u00da\u0001\u001a\u00020\u0013H\u0002J\t\u0010\u00db\u0001\u001a\u00020\u0013H\u0002J\t\u0010\u00dc\u0001\u001a\u00020\u0013H\u0002J\t\u0010\u00dd\u0001\u001a\u00020\u0013H\u0002J\u0012\u0010\u00de\u0001\u001a\u00020\u00132\u0007\u0010\u00df\u0001\u001a\u00020<H\u0002J\u0012\u0010\u00e0\u0001\u001a\u00020A2\u0007\u0010\u00e1\u0001\u001a\u00020oH\u0002J\u0012\u0010\u00e2\u0001\u001a\u00020\r2\u0007\u0010\u00df\u0001\u001a\u00020<H\u0002J\u0011\u0010\u00e3\u0001\u001a\u0004\u0018\u00010<H\u0002\u00a2\u0006\u0003\u0010\u00e4\u0001J\u0014\u0010\u00e5\u0001\u001a\u00020/2\t\u0010\u00e6\u0001\u001a\u0004\u0018\u00010/H\u0002J\u0012\u0010\u00e7\u0001\u001a\u00020\u00132\u0007\u0010\u00df\u0001\u001a\u00020<H\u0002J\t\u0010\u00e8\u0001\u001a\u00020\u0013H\u0002J\u0012\u0010\u00e9\u0001\u001a\u00020\u00132\u0007\u0010\u00df\u0001\u001a\u00020<H\u0002J\u0014\u0010\u00ea\u0001\u001a\u0004\u0018\u00010/2\u0007\u0010\u00df\u0001\u001a\u00020<H\u0002J\u0012\u0010\u00eb\u0001\u001a\u00020/2\u0007\u0010\u00df\u0001\u001a\u00020<H\u0002J\u001c\u0010\u00ec\u0001\u001a\u00020\u00132\u0007\u0010\u00df\u0001\u001a\u00020<2\u0008\u0010\u00ed\u0001\u001a\u00030\u00c6\u0001H\u0002J\u001c\u0010\u00ee\u0001\u001a\u00030\u00ef\u00012\u0007\u0010\u00df\u0001\u001a\u00020<2\u0007\u0010\u00f0\u0001\u001a\u00020iH\u0002J\t\u0010\u00f1\u0001\u001a\u00020\u0013H\u0002J\t\u0010\u00f2\u0001\u001a\u00020\u0013H\u0002J\t\u0010\u00f3\u0001\u001a\u00020\u0013H\u0002J\u0013\u0010\u00f4\u0001\u001a\u00020\u00132\u0008\u0010\u00c5\u0001\u001a\u00030\u00c6\u0001H\u0002J\u001c\u0010\u00f5\u0001\u001a\u00020\u00132\u0008\u0010\u00c5\u0001\u001a\u00030\u00c6\u00012\u0007\u0010\u00f6\u0001\u001a\u000208H\u0002J\u0013\u0010\u00f7\u0001\u001a\u00020\u00132\u0008\u0010\u00c8\u0001\u001a\u00030\u00f8\u0001H\u0002J\u0013\u0010\u00f9\u0001\u001a\u00020\u00132\u0008\u0010\u00c5\u0001\u001a\u00030\u00c6\u0001H\u0002J\u0013\u0010\u00fa\u0001\u001a\u00020\u00132\u0008\u0010\u00c5\u0001\u001a\u00030\u00c6\u0001H\u0002J\t\u0010\u00fb\u0001\u001a\u00020\u0013H\u0002J\u0013\u0010\u00fc\u0001\u001a\u00020\u00132\u0008\u0010\u00c5\u0001\u001a\u00030\u00c6\u0001H\u0002J \u0010\u00fd\u0001\u001a\u00020\u00132\u0006\u0010C\u001a\u00020D2\r\u0010\u00fe\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0015H\u0002J\u0013\u0010\u00ff\u0001\u001a\u00020\u00132\u0008\u0010\u00c5\u0001\u001a\u00030\u00c6\u0001H\u0002J\u0014\u0010\u0080\u0002\u001a\u00030\u0081\u00022\u0008\u0010\u00c5\u0001\u001a\u00030\u00c6\u0001H\u0002J\u001d\u0010\u0082\u0002\u001a\u00020\u00132\u0008\u0010\u0083\u0002\u001a\u00030\u0084\u00022\u0008\u0010\u0085\u0002\u001a\u00030\u0081\u0002H\u0002J\u0013\u0010\u0086\u0002\u001a\u00020\u00162\u0008\u0010\u00d8\u0001\u001a\u00030\u0087\u0002H\u0002J\u0015\u0010\u0088\u0002\u001a\u0004\u0018\u00010/2\u0008\u0010\u0089\u0002\u001a\u00030\u008a\u0002H\u0002J\u0012\u0010\u008b\u0002\u001a\u00020A2\u0007\u0010\u008c\u0002\u001a\u00020/H\u0002J\u0012\u0010\u008d\u0002\u001a\u00020i2\u0007\u0010\u00df\u0001\u001a\u00020<H\u0002J\u001b\u0010\u008e\u0002\u001a\u00020A2\u0007\u0010\u008f\u0002\u001a\u00020g2\u0007\u0010\u0090\u0002\u001a\u00020iH\u0002J\u001b\u0010\u008d\u0002\u001a\u00020i2\u0007\u0010\u00df\u0001\u001a\u00020<2\u0007\u0010\u0092\u0002\u001a\u00020wH\u0002J\u0012\u0010\u0093\u0002\u001a\u00020\u00132\u0007\u0010\u0092\u0002\u001a\u00020wH\u0002J\t\u0010\u0094\u0002\u001a\u00020\u0013H\u0002J\u0012\u0010\u0095\u0002\u001a\u00020A2\u0007\u0010\u00df\u0001\u001a\u00020<H\u0002J\u0013\u0010\u0096\u0002\u001a\u00030\u0097\u00022\u0007\u0010\u0098\u0002\u001a\u00020%H\u0002J\u001b\u0010\u0099\u0002\u001a\u00020\u00132\u0007\u0010\u009a\u0002\u001a\u00020m2\u0007\u0010\u009b\u0002\u001a\u00020/H\u0002J\t\u0010\u009c\u0002\u001a\u00020\u0013H\u0002J\u001b\u0010\u009d\u0002\u001a\u00020\u00132\u0007\u0010\u00df\u0001\u001a\u00020<2\u0007\u0010\u00e6\u0001\u001a\u00020/H\u0002J\u0017\u0010\u009e\u0002\u001a\u00020\u00132\u000c\u0008\u0002\u0010\u009f\u0002\u001a\u0005\u0018\u00010\u0083\u0001H\u0002J\u0013\u0010\u00a0\u0002\u001a\u00020A2\u0008\u0010\u00c5\u0001\u001a\u00030\u0097\u0002H\u0002J\u001a\u0010\u00a1\u0002\u001a\n\u0012\u0005\u0012\u00030\u0097\u00020\u00a2\u00022\u0007\u0010\u0098\u0002\u001a\u00020%H\u0002J@\u0010\u00a1\u0002\u001a\n\u0012\u0005\u0012\u00030\u0097\u00020\u00a2\u0002\"\n\u0008\u0000\u0010\u00a3\u0002*\u00030\u00a4\u00022\u0007\u0010\u0098\u0002\u001a\u00020%2\u0007\u0010\u00a5\u0002\u001a\u00020<2\u000f\u0010\u00a6\u0002\u001a\n\u0012\u0005\u0012\u0003H\u00a3\u00020\u00a7\u0002H\u0002J\u0014\u0010\u00a8\u0002\u001a\u00020/2\t\u0010\u0098\u0002\u001a\u0004\u0018\u00010%H\u0002J\u0013\u0010\u00a9\u0002\u001a\u00020/2\u0008\u0010\u009b\u0002\u001a\u00030\u00aa\u0002H\u0002J!\u0010\u00ab\u0002\u001a\u00020\u00132\u0007\u0010\u00ac\u0002\u001a\u00020/2\r\u0010\u00b4\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0015H\u0002J\t\u0010\u00ad\u0002\u001a\u000208H\u0002J \u0010\u00ae\u0002\u001a\u0005\u0018\u00010\u0083\u00012\u0008\u0010\u0085\u0002\u001a\u00030\u0081\u00022\u0008\u0010\u00af\u0002\u001a\u00030\u00b0\u0002H\u0002J\u000e\u0010\u00b1\u0002\u001a\u00020/*\u00030\u00b0\u0002H\u0002J\u000c\u0010\u00b2\u0002\u001a\u0005\u0018\u00010\u0083\u0001H\u0002J\t\u0010\u00b3\u0002\u001a\u00020\u0013H\u0002J\t\u0010\u00b4\u0002\u001a\u00020\u0013H\u0002J\t\u0010\u00b5\u0002\u001a\u00020\u0013H\u0002J\t\u0010\u00b6\u0002\u001a\u00020\u0013H\u0002J\u0013\u0010\u00b7\u0002\u001a\u00020\u00132\u0008\u0010\u0089\u0002\u001a\u00030\u008a\u0002H\u0002J\t\u0010\u00bc\u0002\u001a\u00020\u0013H\u0002J\t\u0010\u00be\u0002\u001a\u00020\u0013H\u0002J\u0011\u0010\u00bf\u0002\u001a\u0004\u0018\u00010AH\u0002\u00a2\u0006\u0003\u0010\u00c0\u0002J\n\u0010\u00c1\u0002\u001a\u00030\u00c2\u0002H\u0002J\u001b\u0010\u00c3\u0002\u001a\u00020\u00132\u0007\u0010\u00c4\u0002\u001a\u00020w2\u0007\u0010\u0090\u0002\u001a\u00020iH\u0002J\u001c\u0010\u00c5\u0002\u001a\u0004\u0018\u00010<2\t\u0010\u00e6\u0001\u001a\u0004\u0018\u00010/H\u0002\u00a2\u0006\u0003\u0010\u00c6\u0002J\u001c\u0010\u00c7\u0002\u001a\u00020\u00132\u0006\u0010d\u001a\u00020/2\t\u0008\u0002\u0010\u00c8\u0002\u001a\u00020AH\u0002J\u0011\u0010\u00c9\u0002\u001a\u00020\u00132\u0006\u0010d\u001a\u00020/H\u0002J\u0011\u0010\u00ca\u0002\u001a\u00020\u00132\u0006\u0010d\u001a\u00020/H\u0002J\u001b\u0010\u00c7\u0002\u001a\u00020\u00132\u0006\u0010d\u001a\u00020/2\u0008\u0010\u0089\u0002\u001a\u00030\u008a\u0002H\u0002J\u0012\u0010\u00cb\u0002\u001a\u00020\u00132\u0007\u0010\u00cc\u0002\u001a\u00020\u0012H\u0002J\r\u0010\u00cd\u0002\u001a\u00020/*\u00020\u0012H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0014\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00160\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00130\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010 \u001a\n !*\u0004\u0018\u00010\u00030\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020#X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010$\u001a\u0004\u0018\u00010%X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\'X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020)X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020)X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020)X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020-X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020/X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u00100\u001a\u00020/X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u00101\u001a\u000202X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u00103\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u00104\u001a\u0010\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00105\u001a\u000206X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u00107\u001a\u000208X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00109\u001a\u00020:X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010;\u001a\u00020<X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010=\u001a\u00020<X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010>\u001a\u00020:X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010?\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010@\u001a\u00020AX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010B\u001a\u00020AX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010C\u001a\u00020DX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010E\u001a\u0004\u0018\u00010FX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010G\u001a\u0004\u0018\u00010HX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010I\u001a\u0004\u0018\u00010JX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010K\u001a\u0004\u0018\u00010LX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010M\u001a\u0004\u0018\u00010NX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010O\u001a\u000202X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010P\u001a\u0010\u0012\u0004\u0012\u00020N\u0012\u0004\u0012\u00020<\u0018\u00010QX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010R\u001a\u00020AX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010S\u001a\u00020TX\u0082\u0004\u00a2\u0006\u0002\n\u0000R(\u0010U\u001a\u0010\u0012\u0004\u0012\u00020A\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008V\u0010W\"\u0004\u0008X\u0010YR\u001c\u0010Z\u001a\u0004\u0018\u00010[X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\\\u0010]\"\u0004\u0008^\u0010_R\u0010\u0010`\u001a\u0004\u0018\u00010aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010f\u001a\u0004\u0018\u00010gX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010h\u001a\u0004\u0018\u00010iX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010j\u001a\u0004\u0018\u00010kX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010l\u001a\u0004\u0018\u00010mX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010n\u001a\u0004\u0018\u00010oX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010p\u001a\u00020qX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010r\u001a\u000208X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010s\u001a\u000208X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010t\u001a\u0004\u0018\u00010uX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010v\u001a\u0004\u0018\u00010wX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010x\u001a\u0004\u0018\u00010wX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010y\u001a\u00020<X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010z\u001a\u00020<X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010{\u001a\u00020AX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010|\u001a\u0008\u0012\u0004\u0012\u00020L0}X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010~\u001a\u0004\u0018\u00010\u007fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0080\u0001\u001a\u0005\u0018\u00010\u0081\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0082\u0001\u001a\u0005\u0018\u00010\u0083\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u0084\u0001\u001a\u00020AX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u0085\u0001\u001a\u000206X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u0086\u0001\u001a\u000206X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u0087\u0001\u001a\u000206X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u0088\u0001\u001a\u00020:X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0089\u0001\u001a\t\u0012\u0004\u0012\u00020N0\u008a\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u008b\u0001\u001a\u0005\u0018\u00010\u008c\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u008d\u0001\u001a\u0005\u0018\u00010\u008e\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u008f\u0001\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0090\u0001\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0091\u0001\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0092\u0001\u001a\u00030\u0093\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0094\u0001\u001a\u00030\u0093\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0095\u0001\u001a\u00030\u0096\u0001X\u0082\u0004\u00a2\u0006\u0005\n\u0003\u0010\u0097\u0001R\u0013\u0010\u0098\u0001\u001a\u00030\u0099\u0001X\u0082\u0004\u00a2\u0006\u0005\n\u0003\u0010\u009a\u0001R\u0016\u0010\u00cc\u0001\u001a\t\u0012\u0004\u0012\u00020<0\u00a3\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u00cd\u0001\u001a\u00020<X\u0082D\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u0091\u0002\u001a\u00020AX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u00b8\u0002\u001a\u0004\u0018\u00010/X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u00b9\u0002\u001a\u00020<X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u00ba\u0002\u001a\u00020AX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u00bb\u0002\u001a\u00020AX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u00bd\u0002\u001a\u00020<X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u00d2\u0002"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/orchestration/CarPlayController;",
        "Ljava/io/Closeable;",
        "context",
        "Landroid/content/Context;",
        "config",
        "Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;",
        "airPlayConfig",
        "Lcom/shilapi/xcertplay/airplay/AirPlayConfig;",
        "identity",
        "Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;",
        "pairings",
        "Lcom/shilapi/xcertplay/airplay/PairingStore;",
        "listener",
        "Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;",
        "media",
        "Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;",
        "reportStatus",
        "Lkotlin/Function1;",
        "Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;",
        "",
        "loadPairRecord",
        "Lkotlin/Function0;",
        "Lcom/shilapi/xcertplay/transport/LockdownPairRecord;",
        "savePairRecord",
        "clearPairRecord",
        "locationProvider",
        "Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;",
        "vehicleStatusProvider",
        "Lcom/shilapi/xcertplay/transport/VehicleStatusProvider;",
        "ensureUsbPermissionVisible",
        "<init>",
        "(Landroid/content/Context;Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;Lcom/shilapi/xcertplay/airplay/AirPlayConfig;Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;Lcom/shilapi/xcertplay/airplay/PairingStore;Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;Lcom/shilapi/xcertplay/transport/VehicleStatusProvider;Lkotlin/jvm/functions/Function0;)V",
        "appContext",
        "kotlin.jvm.PlatformType",
        "usbManager",
        "Landroid/hardware/usb/UsbManager;",
        "bluetoothAdapter",
        "Landroid/bluetooth/BluetoothAdapter;",
        "iphoneHost",
        "Lcom/shilapi/xcertplay/transport/IphoneUsbHost;",
        "executor",
        "Ljava/util/concurrent/ExecutorService;",
        "touchExecutor",
        "tunnelExecutor",
        "mainHandler",
        "Landroid/os/Handler;",
        "hostId",
        "",
        "systemBuid",
        "lifecycleLock",
        "",
        "uiListener",
        "uiStatusReporter",
        "permissionGrant",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "ownUsbPromptStamp",
        "",
        "availabilityPollGeneration",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "permissionPollGeneration",
        "",
        "reenumerationAttempts",
        "reenumerationWatchGeneration",
        "lastReportedStatus",
        "mfiResetLogged",
        "",
        "closed",
        "phase",
        "Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;",
        "ch341Host",
        "Lcom/shilapi/xcertplay/transport/Ch341UsbHost;",
        "mfiSession",
        "Lcom/shilapi/xcertplay/orchestration/MfiSession;",
        "mux",
        "Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;",
        "csm",
        "Lcom/shilapi/xcertplay/iap2/session/Iap2Session;",
        "activeSession",
        "Lcom/shilapi/xcertplay/airplay/AirPlaySession;",
        "clusterUiLock",
        "clusterUiStream",
        "Lkotlin/Pair;",
        "clusterUiShown",
        "playbackStatus",
        "Lcom/shilapi/xcertplay/media/CarPlayPlaybackStatus;",
        "playbackListener",
        "getPlaybackListener",
        "()Lkotlin/jvm/functions/Function1;",
        "setPlaybackListener",
        "(Lkotlin/jvm/functions/Function1;)V",
        "videoListener",
        "Lcom/shilapi/xcertplay/orchestration/CarPlayVideoListener;",
        "getVideoListener",
        "()Lcom/shilapi/xcertplay/orchestration/CarPlayVideoListener;",
        "setVideoListener",
        "(Lcom/shilapi/xcertplay/orchestration/CarPlayVideoListener;)V",
        "videoGate",
        "Lcom/shilapi/xcertplay/orchestration/VideoInCarGate;",
        "sendVideoMessage",
        "streamId",
        "message",
        "",
        "hotspot",
        "Lcom/shilapi/xcertplay/network/WirelessHotspotManager;",
        "hotspotInfoForKeep",
        "Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;",
        "bonjour",
        "Lcom/shilapi/xcertplay/network/CarPlayBonjour;",
        "bluetoothSocket",
        "Landroid/bluetooth/BluetoothSocket;",
        "bluetoothStream",
        "Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;",
        "wifiHandoffEvidence",
        "Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Evidence;",
        "wifiHandoff5703AtElapsed",
        "connectionLogLastSecond",
        "connectionLogLastLayer",
        "Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;",
        "preferNextWifiMode",
        "Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;",
        "linkModeInUse",
        "joinSwitches",
        "airPlayPortInUse",
        "usbBluetoothHeld",
        "wirelessTunnel",
        "Lcom/shilapi/xcertplay/orchestration/CurrentChannel;",
        "wirelessIdentification",
        "Lcom/shilapi/xcertplay/transport/Iap2IdentificationConfig;",
        "wirelessAirPlayEndpoint",
        "Lcom/shilapi/xcertplay/transport/Iap2WirelessCarPlayEndpoint;",
        "vpnService",
        "Lcom/shilapi/xcertplay/network/CarPlayVpnService;",
        "vpnBound",
        "wirelessHandoffRequested",
        "wirelessTunnelReady",
        "wirelessActiveReported",
        "wirelessGeneration",
        "wirelessConnectionProof",
        "Lcom/shilapi/xcertplay/orchestration/WirelessConnectionProof;",
        "ipv6Watchdog",
        "Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;",
        "ipv6RepairPath",
        "Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;",
        "permissionCloseable",
        "attachCloseable",
        "ch341PermissionCloseable",
        "vpnLatch",
        "Ljava/util/concurrent/CountDownLatch;",
        "teardownComplete",
        "serviceConnection",
        "com/shilapi/xcertplay/orchestration/CarPlayController$serviceConnection$1",
        "Lcom/shilapi/xcertplay/orchestration/CarPlayController$serviceConnection$1;",
        "sessionListener",
        "com/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1",
        "Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;",
        "attachUi",
        "isClosed",
        "hasActiveAirPlayAttachment",
        "start",
        "reconnectMfi",
        "reconnectIphone",
        "sendTouch",
        "contacts",
        "",
        "Lcom/shilapi/xcertplay/airplay/AirPlayContact;",
        "requestSiri",
        "sendKnobBack",
        "onSession",
        "block",
        "sendKnobPress",
        "state",
        "Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;",
        "sendMediaHold",
        "index",
        "down",
        "siriButton",
        "requestUi",
        "url",
        "sendMediaButton",
        "sendTelephonyButton",
        "close",
        "applyClusterUi",
        "shown",
        "awaitClosed",
        "timeoutMillis",
        "onRouteFrame",
        "frame",
        "Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;",
        "startMfi",
        "openLocalMfi",
        "directory",
        "Ljava/io/File;",
        "openRemoteMfi",
        "checkCh341Mfi",
        "host",
        "openLinuxMfi",
        "requestCh341Permission",
        "device",
        "Landroid/hardware/usb/UsbDevice;",
        "onCh341Permission",
        "result",
        "Lcom/shilapi/xcertplay/transport/Ch341UsbHost$PermissionResult;",
        "pollCh341Permission",
        "openCh341",
        "mfiCandidateAddresses",
        "maxMfiCertificateBytes",
        "probeMfiCandidate",
        "Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;",
        "transport",
        "Lcom/shilapi/xcertplay/transport/I2cTransport;",
        "address7Bit",
        "readMfiRegister",
        "register",
        "length",
        "preferCertificateBearingAddress",
        "Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;",
        "client",
        "probes",
        "waitForMfi",
        "startPhone",
        "startWireless",
        "restartWireless",
        "runWireless",
        "generation",
        "startWirelessTunnelControl",
        "stream",
        "wirelessSessionListener",
        "wifiApStateCode",
        "()Ljava/lang/Integer;",
        "interfaceFamilies",
        "iface",
        "onWirelessTunnelReady",
        "maybeCompleteWirelessHandoff",
        "armWirelessHandoffWatchdog",
        "startUsbBluetoothUnlessKernelDriven",
        "startUsbBluetooth",
        "awaitUsbBluetoothPermission",
        "dongle",
        "awaitUsbBluetoothIap2",
        "Lcom/shilapi/xcertplay/orchestration/CarPlayController$UsbBtWait;",
        "hotspotInfo",
        "closeBluetoothBootstrapTransport",
        "startIphone",
        "checkIphoneAvailability",
        "requestIphonePermission",
        "doRequestIphonePermission",
        "graceDeadlineNanos",
        "onIphonePermission",
        "Lcom/shilapi/xcertplay/transport/IphoneUsbHost$PermissionResult;",
        "pollIphonePermission",
        "beginReenumeration",
        "watchReenumeration",
        "onIphoneAttached",
        "scheduleAvailabilityPoll",
        "check",
        "openDataPaths",
        "openNcm",
        "Lcom/shilapi/xcertplay/transport/NcmUsbBridge;",
        "runStack",
        "usbSession",
        "Lcom/shilapi/xcertplay/transport/Iap2UsbSession;",
        "ncm",
        "pairNewRecord",
        "Lcom/shilapi/xcertplay/transport/LockdownPairingClient;",
        "rejectedPairRecordError",
        "error",
        "",
        "isBluetoothHandoffCommand",
        "type",
        "startWirelessHotspot",
        "keptGroupWorks",
        "manager",
        "info",
        "p2pBesideSystemHotspot",
        "hotspotMode",
        "applyHotspotNameRule",
        "awaitOwnLocalHotspotOff",
        "isStaleWirelessRun",
        "selectWirelessBluetoothDevice",
        "Landroid/bluetooth/BluetoothDevice;",
        "adapter",
        "connectBluetoothSocket",
        "socket",
        "address",
        "persistNetworkAdbIfNeeded",
        "startIpv6Watchdog",
        "closeWirelessStack",
        "service",
        "isBluetoothDeviceConnected",
        "connectedBluetoothDevices",
        "",
        "T",
        "Landroid/bluetooth/BluetoothProfile;",
        "profile",
        "profileClass",
        "Ljava/lang/Class;",
        "accessoryBluetoothMac",
        "hostAddressText",
        "Ljava/net/InetAddress;",
        "closeBestEffort",
        "name",
        "controlLoopTimeoutMillis",
        "attachVpn",
        "hostMac",
        "",
        "macString",
        "awaitVpnService",
        "bindVpn",
        "unbindVpn",
        "closeReceivers",
        "closeMfiSession",
        "fail",
        "wirelessHotspotInterface",
        "joinWatchGeneration",
        "wirelessHostIsIpv6",
        "wirelessResolvedSeen",
        "watchWirelessJoin",
        "joinDeadlineGeneration",
        "watchWirelessJoinDeadline",
        "wirelessIphoneOnWifi",
        "()Ljava/lang/Boolean;",
        "joinEvidence",
        "Lcom/shilapi/xcertplay/orchestration/WifiHandoff$JoinEvidence;",
        "noteLinkUp",
        "mode",
        "hotspotClientCount",
        "(Ljava/lang/String;)Ljava/lang/Integer;",
        "debugLog",
        "toLogcat",
        "noteWifiHandoff5703",
        "recordConnectionLog",
        "onStatus",
        "status",
        "debugLogMessage",
        "Phase",
        "MfiCandidateProbe",
        "UsbBtWait",
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
.field private static final ADAPTER_ADDRESS_PLACEHOLDER:Ljava/lang/String; = "02:00:00:00:00:00"

.field private static final BLUETOOTH_ADDRESS:Lkotlin/text/Regex;

.field private static final CONTROL_LOOP_TIMEOUT_MILLIS:J = 0x493e0L

.field public static final Companion:Lcom/shilapi/xcertplay/orchestration/CarPlayController$Companion;

.field private static final DEVICE_AVAILABILITY_POLL_INTERVAL_MILLIS:J = 0x7d0L

.field private static final EXECUTOR_CLOSE_TIMEOUT_MILLIS:J = 0x7d0L

.field public static final HOTSPOT_RESTARTING_MESSAGE:Ljava/lang/String; = "Hotspot keeps restarting without an IP address"

.field private static final HOTSPOT_START_TIMEOUT_MILLIS:J = 0x4e20L

.field private static final IAP2_IPHONE_UUID:Ljava/lang/String; = "00000000-deca-fade-deca-deafdecacafe"

.field private static final LOCATION_CONTROL_LOOP_TIMEOUT_MILLIS:J = 0x5265c00L

.field private static final MANUAL_RENAME_MILLIS:J = 0x61a8L

.field private static final MAXIMUM_REENUMERATION_ATTEMPTS:I = 0x2

.field private static final OWN_HOTSPOT_SETTLE_MILLIS:J = 0xbb8L

.field private static final PAIR_TIMEOUT_MILLIS:J = 0xea60L

.field private static final PERMISSION_POLL_INTERVAL_MILLIS:J = 0x1f4L

.field private static final PERMISSION_POLL_TIMEOUT_MILLIS:J = 0xea60L

.field private static final REENUMERATION_WATCH_MILLIS:J = 0x2710L

.field private static final RFCOMM_CONNECT_TIMEOUT_MILLIS:J = 0x3a98L

.field private static final USB_BLUETOOTH_IAP2_WAIT_MILLIS:J = 0xea60L

.field public static final USB_BLUETOOTH_NO_DONGLE:Ljava/lang/String; = "this head unit has no Android Bluetooth stack (vendor Bluetooth only) and no USB Bluetooth adapter is plugged in, so wireless CarPlay cannot start here; plug in a USB Bluetooth adapter or connect the iPhone by USB instead"

.field public static final USB_BLUETOOTH_NO_IPHONE:Ljava/lang/String; = "The iPhone did not connect to 06Link\'s USB Bluetooth; on the iPhone open Settings \u203a Bluetooth and tap this car\'s 06Link name"

.field public static final USB_BLUETOOTH_PERMISSION:Ljava/lang/String; = "USB Bluetooth adapter permission was not granted; allow it with Settings \u203a Diagnostics \u203a USB Bluetooth: discoverable, then try again"

.field private static final USB_BLUETOOTH_READY_TIMEOUT_MILLIS:J = 0x3a98L

.field private static final VPN_CONNECT_TIMEOUT_MILLIS:J = 0x2710L

.field private static final WIFI_P2P_START_TIMEOUT_MILLIS:J = 0x4e20L

.field private static final WIRELESS_HANDOFF_TIMEOUT_MILLIS:J = 0x7530L

.field private static volatile hotspotRestartStreak:I

.field private static final usbBluetoothPromptAsked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final usbBluetoothWaitedBefore:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final usbPrompt:Lcom/shilapi/xcertplay/orchestration/UsbPromptStamp;


# instance fields
.field private volatile activeSession:Lcom/shilapi/xcertplay/airplay/AirPlaySession;

.field private final airPlayConfig:Lcom/shilapi/xcertplay/airplay/AirPlayConfig;

.field private volatile airPlayPortInUse:I

.field private final appContext:Landroid/content/Context;

.field private attachCloseable:Ljava/io/Closeable;

.field private final availabilityPollGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private volatile bluetoothSocket:Landroid/bluetooth/BluetoothSocket;

.field private volatile bluetoothStream:Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;

.field private volatile bonjour:Lcom/shilapi/xcertplay/network/CarPlayBonjour;

.field private volatile ch341Host:Lcom/shilapi/xcertplay/transport/Ch341UsbHost;

.field private ch341PermissionCloseable:Ljava/io/Closeable;

.field private final clearPairRecord:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private volatile closed:Z

.field private final clusterUiLock:Ljava/lang/Object;

.field private clusterUiShown:Z

.field private clusterUiStream:Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Pair<",
            "Lcom/shilapi/xcertplay/airplay/AirPlaySession;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final config:Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;

.field private volatile connectionLogLastLayer:Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;

.field private volatile connectionLogLastSecond:J

.field private volatile csm:Lcom/shilapi/xcertplay/iap2/session/Iap2Session;

.field private final ensureUsbPermissionVisible:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private final hostId:Ljava/lang/String;

.field private volatile hotspot:Lcom/shilapi/xcertplay/network/WirelessHotspotManager;

.field private volatile hotspotInfoForKeep:Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;

.field private final identity:Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;

.field private final iphoneHost:Lcom/shilapi/xcertplay/transport/IphoneUsbHost;

.field private volatile ipv6RepairPath:Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;

.field private volatile ipv6Watchdog:Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;

.field private volatile joinDeadlineGeneration:I

.field private volatile joinSwitches:I

.field private volatile joinWatchGeneration:I

.field private lastReportedStatus:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;

.field private final lifecycleLock:Ljava/lang/Object;

.field private volatile linkModeInUse:Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

.field private final loadPairRecord:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/shilapi/xcertplay/transport/LockdownPairRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final locationProvider:Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;

.field private final mainHandler:Landroid/os/Handler;

.field private final maxMfiCertificateBytes:I

.field private final media:Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;

.field private final mfiCandidateAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mfiResetLogged:Z

.field private volatile mfiSession:Lcom/shilapi/xcertplay/orchestration/MfiSession;

.field private volatile mux:Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;

.field private volatile ownUsbPromptStamp:J

.field private volatile p2pBesideSystemHotspot:Z

.field private final pairings:Lcom/shilapi/xcertplay/airplay/PairingStore;

.field private permissionCloseable:Ljava/io/Closeable;

.field private final permissionGrant:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private permissionPollGeneration:I

.field private volatile phase:Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;

.field private volatile playbackListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final playbackStatus:Lcom/shilapi/xcertplay/media/CarPlayPlaybackStatus;

.field private volatile preferNextWifiMode:Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

.field private reenumerationAttempts:I

.field private final reenumerationWatchGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final savePairRecord:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/shilapi/xcertplay/transport/LockdownPairRecord;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final serviceConnection:Lcom/shilapi/xcertplay/orchestration/CarPlayController$serviceConnection$1;

.field private final sessionListener:Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;

.field private final systemBuid:Ljava/lang/String;

.field private final teardownComplete:Ljava/util/concurrent/CountDownLatch;

.field private final touchExecutor:Ljava/util/concurrent/ExecutorService;

.field private final tunnelExecutor:Ljava/util/concurrent/ExecutorService;

.field private volatile uiListener:Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

.field private volatile uiStatusReporter:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private volatile usbBluetoothHeld:Z

.field private final usbManager:Landroid/hardware/usb/UsbManager;

.field private final vehicleStatusProvider:Lcom/shilapi/xcertplay/transport/VehicleStatusProvider;

.field private volatile videoGate:Lcom/shilapi/xcertplay/orchestration/VideoInCarGate;

.field private volatile videoListener:Lcom/shilapi/xcertplay/orchestration/CarPlayVideoListener;

.field private volatile vpnBound:Z

.field private vpnLatch:Ljava/util/concurrent/CountDownLatch;

.field private volatile vpnService:Lcom/shilapi/xcertplay/network/CarPlayVpnService;

.field private volatile wifiHandoff5703AtElapsed:J

.field private volatile wifiHandoffEvidence:Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Evidence;

.field private final wirelessActiveReported:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile wirelessAirPlayEndpoint:Lcom/shilapi/xcertplay/transport/Iap2WirelessCarPlayEndpoint;

.field private final wirelessConnectionProof:Lcom/shilapi/xcertplay/orchestration/WirelessConnectionProof;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shilapi/xcertplay/orchestration/WirelessConnectionProof<",
            "Lcom/shilapi/xcertplay/airplay/AirPlaySession;",
            ">;"
        }
    .end annotation
.end field

.field private final wirelessGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final wirelessHandoffRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile wirelessHostIsIpv6:Z

.field private volatile wirelessHotspotInterface:Ljava/lang/String;

.field private volatile wirelessIdentification:Lcom/shilapi/xcertplay/transport/Iap2IdentificationConfig;

.field private volatile wirelessResolvedSeen:Z

.field private final wirelessTunnel:Lcom/shilapi/xcertplay/orchestration/CurrentChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shilapi/xcertplay/orchestration/CurrentChannel<",
            "Lcom/shilapi/xcertplay/iap2/session/Iap2Session;",
            ">;"
        }
    .end annotation
.end field

.field private final wirelessTunnelReady:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static synthetic $r8$lambda$-R59Cx427Q5BSQQQoO0pAFd-ipM(Lcom/shilapi/xcertplay/iap2/session/Iap2Session;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->runStack$lambda$116$lambda$115(Lcom/shilapi/xcertplay/iap2/session/Iap2Session;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$1pgfzrsYJ2ozjZf_8y75w775zk4(Lcom/shilapi/xcertplay/transport/LockdownPairRecord;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->_init_$lambda$0(Lcom/shilapi/xcertplay/transport/LockdownPairRecord;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$2hAP7JpY4QY5HU7o7Ua1yAfKE_0(Landroid/bluetooth/BluetoothSocket;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closeBluetoothBootstrapTransport$lambda$97(Landroid/bluetooth/BluetoothSocket;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$3-an-S9VgqMDOq7EYHGRum-AVkg(Ljava/lang/String;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->requestUi$lambda$19(Ljava/lang/String;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$3HA4QCYL3vCNu4VciWd3BwbpZYo(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->fail$lambda$174(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$3Iqr60RbSHTPdSkS5qWcxJgyMMQ(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->sendTouch$lambda$12(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4pEa8qy5aZX1YHf2ua-zpkmoEZA(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/util/concurrent/atomic/AtomicInteger;I)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->openLocalMfi$lambda$38$lambda$37(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/util/concurrent/atomic/AtomicInteger;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$5ZC6odzNEAeG5HcrQZ2TG7p4z0M(ZILcom/shilapi/xcertplay/airplay/AirPlaySession;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->sendMediaHold$lambda$17(ZILcom/shilapi/xcertplay/airplay/AirPlaySession;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$6TP4mRZolcA6G08hMFzwRfzTVHA(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Z
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->pairNewRecord$lambda$120(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$6xDxo9Cty2b5Hg0e5VEGb6Pn3rc(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)V
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->openLinuxMfi$lambda$40(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7KzEO3cveMVductnWpDrnPuVssQ(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/orchestration/CarPlayVideoListener;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->start$lambda$9$lambda$7(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/orchestration/CarPlayVideoListener;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$7cpcuJhLG70ymRPF2UFqcz4cAAo(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->close$lambda$29$lambda$27(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$7fN8HF7T5AerBD7jCnas7MkIQ1k(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/transport/IphoneUsbHost$TransitionResult;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->beginReenumeration$lambda$103(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/transport/IphoneUsbHost$TransitionResult;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$7pHgO3U7ZKM-ZWbddYRYOr-prik(Lcom/shilapi/xcertplay/orchestration/CarPlayController;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->watchReenumeration$lambda$105(Lcom/shilapi/xcertplay/orchestration/CarPlayController;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$9febhNu1I-vsGj78i3j0DJfp3E8(Lcom/shilapi/xcertplay/iap2/session/Iap2Session;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closeBluetoothBootstrapTransport$lambda$95(Lcom/shilapi/xcertplay/iap2/session/Iap2Session;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$A7XQXNTfD4oFCrXrB21uaALTukw(Lcom/shilapi/xcertplay/transport/Iap2UsbSession;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->runStack$lambda$119(Lcom/shilapi/xcertplay/transport/Iap2UsbSession;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$B4-rr0E5Jz4ZidgJhXU2H75VKvw(Lcom/shilapi/xcertplay/network/CarPlayVpnService;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->close$lambda$29$lambda$26(Lcom/shilapi/xcertplay/network/CarPlayVpnService;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$BqQNbRPfOuZ8h7rcQyjo-_RMCmY(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->runWireless$lambda$61(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$CVEUaNZr8H_jSiT4sKKhZBmgr94(Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;Lkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Result;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->persistNetworkAdbIfNeeded$lambda$155(Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;Lkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Result;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$CntL__9xzBvC5elDP2moJxRqMFY(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Landroid/hardware/usb/UsbDevice;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->awaitUsbBluetoothPermission$lambda$90$lambda$89(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Landroid/hardware/usb/UsbDevice;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DPJroq84eXWdiY46UAYo0HxMYTc(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Landroid/hardware/usb/UsbDevice;Lcom/shilapi/xcertplay/transport/IphoneUsbHost$Iap2SessionResult;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->openDataPaths$lambda$107(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Landroid/hardware/usb/UsbDevice;Lcom/shilapi/xcertplay/transport/IphoneUsbHost$Iap2SessionResult;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$EDqqSSaf5V9q5CF5uVwQqdL6YxQ()Lkotlin/Unit;
    .locals 1

    invoke-static {}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->_init_$lambda$2()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$FP2EjWc6s9WZAnNnQYqqxk-aS3M(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->sendKnobBack$lambda$14(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GuOB3MWa1VWIep8roaGkqQNUNFo()J
    .locals 2

    invoke-static {}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->awaitUsbBluetoothIap2$lambda$91()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic $r8$lambda$Hbp1dJmAAWBLBR9IKl_sXFh6q9M(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Landroid/hardware/usb/UsbDevice;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->requestCh341Permission$lambda$41(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Landroid/hardware/usb/UsbDevice;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HgodgJMOpJya_6xph2bhVK67I7w(Lcom/shilapi/xcertplay/orchestration/CarPlayController;IJLjava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->watchWirelessJoin$lambda$180(Lcom/shilapi/xcertplay/orchestration/CarPlayController;IJLjava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Hyk4OsTgRM16IAN9jP42IdUkJXA(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->startWirelessHotspot$lambda$123(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$IEPC8FRNCE-H5TMErxBMQPW6CFY(Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;Lcom/shilapi/xcertplay/orchestration/CarPlayController;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->runStack$lambda$111(Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;Lcom/shilapi/xcertplay/orchestration/CarPlayController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IbF7PUEFa4LrsYyOYbuK1BYLnCM(Lcom/shilapi/xcertplay/airplay/AirPlaySession;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->sendTelephonyButton$lambda$21(Lcom/shilapi/xcertplay/airplay/AirPlaySession;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ip8MPHDf3Z--DVXA7qfkydaav18(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->close$lambda$29$lambda$28(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Jt3YGZ6SxZpaiax-0qjnEmBhpXQ(ZLcom/shilapi/xcertplay/airplay/AirPlaySession;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->siriButton$lambda$18(ZLcom/shilapi/xcertplay/airplay/AirPlaySession;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$KkX04Q1RsqUSRNdW4gutIO9flfI(Lcom/shilapi/xcertplay/orchestration/MfiSession;)V
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closeMfiSession$lambda$173(Lcom/shilapi/xcertplay/orchestration/MfiSession;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KyB9U8oLBwbDq8qfqRQpC-zatws(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->requestSiri$lambda$13(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    return-void
.end method

.method public static synthetic $r8$lambda$L71gpxewxKCII5aVw-85YnWj4oc(JJLcom/shilapi/xcertplay/orchestration/CarPlayController;I)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->watchWirelessJoinDeadline$lambda$183(JJLcom/shilapi/xcertplay/orchestration/CarPlayController;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$L9D2lylTEKlXh_UWsfFB5h4LeiM(Lcom/shilapi/xcertplay/orchestration/CarPlayController;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->armWirelessHandoffWatchdog$lambda$85(Lcom/shilapi/xcertplay/orchestration/CarPlayController;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$LV8L8-RNlS_QiCjxNQjlfVjOkvA(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;)Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Repair;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->startIpv6Watchdog$lambda$159(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;)Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Repair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$M34gzUUCK89jk8E3rrUXcNGXwz4(Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->sendKnobPress$lambda$16(Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$MoHGAWwvFRRSlalyna7JNi0-3NM(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Landroid/hardware/usb/UsbDevice;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->doRequestIphonePermission$lambda$102(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Landroid/hardware/usb/UsbDevice;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NCVZVX0w5FW7dfD5DG6X86wRn5o(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->awaitUsbBluetoothIap2$lambda$92(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$NUK9F2UU0LU0SlaDIz1c1eABcUo(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;)Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->startIpv6Watchdog$lambda$157(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;)Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$NuSfcPUl7EZsb3KKnvFV7rRT7jY(Lcom/shilapi/xcertplay/orchestration/CarPlayController;ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->watchWirelessJoin$lambda$178(Lcom/shilapi/xcertplay/orchestration/CarPlayController;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R3bj-D5N2xVtDKUHO-YnBCssxXY(B)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->macString$lambda$170(B)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Ri-4GTcf2FZ7og2rU3voaCF5SSk(Lcom/shilapi/xcertplay/network/CarPlayBonjour;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closeWirelessStack$lambda$163(Lcom/shilapi/xcertplay/network/CarPlayBonjour;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$SaAJ6tk7Zz4VnANGQPB78iCTV7o(Lcom/shilapi/xcertplay/orchestration/CarPlayController;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->startWireless$lambda$47(Lcom/shilapi/xcertplay/orchestration/CarPlayController;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$TrAI5jPOEV1Ik7PS9M9qqf0ASHs(Lcom/shilapi/xcertplay/orchestration/CarPlayController;I)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->startWirelessTunnelControl$lambda$75$lambda$73(Lcom/shilapi/xcertplay/orchestration/CarPlayController;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$U0ZFxeMOopUrRPlgZyqr7z54eww(Lcom/shilapi/xcertplay/network/WirelessHotspotManager;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closeWirelessStack$lambda$164(Lcom/shilapi/xcertplay/network/WirelessHotspotManager;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$UCkIdLXxmK68IDgdjewxn2TZBpo(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->close$lambda$29$lambda$24(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$XvERKolRL3xXN9fobQyM7PSlyw8(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/network/CarPlayVpnService;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->close$lambda$29(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/network/CarPlayVpnService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_J7a_GUdqUYOHG4A1GIWbf5hryc(Ljava/net/InetAddress;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->runWireless$lambda$59(Ljava/net/InetAddress;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_ZWXxZI9H1X2cM5GWdpKpL43dc4(Ljava/io/File;Lcom/shilapi/xcertplay/orchestration/CarPlayController;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->openLocalMfi$lambda$38(Ljava/io/File;Lcom/shilapi/xcertplay/orchestration/CarPlayController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_t10XSLreaGf8Z8OHGNb4aawr9c(Lcom/shilapi/xcertplay/orchestration/CarPlayController;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->maybeCompleteWirelessHandoff$lambda$81(Lcom/shilapi/xcertplay/orchestration/CarPlayController;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$aTJk3Db5HMioweRIuKt57v2n9TU(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/transport/LockdownPairingWait;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->pairNewRecord$lambda$121(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/transport/LockdownPairingWait;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$buZjwRSiEMe5oufurxoPM2hAxjo(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Landroid/hardware/usb/UsbDevice;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->requestIphonePermission$lambda$98(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Landroid/hardware/usb/UsbDevice;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$by0Z4k-VCXEzkMFaHflNAlYJ2rI(Lcom/shilapi/xcertplay/airplay/AirPlaySession;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->sendMediaButton$lambda$20(Lcom/shilapi/xcertplay/airplay/AirPlaySession;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$cuezSbZIYuE4KBcjrhEYa5lEf2o(Lcom/shilapi/xcertplay/orchestration/CarPlayController;ILjava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->startIpv6Watchdog$lambda$160(Lcom/shilapi/xcertplay/orchestration/CarPlayController;ILjava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$eQ_8FnhYUYQ55U-qbm70lBB9hxU(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->close$lambda$29$lambda$25(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$eXZ_FZ1tq9biA7O9vVDu_rjXOJc(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->runStack$lambda$114(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fZ9PwU-_141pWIFflGHZmXi3OhA(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->onStatus$lambda$199(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gLPqNojQMU492_MEO8o0vCE8plk(Lcom/shilapi/xcertplay/network/WirelessHotspotManager;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->startWirelessHotspot$lambda$138(Lcom/shilapi/xcertplay/network/WirelessHotspotManager;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$h7WPDEgKYruKhnFtxWAPbfUWk60(Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closeBluetoothBootstrapTransport$lambda$96(Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hggM5kWXXC0NdKPyK9WRSanoutQ(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->persistNetworkAdbIfNeeded$lambda$153(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hl2-dDkWSaniJxeusq6YxgRg2y8(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->persistNetworkAdbIfNeeded$lambda$154(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$htq1-NNsl7iMvsw7rK9WPqbDdzs(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Landroid/hardware/usb/UsbDevice;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->awaitUsbBluetoothPermission$lambda$90(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Landroid/hardware/usb/UsbDevice;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ir0ivEEwWCE-u5oKrnOvkabBe74(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->startWirelessTunnelControl$lambda$75$lambda$74(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jiGtx_X-EcW6arxcyM6EUqn93n8(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/transport/Ch341UsbHost$OpenResult;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->openCh341$lambda$44(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/transport/Ch341UsbHost$OpenResult;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kAgcSjak4QqaZWTav5s0JC5DFKE(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;ILkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->scheduleAvailabilityPoll$lambda$106(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;ILkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lA_QF5nn4tFTLgAuMI-TXdC3-_Q(Lkotlin/jvm/functions/Function1;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->onSession$lambda$15(Lkotlin/jvm/functions/Function1;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ml4a5fhPNRZm5gd3AxbK2J08DGA(Ljava/net/InetAddress;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->interfaceFamilies$lambda$80$lambda$78(Ljava/net/InetAddress;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$mtmHbSDy9sE3pERbUMVvgUxkWzo(Lcom/shilapi/xcertplay/orchestration/CarPlayController;ILcom/shilapi/xcertplay/network/WirelessHotspotManager;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->runWireless$lambda$50(Lcom/shilapi/xcertplay/orchestration/CarPlayController;ILcom/shilapi/xcertplay/network/WirelessHotspotManager;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$nebobrDys31619pDToxf3WQ9VuA(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Landroid/hardware/usb/UsbDevice;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->doRequestIphonePermission$lambda$100(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Landroid/hardware/usb/UsbDevice;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$o9spYl0lmburyLz6wmRTkKmuvuU(Lcom/shilapi/xcertplay/iap2/session/Iap2Session;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->startWirelessTunnelControl$lambda$76(Lcom/shilapi/xcertplay/iap2/session/Iap2Session;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$pAfGqXmylFinyrFF05zYnLAF-Xs(Lcom/shilapi/xcertplay/iap2/session/Iap2Session;Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;Lcom/shilapi/xcertplay/transport/Iap2IdentificationConfig;Lcom/shilapi/xcertplay/transport/Iap2WirelessCarPlayEndpoint;Lcom/shilapi/xcertplay/orchestration/CarPlayController;I)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->startWirelessTunnelControl$lambda$75(Lcom/shilapi/xcertplay/iap2/session/Iap2Session;Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;Lcom/shilapi/xcertplay/transport/Iap2IdentificationConfig;Lcom/shilapi/xcertplay/transport/Iap2WirelessCarPlayEndpoint;Lcom/shilapi/xcertplay/orchestration/CarPlayController;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$p_aTHyFES2VPDc_xMo_VXPk4sAY(Lcom/shilapi/xcertplay/iap2/session/Iap2Session;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->startWirelessTunnelControl$lambda$72$lambda$71(Lcom/shilapi/xcertplay/iap2/session/Iap2Session;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rs1AC3lI45MAGdU0jJuqdMXg2pc(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->attachUi$lambda$4(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sxycLIR708Goo_dzmovzewDLPhw(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->startWirelessHotspot$lambda$129(Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$tqSGsT_HCXXn3orW9U9AiKUAs18(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)V
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->openRemoteMfi$lambda$39(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u9MWYoZ0cOuU2BVf8tufuSxgvKI(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->waitForMfi$lambda$46(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vgPiekKCOEzt3BSKPtZ2hNO27hQ(Ljava/lang/StackTraceElement;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$lambda$197(Ljava/lang/StackTraceElement;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$woMYAhxOrjh866IdBdtE9phUvjQ(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)V
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->restartWireless$lambda$48(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xaeNbwec_6FsmPsxYDAtyoAybVc(Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;JLcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->awaitUsbBluetoothIap2$lambda$94(Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;JLcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xbVibrP5QgngM0ha1C-LhltQN5k(Lcom/shilapi/xcertplay/iap2/session/Iap2Session;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closeWirelessStack$lambda$162(Lcom/shilapi/xcertplay/iap2/session/Iap2Session;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xbX9Ev3Qpm-MDk51sWs1TzNqh_c(Landroid/bluetooth/BluetoothSocket;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->connectBluetoothSocket$lambda$149(Landroid/bluetooth/BluetoothSocket;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yFDN-eAubvvKa7INVQyLaFVdTKA()Lkotlin/Unit;
    .locals 1

    invoke-static {}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->_init_$lambda$1()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$yL637hzlX4--VTXDUwlAL_wsTDA(Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->runStack$lambda$118$lambda$117(Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ysaqeunVfFEOVS8QrgZb1iqaxLM(Lcom/shilapi/xcertplay/network/CarPlayVpnService;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closeWirelessStack$lambda$165(Lcom/shilapi/xcertplay/network/CarPlayVpnService;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zMmEe4w-StkKpSV1WfvTQyHPfqA(Lcom/shilapi/xcertplay/orchestration/CarPlayController;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->armWirelessHandoffWatchdog$lambda$85$lambda$83(Lcom/shilapi/xcertplay/orchestration/CarPlayController;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$zyUI8j3HDJ0fUlKlBoCFhb-A6uw(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/network/CarPlayVpnService;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->close$lambda$29$lambda$23(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/network/CarPlayVpnService;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->Companion:Lcom/shilapi/xcertplay/orchestration/CarPlayController$Companion;

    .line 3373
    new-instance v0, Lcom/shilapi/xcertplay/orchestration/UsbPromptStamp;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/orchestration/UsbPromptStamp;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->usbPrompt:Lcom/shilapi/xcertplay/orchestration/UsbPromptStamp;

    .line 3387
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->usbBluetoothWaitedBefore:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3389
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->usbBluetoothPromptAsked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3409
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "^[0-9A-Fa-f]{2}(:[0-9A-Fa-f]{2}){5}$"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->BLUETOOTH_ADDRESS:Lkotlin/text/Regex;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;Lcom/shilapi/xcertplay/airplay/AirPlayConfig;Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;Lcom/shilapi/xcertplay/airplay/PairingStore;Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;Lcom/shilapi/xcertplay/transport/VehicleStatusProvider;Lkotlin/jvm/functions/Function0;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;",
            "Lcom/shilapi/xcertplay/airplay/AirPlayConfig;",
            "Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;",
            "Lcom/shilapi/xcertplay/airplay/PairingStore;",
            "Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;",
            "Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/shilapi/xcertplay/transport/LockdownPairRecord;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/shilapi/xcertplay/transport/LockdownPairRecord;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;",
            "Lcom/shilapi/xcertplay/transport/VehicleStatusProvider;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p14

    const-string v14, "context"

    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "config"

    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "airPlayConfig"

    invoke-static {v3, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "identity"

    invoke-static {v4, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "pairings"

    invoke-static {v5, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "listener"

    invoke-static {v6, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "media"

    invoke-static {v7, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "reportStatus"

    invoke-static {v8, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "loadPairRecord"

    invoke-static {v9, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "savePairRecord"

    invoke-static {v10, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "clearPairRecord"

    invoke-static {v11, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "ensureUsbPermissionVisible"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 265
    iput-object v2, v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->config:Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;

    .line 266
    iput-object v3, v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->airPlayConfig:Lcom/shilapi/xcertplay/airplay/AirPlayConfig;

    .line 267
    iput-object v4, v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->identity:Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;

    .line 268
    iput-object v5, v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->pairings:Lcom/shilapi/xcertplay/airplay/PairingStore;

    .line 270
    iput-object v7, v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->media:Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;

    .line 272
    iput-object v9, v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->loadPairRecord:Lkotlin/jvm/functions/Function0;

    .line 273
    iput-object v10, v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->savePairRecord:Lkotlin/jvm/functions/Function1;

    .line 274
    iput-object v11, v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->clearPairRecord:Lkotlin/jvm/functions/Function0;

    .line 275
    iput-object v12, v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->locationProvider:Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;

    move-object/from16 v4, p13

    .line 276
    iput-object v4, v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->vehicleStatusProvider:Lcom/shilapi/xcertplay/transport/VehicleStatusProvider;

    .line 282
    iput-object v13, v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->ensureUsbPermissionVisible:Lkotlin/jvm/functions/Function0;

    .line 285
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;->getLocationReportingEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v12, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "A location provider is required when location reporting is enabled"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 288
    :cond_1
    :goto_0
    sget-object v4, Lcom/shilapi/xcertplay/hud/BydNavigationOutputs;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydNavigationOutputs;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v7, "getApplicationContext(...)"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/shilapi/xcertplay/hud/BydNavigationOutputs;->start(Landroid/content/Context;)V

    .line 289
    sget-object v4, Lcom/shilapi/xcertplay/hud/BydNavigationOutputs;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydNavigationOutputs;

    new-instance v5, Lcom/shilapi/xcertplay/orchestration/CarPlayController$6;

    invoke-direct {v5, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$6;-><init>(Ljava/lang/Object;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v4, v5}, Lcom/shilapi/xcertplay/hud/BydNavigationOutputs;->setClusterStreamControl(Lkotlin/jvm/functions/Function1;)V

    .line 294
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    iput-object v10, v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->appContext:Landroid/content/Context;

    .line 295
    const-class v4, Landroid/hardware/usb/UsbManager;

    invoke-static {v1, v4}, Lcom/shilapi/xcertplay/compat/Api19Kt;->systemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v11, v1

    check-cast v11, Landroid/hardware/usb/UsbManager;

    iput-object v11, v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->usbManager:Landroid/hardware/usb/UsbManager;

    .line 297
    const-string v1, "appContext"

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10}, Lcom/shilapi/xcertplay/compat/Api19Kt;->bluetoothAdapterCompat(Landroid/content/Context;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    iput-object v4, v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 298
    new-instance v9, Lcom/shilapi/xcertplay/transport/IphoneUsbHost;

    .line 299
    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;->getIphoneDevices()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 302
    new-instance v4, Lcom/shilapi/xcertplay/transport/IphoneUsbMatcher;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;->getIphoneDevices()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v4, v2}, Lcom/shilapi/xcertplay/transport/IphoneUsbMatcher;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    .line 304
    :cond_2
    sget-object v2, Lcom/shilapi/xcertplay/transport/IphoneUsbMatcher;->Companion:Lcom/shilapi/xcertplay/transport/IphoneUsbMatcher$Companion;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/transport/IphoneUsbMatcher$Companion;->appleVendor()Lcom/shilapi/xcertplay/transport/IphoneUsbMatcher;

    move-result-object v4

    :goto_1
    move-object v12, v4

    const/16 v14, 0x8

    const/4 v15, 0x0

    const/4 v13, 0x0

    .line 298
    invoke-direct/range {v9 .. v15}, Lcom/shilapi/xcertplay/transport/IphoneUsbHost;-><init>(Landroid/content/Context;Landroid/hardware/usb/UsbManager;Lcom/shilapi/xcertplay/transport/IphoneUsbMatcher;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v9, v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->iphoneHost:Lcom/shilapi/xcertplay/transport/IphoneUsbHost;

    .line 307
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    const-string v4, "newSingleThreadExecutor(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->executor:Ljava/util/concurrent/ExecutorService;

    .line 308
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->touchExecutor:Ljava/util/concurrent/ExecutorService;

    .line 309
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->tunnelExecutor:Ljava/util/concurrent/ExecutorService;

    .line 310
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->mainHandler:Landroid/os/Handler;

    .line 311
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "toString(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "US"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "toUpperCase(...)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->hostId:Ljava/lang/String;

    .line 312
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->systemBuid:Ljava/lang/String;

    .line 313
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->lifecycleLock:Ljava/lang/Object;

    .line 314
    iput-object v6, v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->uiListener:Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    .line 315
    iput-object v8, v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->uiStatusReporter:Lkotlin/jvm/functions/Function1;

    .line 316
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->permissionGrant:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 319
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->availabilityPollGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 322
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->reenumerationWatchGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 327
    sget-object v2, Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;->IDLE:Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;

    iput-object v2, v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->phase:Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;

    .line 333
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->clusterUiLock:Ljava/lang/Object;

    const/4 v2, 0x1

    .line 335
    iput-boolean v2, v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->clusterUiShown:Z

    .line 336
    new-instance v5, Lcom/shilapi/xcertplay/media/CarPlayPlaybackStatus;

    invoke-direct {v5}, Lcom/shilapi/xcertplay/media/CarPlayPlaybackStatus;-><init>()V

    iput-object v5, v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->playbackStatus:Lcom/shilapi/xcertplay/media/CarPlayPlaybackStatus;

    .line 357
    new-instance v11, Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Evidence;

    const/16 v21, 0x1ff

    const/16 v22, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v11 .. v22}, Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Evidence;-><init>(Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Step;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v11, v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wifiHandoffEvidence:Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Evidence;

    const-wide/16 v5, -0x1

    .line 359
    iput-wide v5, v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->connectionLogLastSecond:J

    .line 368
    invoke-virtual {v3}, Lcom/shilapi/xcertplay/airplay/AirPlayConfig;->getPort()I

    move-result v3

    iput v3, v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->airPlayPortInUse:I

    .line 372
    new-instance v3, Lcom/shilapi/xcertplay/orchestration/CurrentChannel;

    invoke-direct {v3}, Lcom/shilapi/xcertplay/orchestration/CurrentChannel;-><init>()V

    iput-object v3, v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessTunnel:Lcom/shilapi/xcertplay/orchestration/CurrentChannel;

    .line 377
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessHandoffRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 378
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessTunnelReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 379
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessActiveReported:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 380
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v3, v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 381
    new-instance v3, Lcom/shilapi/xcertplay/orchestration/WirelessConnectionProof;

    invoke-direct {v3}, Lcom/shilapi/xcertplay/orchestration/WirelessConnectionProof;-><init>()V

    iput-object v3, v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessConnectionProof:Lcom/shilapi/xcertplay/orchestration/WirelessConnectionProof;

    .line 387
    sget-object v3, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;->INSTANCE:Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;->loadLastGoodPath(Landroid/content/Context;)Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;

    move-result-object v1

    iput-object v1, v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->ipv6RepairPath:Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;

    .line 392
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->vpnLatch:Ljava/util/concurrent/CountDownLatch;

    .line 393
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->teardownComplete:Ljava/util/concurrent/CountDownLatch;

    .line 395
    new-instance v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController$serviceConnection$1;

    invoke-direct {v1, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$serviceConnection$1;-><init>(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)V

    iput-object v1, v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->serviceConnection:Lcom/shilapi/xcertplay/orchestration/CarPlayController$serviceConnection$1;

    .line 407
    new-instance v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;

    invoke-direct {v1, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;-><init>(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)V

    iput-object v1, v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->sessionListener:Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;

    const/16 v1, 0x10

    .line 988
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Integer;

    aput-object v1, v5, v4

    aput-object v3, v5, v2

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->mfiCandidateAddresses:Ljava/util/List;

    const/16 v1, 0x500

    .line 989
    iput v1, v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->maxMfiCertificateBytes:I

    const/4 v1, -0x1

    .line 3038
    iput v1, v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->joinWatchGeneration:I

    .line 3105
    iput v1, v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->joinDeadlineGeneration:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;Lcom/shilapi/xcertplay/airplay/AirPlayConfig;Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;Lcom/shilapi/xcertplay/airplay/PairingStore;Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;Lcom/shilapi/xcertplay/transport/VehicleStatusProvider;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 17

    move/from16 v0, p15

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_0

    .line 272
    sget-object v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController$1;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayController$1;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    move-object v11, v1

    goto :goto_0

    :cond_0
    move-object/from16 v11, p9

    :goto_0
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_1

    .line 273
    new-instance v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda75;

    invoke-direct {v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda75;-><init>()V

    move-object v12, v1

    goto :goto_1

    :cond_1
    move-object/from16 v12, p10

    :goto_1
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_2

    .line 274
    new-instance v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda76;

    invoke-direct {v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda76;-><init>()V

    move-object v13, v1

    goto :goto_2

    :cond_2
    move-object/from16 v13, p11

    :goto_2
    and-int/lit16 v1, v0, 0x800

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    move-object v14, v2

    goto :goto_3

    :cond_3
    move-object/from16 v14, p12

    :goto_3
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_4

    move-object v15, v2

    goto :goto_4

    :cond_4
    move-object/from16 v15, p13

    :goto_4
    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_5

    .line 282
    new-instance v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda78;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda78;-><init>()V

    move-object/from16 v16, v0

    goto :goto_5

    :cond_5
    move-object/from16 v16, p14

    :goto_5
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    .line 263
    invoke-direct/range {v2 .. v16}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;-><init>(Landroid/content/Context;Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;Lcom/shilapi/xcertplay/airplay/AirPlayConfig;Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;Lcom/shilapi/xcertplay/airplay/PairingStore;Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;Lcom/shilapi/xcertplay/transport/VehicleStatusProvider;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final _init_$lambda$0(Lcom/shilapi/xcertplay/transport/LockdownPairRecord;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final _init_$lambda$1()Lkotlin/Unit;
    .locals 1

    .line 274
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final _init_$lambda$2()Lkotlin/Unit;
    .locals 1

    .line 282
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public static final synthetic access$applyClusterUi(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Z)V
    .locals 0

    .line 263
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->applyClusterUi(Z)V

    return-void
.end method

.method public static final synthetic access$armWirelessHandoffWatchdog(Lcom/shilapi/xcertplay/orchestration/CarPlayController;I)V
    .locals 0

    .line 263
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->armWirelessHandoffWatchdog(I)V

    return-void
.end method

.method public static final synthetic access$checkIphoneAvailability(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)V
    .locals 0

    .line 263
    invoke-direct {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->checkIphoneAvailability()V

    return-void
.end method

.method public static final synthetic access$debugLog(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;Z)V
    .locals 0

    .line 263
    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog(Ljava/lang/String;Z)V

    return-void
.end method

.method public static final synthetic access$fail(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/Throwable;)V
    .locals 0

    .line 263
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->fail(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic access$getActiveSession$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Lcom/shilapi/xcertplay/airplay/AirPlaySession;
    .locals 0

    .line 263
    iget-object p0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->activeSession:Lcom/shilapi/xcertplay/airplay/AirPlaySession;

    return-object p0
.end method

.method public static final synthetic access$getAppContext$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Landroid/content/Context;
    .locals 0

    .line 263
    iget-object p0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->appContext:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getClosed$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Z
    .locals 0

    .line 263
    iget-boolean p0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closed:Z

    return p0
.end method

.method public static final synthetic access$getConfig$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;
    .locals 0

    .line 263
    iget-object p0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->config:Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;

    return-object p0
.end method

.method public static final synthetic access$getHotspotRestartStreak$cp()I
    .locals 1

    .line 263
    sget v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->hotspotRestartStreak:I

    return v0
.end method

.method public static final synthetic access$getIphoneHost$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Lcom/shilapi/xcertplay/transport/IphoneUsbHost;
    .locals 0

    .line 263
    iget-object p0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->iphoneHost:Lcom/shilapi/xcertplay/transport/IphoneUsbHost;

    return-object p0
.end method

.method public static final synthetic access$getMainHandler$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Landroid/os/Handler;
    .locals 0

    .line 263
    iget-object p0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->mainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$getPermissionGrant$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 263
    iget-object p0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->permissionGrant:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic access$getPermissionPollGeneration$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)I
    .locals 0

    .line 263
    iget p0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->permissionPollGeneration:I

    return p0
.end method

.method public static final synthetic access$getPhase$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;
    .locals 0

    .line 263
    iget-object p0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->phase:Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;

    return-object p0
.end method

.method public static final synthetic access$getPlaybackStatus$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Lcom/shilapi/xcertplay/media/CarPlayPlaybackStatus;
    .locals 0

    .line 263
    iget-object p0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->playbackStatus:Lcom/shilapi/xcertplay/media/CarPlayPlaybackStatus;

    return-object p0
.end method

.method public static final synthetic access$getSessionListener$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;
    .locals 0

    .line 263
    iget-object p0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->sessionListener:Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;

    return-object p0
.end method

.method public static final synthetic access$getUiListener$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;
    .locals 0

    .line 263
    iget-object p0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->uiListener:Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    return-object p0
.end method

.method public static final synthetic access$getUsbManager$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Landroid/hardware/usb/UsbManager;
    .locals 0

    .line 263
    iget-object p0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->usbManager:Landroid/hardware/usb/UsbManager;

    return-object p0
.end method

.method public static final synthetic access$getUsbPrompt$cp()Lcom/shilapi/xcertplay/orchestration/UsbPromptStamp;
    .locals 1

    .line 263
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->usbPrompt:Lcom/shilapi/xcertplay/orchestration/UsbPromptStamp;

    return-object v0
.end method

.method public static final synthetic access$getVpnLatch$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 263
    iget-object p0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->vpnLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method public static final synthetic access$getWirelessConnectionProof$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Lcom/shilapi/xcertplay/orchestration/WirelessConnectionProof;
    .locals 0

    .line 263
    iget-object p0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessConnectionProof:Lcom/shilapi/xcertplay/orchestration/WirelessConnectionProof;

    return-object p0
.end method

.method public static final synthetic access$getWirelessGeneration$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 263
    iget-object p0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static final synthetic access$getWirelessHandoffRequested$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 263
    iget-object p0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessHandoffRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic access$getWirelessHotspotInterface$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Ljava/lang/String;
    .locals 0

    .line 263
    iget-object p0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessHotspotInterface:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$hotspotClientCount(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    .line 263
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->hotspotClientCount(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$interfaceFamilies(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 263
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->interfaceFamilies(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isBluetoothHandoffCommand(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;)Z
    .locals 0

    .line 263
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->isBluetoothHandoffCommand(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isStaleWirelessRun(Lcom/shilapi/xcertplay/orchestration/CarPlayController;I)Z
    .locals 0

    .line 263
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->isStaleWirelessRun(I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$keptGroupWorks(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/network/WirelessHotspotManager;Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;)Z
    .locals 0

    .line 263
    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->keptGroupWorks(Lcom/shilapi/xcertplay/network/WirelessHotspotManager;Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$maybeCompleteWirelessHandoff(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)V
    .locals 0

    .line 263
    invoke-direct {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->maybeCompleteWirelessHandoff()V

    return-void
.end method

.method public static final synthetic access$onCh341Permission(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/transport/Ch341UsbHost$PermissionResult;)V
    .locals 0

    .line 263
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->onCh341Permission(Lcom/shilapi/xcertplay/transport/Ch341UsbHost$PermissionResult;)V

    return-void
.end method

.method public static final synthetic access$onIphoneAttached(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Landroid/hardware/usb/UsbDevice;)V
    .locals 0

    .line 263
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->onIphoneAttached(Landroid/hardware/usb/UsbDevice;)V

    return-void
.end method

.method public static final synthetic access$onIphonePermission(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/transport/IphoneUsbHost$PermissionResult;)V
    .locals 0

    .line 263
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->onIphonePermission(Lcom/shilapi/xcertplay/transport/IphoneUsbHost$PermissionResult;)V

    return-void
.end method

.method public static final synthetic access$onRouteFrame(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)V
    .locals 0

    .line 263
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->onRouteFrame(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)V

    return-void
.end method

.method public static final synthetic access$onStatus(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;)V
    .locals 0

    .line 263
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->onStatus(Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;)V

    return-void
.end method

.method public static final synthetic access$runStack$wireSummary([B)Ljava/lang/String;
    .locals 0

    .line 263
    invoke-static {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->runStack$wireSummary([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setActiveSession$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->activeSession:Lcom/shilapi/xcertplay/airplay/AirPlaySession;

    return-void
.end method

.method public static final synthetic access$setHotspotRestartStreak$cp(I)V
    .locals 0

    .line 263
    sput p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->hotspotRestartStreak:I

    return-void
.end method

.method public static final synthetic access$setVpnService$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/network/CarPlayVpnService;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->vpnService:Lcom/shilapi/xcertplay/network/CarPlayVpnService;

    return-void
.end method

.method public static final synthetic access$startWirelessTunnelControl(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;)Z
    .locals 0

    .line 263
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->startWirelessTunnelControl(Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$wifiApStateCode(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Ljava/lang/Integer;
    .locals 0

    .line 263
    invoke-direct {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wifiApStateCode()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private final accessoryBluetoothMac(Landroid/bluetooth/BluetoothAdapter;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2880
    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move-object p1, v0

    .line 2885
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "bluetooth_address"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-object v1, v0

    :goto_1
    const/4 v2, 0x2

    .line 2889
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v1, v2, p1

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 3433
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    .line 2891
    sget-object v4, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->BLUETOOTH_ADDRESS:Lkotlin/text/Regex;

    move-object v5, v3

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2892
    const-string v4, "02:00:00:00:00:00"

    invoke-static {v3, v4, p1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v0, v2

    .line 2890
    :cond_2
    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_3

    .line 2894
    iget-object p1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->airPlayConfig:Lcom/shilapi/xcertplay/airplay/AirPlayConfig;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/AirPlayConfig;->getBtMac()Ljava/lang/String;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method private final applyClusterUi(Z)V
    .locals 7

    const-string v0, "Cluster map: "

    .line 721
    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->clusterUiLock:Ljava/lang/Object;

    monitor-enter v1

    .line 722
    :try_start_0
    iget-object v2, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->activeSession:Lcom/shilapi/xcertplay/airplay/AirPlaySession;

    if-nez v2, :cond_0

    goto :goto_2

    .line 723
    :cond_0
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->getClusterStream()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    const/4 v5, 0x0

    if-lez v4, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, v5

    :goto_0
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 724
    iget-object v4, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->clusterUiStream:Lkotlin/Pair;

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 725
    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    iput-object v3, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->clusterUiStream:Lkotlin/Pair;

    const/4 v3, 0x1

    .line 726
    iput-boolean v3, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->clusterUiShown:Z

    .line 728
    :cond_2
    iget-boolean v3, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->clusterUiShown:Z

    if-eq p1, v3, :cond_4

    .line 729
    invoke-virtual {v2, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->setClusterUiShown(Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 730
    iput-boolean p1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->clusterUiShown:Z

    if-eqz p1, :cond_3

    .line 731
    const-string/jumbo p1, "showUI, the cluster shows the map"

    goto :goto_1

    :cond_3
    const-string/jumbo p1, "stopUI, the cluster hides the map"

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v2, 0x2

    invoke-static {p0, p1, v0, v2, v5}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 733
    :cond_4
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 721
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1

    throw p1
.end method

.method private final applyHotspotNameRule(Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;)V
    .locals 5

    .line 2638
    sget-object v0, Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;->INSTANCE:Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;->application(Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;)Lcom/shilapi/xcertplay/network/FreeAutoHotspotName$Application;

    move-result-object p1

    sget-object v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$WhenMappings;->$EnumSwitchMapping$8:[I

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/network/FreeAutoHotspotName$Application;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v0, :cond_2

    if-eq p1, v1, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void

    .line 2639
    :cond_2
    :try_start_0
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object p1, p0

    check-cast p1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    .line 2640
    sget-object p1, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->Companion:Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->appContext:Landroid/content/Context;

    const-string v2, "appContext"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/shilapi/xcertplay/orchestration/CarPlayController$applyHotspotNameRule$1$1;

    invoke-direct {v2, p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$applyHotspotNameRule$1$1;-><init>(Ljava/lang/Object;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    const-wide/16 v3, 0x61a8

    invoke-virtual {p1, v0, v3, v4, v2}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;->applyNameRuleToRunningHotspot(Landroid/content/Context;JLkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$NameResult;

    move-result-object p1

    .line 2639
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2641
    :goto_1
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Hotspot name rule skipped ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "); continuing with the current name"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v0, v2, v1, v3}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_3
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    return-void
.end method

.method private final armWirelessHandoffWatchdog(I)V
    .locals 4

    .line 1749
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda54;

    invoke-direct {v1, p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda54;-><init>(Lcom/shilapi/xcertplay/orchestration/CarPlayController;I)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final armWirelessHandoffWatchdog$lambda$85(Lcom/shilapi/xcertplay/orchestration/CarPlayController;I)V
    .locals 4

    .line 1752
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closed:Z

    if-nez v0, :cond_1

    .line 1753
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->phase:Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;->WIRELESS:Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;

    if-ne v0, v1, :cond_1

    .line 1754
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 1755
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessHandoffRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1756
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessActiveReported:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 1760
    const-string/jumbo v2, "wireless handoff timed out waiting for tunnel iAP2 readiness"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3, v0, v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 1761
    new-instance v0, Ljava/lang/Thread;

    .line 1787
    new-instance v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda14;-><init>(Lcom/shilapi/xcertplay/orchestration/CarPlayController;I)V

    .line 1786
    const-string/jumbo p0, "xcertplay-wireless-handoff-timeout"

    .line 1761
    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 1788
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 1789
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final armWirelessHandoffWatchdog$lambda$85$lambda$83(Lcom/shilapi/xcertplay/orchestration/CarPlayController;I)V
    .locals 3

    .line 1764
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closed:Z

    if-nez v0, :cond_2

    .line 1765
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->phase:Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;->WIRELESS:Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;

    if-ne v0, v1, :cond_2

    .line 1766
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 1767
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessActiveReported:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1771
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessConnectionProof:Lcom/shilapi/xcertplay/orchestration/WirelessConnectionProof;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/orchestration/WirelessConnectionProof;->hasRenderedFrame(I)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    const/4 v1, 0x2

    .line 1776
    const-string/jumbo v2, "wireless handoff tunnel iAP2 unavailable after first video frame; preserving the active CarPlay session"

    invoke-static {p0, v2, p1, v1, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 1780
    sget-object p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WirelessActive;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WirelessActive;

    check-cast p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->onStatus(Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;)V

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 1783
    invoke-static {p0, v0, p1, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closeWirelessStack$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/network/CarPlayVpnService;ILjava/lang/Object;)V

    .line 1784
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Wireless CarPlay handoff timed out waiting for tunnel iAP2"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->fail(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static final attachUi$lambda$4(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 515
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->uiListener:Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    if-ne v0, p1, :cond_0

    iget-object p0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->lastReportedStatus:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;

    if-eqz p0, :cond_0

    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private final attachVpn(Lcom/shilapi/xcertplay/transport/NcmUsbBridge;[B)Lcom/shilapi/xcertplay/network/CarPlayVpnService;
    .locals 14

    .line 2921
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$AttachingNetwork;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$AttachingNetwork;

    check-cast v0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->onStatus(Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;)V

    .line 2922
    invoke-direct {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->awaitVpnService()Lcom/shilapi/xcertplay/network/CarPlayVpnService;

    move-result-object v1

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-nez v1, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    .line 2923
    const-string/jumbo v0, "wired VPN service bind failed"

    invoke-static {p0, v0, v12, v11, v13}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 2924
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->close()V

    return-object v13

    .line 2927
    :cond_0
    const-string/jumbo v0, "wired VPN service bound; attaching NCM transport"

    invoke-static {p0, v0, v12, v11, v13}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 2931
    :try_start_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->config:Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;->getLinkLocal()Ljava/lang/String;

    move-result-object v3

    .line 2933
    iget-object v5, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->airPlayConfig:Lcom/shilapi/xcertplay/airplay/AirPlayConfig;

    .line 2934
    iget-object v6, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->identity:Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;

    .line 2935
    iget-object v7, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->pairings:Lcom/shilapi/xcertplay/airplay/PairingStore;

    .line 2936
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->mfiSession:Lcom/shilapi/xcertplay/orchestration/MfiSession;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/orchestration/MfiSession;->getClient()Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;

    move-result-object v0

    move-object v8, v0

    goto :goto_0

    :cond_1
    move-object v8, v13

    .line 2937
    :goto_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->sessionListener:Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;

    move-object v9, v0

    check-cast v9, Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    .line 2938
    iget-object v10, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->media:Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;

    move-object v2, p1

    move-object/from16 v4, p2

    .line 2929
    invoke-virtual/range {v1 .. v10}, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->attach(Lcom/shilapi/xcertplay/transport/NcmUsbBridge;Ljava/lang/String;[BLcom/shilapi/xcertplay/airplay/AirPlayConfig;Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;Lcom/shilapi/xcertplay/airplay/PairingStore;Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;)Lcom/shilapi/xcertplay/network/CarPlayVpnService$AttachResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2946
    sget-object v2, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AttachResult$Started;->INSTANCE:Lcom/shilapi/xcertplay/network/CarPlayVpnService$AttachResult$Started;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2947
    const-string/jumbo p1, "wired VPN/NCM transport attach result=started"

    invoke-static {p0, p1, v12, v11, v13}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    return-object v1

    .line 2950
    :cond_2
    sget-object v1, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AttachResult$AlreadyStarted;->INSTANCE:Lcom/shilapi/xcertplay/network/CarPlayVpnService$AttachResult$AlreadyStarted;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2951
    const-string/jumbo v0, "wired VPN/NCM transport attach result=already-started"

    invoke-static {p0, v0, v12, v11, v13}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 2952
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->close()V

    return-object v13

    .line 2955
    :cond_3
    instance-of v1, v0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AttachResult$Failed;

    if-eqz v1, :cond_4

    .line 2956
    check-cast v0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AttachResult$Failed;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AttachResult$Failed;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "wired VPN/NCM transport attach result=failed "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v12, v11, v13}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 2957
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->close()V

    .line 2958
    new-instance p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$Failed;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AttachResult$Failed;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, v12, v11, v13}, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$Failed;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->onStatus(Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;)V

    return-object v13

    .line 2945
    :cond_4
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :catchall_0
    move-exception v0

    .line 2941
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->close()V

    .line 2942
    new-instance p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$Failed;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p1, v1, v12, v11, v13}, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$Failed;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->onStatus(Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;)V

    return-object v13
.end method

.method private final awaitOwnLocalHotspotOff()V
    .locals 7

    .line 2652
    sget-object v0, Lcom/shilapi/xcertplay/network/OwnLocalOnlyHotspot;->INSTANCE:Lcom/shilapi/xcertplay/network/OwnLocalOnlyHotspot;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-wide/16 v1, 0xbb8

    const-wide/16 v3, 0x0

    invoke-static/range {v0 .. v6}, Lcom/shilapi/xcertplay/network/OwnLocalOnlyHotspot;->releasedWithin$default(Lcom/shilapi/xcertplay/network/OwnLocalOnlyHotspot;JJILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2653
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0xbb8

    add-long/2addr v0, v2

    .line 2654
    :goto_0
    sget-object v2, Lcom/shilapi/xcertplay/network/CarHotspotStatus;->INSTANCE:Lcom/shilapi/xcertplay/network/CarHotspotStatus;

    iget-object v3, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->appContext:Landroid/content/Context;

    const-string v4, "appContext"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/shilapi/xcertplay/network/CarHotspotStatus;->isOnOrStarting(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2655
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-gez v4, :cond_1

    iget-boolean v2, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closed:Z

    if-nez v2, :cond_1

    const-wide/16 v2, 0x64

    .line 2657
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private final awaitUsbBluetoothIap2(ILcom/shilapi/xcertplay/network/WirelessHotspotInfo;)Lcom/shilapi/xcertplay/orchestration/CarPlayController$UsbBtWait;
    .locals 3

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->isStaleWirelessRun(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->activeSession:Lcom/shilapi/xcertplay/airplay/AirPlaySession;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->appContext:Landroid/content/Context;

    invoke-static {v0, p0, p1}, Lcom/shilapi/xcertplay/E01OemBluetooth;->open(Landroid/content/Context;Ljava/lang/Object;I)Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;

    move-result-object v1

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->activeSession:Lcom/shilapi/xcertplay/airplay/AirPlaySession;

    if-eqz v0, :cond_1

    invoke-interface {v1}, Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;->close()V

    :cond_0
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$UsbBtWait$WifiWon;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayController$UsbBtWait$WifiWon;

    return-object v0

    :cond_1
    new-instance v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$UsbBtWait$Bluetooth;

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$UsbBtWait$Bluetooth;-><init>(Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;)V

    return-object v0

    :cond_2
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$UsbBtWait$Stale;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayController$UsbBtWait$Stale;

    return-object v0
.end method

.method private static final awaitUsbBluetoothIap2$lambda$91()J
    .locals 2

    .line 1936
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method private static final awaitUsbBluetoothIap2$lambda$92(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;)Lkotlin/Unit;
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1939
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "wireless USB Bluetooth "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final awaitUsbBluetoothIap2$lambda$94(Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;JLcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;
    .locals 12

    const-string v0, "it"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1979
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->getPages()I

    move-result v5

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector;->getPagingNow()Z

    move-result v6

    .line 1980
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/16 v10, 0xc7

    const/4 v11, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p3

    .line 1979
    invoke-static/range {v1 .. v11}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;->copy$default(Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;Ljava/lang/Long;ZLjava/lang/String;IZLjava/lang/Long;Lcom/shilapi/xcertplay/usbbt/UsbBtDongleState;Lcom/shilapi/xcertplay/usbbt/ReconnectPath;ILjava/lang/Object;)Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;

    move-result-object p0

    return-object p0
.end method

.method private final awaitUsbBluetoothPermission(ILandroid/hardware/usb/UsbDevice;)V
    .locals 16

    move-object/from16 v0, p0

    .line 1866
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1867
    sget-object v8, Lcom/shilapi/xcertplay/orchestration/UsbBluetoothPromptPolicy;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/UsbBluetoothPromptPolicy;

    .line 1868
    sget-object v1, Lcom/shilapi/xcertplay/orchestration/WiredUsbPromptPolicy;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/WiredUsbPromptPolicy;

    sget-object v10, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->usbPrompt:Lcom/shilapi/xcertplay/orchestration/UsbPromptStamp;

    invoke-virtual {v10}, Lcom/shilapi/xcertplay/orchestration/UsbPromptStamp;->getShownAtNanos()J

    move-result-wide v2

    const-wide/32 v6, 0xea60

    invoke-virtual/range {v1 .. v7}, Lcom/shilapi/xcertplay/orchestration/WiredUsbPromptPolicy;->promptOutstanding(JJJ)Z

    move-result v1

    .line 1869
    sget-object v11, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->usbBluetoothPromptAsked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    .line 1867
    invoke-virtual {v8, v1, v2}, Lcom/shilapi/xcertplay/orchestration/UsbBluetoothPromptPolicy;->decide(ZZ)Lcom/shilapi/xcertplay/orchestration/UsbBluetoothPromptPolicy$Action;

    move-result-object v1

    sget-object v2, Lcom/shilapi/xcertplay/orchestration/CarPlayController$WhenMappings;->$EnumSwitchMapping$3:[I

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/orchestration/UsbBluetoothPromptPolicy$Action;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const-string v12, "USB Bluetooth adapter permission was not granted; allow it with Settings \u203a Diagnostics \u203a USB Bluetooth: discoverable, then try again"

    const/4 v2, 0x1

    if-eq v1, v2, :cond_7

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x2

    if-eq v1, v15, :cond_1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    .line 1883
    invoke-virtual {v11, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1884
    invoke-virtual {v10, v4, v5}, Lcom/shilapi/xcertplay/orchestration/UsbPromptStamp;->mark(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->ownUsbPromptStamp:J

    .line 1885
    const-string/jumbo v1, "wireless USB Bluetooth adapter: asking for USB permission"

    invoke-static {v0, v1, v14, v15, v13}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 1887
    iget-object v1, v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda41;

    move-object/from16 v3, p2

    invoke-direct {v2, v0, v3}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda41;-><init>(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Landroid/hardware/usb/UsbDevice;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1867
    :cond_0
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    :cond_1
    move-object/from16 v3, p2

    .line 1873
    sget-object v1, Lcom/shilapi/xcertplay/orchestration/WiredUsbPromptPolicy;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/WiredUsbPromptPolicy;

    invoke-virtual {v10}, Lcom/shilapi/xcertplay/orchestration/UsbPromptStamp;->getShownAtNanos()J

    move-result-wide v2

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-wide/16 v6, 0x0

    invoke-static/range {v1 .. v9}, Lcom/shilapi/xcertplay/orchestration/WiredUsbPromptPolicy;->mayReask$default(Lcom/shilapi/xcertplay/orchestration/WiredUsbPromptPolicy;JJJILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1874
    const-string/jumbo v1, "wireless USB Bluetooth adapter: re-asking USB permission (dialog likely never shown)"

    invoke-static {v0, v1, v14, v15, v13}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 1875
    invoke-virtual {v10}, Lcom/shilapi/xcertplay/orchestration/UsbPromptStamp;->clear()V

    .line 1876
    invoke-virtual {v11, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1878
    invoke-direct/range {p0 .. p2}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->awaitUsbBluetoothPermission(ILandroid/hardware/usb/UsbDevice;)V

    return-void

    .line 1880
    :cond_2
    const-string/jumbo v1, "wireless USB Bluetooth adapter: a USB permission prompt is already open; waiting for it"

    invoke-static {v0, v1, v14, v15, v13}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    :goto_0
    const-wide v1, 0xdf8475800L

    add-long/2addr v4, v1

    .line 1896
    :goto_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    cmp-long v3, v1, v4

    if-gez v3, :cond_6

    .line 1897
    invoke-direct/range {p0 .. p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->isStaleWirelessRun(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1898
    sget-object v1, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtSession;

    iget-object v2, v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->appContext:Landroid/content/Context;

    const-string v3, "appContext"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->dongle(Landroid/content/Context;)Landroid/hardware/usb/UsbDevice;

    move-result-object v1

    if-nez v1, :cond_3

    move-object/from16 v1, p2

    .line 1899
    :cond_3
    sget-object v2, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtSession;

    iget-object v6, v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->appContext:Landroid/content/Context;

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v6, v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->hasPermission(Landroid/content/Context;Landroid/hardware/usb/UsbDevice;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1900
    sget-object v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->usbPrompt:Lcom/shilapi/xcertplay/orchestration/UsbPromptStamp;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/orchestration/UsbPromptStamp;->clear()V

    .line 1901
    const-string/jumbo v1, "wireless USB Bluetooth adapter: USB permission granted"

    invoke-static {v0, v1, v14, v15, v13}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_4
    const-wide/16 v1, 0x1f4

    .line 1904
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_1

    .line 1897
    :cond_5
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "stale wireless run"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1906
    :cond_6
    sget-object v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->usbPrompt:Lcom/shilapi/xcertplay/orchestration/UsbPromptStamp;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/orchestration/UsbPromptStamp;->clear()V

    .line 1907
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1871
    :cond_7
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method private static final awaitUsbBluetoothPermission$lambda$90(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Landroid/hardware/usb/UsbDevice;)V
    .locals 2

    .line 1888
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->ensureUsbPermissionVisible:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1889
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda16;-><init>(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Landroid/hardware/usb/UsbDevice;)V

    const-wide/16 p0, 0x190

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final awaitUsbBluetoothPermission$lambda$90$lambda$89(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Landroid/hardware/usb/UsbDevice;)V
    .locals 2

    .line 1890
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtSession;

    iget-object p0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->appContext:Landroid/content/Context;

    const-string v1, "appContext"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->requestPermission(Landroid/content/Context;Landroid/hardware/usb/UsbDevice;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final awaitVpnService()Lcom/shilapi/xcertplay/network/CarPlayVpnService;
    .locals 5

    .line 2968
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->vpnService:Lcom/shilapi/xcertplay/network/CarPlayVpnService;

    if-eqz v0, :cond_0

    return-object v0

    .line 2969
    :cond_0
    invoke-direct {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->bindVpn()V

    const/4 v0, 0x0

    .line 2971
    :try_start_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->vpnLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->vpnService:Lcom/shilapi/xcertplay/network/CarPlayVpnService;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    .line 2973
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    return-object v0
.end method

.method private final beginReenumeration(Landroid/hardware/usb/UsbDevice;)V
    .locals 3

    .line 2150
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;->REENUMERATION:Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;

    iput-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->phase:Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;

    .line 2151
    iget v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->reenumerationAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->reenumerationAttempts:I

    .line 2152
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$SelectingConfiguration;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$SelectingConfiguration;

    check-cast v0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->onStatus(Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;)V

    .line 2153
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->iphoneHost:Lcom/shilapi/xcertplay/transport/IphoneUsbHost;

    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->executor:Ljava/util/concurrent/ExecutorService;

    check-cast v1, Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda9;-><init>(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/shilapi/xcertplay/transport/IphoneUsbHost;->requestCarPlayReenumerationAsync(Landroid/hardware/usb/UsbDevice;Ljava/util/concurrent/Executor;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final beginReenumeration$lambda$103(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/transport/IphoneUsbHost$TransitionResult;)Lkotlin/Unit;
    .locals 1

    const-string/jumbo v0, "transition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2155
    sget-object v0, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$TransitionResult$ReenumerationRequested;->INSTANCE:Lcom/shilapi/xcertplay/transport/IphoneUsbHost$TransitionResult$ReenumerationRequested;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2156
    sget-object p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForReenumeration;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForReenumeration;

    check-cast p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->onStatus(Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;)V

    .line 2157
    invoke-direct {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->watchReenumeration()V

    goto :goto_0

    .line 2159
    :cond_0
    instance-of v0, p1, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$TransitionResult$Failed;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$TransitionResult$Failed;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$TransitionResult$Failed;->getError()Lcom/shilapi/xcertplay/transport/IphoneUsbException;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->fail(Ljava/lang/Throwable;)V

    .line 2161
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 2154
    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method private final bindVpn()V
    .locals 5

    .line 2979
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->vpnBound:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2980
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->vpnBound:Z

    const/4 v1, 0x0

    .line 2982
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->appContext:Landroid/content/Context;

    const-class v4, Lcom/shilapi/xcertplay/network/CarPlayVpnService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2983
    iget-object v3, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->appContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->serviceConnection:Lcom/shilapi/xcertplay/orchestration/CarPlayController$serviceConnection$1;

    check-cast v4, Landroid/content/ServiceConnection;

    invoke-virtual {v3, v2, v4, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2984
    iput-boolean v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->vpnBound:Z

    .line 2985
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->vpnLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    return-void

    .line 2988
    :catchall_0
    iput-boolean v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->vpnBound:Z

    .line 2989
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->vpnLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private final checkCh341Mfi(Lcom/shilapi/xcertplay/transport/Ch341UsbHost;)V
    .locals 2

    .line 830
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closed:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->phase:Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;->MFI:Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 831
    :cond_0
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/Ch341UsbHost;->discover()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    if-nez p1, :cond_1

    .line 833
    invoke-direct {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->waitForMfi()V

    return-void

    .line 835
    :cond_1
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->availabilityPollGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 836
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->requestCh341Permission(Landroid/hardware/usb/UsbDevice;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private final checkIphoneAvailability()V
    .locals 5

    .line 2010
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closed:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->phase:Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;->IPHONE:Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2011
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->iphoneHost:Lcom/shilapi/xcertplay/transport/IphoneUsbHost;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/IphoneUsbHost;->discover()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    if-nez v0, :cond_1

    .line 2013
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForIphone;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForIphone;

    check-cast v0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->onStatus(Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;)V

    .line 2014
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;->IPHONE:Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;

    new-instance v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController$checkIphoneAvailability$1;

    invoke-direct {v1, p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$checkIphoneAvailability$1;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, v0, v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->scheduleAvailabilityPoll(Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;Lkotlin/jvm/functions/Function0;)V

    return-void

    .line 2017
    :cond_1
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v2}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "toString(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2018
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v4

    invoke-static {v2}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "wired iPhone discovered vid=0x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pid=0x"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2016
    invoke-static {p0, v1, v4, v2, v3}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 2020
    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->availabilityPollGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 2021
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->requestIphonePermission(Landroid/hardware/usb/UsbDevice;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static final close$lambda$29(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/network/CarPlayVpnService;)V
    .locals 5

    const-wide/16 v0, 0x7d0

    .line 679
    :try_start_0
    iget-object v2, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->config:Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;->getTransport()Lcom/shilapi/xcertplay/orchestration/CarPlayTransport;

    move-result-object v2

    sget-object v3, Lcom/shilapi/xcertplay/orchestration/CarPlayTransport;->WIRELESS:Lcom/shilapi/xcertplay/orchestration/CarPlayTransport;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    .line 680
    const-string/jumbo v2, "wireless stack"

    new-instance v3, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda58;

    invoke-direct {v3, p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda58;-><init>(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/network/CarPlayVpnService;)V

    invoke-direct {p0, v2, v3}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closeBestEffort(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    .line 682
    :cond_0
    const-string v2, "CSM"

    new-instance v3, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda59;

    invoke-direct {v3, p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda59;-><init>(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)V

    invoke-direct {p0, v2, v3}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closeBestEffort(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 683
    iput-object v4, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->csm:Lcom/shilapi/xcertplay/iap2/session/Iap2Session;

    .line 685
    :goto_0
    const-string v2, "USBMUX"

    new-instance v3, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda60;

    invoke-direct {v3, p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda60;-><init>(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)V

    invoke-direct {p0, v2, v3}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closeBestEffort(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 686
    iput-object v4, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->mux:Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;

    .line 691
    iget-boolean v2, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->usbBluetoothHeld:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 692
    iput-boolean v2, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->usbBluetoothHeld:Z

    .line 693
    sget-object v2, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtSession;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->release()V

    .line 695
    :cond_1
    iget-object v2, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->config:Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;->getTransport()Lcom/shilapi/xcertplay/orchestration/CarPlayTransport;

    move-result-object v2

    sget-object v3, Lcom/shilapi/xcertplay/orchestration/CarPlayTransport;->WIRED:Lcom/shilapi/xcertplay/orchestration/CarPlayTransport;

    if-ne v2, v3, :cond_2

    .line 696
    const-string v2, "VPN/NCM"

    new-instance v3, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda61;

    invoke-direct {v3, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda61;-><init>(Lcom/shilapi/xcertplay/network/CarPlayVpnService;)V

    invoke-direct {p0, v2, v3}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closeBestEffort(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 698
    :cond_2
    const-string p1, "MFi"

    new-instance v2, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda62;

    invoke-direct {v2, p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda62;-><init>(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)V

    invoke-direct {p0, p1, v2}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closeBestEffort(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 699
    iput-object v4, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->mfiSession:Lcom/shilapi/xcertplay/orchestration/MfiSession;

    .line 700
    iput-object v4, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessIdentification:Lcom/shilapi/xcertplay/transport/Iap2IdentificationConfig;

    .line 701
    iput-object v4, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessAirPlayEndpoint:Lcom/shilapi/xcertplay/transport/Iap2WirelessCarPlayEndpoint;

    .line 702
    const-string p1, "location provider"

    new-instance v2, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda63;

    invoke-direct {v2, p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda63;-><init>(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)V

    invoke-direct {p0, p1, v2}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closeBestEffort(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 704
    iget-object p1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 706
    :try_start_1
    iget-object p1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->executor:Ljava/util/concurrent/ExecutorService;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, v2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 708
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 710
    :goto_1
    iget-object p0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->teardownComplete:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception p1

    .line 704
    iget-object v2, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 706
    :try_start_2
    iget-object v2, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->executor:Ljava/util/concurrent/ExecutorService;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v0, v1, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 708
    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 710
    :goto_2
    iget-object p0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->teardownComplete:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw p1
.end method

.method private static final close$lambda$29$lambda$23(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/network/CarPlayVpnService;)Lkotlin/Unit;
    .locals 0

    .line 680
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closeWirelessStack(Lcom/shilapi/xcertplay/network/CarPlayVpnService;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final close$lambda$29$lambda$24(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Lkotlin/Unit;
    .locals 0

    .line 682
    iget-object p0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->csm:Lcom/shilapi/xcertplay/iap2/session/Iap2Session;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/iap2/session/Iap2Session;->close()V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final close$lambda$29$lambda$25(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Lkotlin/Unit;
    .locals 0

    .line 685
    iget-object p0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->mux:Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->close()V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final close$lambda$29$lambda$26(Lcom/shilapi/xcertplay/network/CarPlayVpnService;)Lkotlin/Unit;
    .locals 0

    if-eqz p0, :cond_0

    .line 696
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->detach()V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final close$lambda$29$lambda$27(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Lkotlin/Unit;
    .locals 0

    .line 698
    iget-object p0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->mfiSession:Lcom/shilapi/xcertplay/orchestration/MfiSession;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/orchestration/MfiSession;->close()V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final close$lambda$29$lambda$28(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Lkotlin/Unit;
    .locals 0

    .line 702
    iget-object p0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->locationProvider:Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;->close()V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final closeBestEffort(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 2907
    :try_start_0
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    .line 2909
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " teardown failed"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final closeBluetoothBootstrapTransport()V
    .locals 3

    .line 1988
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->csm:Lcom/shilapi/xcertplay/iap2/session/Iap2Session;

    const/4 v1, 0x0

    .line 1989
    iput-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->csm:Lcom/shilapi/xcertplay/iap2/session/Iap2Session;

    if-eqz v0, :cond_0

    .line 1990
    new-instance v2, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda33;

    invoke-direct {v2, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda33;-><init>(Lcom/shilapi/xcertplay/iap2/session/Iap2Session;)V

    const-string/jumbo v0, "wireless CSM"

    invoke-direct {p0, v0, v2}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closeBestEffort(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 1992
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->bluetoothStream:Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;

    .line 1993
    iput-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->bluetoothStream:Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;

    if-eqz v0, :cond_1

    .line 1994
    new-instance v2, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda44;

    invoke-direct {v2, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda44;-><init>(Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;)V

    const-string/jumbo v0, "wireless RFCOMM stream"

    invoke-direct {p0, v0, v2}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closeBestEffort(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 1996
    :cond_1
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->bluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    .line 1997
    iput-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->bluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_2

    .line 1998
    new-instance v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda55;

    invoke-direct {v1, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda55;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    const-string/jumbo v0, "wireless Bluetooth socket"

    invoke-direct {p0, v0, v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closeBestEffort(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    :cond_2
    return-void
.end method

.method private static final closeBluetoothBootstrapTransport$lambda$95(Lcom/shilapi/xcertplay/iap2/session/Iap2Session;)Lkotlin/Unit;
    .locals 0

    .line 1990
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/iap2/session/Iap2Session;->close()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final closeBluetoothBootstrapTransport$lambda$96(Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;)Lkotlin/Unit;
    .locals 0

    .line 1994
    invoke-interface {p0}, Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;->close()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final closeBluetoothBootstrapTransport$lambda$97(Landroid/bluetooth/BluetoothSocket;)Lkotlin/Unit;
    .locals 0

    .line 1998
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSocket;->close()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final closeMfiSession()V
    .locals 3

    .line 3018
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->mfiSession:Lcom/shilapi/xcertplay/orchestration/MfiSession;

    const/4 v1, 0x0

    .line 3019
    iput-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->mfiSession:Lcom/shilapi/xcertplay/orchestration/MfiSession;

    if-eqz v0, :cond_0

    .line 3021
    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda26;

    invoke-direct {v2, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda26;-><init>(Lcom/shilapi/xcertplay/orchestration/MfiSession;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private static final closeMfiSession$lambda$173(Lcom/shilapi/xcertplay/orchestration/MfiSession;)V
    .locals 0

    .line 3023
    :try_start_0
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/orchestration/MfiSession;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private final closeReceivers()V
    .locals 5

    .line 3005
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->permissionCloseable:Ljava/io/Closeable;

    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->attachCloseable:Ljava/io/Closeable;

    iget-object v2, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->ch341PermissionCloseable:Ljava/io/Closeable;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/io/Closeable;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 3435
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Closeable;

    .line 3007
    :try_start_0
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3012
    iput-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->permissionCloseable:Ljava/io/Closeable;

    .line 3013
    iput-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->attachCloseable:Ljava/io/Closeable;

    .line 3014
    iput-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->ch341PermissionCloseable:Ljava/io/Closeable;

    return-void
.end method

.method private final closeWirelessStack(Lcom/shilapi/xcertplay/network/CarPlayVpnService;)V
    .locals 5

    invoke-static {p0}, Lcom/shilapi/xcertplay/E01OemBluetooth;->cancelPrepared(Ljava/lang/Object;)V

    .line 2791
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->ipv6Watchdog:Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->stop()V

    :cond_0
    const/4 v0, 0x0

    .line 2792
    iput-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->ipv6Watchdog:Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;

    .line 2793
    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessConnectionProof:Lcom/shilapi/xcertplay/orchestration/WirelessConnectionProof;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/orchestration/WirelessConnectionProof;->clear()V

    .line 2794
    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->media:Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;

    invoke-interface {v1, v0}, Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;->setIapTunnelHandler(Lkotlin/jvm/functions/Function1;)V

    .line 2795
    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessTunnel:Lcom/shilapi/xcertplay/orchestration/CurrentChannel;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/orchestration/CurrentChannel;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shilapi/xcertplay/iap2/session/Iap2Session;

    if-eqz v1, :cond_1

    .line 2796
    new-instance v2, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda71;

    invoke-direct {v2, v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda71;-><init>(Lcom/shilapi/xcertplay/iap2/session/Iap2Session;)V

    const-string/jumbo v1, "tunneled iAP2 link"

    invoke-direct {p0, v1, v2}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closeBestEffort(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 2798
    :cond_1
    invoke-direct {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closeBluetoothBootstrapTransport()V

    .line 2800
    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->bonjour:Lcom/shilapi/xcertplay/network/CarPlayBonjour;

    .line 2801
    iput-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->bonjour:Lcom/shilapi/xcertplay/network/CarPlayBonjour;

    if-eqz v1, :cond_2

    .line 2802
    new-instance v2, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda72;

    invoke-direct {v2, v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda72;-><init>(Lcom/shilapi/xcertplay/network/CarPlayBonjour;)V

    const-string v1, "Bonjour"

    invoke-direct {p0, v1, v2}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closeBestEffort(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 2804
    :cond_2
    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->hotspot:Lcom/shilapi/xcertplay/network/WirelessHotspotManager;

    .line 2805
    iput-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->hotspot:Lcom/shilapi/xcertplay/network/WirelessHotspotManager;

    .line 2806
    iget-object v2, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->hotspotInfoForKeep:Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;

    .line 2807
    iput-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->hotspotInfoForKeep:Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;

    .line 2808
    sget-object v3, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory;->down()V

    if-eqz v1, :cond_4

    .line 2812
    instance-of v3, v1, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->getBackend()Lcom/shilapi/xcertplay/network/WirelessHotspotBackend;

    move-result-object v3

    sget-object v4, Lcom/shilapi/xcertplay/network/WirelessHotspotBackend;->WIFI_P2P:Lcom/shilapi/xcertplay/network/WirelessHotspotBackend;

    if-ne v3, v4, :cond_3

    .line 2813
    sget-object v3, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;->Companion:Lcom/shilapi/xcertplay/network/WirelessGroupKeeper$Companion;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper$Companion;->getShared()Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;->park(Lcom/shilapi/xcertplay/network/WirelessHotspotManager;Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;)V

    goto :goto_0

    .line 2815
    :cond_3
    new-instance v2, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda73;

    invoke-direct {v2, v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda73;-><init>(Lcom/shilapi/xcertplay/network/WirelessHotspotManager;)V

    const-string/jumbo v1, "wireless hotspot"

    invoke-direct {p0, v1, v2}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closeBestEffort(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 2818
    :cond_4
    :goto_0
    iput-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessIdentification:Lcom/shilapi/xcertplay/transport/Iap2IdentificationConfig;

    .line 2819
    iput-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessAirPlayEndpoint:Lcom/shilapi/xcertplay/transport/Iap2WirelessCarPlayEndpoint;

    .line 2820
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessHandoffRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2821
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessTunnelReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2822
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessActiveReported:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz p1, :cond_5

    .line 2824
    new-instance v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda74;

    invoke-direct {v0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda74;-><init>(Lcom/shilapi/xcertplay/network/CarPlayVpnService;)V

    const-string p1, "AirPlay service"

    invoke-direct {p0, p1, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closeBestEffort(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 2826
    :cond_5
    sget-object p1, Lcom/shilapi/xcertplay/network/WirelessRadioKeepAlive;->INSTANCE:Lcom/shilapi/xcertplay/network/WirelessRadioKeepAlive;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/network/WirelessRadioKeepAlive;->release()V

    return-void
.end method

.method static synthetic closeWirelessStack$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/network/CarPlayVpnService;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 2790
    iget-object p1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->vpnService:Lcom/shilapi/xcertplay/network/CarPlayVpnService;

    :cond_0
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closeWirelessStack(Lcom/shilapi/xcertplay/network/CarPlayVpnService;)V

    return-void
.end method

.method private static final closeWirelessStack$lambda$162(Lcom/shilapi/xcertplay/iap2/session/Iap2Session;)Lkotlin/Unit;
    .locals 0

    .line 2796
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/iap2/session/Iap2Session;->close()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final closeWirelessStack$lambda$163(Lcom/shilapi/xcertplay/network/CarPlayBonjour;)Lkotlin/Unit;
    .locals 0

    .line 2802
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->close()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final closeWirelessStack$lambda$164(Lcom/shilapi/xcertplay/network/WirelessHotspotManager;)Lkotlin/Unit;
    .locals 0

    .line 2815
    invoke-interface {p0}, Lcom/shilapi/xcertplay/network/WirelessHotspotManager;->close()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final closeWirelessStack$lambda$165(Lcom/shilapi/xcertplay/network/CarPlayVpnService;)Lkotlin/Unit;
    .locals 0

    .line 2824
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->detach()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final connectBluetoothSocket(Landroid/bluetooth/BluetoothSocket;Ljava/lang/String;)V
    .locals 6

    .line 2708
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2709
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 2710
    new-instance v3, Ljava/lang/Thread;

    .line 2721
    new-instance v4, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda22;

    invoke-direct {v4, p1, v0, v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda22;-><init>(Landroid/bluetooth/BluetoothSocket;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    .line 2720
    const-string/jumbo v5, "wireless-rfcomm-connect"

    .line 2710
    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 2722
    invoke-virtual {v3, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 2723
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 2726
    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x3a98

    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    .line 2743
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    if-eqz p1, :cond_1

    .line 2745
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_0

    throw p1

    .line 2746
    :cond_0
    new-instance v0, Ljava/io/IOException;

    sget-object v1, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;->INSTANCE:Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;

    invoke-virtual {v1, p2}, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;->mask(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not connect RFCOMM to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    return-void

    .line 2736
    :cond_2
    sget-object v0, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;->INSTANCE:Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;

    invoke-virtual {v0, p2}, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;->mask(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "wireless RFCOMM connect timed out after 15000ms address="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2734
    invoke-static {p0, v0, v3, v1, v2}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 2738
    :try_start_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->close()V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2739
    :goto_0
    new-instance p1, Ljava/io/IOException;

    .line 2740
    sget-object v0, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;->INSTANCE:Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;

    invoke-virtual {v0, p2}, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;->mask(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Timed out after 15000ms connecting RFCOMM to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2739
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception v0

    .line 2728
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 2729
    :try_start_2
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->close()V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2730
    :goto_1
    new-instance p1, Ljava/io/IOException;

    sget-object v1, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;->INSTANCE:Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;

    invoke-virtual {v1, p2}, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;->mask(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Interrupted while connecting RFCOMM to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {p1, p2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static final connectBluetoothSocket$lambda$149(Landroid/bluetooth/BluetoothSocket;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 2713
    :try_start_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSocket;->connect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2717
    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception p0

    .line 2715
    :try_start_1
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2717
    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_1
    move-exception p0

    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw p0
.end method

.method private final connectedBluetoothDevices(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothAdapter;",
            ")",
            "Ljava/util/Set<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 2840
    invoke-static {}, Lkotlin/collections/SetsKt;->createSetBuilder()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x1

    .line 2841
    const-class v2, Landroid/bluetooth/BluetoothHeadset;

    invoke-direct {p0, p1, v1, v2}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->connectedBluetoothDevices(Landroid/bluetooth/BluetoothAdapter;ILjava/lang/Class;)Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x2

    .line 2842
    const-class v2, Landroid/bluetooth/BluetoothA2dp;

    invoke-direct {p0, p1, v1, v2}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->connectedBluetoothDevices(Landroid/bluetooth/BluetoothAdapter;ILjava/lang/Class;)Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2840
    invoke-static {v0}, Lkotlin/collections/SetsKt;->build(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method private final connectedBluetoothDevices(Landroid/bluetooth/BluetoothAdapter;ILjava/lang/Class;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/bluetooth/BluetoothProfile;",
            ">(",
            "Landroid/bluetooth/BluetoothAdapter;",
            "I",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/Set<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 2850
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 2851
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v1, Ljava/util/Set;

    invoke-static {v1}, Lj$/util/DesugarCollections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 2852
    new-instance v2, Lcom/shilapi/xcertplay/orchestration/CarPlayController$connectedBluetoothDevices$listener$1;

    invoke-direct {v2, p3, v1, p1, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$connectedBluetoothDevices$listener$1;-><init>(Ljava/lang/Class;Ljava/util/Set;Landroid/bluetooth/BluetoothAdapter;Ljava/util/concurrent/CountDownLatch;)V

    .line 2870
    iget-object p3, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->appContext:Landroid/content/Context;

    check-cast v2, Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {p1, p3, v2, p2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1

    :cond_0
    const-wide/16 v2, 0x3

    .line 2871
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 2872
    const-string/jumbo p1, "xcertplay-usb"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Timed out reading Bluetooth profile "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2874
    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    monitor-enter v1

    :try_start_0
    move-object p1, v1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v1

    throw p1
.end method

.method private final controlLoopTimeoutMillis()J
    .locals 2

    .line 2914
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->config:Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;->getTransport()Lcom/shilapi/xcertplay/orchestration/CarPlayTransport;

    move-result-object v0

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/CarPlayTransport;->WIRED:Lcom/shilapi/xcertplay/orchestration/CarPlayTransport;

    if-ne v0, v1, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    .line 2915
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->config:Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;->getLocationReportingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/32 v0, 0x5265c00

    return-wide v0

    :cond_1
    const-wide/32 v0, 0x493e0

    return-wide v0
.end method

.method private final debugLog(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 17

    move-object/from16 v0, p1

    .line 3280
    sget-object v1, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;->INSTANCE:Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;

    invoke-static/range {p2 .. p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;->mask(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "xcertplay-usb"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3284
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const-string v3, "getStackTrace(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, [Ljava/lang/Object;

    .line 3449
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .line 3450
    array-length v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x0

    if-ge v6, v4, :cond_1

    aget-object v8, v1, v6

    move-object v9, v8

    check-cast v9, Ljava/lang/StackTraceElement;

    .line 3284
    invoke-virtual {v9}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "getClassName(...)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "com.shilapi."

    const/4 v11, 0x2

    invoke-static {v9, v10, v5, v11, v7}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3450
    invoke-interface {v3, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3451
    :cond_1
    check-cast v3, Ljava/util/List;

    .line 3449
    check-cast v3, Ljava/lang/Iterable;

    const/4 v1, 0x3

    .line 3284
    invoke-static {v3, v1}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/lang/Iterable;

    .line 3285
    const-string v1, " < "

    move-object v9, v1

    check-cast v9, Ljava/lang/CharSequence;

    new-instance v14, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda30;

    invoke-direct {v14}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda30;-><init>()V

    const/16 v15, 0x1e

    const/16 v16, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v8 .. v16}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3286
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v4, ": "

    if-eqz v3, :cond_2

    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " cause="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    const-string v3, ""

    if-nez v7, :cond_3

    move-object v7, v3

    :cond_3
    move-object/from16 v5, p0

    .line 3287
    :try_start_2
    iget-object v6, v5, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->uiListener:Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    if-eqz v6, :cond_6

    .line 3288
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_4

    const-string v9, "(no message)"

    .line 3289
    :cond_4
    move-object v10, v1

    check-cast v10, Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-nez v10, :cond_5

    goto :goto_1

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " at "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3287
    invoke-interface {v6, v0}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;->onDebugLog(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_6
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v5, p0

    .line 3292
    :goto_2
    const-string v1, "debug log callback failed"

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private final debugLog(Ljava/lang/String;Z)V
    .locals 10

    .line 3201
    const-string v0, "iap2 tx=0x4301"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->watchWirelessJoin()V

    .line 3202
    :cond_0
    const-string v0, "iap2 tx=0x5703"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3204
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->noteWifiHandoff5703(Ljava/lang/String;)V

    .line 3205
    invoke-direct {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->watchWirelessJoinDeadline()V

    .line 3207
    :cond_1
    const-string v0, "iap2 rx=0x5702"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3208
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/WifiHandoff;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/WifiHandoff;

    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wifiHandoffEvidence:Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Evidence;

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/orchestration/WifiHandoff;->on5702(Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Evidence;)Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Evidence;

    move-result-object v0

    iput-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wifiHandoffEvidence:Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Evidence;

    .line 3209
    sget-object v1, Lcom/shilapi/xcertplay/orchestration/ConnectionLog;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/ConnectionLog;

    sget-object v2, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;->IAP2:Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;

    const/16 v8, 0x18

    const/4 v9, 0x0

    const-string v3, "0x5702"

    const-string v4, "ok"

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-static/range {v1 .. v9}, Lcom/shilapi/xcertplay/orchestration/ConnectionLog;->rx$default(Lcom/shilapi/xcertplay/orchestration/ConnectionLog;Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;Ljava/lang/String;Ljava/lang/String;IJILjava/lang/Object;)Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;

    .line 3212
    :cond_2
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->recordConnectionLog(Ljava/lang/String;)V

    .line 3214
    const-string/jumbo v1, "xcertplay-usb"

    if-eqz p2, :cond_3

    sget-object p2, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;->INSTANCE:Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;

    invoke-virtual {p2, p1}, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;->mask(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3216
    :cond_3
    :try_start_0
    iget-object p2, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->uiListener:Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    if-eqz p2, :cond_4

    invoke-interface {p2, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;->onDebugLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 3218
    const-string p2, "debug log callback failed"

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v1, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method static synthetic debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 3200
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog(Ljava/lang/String;Z)V

    return-void
.end method

.method private static final debugLog$lambda$197(Ljava/lang/StackTraceElement;)Ljava/lang/CharSequence;
    .locals 4

    .line 3285
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getClassName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/16 v3, 0x2e

    invoke-static {v0, v3, v1, v2, v1}, Lkotlin/text/StringsKt;->substringAfterLast$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method private final debugLogMessage(Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;)Ljava/lang/String;
    .locals 7

    .line 3308
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$DiscoveringMfi;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$DiscoveringMfi;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3309
    const-string p1, "STEP mfi/start: preparing the configured MFi authentication provider"

    return-object p1

    .line 3310
    :cond_0
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForMfi;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForMfi;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3311
    const-string p1, "STEP mfi/wait: MFi coprocessor not present; polling"

    return-object p1

    .line 3312
    :cond_1
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$RequestingMfiPermission;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$RequestingMfiPermission;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3313
    const-string p1, "STEP mfi/permission: requesting CH341 USB access"

    return-object p1

    .line 3314
    :cond_2
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$MfiReady;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$MfiReady;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3315
    const-string p1, "STEP mfi/ready: MFi authentication provider is ready"

    return-object p1

    .line 3316
    :cond_3
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$StartingHotspot;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$StartingHotspot;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3317
    const-string p1, "STEP wifi/ap: starting the wireless CarPlay access point"

    return-object p1

    .line 3318
    :cond_4
    instance-of v0, p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;

    if-eqz v0, :cond_5

    .line 3320
    check-cast p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;

    .line 3319
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;->getBackend()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;->getBand()Ljava/lang/String;

    move-result-object v2

    .line 3320
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;->getChannel()I

    move-result v3

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;->getBssid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;->getAddress()Ljava/lang/String;

    move-result-object p1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "STEP wifi/ap-ready: backend="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ssid="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " band="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " channel="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bssid="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " address="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3321
    :cond_5
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForPairedIphone;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForPairedIphone;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3322
    const-string p1, "STEP bt/select: waiting for a paired or connected iPhone"

    return-object p1

    .line 3323
    :cond_6
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$ConnectingBluetooth;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$ConnectingBluetooth;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3324
    const-string p1, "STEP bt/rfcomm: connecting to the iPhone iAP2 RFCOMM service"

    return-object p1

    .line 3325
    :cond_7
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$RunningWireless;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$RunningWireless;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3326
    const-string p1, "STEP iap2/wireless: Bluetooth control loop running"

    return-object p1

    .line 3327
    :cond_8
    instance-of v0, p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForIphoneWifi;

    if-eqz v0, :cond_a

    .line 3328
    check-cast p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForIphoneWifi;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForIphoneWifi;->getJoinedHotspot()Ljava/lang/Boolean;

    move-result-object p1

    if-nez p1, :cond_9

    const-string/jumbo p1, "unknown"

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "STEP wifi/join: no AirPlay connection yet; hotspot client="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3329
    :cond_a
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WirelessActive;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WirelessActive;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3330
    const-string p1, "STEP handoff/complete: tunnel iAP2 ready; Bluetooth bootstrap released"

    return-object p1

    .line 3331
    :cond_b
    instance-of v0, p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$SwitchingWifiLink;

    if-eqz v0, :cond_c

    .line 3332
    check-cast p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$SwitchingWifiLink;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$SwitchingWifiLink;->getAfterSeconds()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$SwitchingWifiLink;->getEvidence()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$SwitchingWifiLink;->getFrom()Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    move-result-object v3

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$SwitchingWifiLink;->getTo()Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "STEP wifi/switch: iPhone not on the car\'s Wi-Fi after "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "s ("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "); switching "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3333
    :cond_c
    instance-of v0, p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForIphoneReconnect;

    if-eqz v0, :cond_d

    .line 3335
    check-cast p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForIphoneReconnect;

    .line 3334
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForIphoneReconnect;->getReconnect()Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;->getPages()I

    move-result v0

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForIphoneReconnect;->getReconnect()Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;->getPagingNow()Z

    move-result v1

    .line 3335
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForIphoneReconnect;->getReconnect()Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;->getWifiOn()Z

    move-result p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "STEP bt/reconnect: waiting for the paired iPhone; pages="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " pagingNow="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " wifiOn="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3336
    :cond_d
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$DiscoveringIphone;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$DiscoveringIphone;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3337
    const-string p1, "STEP usb/discover: searching for an iPhone USB device"

    return-object p1

    .line 3338
    :cond_e
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForIphone;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForIphone;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3339
    const-string p1, "STEP usb/wait: iPhone USB device not present; polling"

    return-object p1

    .line 3340
    :cond_f
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$RequestingIphonePermission;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$RequestingIphonePermission;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3341
    const-string p1, "STEP usb/permission: requesting USB access to the iPhone"

    return-object p1

    .line 3342
    :cond_10
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForReenumeration;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForReenumeration;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3343
    const-string p1, "STEP usb/reenum: waiting for the CarPlay USB configuration"

    return-object p1

    .line 3344
    :cond_11
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$SelectingConfiguration;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$SelectingConfiguration;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3345
    const-string p1, "STEP usb/config: selecting the iPhone CarPlay configuration"

    return-object p1

    .line 3346
    :cond_12
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$OpeningDataPaths;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$OpeningDataPaths;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3347
    const-string p1, "STEP usb/data: opening iAP2 and NCM USB data paths"

    return-object p1

    .line 3348
    :cond_13
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$Pairing;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$Pairing;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3349
    const-string p1, "STEP lockdown/pair: loading or creating the pairing record"

    return-object p1

    .line 3350
    :cond_14
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForIphoneTrust;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForIphoneTrust;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3351
    const-string p1, "STEP lockdown/trust: waiting for Trust on the iPhone"

    return-object p1

    .line 3352
    :cond_15
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForIphoneUnlock;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForIphoneUnlock;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3353
    const-string p1, "STEP lockdown/unlock: the iPhone is locked; asking again until it is unlocked"

    return-object p1

    .line 3354
    :cond_16
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$ConnectingControl;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$ConnectingControl;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3355
    const-string p1, "STEP lockdown/carkit: opening com.apple.carkit.service"

    return-object p1

    .line 3356
    :cond_17
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$AttachingNetwork;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$AttachingNetwork;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3357
    const-string p1, "STEP network/attach: attaching the AirPlay network transport"

    return-object p1

    .line 3358
    :cond_18
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$RunningControl;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$RunningControl;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 3359
    const-string p1, "STEP iap2/wired: wired iAP2 control loop running"

    return-object p1

    .line 3360
    :cond_19
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$ControlEnded;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$ControlEnded;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 3361
    const-string p1, "STEP control/end: the control window ended"

    return-object p1

    .line 3362
    :cond_1a
    instance-of v0, p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$Failed;

    if-eqz v0, :cond_1b

    .line 3363
    check-cast p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$Failed;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$Failed;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ERROR "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3307
    :cond_1b
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method private final doRequestIphonePermission(Landroid/hardware/usb/UsbDevice;J)V
    .locals 11

    .line 2031
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closed:Z

    if-eqz v0, :cond_0

    return-void

    .line 2032
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 2038
    sget-object v1, Lcom/shilapi/xcertplay/orchestration/WiredUsbPromptPolicy;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/WiredUsbPromptPolicy;

    sget-object v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->usbPrompt:Lcom/shilapi/xcertplay/orchestration/UsbPromptStamp;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/orchestration/UsbPromptStamp;->getShownAtNanos()J

    move-result-wide v2

    const-wide/32 v6, 0xea60

    invoke-virtual/range {v1 .. v7}, Lcom/shilapi/xcertplay/orchestration/WiredUsbPromptPolicy;->promptOutstanding(JJJ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2039
    sget-object v1, Lcom/shilapi/xcertplay/orchestration/WiredUsbPromptPolicy;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/WiredUsbPromptPolicy;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/orchestration/UsbPromptStamp;->getShownAtNanos()J

    move-result-wide v2

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-wide/16 v6, 0x0

    invoke-static/range {v1 .. v9}, Lcom/shilapi/xcertplay/orchestration/WiredUsbPromptPolicy;->mayReask$default(Lcom/shilapi/xcertplay/orchestration/WiredUsbPromptPolicy;JJJILjava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 2040
    const-string/jumbo v1, "wired iPhone USB permission: re-asking (prior dialog likely never shown)"

    invoke-static {p0, v1, v4, v3, v2}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 2041
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/orchestration/UsbPromptStamp;->clear()V

    goto :goto_0

    .line 2043
    :cond_1
    const-string/jumbo p2, "wired iPhone USB permission prompt already open; waiting for it"

    invoke-static {p0, p2, v4, v3, v2}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 2044
    iget-object p2, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->permissionGrant:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2045
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->pollIphonePermission(Landroid/hardware/usb/UsbDevice;)V

    return-void

    .line 2051
    :cond_2
    :goto_0
    sget-object v5, Lcom/shilapi/xcertplay/orchestration/WiredUsbPromptPolicy;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/WiredUsbPromptPolicy;

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->usbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, p1}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    move-wide v9, p2

    invoke-virtual/range {v5 .. v10}, Lcom/shilapi/xcertplay/orchestration/WiredUsbPromptPolicy;->inGrantGrace(ZJJ)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 2052
    iget-object p2, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->mainHandler:Landroid/os/Handler;

    new-instance p3, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda18;

    invoke-direct {p3, p0, p1, v9, v10}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda18;-><init>(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Landroid/hardware/usb/UsbDevice;J)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p2, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 2060
    :cond_3
    sget-object p2, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$RequestingIphonePermission;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$RequestingIphonePermission;

    check-cast p2, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;

    invoke-direct {p0, p2}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->onStatus(Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;)V

    .line 2061
    iget-object p2, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->ensureUsbPermissionVisible:Lkotlin/jvm/functions/Function0;

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 2062
    iget-object p2, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->mainHandler:Landroid/os/Handler;

    new-instance p3, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda19;

    invoke-direct {p3, p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda19;-><init>(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Landroid/hardware/usb/UsbDevice;)V

    const-wide/16 v0, 0x190

    invoke-virtual {p2, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final doRequestIphonePermission$lambda$100(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Landroid/hardware/usb/UsbDevice;J)V
    .locals 2

    .line 2053
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closed:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->phase:Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;->IPHONE:Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->phase:Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;->REENUMERATION:Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;

    if-eq v0, v1, :cond_0

    goto :goto_2

    .line 2054
    :cond_0
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->iphoneHost:Lcom/shilapi/xcertplay/transport/IphoneUsbHost;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/IphoneUsbHost;->discover()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    check-cast v0, Landroid/hardware/usb/UsbDevice;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move-object p1, v0

    .line 2055
    :goto_1
    invoke-direct {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->doRequestIphonePermission(Landroid/hardware/usb/UsbDevice;J)V

    :cond_3
    :goto_2
    return-void
.end method

.method private static final doRequestIphonePermission$lambda$102(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Landroid/hardware/usb/UsbDevice;)V
    .locals 5

    .line 2063
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closed:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->phase:Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;->IPHONE:Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->phase:Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;->REENUMERATION:Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    .line 2064
    :cond_0
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->iphoneHost:Lcom/shilapi/xcertplay/transport/IphoneUsbHost;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/IphoneUsbHost;->discover()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v0, v2

    :cond_1
    check-cast v0, Landroid/hardware/usb/UsbDevice;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move-object p1, v0

    .line 2066
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->iphoneHost:Lcom/shilapi/xcertplay/transport/IphoneUsbHost;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/transport/IphoneUsbHost;->requestPermission(Landroid/hardware/usb/UsbDevice;)Lcom/shilapi/xcertplay/transport/IphoneUsbHost$PermissionRequest;

    move-result-object v0

    .line 2067
    instance-of v1, v0, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$PermissionRequest$AlreadyGranted;

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 2068
    const-string/jumbo p1, "wired iPhone USB permission already granted"

    invoke-static {p0, p1, v4, v3, v2}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 2069
    iget-object p1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->permissionGrant:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2070
    new-instance p1, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$PermissionResult$Granted;

    check-cast v0, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$PermissionRequest$AlreadyGranted;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$PermissionRequest$AlreadyGranted;->getDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$PermissionResult$Granted;-><init>(Landroid/hardware/usb/UsbDevice;)V

    check-cast p1, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$PermissionResult;

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->onIphonePermission(Lcom/shilapi/xcertplay/transport/IphoneUsbHost$PermissionResult;)V

    goto :goto_2

    .line 2072
    :cond_3
    instance-of v0, v0, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$PermissionRequest$Requested;

    if-eqz v0, :cond_4

    .line 2073
    const-string/jumbo v0, "wired iPhone USB permission requested (host foregrounded)"

    invoke-static {p0, v0, v4, v3, v2}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 2074
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->usbPrompt:Lcom/shilapi/xcertplay/orchestration/UsbPromptStamp;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/shilapi/xcertplay/orchestration/UsbPromptStamp;->mark(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->ownUsbPromptStamp:J

    .line 2075
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->permissionGrant:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2076
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->pollIphonePermission(Landroid/hardware/usb/UsbDevice;)V

    goto :goto_2

    .line 2066
    :cond_4
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    .line 2080
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->fail(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private final fail(Ljava/lang/Throwable;)V
    .locals 2

    .line 3032
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closed:Z

    if-eqz v0, :cond_0

    return-void

    .line 3033
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 3034
    new-instance v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda80;

    invoke-direct {v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda80;-><init>()V

    invoke-static {p1, v1}, Lkotlin/sequences/SequencesKt;->generateSequence(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p1

    .line 3437
    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    .line 3034
    instance-of v1, v1, Lcom/shilapi/xcertplay/network/P2pResetRequiredException;

    if-eqz v1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 3033
    :goto_0
    new-instance v1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$Failed;

    invoke-direct {v1, v0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$Failed;-><init>(Ljava/lang/String;Z)V

    check-cast v1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;

    invoke-direct {p0, v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->onStatus(Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;)V

    return-void
.end method

.method private static final fail$lambda$174(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3034
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method private final hostAddressText(Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 3

    .line 2898
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/16 v1, 0x25

    const/4 v2, 0x2

    invoke-static {p1, v1, v0, v2, v0}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2899
    :cond_0
    move-object p1, v0

    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_1

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    return-object v0

    .line 2900
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "LocalOnlyHotspot host address is unavailable"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final hotspotClientCount(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 7

    const/4 v0, 0x0

    .line 3194
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    .line 3195
    new-instance v1, Ljava/io/File;

    const-string v2, "/proc/net/arp"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v0}, Lkotlin/io/FilesKt;->readLines$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->drop(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 3441
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 3442
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 3443
    check-cast v3, Ljava/lang/String;

    .line 3196
    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    new-instance v5, Lkotlin/text/Regex;

    const-string v6, "\\s+"

    invoke-direct {v5, v6}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3, v4}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v3

    .line 3443
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3444
    :cond_0
    check-cast v2, Ljava/util/List;

    .line 3441
    check-cast v2, Ljava/lang/Iterable;

    .line 3445
    instance-of v1, v2, Ljava/util/Collection;

    if-eqz v1, :cond_1

    move-object v1, v2

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    .line 3447
    :cond_1
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 3197
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x6

    if-lt v3, v5, :cond_2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v5, "0x2"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p1, :cond_3

    const/4 v3, 0x5

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    if-gez v4, :cond_2

    .line 3447
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwCountOverflow()V

    goto :goto_1

    .line 3197
    :cond_4
    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 3194
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 3198
    :goto_3
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    move-object v0, p1

    :goto_4
    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method private final interfaceFamilies(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    .line 1696
    const-string/jumbo v1, "unknown"

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    if-nez p1, :cond_0

    return-object v1

    .line 1697
    :cond_0
    invoke-static {p1}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "missing"

    return-object p1

    .line 1698
    :cond_1
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v2, "list(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, "+"

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    new-instance v9, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda11;

    invoke-direct {v9}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda11;-><init>()V

    const/16 v10, 0x1e

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v11}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 1704
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    const-string v0, "none"

    :cond_2
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->isUp()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, ""

    goto :goto_0

    :cond_3
    const-string p1, "(down)"

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1696
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1705
    :goto_1
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move-object v1, p1

    :goto_2
    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method private static final interfaceFamilies$lambda$80$lambda$78(Ljava/net/InetAddress;)Ljava/lang/CharSequence;
    .locals 1

    .line 1700
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    const-string/jumbo p0, "v4"

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0

    .line 1701
    :cond_0
    invoke-virtual {p0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string/jumbo p0, "v6ll"

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0

    .line 1702
    :cond_1
    const-string/jumbo p0, "v6"

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method private final isBluetoothDeviceConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    .line 2830
    :try_start_0
    const-class v0, Landroid/bluetooth/BluetoothDevice;

    const-string v1, "isConnected"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2831
    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    move-object v2, p1

    check-cast v2, Ljava/lang/Boolean;

    :cond_0
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return p1

    :catch_0
    move-exception p1

    .line 2833
    const-string v0, "Could not read Bluetooth connection state"

    check-cast p1, Ljava/lang/Throwable;

    const-string/jumbo v1, "xcertplay-usb"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_1
    const/4 p1, 0x0

    return p1
.end method

.method private final isBluetoothHandoffCommand(Ljava/lang/String;)Z
    .locals 2

    .line 2445
    const-string v0, "disableBluetooth"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2446
    const-string v0, "disable-bluetooth"

    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method private final isStaleWirelessRun(I)Z
    .locals 2

    .line 2662
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->phase:Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;->WIRELESS:Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private final joinEvidence()Lcom/shilapi/xcertplay/orchestration/WifiHandoff$JoinEvidence;
    .locals 5

    .line 3179
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->hotspot:Lcom/shilapi/xcertplay/network/WirelessHotspotManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v2, p0

    check-cast v2, Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    invoke-interface {v0}, Lcom/shilapi/xcertplay/network/WirelessHotspotManager;->associatedClients()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    :cond_0
    check-cast v0, Ljava/lang/Integer;

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 3180
    :goto_1
    iget-object v2, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessHotspotInterface:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-direct {p0, v2}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->hotspotClientCount(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 3181
    :cond_2
    iget-boolean v2, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessResolvedSeen:Z

    .line 3182
    sget-object v3, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->Companion:Lcom/shilapi/xcertplay/network/CarPlayVpnService$Companion;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/network/CarPlayVpnService$Companion;->getAcceptedConnections()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    long-to-int v4, v3

    .line 3178
    new-instance v3, Lcom/shilapi/xcertplay/orchestration/WifiHandoff$JoinEvidence;

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/shilapi/xcertplay/orchestration/WifiHandoff$JoinEvidence;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;ZI)V

    return-object v3
.end method

.method private final keptGroupWorks(Lcom/shilapi/xcertplay/network/WirelessHotspotManager;Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;)Z
    .locals 4

    .line 2545
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {v0}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 2546
    :cond_1
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 2547
    :cond_2
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->getHostAddress()Ljava/net/InetAddress;

    move-result-object p2

    if-nez p2, :cond_3

    return v1

    .line 2548
    :cond_3
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v2, "list(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 3416
    instance-of v2, v0, Ljava/util/Collection;

    if-eqz v2, :cond_4

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    .line 3417
    :cond_4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 2548
    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2549
    invoke-interface {p1}, Lcom/shilapi/xcertplay/network/WirelessHotspotManager;->associatedClients()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    return p1

    :cond_6
    :goto_0
    return v1
.end method

.method private final macString([B)Ljava/lang/String;
    .locals 10

    .line 2965
    const-string v0, ":"

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    new-instance v7, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda10;

    invoke-direct {v7}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda10;-><init>()V

    const/16 v8, 0x1e

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v9}, Lkotlin/collections/ArraysKt;->joinToString$default([BLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static final macString$lambda$170(B)Ljava/lang/CharSequence;
    .locals 3

    and-int/lit16 p0, p0, 0xff

    .line 2965
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%02x"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "format(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method private final maybeCompleteWirelessHandoff()V
    .locals 4

    .line 1725
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessHandoffRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessTunnelReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1726
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessActiveReported:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1727
    :cond_1
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 1728
    new-instance v1, Ljava/lang/Thread;

    .line 1742
    new-instance v3, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda81;

    invoke-direct {v3, p0, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda81;-><init>(Lcom/shilapi/xcertplay/orchestration/CarPlayController;I)V

    .line 1741
    const-string/jumbo v0, "xcertplay-wireless-handoff"

    .line 1728
    invoke-direct {v1, v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1743
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 1744
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_2
    :goto_0
    return-void
.end method

.method private static final maybeCompleteWirelessHandoff$lambda$81(Lcom/shilapi/xcertplay/orchestration/CarPlayController;I)V
    .locals 3

    .line 1731
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closed:Z

    if-nez v0, :cond_1

    .line 1732
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->phase:Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;->WIRELESS:Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;

    if-ne v0, v1, :cond_1

    .line 1733
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/E01OemBluetooth;->wirelessAudioReady(Ljava/lang/Object;I)V

    const/4 p1, 0x2

    const/4 v0, 0x0

    .line 1737
    const-string/jumbo v1, "wireless handoff ready; closing Bluetooth bootstrap transport"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, p1, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 1738
    invoke-direct {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closeBluetoothBootstrapTransport()V

    .line 1739
    sget-object p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WirelessActive;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WirelessActive;

    check-cast p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->onStatus(Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final noteLinkUp(Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;)V
    .locals 7

    .line 3187
    iput-object p1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->linkModeInUse:Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    .line 3188
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory;

    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->appContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->getSsid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->getPassphrase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->getSecurity()Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    move-result-object v5

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->getChannel()I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory;->up(Landroid/content/Context;Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;I)V

    .line 3190
    sget-object p1, Lcom/shilapi/xcertplay/network/WirelessRadioKeepAlive;->INSTANCE:Lcom/shilapi/xcertplay/network/WirelessRadioKeepAlive;

    iget-object p2, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->appContext:Landroid/content/Context;

    const-string v0, "appContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/shilapi/xcertplay/network/WirelessRadioKeepAlive;->acquire(Landroid/content/Context;)V

    return-void
.end method

.method private final noteWifiHandoff5703(Ljava/lang/String;)V
    .locals 21

    move-object/from16 v0, p0

    .line 3224
    new-instance v1, Lkotlin/text/Regex;

    const-string v2, "channel=(\\d+)"

    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object v1

    const/4 v6, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v11, v1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    .line 3225
    :goto_0
    new-instance v1, Lkotlin/text/Regex;

    const-string/jumbo v7, "ssidLength=(\\d+)"

    invoke-direct {v1, v7}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3, v4, v5}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v12, v1

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    .line 3226
    :goto_1
    new-instance v1, Lkotlin/text/Regex;

    const-string v7, "passphraseLength=(\\d+)"

    invoke-direct {v1, v7}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3, v4, v5}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-static {v1}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v13, v1

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    .line 3227
    :goto_2
    new-instance v1, Lkotlin/text/Regex;

    const-string v7, "security=(\\S+)"

    invoke-direct {v1, v7}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3, v4, v5}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_4

    :cond_3
    const-string v1, "?"

    :cond_4
    move-object v9, v1

    if-gt v6, v11, :cond_5

    const/16 v1, 0xf

    if-ge v11, v1, :cond_5

    .line 3229
    const-string v1, "2.4GHz"

    :goto_3
    move-object v10, v1

    goto :goto_4

    :cond_5
    const/16 v1, 0xe

    if-le v11, v1, :cond_6

    .line 3230
    const-string v1, "5GHz"

    goto :goto_3

    .line 3231
    :cond_6
    const-string/jumbo v1, "unknown"

    goto :goto_3

    .line 3233
    :goto_4
    sget-object v1, Lcom/shilapi/xcertplay/orchestration/WifiCredentialQr;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/WifiCredentialQr;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "len-"

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Lcom/shilapi/xcertplay/orchestration/WifiCredentialQr;->fingerprint(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fp="

    invoke-static {v1, v2, v5, v4, v5}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 3234
    sget-object v7, Lcom/shilapi/xcertplay/orchestration/WifiHandoff;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/WifiHandoff;

    .line 3235
    iget-object v8, v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wifiHandoffEvidence:Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Evidence;

    if-lez v12, :cond_8

    if-gtz v13, :cond_7

    .line 3236
    move-object v1, v9

    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, "OPEN"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v1, v2, v6}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    const/4 v15, 0x1

    goto :goto_5

    :cond_8
    const/4 v15, 0x0

    .line 3234
    :goto_5
    invoke-virtual/range {v7 .. v15}, Lcom/shilapi/xcertplay/orchestration/WifiHandoff;->on5703(Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Evidence;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Z)Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Evidence;

    move-result-object v1

    iput-object v1, v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wifiHandoffEvidence:Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Evidence;

    .line 3238
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wifiHandoff5703AtElapsed:J

    .line 3239
    sget-object v3, Lcom/shilapi/xcertplay/orchestration/ConnectionLog;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/ConnectionLog;

    sget-object v4, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;->IAP2:Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/WifiHandoff;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/WifiHandoff;

    iget-object v2, v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wifiHandoffEvidence:Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Evidence;

    invoke-virtual {v1, v2}, Lcom/shilapi/xcertplay/orchestration/WifiHandoff;->summary(Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Evidence;)Ljava/lang/String;

    move-result-object v6

    const/16 v10, 0x18

    const/4 v11, 0x0

    const-string v5, "0x5703"

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-static/range {v3 .. v11}, Lcom/shilapi/xcertplay/orchestration/ConnectionLog;->tx$default(Lcom/shilapi/xcertplay/orchestration/ConnectionLog;Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;Ljava/lang/String;Ljava/lang/String;IJILjava/lang/Object;)Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;

    .line 3240
    sget-object v12, Lcom/shilapi/xcertplay/orchestration/ConnectionLog;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/ConnectionLog;

    sget-object v13, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;->WIFI:Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/WifiHandoff;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/WifiHandoff;

    iget-object v2, v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wifiHandoffEvidence:Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Evidence;

    invoke-virtual {v1, v2}, Lcom/shilapi/xcertplay/orchestration/WifiHandoff;->summary(Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Evidence;)Ljava/lang/String;

    move-result-object v15

    const/16 v19, 0x18

    const/16 v20, 0x0

    const-string v14, "handoff"

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    invoke-static/range {v12 .. v20}, Lcom/shilapi/xcertplay/orchestration/ConnectionLog;->note$default(Lcom/shilapi/xcertplay/orchestration/ConnectionLog;Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;Ljava/lang/String;Ljava/lang/String;IJILjava/lang/Object;)Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;

    return-void
.end method

.method private final oemBluetoothAddress(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->appContext:Landroid/content/Context;

    invoke-static {v0, p0, p1}, Lcom/shilapi/xcertplay/E01OemBluetooth;->controllerLocalAddress(Landroid/content/Context;Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->airPlayConfig:Lcom/shilapi/xcertplay/airplay/AirPlayConfig;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/airplay/AirPlayConfig;->getBtMac()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private final onCh341Permission(Lcom/shilapi/xcertplay/transport/Ch341UsbHost$PermissionResult;)V
    .locals 4

    .line 895
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closed:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->phase:Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;->MFI:Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 897
    :cond_0
    instance-of v0, p1, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$PermissionResult$Granted;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 899
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->permissionGrant:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 900
    :cond_1
    iget v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->permissionPollGeneration:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->permissionPollGeneration:I

    .line 901
    check-cast p1, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$PermissionResult$Granted;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$PermissionResult$Granted;->getDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->openCh341(Landroid/hardware/usb/UsbDevice;)V

    return-void

    .line 903
    :cond_2
    instance-of p1, p1, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$PermissionResult$Denied;

    if-eqz p1, :cond_3

    .line 904
    iget-object p1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->permissionGrant:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 905
    new-instance p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$Failed;

    const/4 v0, 0x2

    const/4 v2, 0x0

    const-string v3, "CH341 USB permission was denied"

    invoke-direct {p1, v3, v1, v0, v2}, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$Failed;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->onStatus(Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;)V

    return-void

    .line 896
    :cond_3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_4
    :goto_0
    return-void
.end method

.method private final onIphoneAttached(Landroid/hardware/usb/UsbDevice;)V
    .locals 2

    .line 2193
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->phase:Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController$WhenMappings;->$EnumSwitchMapping$4:[I

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 2195
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->reenumerationWatchGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 2196
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->availabilityPollGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 2197
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->requestIphonePermission(Landroid/hardware/usb/UsbDevice;)V

    return-void
.end method

.method private final onIphonePermission(Lcom/shilapi/xcertplay/transport/IphoneUsbHost$PermissionResult;)V
    .locals 5

    .line 2087
    instance-of v0, p1, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$PermissionResult$Granted;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_4

    .line 2089
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->permissionGrant:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2090
    :cond_0
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->usbPrompt:Lcom/shilapi/xcertplay/orchestration/UsbPromptStamp;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/orchestration/UsbPromptStamp;->clear()V

    .line 2091
    const-string/jumbo v0, "wired iPhone USB permission granted"

    invoke-static {p0, v0, v2, v3, v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 2092
    iget v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->permissionPollGeneration:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->permissionPollGeneration:I

    .line 2093
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->phase:Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController$WhenMappings;->$EnumSwitchMapping$4:[I

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_1

    :goto_0
    return-void

    .line 2095
    :cond_1
    sget-object v0, Lcom/shilapi/xcertplay/transport/IphoneCarPlayConfiguration;->INSTANCE:Lcom/shilapi/xcertplay/transport/IphoneCarPlayConfiguration;

    check-cast p1, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$PermissionResult$Granted;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$PermissionResult$Granted;->getDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v1

    iget-object v2, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->usbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, v1, v2}, Lcom/shilapi/xcertplay/transport/IphoneCarPlayConfiguration;->find(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbManager;)Lcom/shilapi/xcertplay/transport/UsbConfigView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2096
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$PermissionResult$Granted;->getDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->openDataPaths(Landroid/hardware/usb/UsbDevice;)V

    return-void

    .line 2097
    :cond_2
    iget v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->reenumerationAttempts:I

    if-ge v0, v3, :cond_3

    .line 2098
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$PermissionResult$Granted;->getDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->beginReenumeration(Landroid/hardware/usb/UsbDevice;)V

    return-void

    .line 2101
    :cond_3
    new-instance p1, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;

    .line 2102
    const-string v0, "iPhone did not expose a complete CarPlay USB configuration"

    .line 2101
    invoke-direct {p1, v0}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    .line 2100
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->fail(Ljava/lang/Throwable;)V

    return-void

    .line 2110
    :cond_4
    instance-of p1, p1, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$PermissionResult$Denied;

    if-eqz p1, :cond_5

    .line 2111
    iget-object p1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->permissionGrant:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2112
    sget-object p1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->usbPrompt:Lcom/shilapi/xcertplay/orchestration/UsbPromptStamp;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/orchestration/UsbPromptStamp;->clear()V

    .line 2113
    new-instance p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$Failed;

    const-string v0, "iPhone USB permission was denied"

    invoke-direct {p1, v0, v2, v3, v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$Failed;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->onStatus(Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;)V

    return-void

    .line 2086
    :cond_5
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method private final onRouteFrame(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)V
    .locals 2

    .line 748
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydNavigationOutputs;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydNavigationOutputs;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/hud/BydNavigationOutputs;->onFrame$shared_release(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)V

    .line 749
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->playbackStatus:Lcom/shilapi/xcertplay/media/CarPlayPlaybackStatus;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->playbackStatus:Lcom/shilapi/xcertplay/media/CarPlayPlaybackStatus;

    invoke-virtual {v1, p1}, Lcom/shilapi/xcertplay/media/CarPlayPlaybackStatus;->accept(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->playbackListener:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method private final onSession(Lkotlin/jvm/functions/Function1;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/shilapi/xcertplay/airplay/AirPlaySession;",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    .line 608
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->activeSession:Lcom/shilapi/xcertplay/airplay/AirPlaySession;

    if-nez v0, :cond_1

    return v1

    .line 611
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->touchExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    return v1
.end method

.method private static final onSession$lambda$15(Lkotlin/jvm/functions/Function1;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    .locals 0

    .line 611
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final onStatus(Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;)V
    .locals 2

    .line 3297
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closed:Z

    if-eqz v0, :cond_0

    return-void

    .line 3298
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda24;-><init>(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final onStatus$lambda$199(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;)V
    .locals 2

    .line 3299
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->lastReportedStatus:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3300
    iput-object p1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->lastReportedStatus:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;

    .line 3301
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->uiListener:Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLogMessage(Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;->onDebugLog(Ljava/lang/String;)V

    .line 3302
    :cond_0
    iget-object p0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->uiStatusReporter:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private final onWirelessTunnelReady(I)V
    .locals 3

    .line 1709
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closed:Z

    if-nez v0, :cond_1

    .line 1710
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->phase:Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;->WIRELESS:Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;

    if-ne v0, v1, :cond_1

    .line 1711
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1715
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessTunnelReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1716
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessConnectionProof:Lcom/shilapi/xcertplay/orchestration/WirelessConnectionProof;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/orchestration/WirelessConnectionProof;->authenticated(I)V

    .line 1719
    iget-object p1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessHandoffRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "wireless iAP2 tunnel ready; handoffRequested="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1717
    invoke-static {p0, p1, v2, v0, v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 1721
    invoke-direct {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->maybeCompleteWirelessHandoff()V

    :cond_1
    :goto_0
    return-void
.end method

.method private final openCh341(Landroid/hardware/usb/UsbDevice;)V
    .locals 3

    .line 938
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->ch341Host:Lcom/shilapi/xcertplay/transport/Ch341UsbHost;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->executor:Ljava/util/concurrent/ExecutorService;

    check-cast v1, Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda77;

    invoke-direct {v2, p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda77;-><init>(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/shilapi/xcertplay/transport/Ch341UsbHost;->openAsync(Landroid/hardware/usb/UsbDevice;Ljava/util/concurrent/Executor;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final openCh341$lambda$44(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/transport/Ch341UsbHost$OpenResult;)Lkotlin/Unit;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "mfi reset pulse gpio=D"

    const-string v3, "result"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 940
    instance-of v3, v0, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$OpenResult$Connected;

    if-eqz v3, :cond_6

    .line 941
    check-cast v0, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$OpenResult$Connected;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$OpenResult$Connected;->getSession()Lcom/shilapi/xcertplay/transport/Ch341UsbSession;

    move-result-object v4

    .line 942
    iget-boolean v0, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closed:Z

    if-nez v0, :cond_5

    iget-object v0, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->phase:Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;

    sget-object v3, Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;->MFI:Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;

    if-eq v0, v3, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    .line 947
    :try_start_0
    new-instance v3, Lcom/shilapi/xcertplay/transport/Ch341I2cTransport;

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/shilapi/xcertplay/transport/Ch341I2cTransport;-><init>(Lcom/shilapi/xcertplay/transport/Ch341UsbSession;Lcom/shilapi/xcertplay/transport/Ch341I2cSpeed;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 948
    iget-object v0, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->config:Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;->getCh341MfiResetGpio()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v13

    const/16 v17, 0x6

    const/16 v18, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    move-object v12, v3

    .line 949
    invoke-static/range {v12 .. v18}, Lcom/shilapi/xcertplay/transport/Ch341I2cTransport;->pulseActiveLowReset$default(Lcom/shilapi/xcertplay/transport/Ch341I2cTransport;IJZILjava/lang/Object;)V

    .line 950
    iget-boolean v0, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->mfiResetLogged:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 951
    iput-boolean v0, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->mfiResetLogged:Z

    .line 952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mode=low/high-z"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v11, v10, v9}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 955
    :cond_1
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/MfiRuntime;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/MfiRuntime;

    move-object v2, v3

    check-cast v2, Lcom/shilapi/xcertplay/transport/I2cTransport;

    invoke-virtual {v0, v2}, Lcom/shilapi/xcertplay/orchestration/MfiRuntime;->scan(Lcom/shilapi/xcertplay/transport/I2cTransport;)Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;

    move-result-object v0

    .line 956
    iget-object v2, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->mfiCandidateAddresses:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    .line 3452
    new-instance v5, Ljava/util/LinkedHashMap;

    const/16 v6, 0xa

    invoke-static {v2, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-static {v6}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 3454
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 3455
    move-object v8, v5

    check-cast v8, Ljava/util/Map;

    move-object v12, v6

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    .line 957
    move-object v13, v3

    check-cast v13, Lcom/shilapi/xcertplay/transport/I2cTransport;

    invoke-direct {v1, v13, v12}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->probeMfiCandidate(Lcom/shilapi/xcertplay/transport/I2cTransport;I)Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;

    move-result-object v12

    .line 3455
    invoke-interface {v8, v6, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3457
    :cond_2
    check-cast v5, Ljava/util/Map;

    .line 958
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6
    :try_end_0
    .catch Lcom/shilapi/xcertplay/orchestration/MfiCoprocessorNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v8, "toString(...)"

    if-eqz v6, :cond_3

    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;

    .line 959
    invoke-static {v7}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;->describe()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mfi probe address=0x"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6, v11, v10, v9}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_1

    .line 961
    :cond_3
    check-cast v3, Lcom/shilapi/xcertplay/transport/I2cTransport;

    invoke-direct {v1, v0, v3, v5}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->preferCertificateBearingAddress(Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;Lcom/shilapi/xcertplay/transport/I2cTransport;Ljava/util/Map;)Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;

    move-result-object v0

    .line 963
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;->getAddress7Bit()I

    move-result v2

    invoke-static {v7}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 964
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;->protocolMajor()I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mfi coprocessor address=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " protocolMajor="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 962
    invoke-static {v1, v2, v11, v10, v9}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 966
    new-instance v2, Lcom/shilapi/xcertplay/orchestration/MfiSession;

    check-cast v0, Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;

    move-object v3, v4

    check-cast v3, Ljava/io/Closeable;

    invoke-direct {v2, v0, v3}, Lcom/shilapi/xcertplay/orchestration/MfiSession;-><init>(Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;Ljava/io/Closeable;)V

    iput-object v2, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->mfiSession:Lcom/shilapi/xcertplay/orchestration/MfiSession;

    .line 967
    const-string v0, "mfi CH341 session ready"

    invoke-static {v1, v0, v11, v10, v9}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 968
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$MfiReady;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$MfiReady;

    check-cast v0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;

    invoke-direct {v1, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->onStatus(Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;)V

    .line 969
    invoke-direct {v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->startPhone()V
    :try_end_1
    .catch Lcom/shilapi/xcertplay/orchestration/MfiCoprocessorNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 976
    invoke-virtual {v4}, Lcom/shilapi/xcertplay/transport/Ch341UsbSession;->close()V

    .line 977
    invoke-direct {v1, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->fail(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_0
    move-exception v0

    .line 971
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/orchestration/MfiCoprocessorNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "mfi CH341 discovery failed: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v11, v10, v9}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 972
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/orchestration/MfiCoprocessorNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, "MFi discovery failed"

    :cond_4
    const-string/jumbo v2, "xcertplay-usb"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    invoke-virtual {v4}, Lcom/shilapi/xcertplay/transport/Ch341UsbSession;->close()V

    .line 974
    invoke-direct {v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->waitForMfi()V

    goto :goto_3

    .line 943
    :cond_5
    :goto_2
    invoke-virtual {v4}, Lcom/shilapi/xcertplay/transport/Ch341UsbSession;->close()V

    .line 944
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 980
    :cond_6
    instance-of v2, v0, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$OpenResult$Failed;

    if-eqz v2, :cond_8

    check-cast v0, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$OpenResult$Failed;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$OpenResult$Failed;->getError()Lcom/shilapi/xcertplay/transport/I2cTransportException;

    move-result-object v2

    .line 981
    instance-of v2, v2, Lcom/shilapi/xcertplay/transport/I2cTransportException$DeviceUnavailable;

    if-eqz v2, :cond_7

    invoke-direct {v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->waitForMfi()V

    goto :goto_3

    .line 982
    :cond_7
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$OpenResult$Failed;->getError()Lcom/shilapi/xcertplay/transport/I2cTransportException;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->fail(Ljava/lang/Throwable;)V

    .line 985
    :goto_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 939
    :cond_8
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method private final openDataPaths(Landroid/hardware/usb/UsbDevice;)V
    .locals 4

    .line 2220
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;->DATAPATHS:Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;

    iput-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->phase:Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 2221
    const-string/jumbo v2, "wired opening iPhone USB data paths"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3, v0, v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 2222
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$SelectingConfiguration;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$SelectingConfiguration;

    check-cast v0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->onStatus(Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;)V

    .line 2223
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$OpeningDataPaths;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$OpeningDataPaths;

    check-cast v0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->onStatus(Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;)V

    .line 2224
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->iphoneHost:Lcom/shilapi/xcertplay/transport/IphoneUsbHost;

    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->executor:Ljava/util/concurrent/ExecutorService;

    check-cast v1, Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda3;-><init>(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Landroid/hardware/usb/UsbDevice;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/shilapi/xcertplay/transport/IphoneUsbHost;->openIap2UsbSessionAsync(Landroid/hardware/usb/UsbDevice;Ljava/util/concurrent/Executor;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final openDataPaths$lambda$107(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Landroid/hardware/usb/UsbDevice;Lcom/shilapi/xcertplay/transport/IphoneUsbHost$Iap2SessionResult;)Lkotlin/Unit;
    .locals 1

    const-string v0, "result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2226
    instance-of v0, p2, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$Iap2SessionResult$Connected;

    if-eqz v0, :cond_0

    .line 2228
    :try_start_0
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->openNcm(Landroid/hardware/usb/UsbDevice;)Lcom/shilapi/xcertplay/transport/NcmUsbBridge;

    move-result-object p1

    .line 2229
    move-object v0, p2

    check-cast v0, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$Iap2SessionResult$Connected;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$Iap2SessionResult$Connected;->getSession()Lcom/shilapi/xcertplay/transport/Iap2UsbSession;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->runStack(Lcom/shilapi/xcertplay/transport/Iap2UsbSession;Lcom/shilapi/xcertplay/transport/NcmUsbBridge;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2231
    check-cast p2, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$Iap2SessionResult$Connected;

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$Iap2SessionResult$Connected;->getSession()Lcom/shilapi/xcertplay/transport/Iap2UsbSession;

    move-result-object p2

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->close()V

    .line 2232
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->fail(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2235
    :cond_0
    instance-of p1, p2, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$Iap2SessionResult$Failed;

    if-eqz p1, :cond_1

    check-cast p2, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$Iap2SessionResult$Failed;

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$Iap2SessionResult$Failed;->getError()Lcom/shilapi/xcertplay/transport/IphoneUsbException;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->fail(Ljava/lang/Throwable;)V

    .line 2237
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 2225
    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method private final openLinuxMfi()V
    .locals 2

    .line 841
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda21;-><init>(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final openLinuxMfi$lambda$40(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)V
    .locals 8

    const-string v0, "mfi Linux I2C coprocessor ready path="

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 843
    :try_start_0
    sget-object v4, Lcom/shilapi/xcertplay/transport/LinuxI2cTransport;->Companion:Lcom/shilapi/xcertplay/transport/LinuxI2cTransport$Companion;

    iget-object v5, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->config:Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;->getLinuxI2cPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Lcom/shilapi/xcertplay/transport/LinuxI2cTransport$Companion;->open(Ljava/lang/String;)Lcom/shilapi/xcertplay/transport/LinuxI2cTransport;

    move-result-object v4
    :try_end_0
    .catch Lcom/shilapi/xcertplay/orchestration/MfiCoprocessorNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 845
    :try_start_1
    new-instance v5, Lcom/shilapi/xcertplay/orchestration/MfiSession;

    sget-object v6, Lcom/shilapi/xcertplay/orchestration/MfiRuntime;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/MfiRuntime;

    move-object v7, v4

    check-cast v7, Lcom/shilapi/xcertplay/transport/I2cTransport;

    invoke-virtual {v6, v7}, Lcom/shilapi/xcertplay/orchestration/MfiRuntime;->scan(Lcom/shilapi/xcertplay/transport/I2cTransport;)Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;

    move-result-object v6

    check-cast v6, Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;

    move-object v7, v4

    check-cast v7, Ljava/io/Closeable;

    invoke-direct {v5, v6, v7}, Lcom/shilapi/xcertplay/orchestration/MfiSession;-><init>(Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;Ljava/io/Closeable;)V

    iput-object v5, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->mfiSession:Lcom/shilapi/xcertplay/orchestration/MfiSession;

    .line 846
    iget-object v5, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->config:Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;->getLinuxI2cPath()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3, v2, v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 847
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$MfiReady;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$MfiReady;

    check-cast v0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->onStatus(Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;)V

    .line 848
    invoke-direct {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->startPhone()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 850
    :try_start_2
    invoke-virtual {v4}, Lcom/shilapi/xcertplay/transport/LinuxI2cTransport;->close()V

    .line 851
    throw v0
    :try_end_2
    .catch Lcom/shilapi/xcertplay/orchestration/MfiCoprocessorNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    .line 857
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->fail(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_0
    move-exception v0

    .line 854
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/orchestration/MfiCoprocessorNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mfi Linux discovery failed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3, v2, v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 855
    invoke-direct {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->waitForMfi()V

    :goto_0
    return-void
.end method

.method private final openLocalMfi(Ljava/io/File;)V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 787
    const-string v2, "mfi discovery backend=LocalOffline remoteFallback=disabled"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3, v0, v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 788
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda15;

    invoke-direct {v1, p1, p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda15;-><init>(Ljava/io/File;Lcom/shilapi/xcertplay/orchestration/CarPlayController;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final openLocalMfi$lambda$38(Ljava/io/File;Lcom/shilapi/xcertplay/orchestration/CarPlayController;)V
    .locals 5

    const-string v0, "mfi local offline ready protocolMajor="

    .line 790
    :try_start_0
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 791
    sget-object v3, Lcom/shilapi/xcertplay/mfi/LocalMfiAuthenticationClient;->Companion:Lcom/shilapi/xcertplay/mfi/LocalMfiAuthenticationClient$Companion;

    new-instance v4, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda36;

    invoke-direct {v4, p1, v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda36;-><init>(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-virtual {v3, p0, v4}, Lcom/shilapi/xcertplay/mfi/LocalMfiAuthenticationClient$Companion;->load(Ljava/io/File;Lkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/mfi/LocalMfiAuthenticationClient;

    move-result-object p0

    .line 794
    iget-boolean v1, p1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closed:Z

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->phase:Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;

    sget-object v3, Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;->MFI:Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 795
    :cond_0
    new-instance v1, Lcom/shilapi/xcertplay/orchestration/MfiSession;

    move-object v3, p0

    check-cast v3, Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lcom/shilapi/xcertplay/orchestration/MfiSession;-><init>(Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;Ljava/io/Closeable;)V

    iput-object v1, p1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->mfiSession:Lcom/shilapi/xcertplay/orchestration/MfiSession;

    .line 796
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/mfi/LocalMfiAuthenticationClient;->protocolMajor()I

    move-result v1

    check-cast p0, Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;

    const/4 v3, 0x1

    invoke-static {p0, v2, v3, v4}, Lcom/shilapi/xcertplay/mfi/MfiAuthenticator$-CC;->readCertificate$default(Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;IILjava/lang/Object;)[B

    move-result-object p0

    array-length p0, p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " certificateBytes="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p1, p0, v2, v0, v4}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 797
    sget-object p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$MfiReady;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$MfiReady;

    check-cast p0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;

    invoke-direct {p1, p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->onStatus(Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;)V

    .line 798
    invoke-direct {p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->startPhone()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 801
    invoke-direct {p1, p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->fail(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static final openLocalMfi$lambda$38$lambda$37(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/util/concurrent/atomic/AtomicInteger;I)Lkotlin/Unit;
    .locals 2

    .line 792
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mfi local signature count="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " digestBytes="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, p2, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 793
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final openNcm(Landroid/hardware/usb/UsbDevice;)Lcom/shilapi/xcertplay/transport/NcmUsbBridge;
    .locals 11

    .line 2241
    sget-object v0, Lcom/shilapi/xcertplay/transport/IphoneCarPlayConfiguration;->INSTANCE:Lcom/shilapi/xcertplay/transport/IphoneCarPlayConfiguration;

    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->usbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, p1, v1}, Lcom/shilapi/xcertplay/transport/IphoneCarPlayConfiguration;->find(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbManager;)Lcom/shilapi/xcertplay/transport/UsbConfigView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2245
    sget-object v1, Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery;->INSTANCE:Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery;

    invoke-virtual {v1, v0}, Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery;->find(Lcom/shilapi/xcertplay/transport/UsbConfigView;)Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery$NcmFunction;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2248
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/UsbConfigView;->getId()I

    move-result v0

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery$NcmFunction;->getControl()Lcom/shilapi/xcertplay/transport/UsbInterfaceView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/transport/UsbInterfaceView;->getId()I

    move-result v2

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery$NcmFunction;->getControl()Lcom/shilapi/xcertplay/transport/UsbInterfaceView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/transport/UsbInterfaceView;->getAlternateSetting()I

    move-result v3

    .line 2249
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery$NcmFunction;->getData()Lcom/shilapi/xcertplay/transport/UsbInterfaceView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/transport/UsbInterfaceView;->getId()I

    move-result v4

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery$NcmFunction;->getData()Lcom/shilapi/xcertplay/transport/UsbInterfaceView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/transport/UsbInterfaceView;->getAlternateSetting()I

    move-result v5

    .line 2250
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery$NcmFunction;->getStatusIn()Landroid/hardware/usb/UsbEndpoint;

    move-result-object v6

    const-string/jumbo v7, "toString(...)"

    const/16 v8, 0x10

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/hardware/usb/UsbEndpoint;->getAddress()I

    move-result v6

    invoke-static {v8}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v9

    invoke-static {v6, v9}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "0x"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    :cond_0
    const-string v6, "none"

    .line 2251
    :cond_1
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery$NcmFunction;->getBulkIn()Landroid/hardware/usb/UsbEndpoint;

    move-result-object v9

    invoke-virtual {v9}, Landroid/hardware/usb/UsbEndpoint;->getAddress()I

    move-result v9

    invoke-static {v8}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery$NcmFunction;->getBulkOut()Landroid/hardware/usb/UsbEndpoint;

    move-result-object v10

    invoke-virtual {v10}, Landroid/hardware/usb/UsbEndpoint;->getAddress()I

    move-result v10

    invoke-static {v8}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v8

    invoke-static {v10, v8}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "ncm config="

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " control="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " data="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " status="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " in=0x"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " out=0x"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 2247
    invoke-static {p0, v0, v2, v3, v4}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 2253
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->usbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, p1}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2255
    sget-object v0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->Companion:Lcom/shilapi/xcertplay/transport/NcmUsbBridge$Companion;

    invoke-virtual {v0, p1, v1}, Lcom/shilapi/xcertplay/transport/NcmUsbBridge$Companion;->open(Landroid/hardware/usb/UsbDeviceConnection;Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery$NcmFunction;)Lcom/shilapi/xcertplay/transport/NcmUsbBridge;

    move-result-object p1

    return-object p1

    .line 2254
    :cond_2
    new-instance p1, Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;

    const-string v0, "Could not open the iPhone NCM connection"

    invoke-direct {p1, v0, v4, v3, v4}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1

    .line 2246
    :cond_3
    new-instance p1, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;

    const-string v0, "iPhone configuration does not expose an NCM function"

    invoke-direct {p1, v0}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2242
    :cond_4
    new-instance p1, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;

    .line 2243
    const-string v0, "iPhone exposes no CarPlay configuration for NCM"

    .line 2242
    invoke-direct {p1, v0}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final openRemoteMfi()V
    .locals 2

    .line 807
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda66;

    invoke-direct {v1, p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda66;-><init>(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final openRemoteMfi$lambda$39(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)V
    .locals 9

    const-string v0, "mfi remote service ready server="

    .line 809
    :try_start_0
    new-instance v1, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient;

    .line 810
    iget-object v2, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->config:Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;->getRemoteMfiServer()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 811
    iget-object v3, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->config:Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;->getRemoteMfiToken()Ljava/lang/String;

    move-result-object v3

    const/16 v7, 0x1c

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 809
    invoke-direct/range {v1 .. v8}, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 813
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient;->reset()V

    .line 814
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/mfi/RemoteMfiAuthenticationClient;->protocolMajor()I

    move-result v2

    .line 815
    iget-boolean v3, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closed:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->phase:Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;

    sget-object v4, Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;->MFI:Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 816
    :cond_0
    new-instance v3, Lcom/shilapi/xcertplay/orchestration/MfiSession;

    check-cast v1, Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lcom/shilapi/xcertplay/orchestration/MfiSession;-><init>(Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;Ljava/io/Closeable;)V

    iput-object v3, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->mfiSession:Lcom/shilapi/xcertplay/orchestration/MfiSession;

    .line 818
    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->config:Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;->getRemoteMfiServer()Ljava/lang/String;

    move-result-object v1

    .line 819
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " protocolMajor="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 817
    invoke-static {p0, v0, v1, v2, v4}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 821
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$MfiReady;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$MfiReady;

    check-cast v0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->onStatus(Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;)V

    .line 822
    invoke-direct {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->startPhone()V

    :cond_1
    :goto_0
    return-void

    .line 810
    :cond_2
    const-string v0, "Required value was null."

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    .line 824
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->fail(Ljava/lang/Throwable;)V

    return-void
.end method

.method private final pairNewRecord(Lcom/shilapi/xcertplay/transport/LockdownPairingClient;)Lcom/shilapi/xcertplay/transport/LockdownPairRecord;
    .locals 10

    .line 2416
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->config:Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;->getLabel()Ljava/lang/String;

    move-result-object v2

    .line 2417
    iget-object v3, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->hostId:Ljava/lang/String;

    .line 2418
    iget-object v4, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->systemBuid:Ljava/lang/String;

    .line 2415
    new-instance v7, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda64;

    invoke-direct {v7, p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda64;-><init>(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)V

    new-instance v8, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda65;

    invoke-direct {v8, p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda65;-><init>(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)V

    const/4 v9, 0x1

    const-wide/32 v5, 0xea60

    move-object v1, p1

    invoke-virtual/range {v1 .. v9}, Lcom/shilapi/xcertplay/transport/LockdownPairingClient;->pair(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Z)Lcom/shilapi/xcertplay/transport/PairedRecord;

    move-result-object p1

    .line 2431
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/PairedRecord;->getPairRecord()Lcom/shilapi/xcertplay/transport/LockdownPairRecord;

    move-result-object p1

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->savePairRecord:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method private static final pairNewRecord$lambda$120(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Z
    .locals 0

    .line 2420
    iget-boolean p0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closed:Z

    return p0
.end method

.method private static final pairNewRecord$lambda$121(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/transport/LockdownPairingWait;)Lkotlin/Unit;
    .locals 1

    const-string/jumbo v0, "wait"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2424
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$WhenMappings;->$EnumSwitchMapping$6:[I

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/LockdownPairingWait;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2426
    sget-object p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForIphoneUnlock;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForIphoneUnlock;

    check-cast p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;

    goto :goto_0

    .line 2424
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 2425
    :cond_1
    sget-object p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForIphoneTrust;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForIphoneTrust;

    check-cast p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;

    .line 2423
    :goto_0
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->onStatus(Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;)V

    .line 2429
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final persistNetworkAdbIfNeeded()V
    .locals 9

    .line 2756
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->config:Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;->getKeepNetworkAdbForIpv6()Z

    move-result v2

    .line 2757
    sget-object v1, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;->INSTANCE:Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;

    const/4 v0, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    .line 2759
    invoke-static {v1, v8, v3, v8}, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;->adbSecure$default(Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v1, v8, v3, v8}, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;->persistedPort$default(Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5555"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 2765
    :cond_0
    sget-object v2, Lcom/shilapi/xcertplay/network/RootShell;->INSTANCE:Lcom/shilapi/xcertplay/network/RootShell;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/network/RootShell;->available()Z

    move-result v2

    new-instance v3, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda42;

    invoke-direct {v3}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda42;-><init>()V

    .line 2764
    new-instance v4, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda43;

    invoke-direct {v4, p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda43;-><init>(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)V

    new-instance v5, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda45;

    invoke-direct {v5, v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda45;-><init>(Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;)V

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;->viaSuThenAdb(ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)Lkotlin/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Result;

    .line 2769
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "wireless networkAdb via="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v7, v0, v8}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2760
    invoke-static/range {v1 .. v6}, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;->ensurePersisted$default(Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Result;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "wireless "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v7, v0, v8}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method private static final persistNetworkAdbIfNeeded$lambda$153(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "c"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2766
    sget-object v1, Lcom/shilapi/xcertplay/network/RootShell;->INSTANCE:Lcom/shilapi/xcertplay/network/RootShell;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-wide/16 v3, 0x0

    invoke-static/range {v1 .. v6}, Lcom/shilapi/xcertplay/network/RootShell;->run$default(Lcom/shilapi/xcertplay/network/RootShell;Ljava/util/List;JILjava/lang/Object;)Lcom/shilapi/xcertplay/network/RootShell$Result;

    move-result-object p0

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/network/RootShell$Result;->getOutput()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final persistNetworkAdbIfNeeded$lambda$154(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;
    .locals 2

    .line 2767
    sget-object v0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->INSTANCE:Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;

    iget-object p0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->appContext:Landroid/content/Context;

    const-string v1, "appContext"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->openAdb(Landroid/content/Context;Z)Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;

    move-result-object p0

    return-object p0
.end method

.method private static final persistNetworkAdbIfNeeded$lambda$155(Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;Lkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Result;
    .locals 6

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    .line 2768
    invoke-static/range {v0 .. v5}, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;->ensurePersisted$default(Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Result;

    move-result-object p0

    return-object p0
.end method

.method private final pollCh341Permission(Landroid/hardware/usb/UsbDevice;)V
    .locals 7

    .line 912
    iget v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->permissionPollGeneration:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->permissionPollGeneration:I

    .line 913
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide v4, 0xdf8475800L

    add-long/2addr v0, v4

    move-wide v5, v0

    .line 914
    new-instance v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController$pollCh341Permission$check$1;

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$pollCh341Permission$check$1;-><init>(Lcom/shilapi/xcertplay/orchestration/CarPlayController;ILandroid/hardware/usb/UsbDevice;J)V

    .line 934
    iget-object p1, v2, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->mainHandler:Landroid/os/Handler;

    check-cast v1, Ljava/lang/Runnable;

    const-wide/16 v3, 0x1f4

    invoke-virtual {p1, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private final pollIphonePermission(Landroid/hardware/usb/UsbDevice;)V
    .locals 7

    .line 2120
    iget v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->permissionPollGeneration:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->permissionPollGeneration:I

    .line 2121
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide v4, 0xdf8475800L

    add-long/2addr v0, v4

    move-wide v5, v0

    .line 2122
    new-instance v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController$pollIphonePermission$check$1;

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$pollIphonePermission$check$1;-><init>(Lcom/shilapi/xcertplay/orchestration/CarPlayController;ILandroid/hardware/usb/UsbDevice;J)V

    .line 2146
    iget-object p1, v2, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->mainHandler:Landroid/os/Handler;

    check-cast v1, Ljava/lang/Runnable;

    const-wide/16 v3, 0x1f4

    invoke-virtual {p1, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private final preferCertificateBearingAddress(Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;Lcom/shilapi/xcertplay/transport/I2cTransport;Ljava/util/Map;)Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;",
            "Lcom/shilapi/xcertplay/transport/I2cTransport;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;",
            ">;)",
            "Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;"
        }
    .end annotation

    .line 1054
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;->getAddress7Bit()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;->getHasAccessoryCertificate()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-object p1

    .line 1055
    :cond_0
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    check-cast p3, Ljava/lang/Iterable;

    .line 3414
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;

    .line 1056
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;->getAddress7Bit()I

    move-result v4

    if-eq v3, v4, :cond_1

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;->getHasAccessoryCertificate()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 1055
    :goto_0
    check-cast v0, Ljava/util/Map$Entry;

    if-nez v0, :cond_3

    return-object p1

    .line 1059
    :cond_3
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;->getAddress7Bit()I

    move-result p1

    const/16 p3, 0x10

    invoke-static {p3}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v2, "toString(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1060
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-static {p3}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result p3

    invoke-static {v3, p3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mfi address override: 0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has no accessory certificate; using 0x"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    const/4 v2, 0x2

    .line 1058
    invoke-static {p0, p1, p3, v2, v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 1062
    new-instance p1, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-direct {p1, p2, p3}, Lcom/shilapi/xcertplay/mfi/MfiAuthenticationClient;-><init>(Lcom/shilapi/xcertplay/transport/I2cTransport;I)V

    return-object p1
.end method

.method private final probeMfiCandidate(Lcom/shilapi/xcertplay/transport/I2cTransport;I)Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;
    .locals 7

    .line 1016
    :try_start_0
    new-instance v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1017
    invoke-direct {p0, p1, p2, v1, v2}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->readMfiRegister(Lcom/shilapi/xcertplay/transport/I2cTransport;III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1018
    invoke-direct {p0, p1, p2, v2, v2}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->readMfiRegister(Lcom/shilapi/xcertplay/transport/I2cTransport;III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    .line 1019
    invoke-direct {p0, p1, p2, v4, v2}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->readMfiRegister(Lcom/shilapi/xcertplay/transport/I2cTransport;III)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v5, 0x30

    .line 1020
    invoke-direct {p0, p1, p2, v5, v4}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->readMfiRegister(Lcom/shilapi/xcertplay/transport/I2cTransport;III)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x50

    .line 1021
    invoke-direct {p0, p1, p2, v6, v4}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->readMfiRegister(Lcom/shilapi/xcertplay/transport/I2cTransport;III)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v6, 0x0

    move-object v4, v3

    move-object v3, v2

    move-object v2, v4

    move-object v4, v5

    move-object v5, p1

    .line 1016
    invoke-direct/range {v0 .. v6}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 1025
    new-instance v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;

    .line 1031
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1025
    invoke-direct/range {v0 .. v6}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$MfiCandidateProbe;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    return-object v0
.end method

.method private final readMfiRegister(Lcom/shilapi/xcertplay/transport/I2cTransport;III)I
    .locals 2

    int-to-byte p3, p3

    const/4 v0, 0x1

    .line 1041
    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p3, v0, v1

    invoke-interface {p1, p2, v0, v1}, Lcom/shilapi/xcertplay/transport/I2cTransport;->transaction(I[BI)[B

    .line 1043
    new-array p3, v1, [B

    invoke-interface {p1, p2, p3, p4}, Lcom/shilapi/xcertplay/transport/I2cTransport;->transaction(I[BI)[B

    move-result-object p1

    array-length p2, p1

    const/4 p3, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    aget-byte p4, p1, v1

    shl-int/lit8 p3, p3, 0x8

    and-int/lit16 p4, p4, 0xff

    or-int/2addr p3, p4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return p3
.end method

.method private final recordConnectionLog(Ljava/lang/String;)V
    .locals 13

    .line 3249
    const-string v0, "iap2 "

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "IAP2 "

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_7

    .line 3250
    :cond_0
    const-string/jumbo v0, "wireless RFCOMM"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string/jumbo v0, "wireless Bluetooth"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 3251
    const-string/jumbo v0, "wireless USB Bluetooth"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_6

    .line 3252
    :cond_1
    const-string/jumbo v0, "wireless link"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string/jumbo v0, "wireless: "

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 3253
    const-string v0, "LocalOnlyHotspot"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "Wi-Fi P2P"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 3254
    const-string v0, "Automatic hotspot"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_5

    .line 3255
    :cond_2
    const-string v0, "AirPlay"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    const-string v4, "Bonjour"

    if-nez v0, :cond_d

    const-string v0, "airplay "

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 3256
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const-string v5, "SETUP"

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v0, v5, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    invoke-static {p1, v4, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto/16 :goto_4

    .line 3258
    :cond_3
    const-string v4, "Frame rate"

    invoke-static {p1, v4, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string/jumbo v4, "video "

    invoke-static {p1, v4, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_3

    .line 3259
    :cond_4
    const-string v4, "Audio:"

    invoke-static {p1, v4, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "audio "

    invoke-static {p1, v4, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_2

    .line 3260
    :cond_5
    const-string/jumbo v4, "wired "

    invoke-static {p1, v4, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "USB "

    invoke-static {p1, v4, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string/jumbo v4, "usbmux"

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v0, v4, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_1

    .line 3262
    :cond_6
    const-string v4, "MFi"

    invoke-static {p1, v4, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "mfi "

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v0, v4, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_0

    .line 3263
    :cond_7
    const-string v4, "VPN"

    invoke-static {p1, v4, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "VpnService"

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v0, v4, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_8
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;->VPN:Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;

    goto :goto_8

    .line 3262
    :cond_9
    :goto_0
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;->MFI:Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;

    goto :goto_8

    .line 3261
    :cond_a
    :goto_1
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;->USB:Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;

    goto :goto_8

    .line 3259
    :cond_b
    :goto_2
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;->AUDIO:Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;

    goto :goto_8

    .line 3258
    :cond_c
    :goto_3
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;->VIDEO:Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;

    goto :goto_8

    .line 3257
    :cond_d
    :goto_4
    invoke-static {p1, v4, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;->BONJOUR:Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;

    goto :goto_8

    :cond_e
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;->AIRPLAY:Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;

    goto :goto_8

    .line 3254
    :cond_f
    :goto_5
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;->WIFI:Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;

    goto :goto_8

    .line 3251
    :cond_10
    :goto_6
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;->BT:Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;

    goto :goto_8

    .line 3249
    :cond_11
    :goto_7
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;->IAP2:Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;

    :goto_8
    move-object v5, v0

    .line 3267
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;->AUDIO:Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;

    if-eq v5, v0, :cond_12

    sget-object v0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;->VIDEO:Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;

    if-ne v5, v0, :cond_15

    .line 3268
    :cond_12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v6, 0x3e8

    div-long/2addr v0, v6

    .line 3269
    iget-wide v6, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->connectionLogLastSecond:J

    cmp-long v4, v0, v6

    if-nez v4, :cond_14

    iget-object v4, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->connectionLogLastLayer:Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;

    if-ne v5, v4, :cond_14

    :cond_13
    return-void

    .line 3270
    :cond_14
    iput-wide v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->connectionLogLastSecond:J

    .line 3271
    iput-object v5, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->connectionLogLastLayer:Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;

    :cond_15
    const/16 v0, 0x20

    .line 3273
    invoke-static {p1, v0, v3, v2, v3}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x30

    invoke-static {v0, v1}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v0, "note"

    :cond_16
    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 3275
    sget-object v4, Lcom/shilapi/xcertplay/orchestration/ConnectionLog;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/ConnectionLog;

    sget-object v0, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;->INSTANCE:Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;->mask(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xa0

    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const/16 v11, 0x18

    const/4 v12, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    invoke-static/range {v4 .. v12}, Lcom/shilapi/xcertplay/orchestration/ConnectionLog;->note$default(Lcom/shilapi/xcertplay/orchestration/ConnectionLog;Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;Ljava/lang/String;Ljava/lang/String;IJILjava/lang/Object;)Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;

    return-void
.end method

.method private final rejectedPairRecordError(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 4

    :goto_0
    if-eqz p1, :cond_3

    .line 2436
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 2437
    :cond_0
    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "InvalidPairRecord"

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 2438
    :cond_1
    const-string v1, "InvalidHostID"

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v0, v2, v3}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    .line 2439
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private final requestCh341Permission(Landroid/hardware/usb/UsbDevice;)V
    .locals 4

    .line 864
    :try_start_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->usbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, p1}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 865
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->permissionGrant:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 866
    new-instance v0, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$PermissionResult$Granted;

    invoke-direct {v0, p1}, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$PermissionResult$Granted;-><init>(Landroid/hardware/usb/UsbDevice;)V

    check-cast v0, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$PermissionResult;

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->onCh341Permission(Lcom/shilapi/xcertplay/transport/Ch341UsbHost$PermissionResult;)V

    return-void

    .line 870
    :cond_0
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$RequestingMfiPermission;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$RequestingMfiPermission;

    check-cast v0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->onStatus(Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;)V

    .line 871
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->ensureUsbPermissionVisible:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 872
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda70;

    invoke-direct {v1, p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda70;-><init>(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Landroid/hardware/usb/UsbDevice;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 890
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->fail(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static final requestCh341Permission$lambda$41(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Landroid/hardware/usb/UsbDevice;)V
    .locals 3

    .line 873
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closed:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->phase:Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;->MFI:Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 875
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->ch341Host:Lcom/shilapi/xcertplay/transport/Ch341UsbHost;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/transport/Ch341UsbHost;->requestPermission(Landroid/hardware/usb/UsbDevice;)Lcom/shilapi/xcertplay/transport/Ch341UsbHost$PermissionRequest;

    move-result-object v0

    .line 876
    instance-of v1, v0, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$PermissionRequest$AlreadyGranted;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 877
    iget-object p1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->permissionGrant:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 878
    new-instance p1, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$PermissionResult$Granted;

    check-cast v0, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$PermissionRequest$AlreadyGranted;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$PermissionRequest$AlreadyGranted;->getDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$PermissionResult$Granted;-><init>(Landroid/hardware/usb/UsbDevice;)V

    check-cast p1, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$PermissionResult;

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->onCh341Permission(Lcom/shilapi/xcertplay/transport/Ch341UsbHost$PermissionResult;)V

    return-void

    .line 880
    :cond_1
    instance-of v0, v0, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$PermissionRequest$Requested;

    if-eqz v0, :cond_2

    .line 881
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->permissionGrant:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 882
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->pollCh341Permission(Landroid/hardware/usb/UsbDevice;)V

    return-void

    .line 875
    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    .line 886
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->fail(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private final requestIphonePermission(Landroid/hardware/usb/UsbDevice;)V
    .locals 4

    .line 2026
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0x77359400

    add-long/2addr v0, v2

    .line 2027
    iget-object v2, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->mainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda82;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda82;-><init>(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Landroid/hardware/usb/UsbDevice;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final requestIphonePermission$lambda$98(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Landroid/hardware/usb/UsbDevice;J)V
    .locals 0

    .line 2027
    invoke-direct {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->doRequestIphonePermission(Landroid/hardware/usb/UsbDevice;J)V

    return-void
.end method

.method private static final requestSiri$lambda$13(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    .locals 0

    .line 584
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->invokeSiri()V

    return-void
.end method

.method private static final requestUi$lambda$19(Ljava/lang/String;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 628
    invoke-virtual {p1, p0}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->requestUi(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final restartWireless()V
    .locals 3

    .line 1112
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1113
    new-instance v0, Ljava/lang/Thread;

    .line 1119
    new-instance v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda31;

    invoke-direct {v1, p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda31;-><init>(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)V

    .line 1118
    const-string/jumbo v2, "xcertplay-wireless-restart"

    .line 1113
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 1120
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 1121
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static final restartWireless$lambda$48(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1115
    invoke-static {p0, v0, v1, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closeWirelessStack$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/network/CarPlayVpnService;ILjava/lang/Object;)V

    .line 1116
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closed:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->startWireless()V

    :cond_0
    return-void
.end method

.method private final runStack(Lcom/shilapi/xcertplay/transport/Iap2UsbSession;Lcom/shilapi/xcertplay/transport/NcmUsbBridge;)V
    .locals 20

    move-object/from16 v1, p0

    const-string v2, "ncm using hostMac="

    const-string v3, "saved Lockdown pair record rejected by Lockdown error="

    const-string v4, "phone authentication diagnostics unavailable: "

    .line 2259
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;->CONTROL:Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;

    iput-object v0, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->phase:Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2264
    :try_start_0
    iget-boolean v0, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closed:Z

    if-eqz v0, :cond_0

    .line 2265
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 2410
    invoke-virtual/range {p2 .. p2}, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->close()V

    return-void

    .line 2268
    :cond_0
    :try_start_1
    sget-object v7, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->Companion:Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;

    const/4 v11, 0x2

    const/4 v12, 0x0

    const-wide/16 v9, 0x0

    move-object/from16 v8, p1

    invoke-static/range {v7 .. v12}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;->open$default(Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost$Companion;Lcom/shilapi/xcertplay/transport/Iap2UsbSession;JILjava/lang/Object;)Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;

    move-result-object v0

    .line 2269
    iput-object v0, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->mux:Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;

    .line 2270
    const-string/jumbo v7, "wired USBMUX host opened"

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-static {v1, v7, v8, v9, v6}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 2271
    sget-object v7, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$Pairing;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$Pairing;

    check-cast v7, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;

    invoke-direct {v1, v7}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->onStatus(Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;)V

    .line 2272
    new-instance v7, Lcom/shilapi/xcertplay/transport/LockdownPairingClient;

    invoke-direct {v7, v0}, Lcom/shilapi/xcertplay/transport/LockdownPairingClient;-><init>(Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;)V

    .line 2273
    iget-object v10, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->loadPairRecord:Lkotlin/jvm/functions/Function0;

    invoke-interface {v10}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/shilapi/xcertplay/transport/LockdownPairRecord;

    if-nez v10, :cond_1

    .line 2274
    invoke-direct {v1, v7}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->pairNewRecord(Lcom/shilapi/xcertplay/transport/LockdownPairingClient;)Lcom/shilapi/xcertplay/transport/LockdownPairRecord;

    move-result-object v11

    goto :goto_0

    :cond_1
    move-object v11, v10

    :goto_0
    if-eqz v10, :cond_2

    .line 2277
    const-string/jumbo v12, "wired using saved Lockdown pair record"

    goto :goto_1

    .line 2279
    :cond_2
    const-string/jumbo v12, "wired created a new Lockdown pair record"

    .line 2275
    :goto_1
    invoke-static {v1, v12, v8, v9, v6}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 2282
    sget-object v12, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$ConnectingControl;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$ConnectingControl;

    check-cast v12, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;

    invoke-direct {v1, v12}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->onStatus(Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;)V

    .line 2283
    new-instance v12, Lcom/shilapi/xcertplay/transport/LockdownCarKitClient;

    invoke-direct {v12, v0}, Lcom/shilapi/xcertplay/transport/LockdownCarKitClient;-><init>(Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;)V

    .line 2288
    const/4 v0, 0x0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v0, :cond_3

    .line 2289
    :try_start_2
    iget-object v0, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->config:Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;->getLabel()Ljava/lang/String;

    move-result-object v0

    const-string v13, "com.apple.syslog_relay"

    invoke-virtual {v12, v11, v0, v13}, Lcom/shilapi/xcertplay/transport/LockdownCarKitClient;->openService(Lcom/shilapi/xcertplay/transport/LockdownPairRecord;Ljava/lang/String;Ljava/lang/String;)Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;

    move-result-object v0

    .line 2290
    new-instance v13, Ljava/lang/Thread;

    .line 2313
    new-instance v14, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda49;

    invoke-direct {v14, v0, v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda49;-><init>(Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;Lcom/shilapi/xcertplay/orchestration/CarPlayController;)V

    const-string v0, "carplay-lab-phone-diagnostics"

    .line 2290
    invoke-direct {v13, v14, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 2313
    invoke-virtual {v13, v5}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v13}, Ljava/lang/Thread;->start()V

    .line 2314
    const-string v0, "phone authentication diagnostic capture started"

    invoke-static {v1, v0, v8, v9, v6}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_2

    :catch_0
    move-exception v0

    .line 2316
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v8, v9, v6}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 2319
    :cond_3
    :goto_2
    :try_start_4
    iget-object v0, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->config:Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v11, v0}, Lcom/shilapi/xcertplay/transport/LockdownCarKitClient;->open(Lcom/shilapi/xcertplay/transport/LockdownPairRecord;Ljava/lang/String;)Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 2321
    :try_start_5
    invoke-direct {v1, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->rejectedPairRecordError(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    if-eqz v10, :cond_b

    if-eqz v4, :cond_b

    .line 2323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; clearing and pairing again"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v8, v9, v6}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 2324
    iget-object v0, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->clearPairRecord:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 2325
    invoke-direct {v1, v7}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->pairNewRecord(Lcom/shilapi/xcertplay/transport/LockdownPairingClient;)Lcom/shilapi/xcertplay/transport/LockdownPairRecord;

    move-result-object v0

    .line 2326
    iget-object v3, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->config:Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v0, v3}, Lcom/shilapi/xcertplay/transport/LockdownCarKitClient;->open(Lcom/shilapi/xcertplay/transport/LockdownPairRecord;Ljava/lang/String;)Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;

    move-result-object v0

    .line 2328
    :goto_3
    const-string/jumbo v3, "wired com.apple.carkit.service stream opened"

    invoke-static {v1, v3, v8, v9, v6}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 2337
    new-instance v3, Lcom/shilapi/xcertplay/orchestration/CarPlayController$runStack$tracedCarkit$1;

    invoke-direct {v3, v1, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$runStack$tracedCarkit$1;-><init>(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;)V

    .line 2352
    sget-object v0, Lcom/shilapi/xcertplay/iap2/session/Iap2Session;->Companion:Lcom/shilapi/xcertplay/iap2/session/Iap2Session$Companion;

    .line 2353
    check-cast v3, Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;

    .line 2354
    const-string/jumbo v4, "wired"

    .line 2355
    new-instance v7, Lcom/shilapi/xcertplay/orchestration/CarPlayController$runStack$csm$1;

    invoke-direct {v7, v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$runStack$csm$1;-><init>(Ljava/lang/Object;)V

    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 2352
    invoke-virtual {v0, v3, v4, v7}, Lcom/shilapi/xcertplay/iap2/session/Iap2Session$Companion;->open(Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/iap2/session/Iap2Session;

    move-result-object v0

    .line 2357
    iput-object v0, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->csm:Lcom/shilapi/xcertplay/iap2/session/Iap2Session;

    .line 2358
    const-string/jumbo v3, "wired iAP2 CSM channel opened"

    invoke-static {v1, v3, v8, v9, v6}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 2360
    invoke-virtual/range {p2 .. p2}, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->getHostMac()[B

    move-result-object v3

    if-nez v3, :cond_4

    iget-object v3, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->config:Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;->getHostMac()[B

    move-result-object v3

    .line 2361
    :cond_4
    invoke-direct {v1, v3}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->macString([B)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v8, v9, v6}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object/from16 v2, p2

    .line 2362
    :try_start_6
    invoke-direct {v1, v2, v3}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->attachVpn(Lcom/shilapi/xcertplay/transport/NcmUsbBridge;[B)Lcom/shilapi/xcertplay/network/CarPlayVpnService;

    move-result-object v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v4, :cond_a

    .line 2365
    :try_start_7
    const-string/jumbo v7, "wired NCM/VPN AirPlay transport attached"

    invoke-static {v1, v7, v8, v9, v6}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 2366
    iget-boolean v7, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closed:Z

    if-eqz v7, :cond_5

    .line 2367
    invoke-virtual {v4}, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->detach()V

    goto/16 :goto_8

    .line 2371
    :cond_5
    iget-object v7, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->mfiSession:Lcom/shilapi/xcertplay/orchestration/MfiSession;

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Lcom/shilapi/xcertplay/orchestration/MfiSession;->getClient()Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 2373
    new-instance v10, Lcom/shilapi/xcertplay/transport/Iap2WiredCarPlayEndpoint;

    .line 2374
    iget-object v11, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->config:Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;

    invoke-virtual {v11}, Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;->getLinkLocal()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    .line 2376
    invoke-virtual {v4}, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->boundAirPlayPort()Ljava/lang/Integer;

    move-result-object v12

    if-eqz v12, :cond_6

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    goto :goto_4

    :cond_6
    iget-object v12, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->airPlayConfig:Lcom/shilapi/xcertplay/airplay/AirPlayConfig;

    invoke-virtual {v12}, Lcom/shilapi/xcertplay/airplay/AirPlayConfig;->getPort()I

    move-result v12

    .line 2377
    :goto_4
    iget-object v13, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->identity:Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;

    invoke-virtual {v13}, Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;->getPublicKeyHex()Ljava/lang/String;

    move-result-object v13

    .line 2378
    iget-object v14, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->airPlayConfig:Lcom/shilapi/xcertplay/airplay/AirPlayConfig;

    invoke-virtual {v14}, Lcom/shilapi/xcertplay/airplay/AirPlayConfig;->getSourceVersion()Ljava/lang/String;

    move-result-object v14

    .line 2379
    invoke-direct {v1, v3}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->macString([B)Ljava/lang/String;

    move-result-object v15

    .line 2373
    invoke-direct/range {v10 .. v15}, Lcom/shilapi/xcertplay/transport/Iap2WiredCarPlayEndpoint;-><init>(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2381
    sget-object v3, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$RunningControl;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$RunningControl;

    check-cast v3, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;

    invoke-direct {v1, v3}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->onStatus(Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;)V

    .line 2382
    const-string/jumbo v3, "wired iAP2 control starting"

    invoke-static {v1, v3, v8, v9, v6}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    move-object v12, v10

    .line 2383
    new-instance v10, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient;

    new-instance v3, Lcom/shilapi/xcertplay/mfi/Iap2MfiAuthenticationClient;

    invoke-direct {v3, v7, v8, v9, v6}, Lcom/shilapi/xcertplay/mfi/Iap2MfiAuthenticationClient;-><init>(Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v10, v0, v3}, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient;-><init>(Lcom/shilapi/xcertplay/iap2/session/Iap2Session;Lcom/shilapi/xcertplay/mfi/Iap2MfiAuthenticationClient;)V

    .line 2384
    iget-object v0, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->config:Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;->getIdentification()Lcom/shilapi/xcertplay/transport/Iap2IdentificationConfig;

    move-result-object v11

    .line 2386
    iget-object v0, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->config:Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;->getAvailableCurrentMilliAmps()I

    move-result v13

    .line 2387
    invoke-direct {v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->controlLoopTimeoutMillis()J

    move-result-wide v14

    .line 2388
    iget-object v0, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->locationProvider:Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;

    .line 2389
    iget-object v3, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->vehicleStatusProvider:Lcom/shilapi/xcertplay/transport/VehicleStatusProvider;

    .line 2390
    new-instance v7, Lcom/shilapi/xcertplay/orchestration/CarPlayController$runStack$result$1;

    invoke-direct {v7, v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$runStack$result$1;-><init>(Ljava/lang/Object;)V

    move-object/from16 v18, v7

    check-cast v18, Lkotlin/jvm/functions/Function1;

    .line 2383
    new-instance v7, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda50;

    invoke-direct {v7, v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda50;-><init>(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)V

    move-object/from16 v16, v0

    move-object/from16 v17, v3

    move-object/from16 v19, v7

    invoke-virtual/range {v10 .. v19}, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient;->run(Lcom/shilapi/xcertplay/transport/Iap2IdentificationConfig;Lcom/shilapi/xcertplay/transport/Iap2WiredCarPlayEndpoint;IJLcom/shilapi/xcertplay/transport/Iap2LocationProvider;Lcom/shilapi/xcertplay/transport/VehicleStatusProvider;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/transport/Iap2WiredControlResult;

    move-result-object v0

    .line 2394
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/Iap2WiredControlResult;->getTerminal()Lcom/shilapi/xcertplay/transport/Iap2WiredControlTerminal;

    move-result-object v0

    sget-object v3, Lcom/shilapi/xcertplay/orchestration/CarPlayController$WhenMappings;->$EnumSwitchMapping$5:[I

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/Iap2WiredControlTerminal;->ordinal()I

    move-result v0

    aget v0, v3, v0

    if-eq v0, v5, :cond_8

    if-ne v0, v9, :cond_7

    .line 2397
    new-instance v0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$Failed;

    const-string v3, "CarPlay control channel closed"

    invoke-direct {v0, v3, v8, v9, v6}, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$Failed;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;

    goto :goto_5

    .line 2394
    :cond_7
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 2395
    :cond_8
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$ControlEnded;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$ControlEnded;

    check-cast v0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;

    .line 2393
    :goto_5
    invoke-direct {v1, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->onStatus(Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;)V

    goto :goto_8

    .line 2372
    :cond_9
    new-instance v0, Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;

    const-string v3, "MFi coprocessor client is unavailable"

    invoke-direct {v0, v3, v6, v9, v6}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    const/4 v5, 0x0

    goto :goto_7

    .line 2363
    :cond_a
    :try_start_8
    new-instance v0, Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;

    const-string v3, "Could not attach the NCM/VPN AirPlay transport"

    invoke-direct {v0, v3, v6, v9, v6}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    :cond_b
    move-object/from16 v2, p2

    .line 2322
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object/from16 v2, p2

    :goto_6
    move-object v4, v6

    .line 2401
    :goto_7
    :try_start_9
    const-string/jumbo v3, "wired bring-up failed"

    invoke-direct {v1, v3, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-nez v5, :cond_c

    if-eqz v4, :cond_c

    .line 2402
    invoke-virtual {v4}, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->detach()V

    .line 2405
    :cond_c
    iget-object v3, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->csm:Lcom/shilapi/xcertplay/iap2/session/Iap2Session;

    if-eqz v3, :cond_d

    iput-object v6, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->csm:Lcom/shilapi/xcertplay/iap2/session/Iap2Session;

    const-string v4, "CSM"

    new-instance v7, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda51;

    invoke-direct {v7, v3}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda51;-><init>(Lcom/shilapi/xcertplay/iap2/session/Iap2Session;)V

    invoke-direct {v1, v4, v7}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closeBestEffort(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 2406
    :cond_d
    iget-object v3, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->mux:Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;

    if-eqz v3, :cond_e

    iput-object v6, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->mux:Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;

    const-string v4, "USBMUX"

    new-instance v6, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda52;

    invoke-direct {v6, v3}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda52;-><init>(Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;)V

    invoke-direct {v1, v4, v6}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closeBestEffort(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 2407
    :cond_e
    const-string v3, "USBMUX session"

    new-instance v4, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda53;

    move-object/from16 v8, p1

    invoke-direct {v4, v8}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda53;-><init>(Lcom/shilapi/xcertplay/transport/Iap2UsbSession;)V

    invoke-direct {v1, v3, v4}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closeBestEffort(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 2408
    invoke-direct {v1, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->fail(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    if-eqz v5, :cond_f

    .line 2410
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->close()V

    :cond_f
    :goto_8
    return-void

    :catchall_4
    move-exception v0

    if-eqz v5, :cond_10

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->close()V

    :cond_10
    throw v0
.end method

.method private static final runStack$lambda$111(Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;Lcom/shilapi/xcertplay/orchestration/CarPlayController;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2292
    :try_start_0
    move-object v5, v0

    check-cast v5, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v6, v5

    check-cast v6, Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;

    .line 2293
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    const-wide v8, 0x1bf08eb000L

    add-long/2addr v6, v8

    .line 2294
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 2295
    :cond_0
    :goto_0
    iget-boolean v9, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closed:Z

    if-nez v9, :cond_5

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    cmp-long v11, v9, v6

    if-gez v11, :cond_5

    const/16 v9, 0x2000

    const-wide/16 v10, 0x3e8

    .line 2296
    invoke-interface {v0, v9, v10, v11}, Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;->recv(IJ)[B

    move-result-object v9

    if-nez v9, :cond_1

    goto :goto_0

    .line 2297
    :cond_1
    array-length v10, v9

    if-nez v10, :cond_2

    goto :goto_2

    .line 2298
    :cond_2
    new-instance v11, Ljava/lang/String;

    sget-object v10, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v11, v9, v10}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/4 v15, 0x4

    const/16 v16, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xa

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2300
    :cond_3
    :goto_1
    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_4

    .line 2302
    invoke-virtual {v8, v4, v9}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    .line 2303
    invoke-virtual {v8, v4, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2304
    sget-object v9, Lcom/shilapi/xcertplay/orchestration/PhoneSyslog;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/PhoneSyslog;

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v9, v10}, Lcom/shilapi/xcertplay/orchestration/PhoneSyslog;->redacted(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    const/16 v10, 0x7d0

    invoke-static {v9, v10}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PHONE "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9, v4, v2, v3}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_1

    .line 2306
    :cond_4
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    const/high16 v10, 0x10000

    if-le v9, v10, :cond_0

    invoke-static {v8}, Lkotlin/text/StringsKt;->clear(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2308
    :cond_5
    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2292
    :try_start_2
    invoke-static {v5, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 2309
    const-string v0, "phone authentication diagnostic capture ended"

    invoke-static {v1, v0, v4, v2, v3}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception v0

    move-object v6, v0

    .line 2292
    :try_start_3
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-static {v5, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 2311
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "phone authentication diagnostic capture ended: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4, v2, v3}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method private static final runStack$lambda$114(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;)Lkotlin/Unit;
    .locals 3

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2391
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "wired "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final runStack$lambda$116$lambda$115(Lcom/shilapi/xcertplay/iap2/session/Iap2Session;)Lkotlin/Unit;
    .locals 0

    .line 2405
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/iap2/session/Iap2Session;->close()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final runStack$lambda$118$lambda$117(Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;)Lkotlin/Unit;
    .locals 0

    .line 2406
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->close()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final runStack$lambda$119(Lcom/shilapi/xcertplay/transport/Iap2UsbSession;)Lkotlin/Unit;
    .locals 0

    .line 2407
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->close()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final runStack$wireSummary([B)Ljava/lang/String;
    .locals 7

    .line 2331
    array-length v0, p0

    const/16 v1, 0x9

    const-string v2, "bytes="

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    const/16 v1, 0xff

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 2332
    aget-byte v0, p0, v0

    and-int/2addr v0, v1

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2334
    :cond_0
    array-length v0, p0

    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->runStack$wireSummary$value([BI)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    const/4 v3, 0x3

    invoke-static {p0, v3}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->runStack$wireSummary$value([BI)I

    move-result v3

    or-int/2addr v1, v3

    const/4 v3, 0x4

    .line 2335
    invoke-static {p0, v3}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->runStack$wireSummary$value([BI)I

    move-result v3

    const/4 v4, 0x5

    invoke-static {p0, v4}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->runStack$wireSummary$value([BI)I

    move-result v4

    const/4 v5, 0x6

    invoke-static {p0, v5}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->runStack$wireSummary$value([BI)I

    move-result v5

    const/4 v6, 0x7

    invoke-static {p0, v6}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->runStack$wireSummary$value([BI)I

    move-result p0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " length="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " flags="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " seq="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ack="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " session="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2332
    :cond_1
    :goto_0
    array-length p0, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final runStack$wireSummary$value([BI)I
    .locals 0

    .line 2333
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private final runWireless(I)V
    .locals 95

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 1127
    const-string v3, "getAddress(...)"

    const-string v4, " extraBinds="

    .line 0
    const-string/jumbo v5, "wireless RFCOMM EOF: iap2State="

    const-string/jumbo v6, "wireless Bluetooth control window ended without CarPlay: wifiDetailsSent="

    const-string/jumbo v7, "wireless RFCOMM connected address="

    const-string/jumbo v8, "wireless GOC SPP connected address="

    const-string/jumbo v9, "wireless GOC SPP connecting address="

    const-string/jumbo v10, "wireless RFCOMM connecting address="

    const-string/jumbo v11, "wireless Bonjour services started iface="

    const-string/jumbo v12, "wireless AirPlay listener attached bind="

    const-string/jumbo v13, "wireless GOC SPP ready remote="

    const-string/jumbo v14, "wireless selected Bluetooth target nameLength="

    const-string/jumbo v15, "wireless OEM Bluetooth ready localBt="

    move-object/from16 v16, v5

    const-string/jumbo v5, "wireless IPv6 root repair: "

    move-object/from16 v17, v6

    const-string/jumbo v6, "wireless IPv6 root repair: not possible "

    move-object/from16 v18, v7

    const-string/jumbo v7, "wireless hotspot backend="

    move-object/from16 v19, v3

    const-string/jumbo v3, "wireless IPv6 check: "

    move-object/from16 v20, v10

    const-string/jumbo v10, "wireless IPv6 check failed "

    move-object/from16 v21, v8

    const-string/jumbo v8, "wireless IP strategy="

    const-string/jumbo v0, "wireless bring-up generation="

    move-object/from16 v22, v9

    .line 1129
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " starting"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v25, v11

    move-object/from16 v26, v12

    const/4 v9, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v1, v0, v11, v9, v12}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_c

    const/4 v9, 0x1

    .line 1130
    :try_start_1
    invoke-static {v1, v12, v9, v12}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closeWirelessStack$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/network/CarPlayVpnService;ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_b

    .line 1132
    :try_start_2
    iget-boolean v0, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closed:Z

    if-nez v0, :cond_50

    .line 1133
    iget-object v0, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->phase:Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;

    sget-object v9, Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;->WIRELESS:Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;

    if-ne v0, v9, :cond_50

    .line 1134
    iget-object v0, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq v2, v0, :cond_0

    goto/16 :goto_2f

    .line 1139
    :cond_0
    iget-object v0, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->mfiSession:Lcom/shilapi/xcertplay/orchestration/MfiSession;

    if-eqz v0, :cond_49

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/orchestration/MfiSession;->getClient()Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;

    move-result-object v33

    if-eqz v33, :cond_49

    .line 1141
    iget-object v0, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->appContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/shilapi/xcertplay/E01OemBluetooth;->prepare(Landroid/content/Context;Ljava/lang/Object;I)V

    invoke-static {v0, v1, v2}, Lcom/shilapi/xcertplay/E01OemBluetooth;->preconnect(Landroid/content/Context;Ljava/lang/Object;I)V

    invoke-direct/range {p0 .. p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->startWirelessHotspot(I)Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;

    move-result-object v9

    .line 1142
    iput-object v9, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->hotspotInfoForKeep:Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;

    .line 1143
    invoke-virtual {v9}, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessHotspotInterface:Ljava/lang/String;

    .line 1144
    invoke-virtual {v9}, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->getHostAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet6Address;

    iput-boolean v0, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessHostIsIpv6:Z

    const/4 v11, 0x0

    .line 1145
    iput-boolean v11, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessResolvedSeen:Z

    .line 1146
    invoke-direct/range {p0 .. p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->isStaleWirelessRun(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 1147
    invoke-static {v1, v12, v11, v12}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closeWirelessStack$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/network/CarPlayVpnService;ILjava/lang/Object;)V

    return-void

    .line 1150
    :cond_1
    iget-object v0, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->hotspot:Lcom/shilapi/xcertplay/network/WirelessHotspotManager;

    .line 1151
    iget-object v11, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessConnectionProof:Lcom/shilapi/xcertplay/orchestration/WirelessConnectionProof;

    new-instance v12, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda46;

    invoke-direct {v12, v1, v2, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda46;-><init>(Lcom/shilapi/xcertplay/orchestration/CarPlayController;ILcom/shilapi/xcertplay/network/WirelessHotspotManager;)V

    invoke-virtual {v11, v2, v12}, Lcom/shilapi/xcertplay/orchestration/WirelessConnectionProof;->begin(ILkotlin/jvm/functions/Function0;)V

    .line 1154
    invoke-virtual {v9}, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->getHostAddress()Ljava/net/InetAddress;

    move-result-object v11

    if-eqz v11, :cond_48

    .line 1159
    instance-of v0, v11, Ljava/net/Inet6Address;

    if-eqz v0, :cond_3

    .line 1160
    move-object v0, v11

    check-cast v0, Ljava/net/Inet6Address;

    invoke-virtual {v0}, Ljava/net/Inet6Address;->isLinkLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v11

    check-cast v0, Ljava/net/Inet6Address;

    invoke-virtual {v0}, Ljava/net/Inet6Address;->getScopeId()I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1162
    :cond_2
    new-instance v0, Ljava/io/IOException;

    .line 1163
    const-string v3, "Wireless hotspot link-local IPv6 address is not scoped"

    .line 1162
    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1173
    :cond_3
    :goto_0
    invoke-virtual {v9}, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->getBackend()Lcom/shilapi/xcertplay/network/WirelessHotspotBackend;

    move-result-object v0

    sget-object v12, Lcom/shilapi/xcertplay/network/WirelessHotspotBackend;->WIFI_P2P:Lcom/shilapi/xcertplay/network/WirelessHotspotBackend;

    if-eq v0, v12, :cond_5

    .line 1174
    invoke-virtual {v9}, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->getBackend()Lcom/shilapi/xcertplay/network/WirelessHotspotBackend;

    move-result-object v0

    sget-object v12, Lcom/shilapi/xcertplay/network/WirelessHotspotBackend;->LOCAL_ONLY_HOTSPOT:Lcom/shilapi/xcertplay/network/WirelessHotspotBackend;

    if-eq v0, v12, :cond_5

    .line 1175
    invoke-virtual {v9}, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->getBackend()Lcom/shilapi/xcertplay/network/WirelessHotspotBackend;

    move-result-object v0

    sget-object v12, Lcom/shilapi/xcertplay/network/WirelessHotspotBackend;->MANUAL_HOTSPOT:Lcom/shilapi/xcertplay/network/WirelessHotspotBackend;

    if-ne v0, v12, :cond_4

    goto :goto_1

    :cond_4
    const/4 v12, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v12, 0x1

    .line 1176
    :goto_2
    invoke-virtual {v9}, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_c

    if-eqz v0, :cond_8

    .line 1177
    :try_start_3
    sget-object v27, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object/from16 v27, v1

    check-cast v27, Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    .line 1178
    invoke-static {v0}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1179
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v27
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object/from16 v37, v9

    :try_start_4
    invoke-static/range {v27 .. v27}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v27, v14

    :try_start_5
    const-string v14, "list(...)"

    invoke-static {v9, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ljava/util/List;

    invoke-static {v0}, Lcom/shilapi/xcertplay/compat/Api19Kt;->getIndexCompat(Ljava/net/NetworkInterface;)I

    move-result v0

    invoke-static {v9, v0}, Lcom/shilapi/xcertplay/network/WirelessHostAddressKt;->wirelessHostAddresses(Ljava/util/List;I)Lcom/shilapi/xcertplay/network/WirelessHostAddresses;

    move-result-object v0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_6
    move-object/from16 v37, v9

    move-object/from16 v27, v14

    const/4 v0, 0x0

    .line 1177
    :goto_3
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object/from16 v37, v9

    :goto_4
    move-object/from16 v27, v14

    :goto_5
    :try_start_6
    sget-object v9, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1181
    :goto_6
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v0, 0x0

    :cond_7
    check-cast v0, Lcom/shilapi/xcertplay/network/WirelessHostAddresses;

    goto :goto_7

    :cond_8
    move-object/from16 v37, v9

    move-object/from16 v27, v14

    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_9

    .line 1183
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/WirelessHostAddresses;->getIpv6LinkLocal()Ljava/net/Inet6Address;

    move-result-object v9

    if-nez v9, :cond_b

    :cond_9
    instance-of v9, v11, Ljava/net/Inet6Address;

    if-eqz v9, :cond_a

    move-object v9, v11

    check-cast v9, Ljava/net/Inet6Address;

    goto :goto_8

    :cond_a
    const/4 v9, 0x0

    :cond_b
    :goto_8
    if-eqz v0, :cond_c

    .line 1184
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/WirelessHostAddresses;->getIpv4()Ljava/net/Inet4Address;

    move-result-object v0

    if-nez v0, :cond_e

    :cond_c
    instance-of v0, v11, Ljava/net/Inet4Address;

    if-eqz v0, :cond_d

    move-object v0, v11

    check-cast v0, Ljava/net/Inet4Address;

    goto :goto_9

    :cond_d
    const/4 v0, 0x0

    .line 1185
    :cond_e
    :goto_9
    iget-object v14, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->config:Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;

    invoke-virtual {v14}, Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;->getWirelessIpStrategy()Lcom/shilapi/xcertplay/orchestration/WirelessIpStrategy;

    move-result-object v14

    if-eqz v12, :cond_f

    if-eqz v0, :cond_f

    move-object/from16 v28, v9

    .line 1186
    sget-object v9, Lcom/shilapi/xcertplay/orchestration/WirelessIpStrategy;->IPV6_LINK_LOCAL:Lcom/shilapi/xcertplay/orchestration/WirelessIpStrategy;

    if-eq v14, v9, :cond_10

    const/4 v9, 0x1

    goto :goto_a

    :cond_f
    move-object/from16 v28, v9

    :cond_10
    const/4 v9, 0x0

    :goto_a
    if-eqz v9, :cond_11

    .line 1187
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v29, v0

    check-cast v29, Ljava/net/InetAddress;

    move-object/from16 v30, v29

    move-object/from16 v29, v15

    move-object/from16 v15, v30

    goto :goto_b

    :cond_11
    move-object/from16 v29, v15

    move-object v15, v11

    :goto_b
    move-object/from16 v30, v13

    .line 1188
    instance-of v13, v15, Ljava/net/Inet6Address;

    iput-boolean v13, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessHostIsIpv6:Z

    if-eqz v9, :cond_12

    .line 1190
    sget-object v13, Lcom/shilapi/xcertplay/orchestration/WirelessIpStrategy;->IPV4_ONLY:Lcom/shilapi/xcertplay/orchestration/WirelessIpStrategy;

    if-eq v14, v13, :cond_12

    .line 1191
    invoke-static/range {v28 .. v28}, Lkotlin/collections/CollectionsKt;->listOfNotNull(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    goto :goto_c

    .line 1193
    :cond_12
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v13

    :goto_c
    if-eqz v9, :cond_13

    move-object/from16 v31, v13

    .line 1197
    sget-object v13, Lcom/shilapi/xcertplay/orchestration/WirelessIpStrategy;->IPV4_ONLY:Lcom/shilapi/xcertplay/orchestration/WirelessIpStrategy;

    if-ne v14, v13, :cond_14

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    goto :goto_e

    :cond_13
    move-object/from16 v31, v13

    :cond_14
    if-eqz v9, :cond_16

    .line 1198
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    if-eqz v28, :cond_15

    move-object/from16 v13, v28

    check-cast v13, Ljava/net/InetAddress;

    invoke-direct {v1, v13}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->hostAddressText(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v34, v13

    goto :goto_d

    :cond_15
    const/16 v34, 0x0

    :goto_d
    move-object/from16 v32, v11

    const/4 v11, 0x2

    new-array v13, v11, [Ljava/lang/String;

    const/16 v24, 0x0

    aput-object v32, v13, v24

    const/16 v23, 0x1

    aput-object v34, v13, v23

    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    goto :goto_e

    .line 1199
    :cond_16
    invoke-direct {v1, v11}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->hostAddressText(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    :goto_e
    move-object/from16 v43, v11

    .line 1201
    invoke-virtual {v15}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v48

    .line 1202
    invoke-direct {v1, v15}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->hostAddressText(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v11

    .line 1205
    instance-of v13, v15, Ljava/net/Inet6Address;

    if-eqz v13, :cond_17

    move-object v13, v15

    check-cast v13, Ljava/net/Inet6Address;

    goto :goto_f

    :cond_17
    const/4 v13, 0x0

    :goto_f
    if-nez v13, :cond_19

    .line 1206
    sget-object v13, Lcom/shilapi/xcertplay/orchestration/WirelessIpStrategy;->IPV4_ONLY:Lcom/shilapi/xcertplay/orchestration/WirelessIpStrategy;

    if-eq v14, v13, :cond_18

    move-object/from16 v13, v28

    goto :goto_10

    :cond_18
    const/4 v13, 0x0

    .line 1208
    :cond_19
    :goto_10
    invoke-virtual/range {v37 .. v37}, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->getBackend()Lcom/shilapi/xcertplay/network/WirelessHotspotBackend;

    move-result-object v32

    move-object/from16 v34, v13

    invoke-virtual/range {v32 .. v32}, Lcom/shilapi/xcertplay/network/WirelessHotspotBackend;->getLabel()Ljava/lang/String;

    move-result-object v13

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_11

    :cond_1a
    const/4 v0, 0x0

    :goto_11
    move-object/from16 v54, v11

    if-eqz v28, :cond_1b

    const/4 v11, 0x1

    goto :goto_12

    :cond_1b
    const/4 v11, 0x0

    :goto_12
    move-object/from16 v28, v7

    .line 1210
    instance-of v7, v15, Ljava/net/Inet6Address;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_c

    const-string v32, "IPv6"

    const-string v35, "IPv4"

    if-eqz v7, :cond_1c

    move-object/from16 v7, v32

    goto :goto_13

    :cond_1c
    move-object/from16 v7, v35

    :goto_13
    move-object/from16 v36, v15

    .line 1211
    :try_start_7
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v15

    move-object/from16 v38, v10

    invoke-interface/range {v43 .. v43}, Ljava/util/List;->size()I

    move-result v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_c

    if-eqz v34, :cond_1d

    const/4 v2, 0x1

    goto :goto_14

    :cond_1d
    const/4 v2, 0x0

    :goto_14
    move-object/from16 v39, v5

    .line 1212
    :try_start_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " backend="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " apBackend="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " useIpv4Lead="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " ipv4="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " ipv6LinkLocal="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " primaryFamily="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " sessionAddresses="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ipv6Keeper="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 1207
    invoke-static {v1, v0, v11, v9, v12}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    .line 1217
    const-string v2, "appContext"

    if-eqz v34, :cond_27

    :try_start_9
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    .line 1218
    invoke-virtual/range {v34 .. v34}, Ljava/net/Inet6Address;->getScopedInterface()Ljava/net/NetworkInterface;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_1e
    const/4 v0, 0x0

    .line 1220
    :goto_15
    sget-object v5, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;->INSTANCE:Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;

    invoke-virtual {v5, v0}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;->arming(Ljava/lang/String;)V

    .line 1221
    sget-object v5, Lcom/shilapi/xcertplay/network/HotspotIpv6Check;->INSTANCE:Lcom/shilapi/xcertplay/network/HotspotIpv6Check;

    iget-object v7, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->appContext:Landroid/content/Context;

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v7, v0}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check;->run(Landroid/content/Context;Ljava/lang/String;)Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;

    move-result-object v5

    .line 1222
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v1, v3, v11, v9, v12}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 1223
    invoke-virtual {v5}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;->getResult()Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;

    move-result-object v3

    sget-object v7, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;->MISSING_ROUTE:Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;

    if-ne v3, v7, :cond_23

    .line 1226
    sget-object v3, Lcom/shilapi/xcertplay/network/HotspotIpv6Check;->INSTANCE:Lcom/shilapi/xcertplay/network/HotspotIpv6Check;

    iget-object v7, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->appContext:Landroid/content/Context;

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v8, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->INSTANCE:Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;

    invoke-virtual {v8}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->claimAdbPrompt()Z

    move-result v8

    iget-object v9, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->ipv6RepairPath:Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;

    invoke-virtual {v3, v7, v5, v8, v9}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check;->repair(Landroid/content/Context;Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;ZLcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;)Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Repair;

    move-result-object v3

    if-eqz v3, :cond_1f

    .line 1227
    invoke-virtual {v3}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Repair;->getAttempt()Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;

    move-result-object v7

    if-eqz v7, :cond_1f

    invoke-virtual {v7}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;->getOk()Z

    move-result v7

    const/4 v9, 0x1

    if-ne v7, v9, :cond_1f

    .line 1228
    invoke-virtual {v3}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Repair;->getAttempt()Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;

    move-result-object v7

    invoke-virtual {v7}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;->getVia()Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;

    move-result-object v7

    iput-object v7, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->ipv6RepairPath:Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;

    .line 1229
    sget-object v7, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;->INSTANCE:Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;->getInterfaceName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Repair;->getAttempt()Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;

    move-result-object v9

    invoke-virtual {v9}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;->getVia()Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;->repaired(Ljava/lang/String;Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;)V

    .line 1230
    sget-object v7, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;->INSTANCE:Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;

    iget-object v8, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->appContext:Landroid/content/Context;

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Repair;->getAttempt()Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;

    move-result-object v9

    invoke-virtual {v9}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;->getVia()Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;->saveLastGoodPath(Landroid/content/Context;Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;)V

    goto :goto_16

    :cond_1f
    if-eqz v3, :cond_20

    .line 1232
    sget-object v7, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;->INSTANCE:Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;->getInterfaceName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Repair;->getAttempt()Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;

    move-result-object v9

    invoke-virtual {v9}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;->failed(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    :cond_20
    :goto_16
    invoke-direct {v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->persistNetworkAdbIfNeeded()V

    if-nez v3, :cond_21

    .line 1238
    const-string/jumbo v3, "wireless IPv6 root repair: not possible via=none (no repair command for this interface)"

    :goto_17
    const/4 v9, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x0

    goto :goto_18

    .line 1240
    :cond_21
    invoke-virtual {v3}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Repair;->getAttempt()Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;

    move-result-object v7

    invoke-virtual {v7}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;->getTried()Z

    move-result v7

    if-nez v7, :cond_22

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Repair;->getAttempt()Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_17

    .line 1241
    :cond_22
    invoke-virtual {v3}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Repair;->getAttempt()Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;

    move-result-object v6

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Repair;->getReport()Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    move-object/from16 v8, v39

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " -> "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_17

    .line 1236
    :goto_18
    invoke-static {v1, v3, v11, v9, v12}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 1245
    :cond_23
    invoke-virtual {v5}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;->getResult()Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;

    move-result-object v3

    sget-object v6, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;->OK:Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;

    if-ne v3, v6, :cond_24

    .line 1246
    sget-object v3, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;->INSTANCE:Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;->getInterfaceName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->ipv6RepairPath:Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;

    invoke-virtual {v3, v6, v7}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;->holding(Ljava/lang/String;Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;)V

    :cond_24
    if-nez v0, :cond_25

    .line 1251
    invoke-virtual {v5}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;->getInterfaceName()Ljava/lang/String;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :cond_25
    if-eqz v0, :cond_26

    move/from16 v3, p1

    .line 1252
    :try_start_a
    invoke-direct {v1, v3, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->startIpv6Watchdog(ILjava/lang/String;)V

    goto :goto_19

    :cond_26
    move/from16 v3, p1

    .line 1253
    :goto_19
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1217
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_1b

    :catchall_3
    move-exception v0

    goto :goto_1a

    :catchall_4
    move-exception v0

    move/from16 v3, p1

    :goto_1a
    :try_start_b
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1253
    :goto_1b
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v6, v38

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v1, v0, v11, v9, v12}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_1c

    :cond_27
    move/from16 v3, p1

    .line 1256
    :cond_28
    :goto_1c
    invoke-virtual/range {v37 .. v37}, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->getBssid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 1257
    const-string v5, "02:00:00:00:00:00"

    const/4 v9, 0x1

    invoke-static {v0, v5, v9}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_29

    goto :goto_1d

    :cond_29
    const/4 v0, 0x0

    :goto_1d
    if-eqz v0, :cond_2a

    goto :goto_1e

    .line 1258
    :cond_2a
    iget-object v0, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->airPlayConfig:Lcom/shilapi/xcertplay/airplay/AirPlayConfig;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/airplay/AirPlayConfig;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 1261
    :goto_1e
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v6, "ROOT"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v0, "toUpperCase(...)"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1263
    invoke-virtual/range {v37 .. v37}, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->getBackend()Lcom/shilapi/xcertplay/network/WirelessHotspotBackend;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/WirelessHotspotBackend;->getLabel()Ljava/lang/String;

    move-result-object v0

    .line 1264
    invoke-virtual/range {v37 .. v37}, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    const-string/jumbo v7, "unknown"

    if-nez v6, :cond_2b

    move-object v6, v7

    :cond_2b
    move-object/from16 v11, v36

    .line 1265
    :try_start_c
    instance-of v8, v11, Ljava/net/Inet6Address;

    if-eqz v8, :cond_2c

    move-object/from16 v8, v32

    goto :goto_1f

    :cond_2c
    move-object/from16 v8, v35

    .line 1266
    :goto_1f
    invoke-virtual/range {v37 .. v37}, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->getBssid()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2d

    const-string v9, "interface"

    goto :goto_20

    :cond_2d
    const-string v9, "saved"

    .line 1268
    :goto_20
    invoke-virtual/range {v37 .. v37}, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->getBandLabel()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v37 .. v37}, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->getChannel()I

    move-result v12

    .line 1269
    invoke-virtual/range {v37 .. v37}, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->getFrequencyMHz()Ljava/lang/Integer;

    move-result-object v13

    if-eqz v13, :cond_2e

    invoke-virtual {v13}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_2f

    :cond_2e
    move-object v13, v7

    :cond_2f
    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v15, v28

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " iface="

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " family="

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " identitySource="

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " host="

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v54

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " band="

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " channel="

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " frequency="

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "MHz"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v12, 0x0

    .line 1262
    invoke-static {v1, v0, v8, v9, v12}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 1272
    new-instance v49, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;

    .line 1273
    invoke-virtual/range {v37 .. v37}, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->getSsid()Ljava/lang/String;

    move-result-object v50

    .line 1274
    invoke-virtual/range {v37 .. v37}, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->getBandLabel()Ljava/lang/String;

    move-result-object v51

    .line 1275
    invoke-virtual/range {v37 .. v37}, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->getChannel()I

    move-result v52

    .line 1278
    invoke-virtual/range {v37 .. v37}, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->getBackend()Lcom/shilapi/xcertplay/network/WirelessHotspotBackend;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/WirelessHotspotBackend;->getLabel()Ljava/lang/String;

    move-result-object v55

    move-object/from16 v53, v5

    move-object/from16 v54, v6

    .line 1272
    invoke-direct/range {v49 .. v55}, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v45, v53

    move-object/from16 v6, v54

    move-object/from16 v0, v49

    check-cast v0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;

    .line 1271
    invoke-direct {v1, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->onStatus(Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;)V

    .line 1281
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForPairedIphone;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForPairedIphone;

    check-cast v0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;

    invoke-direct {v1, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->onStatus(Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;)V

    .line 1291
    invoke-direct/range {p0 .. p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->oemBluetoothAddress(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v58, v8

    const/4 v0, 0x0

    const/4 v5, 0x0

    const-string v9, " "

    const-string v10, " localBt="

    iget-object v8, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->airPlayConfig:Lcom/shilapi/xcertplay/airplay/AirPlayConfig;

    const v73, 0x1fff9

    const/16 v74, 0x0

    const/16 v56, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x0

    move-object/from16 v55, v8

    move-object/from16 v57, v45

    invoke-static/range {v55 .. v74}, Lcom/shilapi/xcertplay/airplay/AirPlayConfig;->copy$default(Lcom/shilapi/xcertplay/airplay/AirPlayConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;Lcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;ZIIZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZILjava/lang/Object;)Lcom/shilapi/xcertplay/airplay/AirPlayConfig;

    move-result-object v30

    move-object/from16 v53, v57

    move-object/from16 v8, v58

    .line 1331
    sget-object v10, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$AttachingNetwork;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$AttachingNetwork;

    check-cast v10, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;

    invoke-direct {v1, v10}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->onStatus(Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;)V

    .line 1332
    invoke-direct {v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->awaitVpnService()Lcom/shilapi/xcertplay/network/CarPlayVpnService;

    move-result-object v27
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    if-eqz v27, :cond_47

    .line 1340
    :try_start_d
    iget-object v10, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->identity:Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;

    .line 1341
    iget-object v12, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->pairings:Lcom/shilapi/xcertplay/airplay/PairingStore;

    .line 1343
    invoke-direct/range {p0 .. p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessSessionListener(I)Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    move-result-object v34

    .line 1344
    iget-object v13, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->media:Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;

    .line 1345
    new-instance v14, Lcom/shilapi/xcertplay/orchestration/CarPlayController$runWireless$result$1;

    invoke-direct {v14, v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$runWireless$result$1;-><init>(Ljava/lang/Object;)V

    move-object/from16 v36, v14

    check-cast v36, Lkotlin/jvm/functions/Function1;

    move-object/from16 v28, v11

    move-object/from16 v32, v12

    move-object/from16 v35, v13

    move-object/from16 v29, v31

    move-object/from16 v31, v10

    .line 1336
    invoke-virtual/range {v27 .. v36}, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->attachWireless(Ljava/net/InetAddress;Ljava/util/List;Lcom/shilapi/xcertplay/airplay/AirPlayConfig;Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;Lcom/shilapi/xcertplay/airplay/PairingStore;Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;Lkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/network/CarPlayVpnService$AttachResult;

    move-result-object v10
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    move-object/from16 v12, v27

    move-object/from16 v11, v33

    .line 1348
    :try_start_e
    sget-object v13, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AttachResult$Started;->INSTANCE:Lcom/shilapi/xcertplay/network/CarPlayVpnService$AttachResult$Started;

    invoke-static {v10, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_32

    .line 1349
    sget-object v0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AttachResult$AlreadyStarted;->INSTANCE:Lcom/shilapi/xcertplay/network/CarPlayVpnService$AttachResult$AlreadyStarted;

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 1351
    instance-of v0, v10, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AttachResult$Failed;

    if-eqz v0, :cond_30

    .line 1352
    new-instance v0, Ljava/io/IOException;

    check-cast v10, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AttachResult$Failed;

    invoke-virtual {v10}, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AttachResult$Failed;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1335
    :cond_30
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 1350
    :cond_31
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Wireless AirPlay transport is already attached"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1356
    :cond_32
    invoke-virtual {v12}, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->boundAirPlayPort()Ljava/lang/Integer;

    move-result-object v10

    if-eqz v10, :cond_33

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto :goto_21

    :cond_33
    iget-object v10, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->airPlayConfig:Lcom/shilapi/xcertplay/airplay/AirPlayConfig;

    invoke-virtual {v10}, Lcom/shilapi/xcertplay/airplay/AirPlayConfig;->getPort()I

    move-result v10

    .line 1357
    :goto_21
    iput v10, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->airPlayPortInUse:I

    const v93, 0x1ff7f

    const/16 v94, 0x0

    const/16 v76, 0x0

    const/16 v77, 0x0

    const/16 v78, 0x0

    const/16 v79, 0x0

    const/16 v80, 0x0

    const/16 v81, 0x0

    const/16 v82, 0x0

    const/16 v84, 0x0

    const/16 v85, 0x0

    const/16 v86, 0x0

    const/16 v87, 0x0

    const/16 v88, 0x0

    const/16 v89, 0x0

    const/16 v90, 0x0

    const/16 v91, 0x0

    const/16 v92, 0x0

    move/from16 v83, v10

    move-object/from16 v75, v30

    .line 1358
    invoke-static/range {v75 .. v94}, Lcom/shilapi/xcertplay/airplay/AirPlayConfig;->copy$default(Lcom/shilapi/xcertplay/airplay/AirPlayConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;Lcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;ZIIZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZILjava/lang/Object;)Lcom/shilapi/xcertplay/airplay/AirPlayConfig;

    move-result-object v46

    .line 1361
    move-object/from16 v54, v29

    check-cast v54, Ljava/lang/Iterable;

    new-instance v60, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda47;

    invoke-direct/range {v60 .. v60}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda47;-><init>()V

    const/16 v61, 0x1f

    const/16 v62, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    invoke-static/range {v54 .. v62}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v14

    if-nez v14, :cond_34

    const-string v13, "none"

    .line 1362
    :cond_34
    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v15, v26

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " port="

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 1359
    invoke-static {v1, v4, v13, v6, v14}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 1364
    invoke-direct/range {p0 .. p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->isStaleWirelessRun(I)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 1365
    invoke-direct {v1, v12}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closeWirelessStack(Lcom/shilapi/xcertplay/network/CarPlayVpnService;)V

    goto/16 :goto_2f

    .line 1369
    :cond_35
    new-instance v44, Lcom/shilapi/xcertplay/network/CarPlayBonjour;

    .line 1370
    iget-object v4, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->appContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1372
    iget-object v2, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->identity:Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;

    .line 1369
    new-instance v6, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda48;

    invoke-direct {v6, v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda48;-><init>(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)V

    const/16 v49, 0x1

    move-object/from16 v47, v2

    move-object/from16 v45, v4

    move-object/from16 v50, v6

    invoke-direct/range {v44 .. v50}, Lcom/shilapi/xcertplay/network/CarPlayBonjour;-><init>(Landroid/content/Context;Lcom/shilapi/xcertplay/airplay/AirPlayConfig;Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;)V

    move-object/from16 v2, v44

    .line 1383
    iput-object v2, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->bonjour:Lcom/shilapi/xcertplay/network/CarPlayBonjour;

    .line 1384
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->start()V

    .line 1385
    invoke-virtual/range {v37 .. v37}, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_36

    move-object v4, v7

    :cond_36
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->getPublicationSummary()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v13, v25

    invoke-direct {v6, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v1, v2, v13, v9, v14}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 1386
    invoke-direct/range {p0 .. p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->isStaleWirelessRun(I)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 1387
    invoke-direct {v1, v12}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closeWirelessStack(Lcom/shilapi/xcertplay/network/CarPlayVpnService;)V

    goto/16 :goto_2f

    .line 1393
    :cond_37
    iget-object v2, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->config:Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;->getIdentification()Lcom/shilapi/xcertplay/transport/Iap2IdentificationConfig;

    move-result-object v54

    .line 1394
    new-instance v2, Lcom/shilapi/xcertplay/transport/Iap2WirelessIdentification;

    invoke-virtual/range {v37 .. v37}, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->getSsid()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v8, v4}, Lcom/shilapi/xcertplay/transport/Iap2WirelessIdentification;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v69, 0x3dff

    const/16 v70, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    move-object/from16 v64, v2

    .line 1393
    invoke-static/range {v54 .. v70}, Lcom/shilapi/xcertplay/transport/Iap2IdentificationConfig;->copy$default(Lcom/shilapi/xcertplay/transport/Iap2IdentificationConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/transport/Iap2WirelessIdentification;ZZLcom/shilapi/xcertplay/transport/EvChargingConnectors;ZILjava/lang/Object;)Lcom/shilapi/xcertplay/transport/Iap2IdentificationConfig;

    move-result-object v2

    .line 1396
    new-instance v38, Lcom/shilapi/xcertplay/transport/Iap2WirelessCarPlayEndpoint;

    .line 1397
    invoke-virtual/range {v37 .. v37}, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->getSsid()Ljava/lang/String;

    move-result-object v39

    .line 1398
    invoke-virtual/range {v37 .. v37}, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->getPassphrase()Ljava/lang/String;

    move-result-object v40

    .line 1399
    invoke-virtual/range {v37 .. v37}, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->getChannel()I

    move-result v41

    .line 1400
    invoke-virtual/range {v37 .. v37}, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->getSecurity()Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    move-result-object v42

    .line 1404
    iget-object v4, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->identity:Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;->getPublicKeyHex()Ljava/lang/String;

    move-result-object v46

    .line 1405
    iget-object v4, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->airPlayConfig:Lcom/shilapi/xcertplay/airplay/AirPlayConfig;

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/airplay/AirPlayConfig;->getSourceVersion()Ljava/lang/String;

    move-result-object v47

    const/16 v49, 0x200

    const/16 v50, 0x0

    const/16 v48, 0x0

    move/from16 v44, v10

    move-object/from16 v45, v53

    .line 1396
    invoke-direct/range {v38 .. v50}, Lcom/shilapi/xcertplay/transport/Iap2WirelessCarPlayEndpoint;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v4, v38

    .line 1407
    iput-object v2, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessIdentification:Lcom/shilapi/xcertplay/transport/Iap2IdentificationConfig;

    .line 1408
    iput-object v4, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessAirPlayEndpoint:Lcom/shilapi/xcertplay/transport/Iap2WirelessCarPlayEndpoint;

    .line 1409
    iget-object v6, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->media:Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;

    new-instance v8, Lcom/shilapi/xcertplay/orchestration/CarPlayController$runWireless$6;

    invoke-direct {v8, v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$runWireless$6;-><init>(Ljava/lang/Object;)V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-interface {v6, v8}, Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;->setIapTunnelHandler(Lkotlin/jvm/functions/Function1;)V

    .line 1411
    sget-object v6, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$ConnectingBluetooth;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$ConnectingBluetooth;

    check-cast v6, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;

    invoke-direct {v1, v6}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->onStatus(Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;)V

    move-object/from16 v6, v37

    .line 1432
    invoke-direct {v1, v3, v6}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->awaitUsbBluetoothIap2(ILcom/shilapi/xcertplay/network/WirelessHotspotInfo;)Lcom/shilapi/xcertplay/orchestration/CarPlayController$UsbBtWait;

    move-result-object v0

    .line 1433
    instance-of v5, v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$UsbBtWait$Bluetooth;

    if-eqz v5, :cond_38

    check-cast v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$UsbBtWait$Bluetooth;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$UsbBtWait$Bluetooth;->getStream()Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;

    move-result-object v5

    iput-object v5, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->bluetoothStream:Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;

    goto/16 :goto_22

    .line 1434
    :cond_38
    sget-object v2, Lcom/shilapi/xcertplay/orchestration/CarPlayController$UsbBtWait$WifiWon;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayController$UsbBtWait$WifiWon;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 1436
    iget-object v0, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessHandoffRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v9, 0x1

    const/4 v11, 0x0

    invoke-virtual {v0, v11, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 1437
    invoke-direct/range {p0 .. p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->armWirelessHandoffWatchdog(I)V

    .line 1438
    invoke-direct {v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->maybeCompleteWirelessHandoff()V

    goto/16 :goto_2f

    .line 1442
    :cond_39
    sget-object v2, Lcom/shilapi/xcertplay/orchestration/CarPlayController$UsbBtWait$Stale;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayController$UsbBtWait$Stale;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1443
    invoke-direct {v1, v12}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closeWirelessStack(Lcom/shilapi/xcertplay/network/CarPlayVpnService;)V

    goto/16 :goto_2f

    .line 1432
    :cond_3a
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 1451
    :goto_22
    sget-object v0, Lcom/shilapi/xcertplay/iap2/session/Iap2Session;->Companion:Lcom/shilapi/xcertplay/iap2/session/Iap2Session$Companion;

    .line 1470
    const-string/jumbo v6, "wireless-rfcomm"

    .line 1471
    new-instance v8, Lcom/shilapi/xcertplay/orchestration/CarPlayController$runWireless$channel$1;

    invoke-direct {v8, v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$runWireless$channel$1;-><init>(Ljava/lang/Object;)V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 1468
    invoke-virtual {v0, v5, v6, v8}, Lcom/shilapi/xcertplay/iap2/session/Iap2Session$Companion;->openWireless(Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/iap2/session/Iap2Session;

    move-result-object v0

    .line 1472
    iput-object v0, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->csm:Lcom/shilapi/xcertplay/iap2/session/Iap2Session;

    .line 1473
    const-string/jumbo v5, "wireless iAP2 CSM channel opened over RFCOMM"

    const/4 v9, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v1, v5, v13, v9, v14}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 1474
    invoke-direct/range {p0 .. p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->isStaleWirelessRun(I)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 1475
    invoke-direct {v1, v12}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closeWirelessStack(Lcom/shilapi/xcertplay/network/CarPlayVpnService;)V

    goto/16 :goto_2f

    .line 1478
    :cond_3b
    sget-object v5, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$RunningWireless;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$RunningWireless;

    check-cast v5, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;

    invoke-direct {v1, v5}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->onStatus(Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;)V

    .line 1479
    const-string/jumbo v5, "wireless Bluetooth iAP2 control starting"

    const/4 v9, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v1, v5, v13, v9, v14}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 1480
    new-instance v5, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient;

    .line 1482
    new-instance v6, Lcom/shilapi/xcertplay/mfi/Iap2MfiAuthenticationClient;

    invoke-direct {v6, v11, v13, v9, v14}, Lcom/shilapi/xcertplay/mfi/Iap2MfiAuthenticationClient;-><init>(Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1480
    invoke-direct {v5, v0, v6}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient;-><init>(Lcom/shilapi/xcertplay/iap2/session/Iap2Session;Lcom/shilapi/xcertplay/mfi/Iap2MfiAuthenticationClient;)V

    .line 1485
    invoke-static {v2}, Lcom/shilapi/xcertplay/orchestration/CarPlayControllerKt;->wirelessBluetoothIdentification(Lcom/shilapi/xcertplay/transport/Iap2IdentificationConfig;)Lcom/shilapi/xcertplay/transport/Iap2IdentificationConfig;

    move-result-object v55

    .line 1487
    invoke-direct {v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->controlLoopTimeoutMillis()J

    move-result-wide v57

    .line 1488
    iget-object v0, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->vehicleStatusProvider:Lcom/shilapi/xcertplay/transport/VehicleStatusProvider;

    .line 1489
    new-instance v2, Lcom/shilapi/xcertplay/orchestration/CarPlayController$runWireless$result$2;

    invoke-direct {v2, v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$runWireless$result$2;-><init>(Ljava/lang/Object;)V

    move-object/from16 v64, v2

    check-cast v64, Lkotlin/jvm/functions/Function1;

    .line 1490
    new-instance v2, Lcom/shilapi/xcertplay/orchestration/CarPlayController$runWireless$result$3;

    invoke-direct {v2, v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$runWireless$result$3;-><init>(Ljava/lang/Object;)V

    move-object/from16 v65, v2

    check-cast v65, Lkotlin/jvm/functions/Function1;

    const/16 v66, 0xe8

    const/16 v67, 0x0

    const/16 v59, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    move-object/from16 v60, v0

    move-object/from16 v56, v4

    move-object/from16 v54, v5

    .line 1483
    invoke-static/range {v54 .. v67}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient;->run$default(Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient;Lcom/shilapi/xcertplay/transport/Iap2IdentificationConfig;Lcom/shilapi/xcertplay/transport/Iap2WirelessCarPlayEndpoint;JLcom/shilapi/xcertplay/transport/Iap2LocationProvider;Lcom/shilapi/xcertplay/transport/VehicleStatusProvider;Lcom/shilapi/xcertplay/transport/Iap2LocationRequest;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;

    move-result-object v0

    .line 1492
    invoke-direct/range {p0 .. p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->isStaleWirelessRun(I)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 1493
    invoke-direct {v1, v12}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closeWirelessStack(Lcom/shilapi/xcertplay/network/CarPlayVpnService;)V

    goto/16 :goto_2f

    .line 1496
    :cond_3c
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->getTerminal()Lcom/shilapi/xcertplay/transport/Iap2WirelessControlTerminal;

    move-result-object v2

    sget-object v4, Lcom/shilapi/xcertplay/orchestration/CarPlayController$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlTerminal;->ordinal()I

    move-result v2

    aget v2, v4, v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    const-string v4, " carPlayStartSessions="

    const/4 v9, 0x1

    if-eq v2, v9, :cond_42

    const/4 v10, 0x2

    if-ne v2, v10, :cond_41

    .line 1526
    :try_start_f
    iget-object v2, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessActiveReported:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_40

    .line 1529
    invoke-direct {v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessIphoneOnWifi()Ljava/lang/Boolean;

    move-result-object v2

    .line 1530
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->getWifiConfigurationsSent()I

    move-result v5

    if-lez v5, :cond_3d

    const/4 v5, 0x1

    goto :goto_23

    :cond_3d
    const/4 v5, 0x0

    :goto_23
    if-nez v2, :cond_3e

    goto :goto_24

    :cond_3e
    move-object v7, v2

    .line 1531
    :goto_24
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->getCarPlayStartSessionsSent()I

    move-result v6

    new-instance v8, Ljava/lang/StringBuilder;

    move-object/from16 v10, v17

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " iPhoneOnWifi="

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 1530
    invoke-static {v1, v4, v13, v10, v14}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 1532
    invoke-direct {v1, v12}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closeWirelessStack(Lcom/shilapi/xcertplay/network/CarPlayVpnService;)V

    .line 1533
    new-instance v4, Ljava/io/IOException;

    sget-object v5, Lcom/shilapi/xcertplay/orchestration/SetupDiagnosis;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/SetupDiagnosis;

    .line 1534
    invoke-direct {v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->controlLoopTimeoutMillis()J

    move-result-wide v6

    const/16 v8, 0x3e8

    int-to-long v10, v8

    div-long/2addr v6, v10

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->getWifiConfigurationsSent()I

    move-result v0

    if-lez v0, :cond_3f

    const/4 v0, 0x1

    goto :goto_25

    :cond_3f
    const/4 v0, 0x0

    .line 1533
    :goto_25
    invoke-virtual {v5, v2, v6, v7, v0}, Lcom/shilapi/xcertplay/orchestration/SetupDiagnosis;->wirelessJoinTimeoutMessage(Ljava/lang/Boolean;JZ)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    invoke-direct {v1, v4}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->fail(Ljava/lang/Throwable;)V

    :cond_40
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_2f

    .line 1496
    :cond_41
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 1499
    :cond_42
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->getStage()Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;

    move-result-object v2

    .line 1500
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->getWirelessCarPlayAvailableSeen()Z

    move-result v5

    .line 1501
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->getTransportNotificationSeen()Z

    move-result v6

    .line 1502
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->getCarPlayStartSessionsSent()I

    move-result v7

    .line 1503
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->getPostTransportWiFiConfigurationsSent()I

    move-result v0

    .line 1504
    iget-object v8, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessHandoffRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    .line 1505
    iget-object v10, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessTunnelReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v10

    .line 1506
    iget-object v11, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessActiveReported:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v11

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v14, v16

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " wirelessCarPlayAvailable="

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " transportIdentifier="

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " postTransportConfigs="

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " handoffRequested="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " tunnelReady="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " wirelessActive="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 1498
    invoke-static {v1, v0, v13, v10, v14}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 1508
    iget-object v0, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessActiveReported:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_46

    .line 1510
    iget-object v0, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessHandoffRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 1511
    iget-object v2, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessTunnel:Lcom/shilapi/xcertplay/orchestration/CurrentChannel;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/orchestration/CurrentChannel;->getCurrent()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_43

    const/4 v2, 0x1

    goto :goto_26

    :cond_43
    const/4 v2, 0x0

    .line 1512
    :goto_26
    iget-object v4, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->activeSession:Lcom/shilapi/xcertplay/airplay/AirPlaySession;

    if-eqz v4, :cond_44

    const/4 v4, 0x1

    goto :goto_27

    :cond_44
    const/4 v4, 0x0

    .line 1509
    :goto_27
    invoke-static {v0, v2, v4}, Lcom/shilapi/xcertplay/orchestration/CarPlayControllerKt;->isWirelessHandoffInProgress(ZZZ)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 1520
    const-string/jumbo v0, "wireless Bluetooth bootstrap closed during handoff; keeping the Wi-Fi AirPlay tunnel alive"

    const/4 v10, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 1519
    invoke-static {v1, v0, v13, v10, v14}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_28

    .line 1515
    :cond_45
    new-instance v0, Ljava/io/IOException;

    .line 1516
    const-string v2, "Wireless CarPlay control channel closed before tunnel iAP2 ready"

    .line 1515
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1519
    :cond_46
    :goto_28
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    goto/16 :goto_2f

    :catchall_5
    move-exception v0

    goto :goto_2c

    :catchall_6
    move-exception v0

    goto :goto_29

    :catchall_7
    move-exception v0

    move-object/from16 v12, v27

    :goto_29
    const/4 v9, 0x1

    goto :goto_2c

    :cond_47
    const/4 v9, 0x1

    .line 1333
    :try_start_10
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Could not bind the CarPlay AirPlay service"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_8
    move-exception v0

    goto :goto_2a

    :catchall_9
    move-exception v0

    move/from16 v3, p1

    goto :goto_2a

    :cond_48
    move v3, v2

    const/4 v9, 0x1

    .line 1155
    new-instance v0, Ljava/io/IOException;

    .line 1156
    const-string v2, "Wireless hotspot did not provide a usable host address"

    .line 1155
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_49
    move v3, v2

    const/4 v9, 0x1

    .line 1140
    new-instance v0, Ljava/io/IOException;

    const-string v2, "MFi coprocessor client is unavailable"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    :catchall_a
    move-exception v0

    goto :goto_2b

    :catchall_b
    move-exception v0

    move v3, v2

    goto :goto_2b

    :catchall_c
    move-exception v0

    move v3, v2

    :goto_2a
    const/4 v9, 0x1

    :goto_2b
    const/4 v12, 0x0

    .line 1538
    :goto_2c
    iget-boolean v2, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closed:Z

    if-nez v2, :cond_50

    iget-object v2, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-eq v3, v2, :cond_4a

    goto :goto_2f

    .line 1545
    :cond_4a
    iget-object v2, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessHandoffRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    .line 1546
    iget-object v3, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessTunnel:Lcom/shilapi/xcertplay/orchestration/CurrentChannel;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/orchestration/CurrentChannel;->getCurrent()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4b

    const/4 v11, 0x1

    goto :goto_2d

    :cond_4b
    const/4 v11, 0x0

    .line 1547
    :goto_2d
    iget-object v3, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->activeSession:Lcom/shilapi/xcertplay/airplay/AirPlaySession;

    if-eqz v3, :cond_4c

    goto :goto_2e

    :cond_4c
    const/4 v9, 0x0

    .line 1544
    :goto_2e
    invoke-static {v2, v11, v9}, Lcom/shilapi/xcertplay/orchestration/CarPlayControllerKt;->isWirelessHandoffInProgress(ZZZ)Z

    move-result v2

    .line 1549
    iget-object v3, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessActiveReported:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-static {v0, v3, v2}, Lcom/shilapi/xcertplay/orchestration/CarPlayControllerKt;->keepsWirelessSessionAfterBootstrapError(Ljava/lang/Throwable;ZZ)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 1550
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "wireless RFCOMM control ended after tunnel handoff: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v1, v0, v13, v9, v14}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_2f

    .line 1552
    :cond_4d
    const-string/jumbo v2, "wireless bring-up failed"

    invoke-direct {v1, v2, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1553
    move-object v2, v12

    check-cast v2, Lcom/shilapi/xcertplay/network/CarPlayVpnService;

    if-nez v12, :cond_4e

    iget-object v12, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->vpnService:Lcom/shilapi/xcertplay/network/CarPlayVpnService;

    :cond_4e
    invoke-direct {v1, v12}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closeWirelessStack(Lcom/shilapi/xcertplay/network/CarPlayVpnService;)V

    .line 1554
    instance-of v2, v0, Ljava/lang/Error;

    if-nez v2, :cond_4f

    .line 1555
    invoke-direct {v1, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->fail(Ljava/lang/Throwable;)V

    goto :goto_2f

    .line 1554
    :cond_4f
    throw v0

    :cond_50
    :goto_2f
    return-void
.end method

.method private static final runWireless$lambda$50(Lcom/shilapi/xcertplay/orchestration/CarPlayController;ILcom/shilapi/xcertplay/network/WirelessHotspotManager;)Lkotlin/Unit;
    .locals 0

    .line 1152
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->isStaleWirelessRun(I)Z

    move-result p0

    if-nez p0, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/shilapi/xcertplay/network/WirelessHotspotManager;->onCarPlayConfirmed()V

    .line 1153
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final runWireless$lambda$59(Ljava/net/InetAddress;)Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1361
    instance-of p0, p0, Ljava/net/Inet6Address;

    if-eqz p0, :cond_0

    const-string p0, "IPv6"

    :goto_0
    check-cast p0, Ljava/lang/CharSequence;

    return-object p0

    :cond_0
    const-string p0, "IPv4"

    goto :goto_0
.end method

.method private static final runWireless$lambda$61(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent;)Lkotlin/Unit;
    .locals 3

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1379
    instance-of v0, p1, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Resolved;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessResolvedSeen:Z

    .line 1380
    :cond_0
    invoke-static {p1}, Lcom/shilapi/xcertplay/network/CarPlayBonjourKt;->diagnosticSummary(Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "wireless bonjour: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 1381
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final scheduleAvailabilityPoll(Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 2204
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->availabilityPollGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 2205
    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda6;-><init>(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;ILkotlin/jvm/functions/Function0;)V

    const-wide/16 p1, 0x7d0

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final scheduleAvailabilityPoll$lambda$106(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;ILkotlin/jvm/functions/Function0;)V
    .locals 1

    .line 2208
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closed:Z

    if-nez v0, :cond_0

    .line 2209
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->phase:Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;

    if-ne v0, p1, :cond_0

    .line 2210
    iget-object p0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->availabilityPollGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-ne p2, p0, :cond_0

    .line 2212
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private final selectWirelessBluetoothDevice(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/BluetoothDevice;
    .locals 10

    .line 2665
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 2666
    :cond_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->config:Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;->getWirelessBluetoothDeviceAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    .line 2667
    check-cast v0, Ljava/lang/Iterable;

    .line 3419
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 2667
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_3

    return-object v0

    .line 2668
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string v0, "The selected iPhone is no longer paired. Choose it again in 06Link."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2670
    :cond_4
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    .line 3421
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .line 3422
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    .line 2671
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    check-cast v6, Ljava/lang/CharSequence;

    const-string v7, "iPhone"

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v6, v7, v2}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v6

    if-ne v6, v2, :cond_5

    .line 3422
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3423
    :cond_6
    check-cast v3, Ljava/util/List;

    .line 2673
    move-object v4, v3

    check-cast v4, Ljava/lang/Iterable;

    .line 3424
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/Collection;

    .line 3425
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Landroid/bluetooth/BluetoothDevice;

    .line 2673
    invoke-direct {p0, v8}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->isBluetoothDeviceConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 3425
    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3426
    :cond_8
    check-cast v5, Ljava/util/List;

    .line 2676
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    .line 2677
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "wireless Bluetooth bondedIPhones="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " directlyConnected="

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2674
    const-string/jumbo v7, "xcertplay-usb"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2679
    move-object v6, v5

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_5

    .line 2682
    :cond_9
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->connectedBluetoothDevices(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v5, Ljava/util/Set;

    check-cast v5, Ljava/util/Collection;

    .line 3427
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 3428
    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    .line 2683
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    .line 3428
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2682
    :cond_a
    check-cast v5, Ljava/util/Set;

    .line 3430
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/Collection;

    .line 3431
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_b
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    .line 2685
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 3431
    invoke-interface {p1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 3432
    :cond_c
    move-object v5, p1

    check-cast v5, Ljava/util/List;

    .line 2687
    :goto_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result p1

    const-string/jumbo v4, "single(...)"

    if-ne p1, v2, :cond_d

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->single(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    return-object p1

    .line 2688
    :cond_d
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result p1

    if-gt p1, v2, :cond_11

    .line 2694
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v2, :cond_e

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->single(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    return-object p1

    .line 2695
    :cond_e
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    if-gt p1, v2, :cond_10

    .line 2701
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p1

    if-ne p1, v2, :cond_f

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->single(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    return-object p1

    .line 2702
    :cond_f
    new-instance p1, Ljava/io/IOException;

    .line 2703
    const-string v0, "No unambiguous bonded iPhone found; pair one iPhone and retry"

    .line 2702
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2696
    :cond_10
    new-instance p1, Ljava/io/IOException;

    .line 2697
    const-string v0, "Multiple bonded iPhones found and none is currently connected; connect one iPhone and retry"

    .line 2696
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2690
    :cond_11
    new-instance p1, Ljava/io/IOException;

    .line 2691
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Multiple connected iPhones found ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "); choose one in 06Link"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2690
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method

.method private static final sendKnobBack$lambda$14(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    .locals 9

    .line 599
    new-instance v0, Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;

    const/16 v7, 0x3b

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;-><init>(ZZZIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v0, v3, v1, v2}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->sendKnob$default(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;ZILjava/lang/Object;)V

    return-void
.end method

.method private static final sendKnobPress$lambda$16(Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)Lkotlin/Unit;
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 619
    invoke-static {p1, p0, v2, v0, v1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->sendKnob$default(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;ZILjava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final sendMediaButton$lambda$20(Lcom/shilapi/xcertplay/airplay/AirPlaySession;I)V
    .locals 0

    .line 634
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->sendMedia(I)V

    return-void
.end method

.method private static final sendMediaHold$lambda$17(ZILcom/shilapi/xcertplay/airplay/AirPlaySession;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 622
    :goto_0
    invoke-virtual {p2, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->sendMediaState(I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final sendTelephonyButton$lambda$21(Lcom/shilapi/xcertplay/airplay/AirPlaySession;I)V
    .locals 0

    .line 649
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->sendTelephony(I)V

    return-void
.end method

.method private static final sendTouch$lambda$12(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/util/List;)V
    .locals 0

    .line 571
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->sendTouch(Ljava/util/List;)Z

    return-void
.end method

.method private static final siriButton$lambda$18(ZLcom/shilapi/xcertplay/airplay/AirPlaySession;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 625
    invoke-virtual {p1, p0}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->siriButton(Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final start$lambda$9$lambda$7(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/orchestration/CarPlayVideoListener;Z)Lkotlin/Unit;
    .locals 4

    .line 536
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->activeSession:Lcom/shilapi/xcertplay/airplay/AirPlaySession;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->setVideoPlaybackAllowed(Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 537
    const-string v0, "no session"

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "video in car allowed="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " sent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p0, v0, v2, v3, v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 538
    invoke-interface {p1, p2}, Lcom/shilapi/xcertplay/orchestration/CarPlayVideoListener;->onVideoAllowedChanged(Z)V

    .line 539
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final startIphone()V
    .locals 1

    .line 2002
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->availabilityPollGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 2003
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;->IPHONE:Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;

    iput-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->phase:Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;

    const/4 v0, 0x0

    .line 2004
    iput v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->reenumerationAttempts:I

    .line 2005
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$DiscoveringIphone;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$DiscoveringIphone;

    check-cast v0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->onStatus(Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;)V

    .line 2006
    invoke-direct {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->checkIphoneAvailability()V

    return-void
.end method

.method private final startIpv6Watchdog(ILjava/lang/String;)V
    .locals 12

    .line 2774
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->ipv6Watchdog:Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->stop()V

    .line 2775
    :cond_0
    new-instance v1, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;

    .line 2787
    new-instance v3, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda86;

    invoke-direct {v3, p0, p2}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda86;-><init>(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;)V

    new-instance v4, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda1;-><init>(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)V

    new-instance v5, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda2;-><init>(Lcom/shilapi/xcertplay/orchestration/CarPlayController;I)V

    .line 2786
    iget-object v6, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->ipv6RepairPath:Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;

    const/16 v10, 0x60

    const/4 v11, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move-object v2, p2

    .line 2775
    invoke-direct/range {v1 .. v11}, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;JLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 2787
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->start()V

    .line 2775
    iput-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->ipv6Watchdog:Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;

    return-void
.end method

.method private static final startIpv6Watchdog$lambda$157(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;)Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;
    .locals 2

    .line 2777
    sget-object v0, Lcom/shilapi/xcertplay/network/HotspotIpv6Check;->INSTANCE:Lcom/shilapi/xcertplay/network/HotspotIpv6Check;

    iget-object p0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->appContext:Landroid/content/Context;

    const-string v1, "appContext"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check;->run(Landroid/content/Context;Ljava/lang/String;)Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;

    move-result-object p0

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static final startIpv6Watchdog$lambda$159(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;)Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Repair;
    .locals 4

    const-string v0, "report"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2779
    sget-object v0, Lcom/shilapi/xcertplay/network/HotspotIpv6Check;->INSTANCE:Lcom/shilapi/xcertplay/network/HotspotIpv6Check;

    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->appContext:Landroid/content/Context;

    const-string v2, "appContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v3, p2}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check;->repair(Landroid/content/Context;Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;ZLcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;)Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Repair;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2780
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Repair;->getAttempt()Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;

    move-result-object p2

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;->getOk()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2781
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Repair;->getAttempt()Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;

    move-result-object p2

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;->getVia()Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;

    move-result-object p2

    iput-object p2, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->ipv6RepairPath:Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;

    .line 2782
    sget-object p2, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;->INSTANCE:Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;

    iget-object p0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->appContext:Landroid/content/Context;

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Repair;->getAttempt()Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;->getVia()Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;

    move-result-object v0

    invoke-virtual {p2, p0, v0}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;->saveLastGoodPath(Landroid/content/Context;Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;)V

    :cond_0
    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static final startIpv6Watchdog$lambda$160(Lcom/shilapi/xcertplay/orchestration/CarPlayController;ILjava/lang/String;)Lkotlin/Unit;
    .locals 2

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2785
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->isStaleWirelessRun(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p2, v1, p1, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final startMfi()V
    .locals 10

    .line 753
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->availabilityPollGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 754
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;->MFI:Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;

    iput-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->phase:Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;

    .line 755
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$DiscoveringMfi;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$DiscoveringMfi;

    check-cast v0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->onStatus(Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;)V

    .line 756
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->appContext:Landroid/content/Context;

    const-string v2, "appContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/shilapi/xcertplay/compat/Api19Kt;->getNoBackupFilesDirCompat(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v3, "offline-mfi"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 757
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 758
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->openLocalMfi(Ljava/io/File;)V

    return-void

    .line 761
    :cond_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->config:Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;->getMfiTarget()Lcom/shilapi/xcertplay/orchestration/MfiTarget;

    move-result-object v1

    sget-object v3, Lcom/shilapi/xcertplay/orchestration/CarPlayController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/orchestration/MfiTarget;->ordinal()I

    move-result v1

    aget v1, v3, v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_6

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq v1, v4, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 780
    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->config:Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;->getRemoteMfiServer()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "mfi discovery backend=Remote server="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3, v4, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 781
    invoke-direct {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->openRemoteMfi()V

    return-void

    .line 761
    :cond_2
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 776
    :cond_3
    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->config:Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;->getLinuxI2cPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "mfi discovery backend=Linux I2C path="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3, v4, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 777
    invoke-direct {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->openLinuxMfi()V

    return-void

    .line 764
    :cond_4
    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->config:Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;->getCh341Devices()Ljava/util/List;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mfi discovery backend=CH341 devices="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3, v4, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 765
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->ch341Host:Lcom/shilapi/xcertplay/transport/Ch341UsbHost;

    if-nez v0, :cond_5

    new-instance v3, Lcom/shilapi/xcertplay/transport/Ch341UsbHost;

    .line 766
    iget-object v4, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->appContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 767
    iget-object v5, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->usbManager:Landroid/hardware/usb/UsbManager;

    .line 768
    new-instance v6, Lcom/shilapi/xcertplay/transport/Ch341DeviceMatcher;

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->config:Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;->getCh341Devices()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v6, v0}, Lcom/shilapi/xcertplay/transport/Ch341DeviceMatcher;-><init>(Ljava/util/Collection;)V

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 765
    invoke-direct/range {v3 .. v9}, Lcom/shilapi/xcertplay/transport/Ch341UsbHost;-><init>(Landroid/content/Context;Landroid/hardware/usb/UsbManager;Lcom/shilapi/xcertplay/transport/Ch341DeviceMatcher;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 770
    iput-object v3, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->ch341Host:Lcom/shilapi/xcertplay/transport/Ch341UsbHost;

    .line 771
    new-instance v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$startMfi$host$1$1;

    invoke-direct {v0, p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$startMfi$host$1$1;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v3, v0}, Lcom/shilapi/xcertplay/transport/Ch341UsbHost;->registerPermissionReceiver(Lkotlin/jvm/functions/Function1;)Ljava/io/Closeable;

    move-result-object v0

    iput-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->ch341PermissionCloseable:Ljava/io/Closeable;

    move-object v0, v3

    .line 773
    :cond_5
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->checkCh341Mfi(Lcom/shilapi/xcertplay/transport/Ch341UsbHost;)V

    return-void

    .line 762
    :cond_6
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->openLocalMfi(Ljava/io/File;)V

    return-void
.end method

.method private final startPhone()V
    .locals 4

    .line 1078
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->config:Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;->getLocationReportingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1080
    :try_start_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->locationProvider:Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;->start()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 1083
    const-string/jumbo v2, "xcertplay-usb"

    .line 1084
    const-string v3, "Could not prewarm the Android location provider"

    .line 1082
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v2, 0x0

    .line 1089
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "location provider prewarmed="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p0, v1, v0, v2, v3}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 1091
    :cond_1
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->config:Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;->getTransport()Lcom/shilapi/xcertplay/orchestration/CarPlayTransport;

    move-result-object v0

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/CarPlayTransport;->WIRELESS:Lcom/shilapi/xcertplay/orchestration/CarPlayTransport;

    if-ne v0, v1, :cond_2

    .line 1092
    invoke-direct {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->startWireless()V

    goto :goto_1

    .line 1094
    :cond_2
    invoke-direct {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->startIphone()V

    :goto_1
    return-void
.end method

.method private final startUsbBluetooth(I)Ljava/lang/String;
    .locals 9

    .line 1822
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtSession;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->isRunning()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-nez v0, :cond_8

    .line 1823
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtSession;

    iget-object v5, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->appContext:Landroid/content/Context;

    const-string v6, "appContext"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->dongle(Landroid/content/Context;)Landroid/hardware/usb/UsbDevice;

    move-result-object v0

    const-string/jumbo v5, "this head unit has no Android Bluetooth stack (vendor Bluetooth only) and no USB Bluetooth adapter is plugged in, so wireless CarPlay cannot start here; plug in a USB Bluetooth adapter or connect the iPhone by USB instead"

    if-eqz v0, :cond_7

    .line 1827
    sget-object v7, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtSession;

    iget-object v8, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->appContext:Landroid/content/Context;

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v8, v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->hasPermission(Landroid/content/Context;Landroid/hardware/usb/UsbDevice;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1828
    sget-object v7, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor;

    sget-object v8, Lcom/shilapi/xcertplay/usbbt/UsbBtDongleState;->NOT_AUTHORISED:Lcom/shilapi/xcertplay/usbbt/UsbBtDongleState;

    invoke-virtual {v7, v8}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor;->dongle(Lcom/shilapi/xcertplay/usbbt/UsbBtDongleState;)Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;

    .line 1829
    invoke-direct {p0, p1, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->awaitUsbBluetoothPermission(ILandroid/hardware/usb/UsbDevice;)V

    .line 1831
    :cond_0
    sget-object p1, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtSession;

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->appContext:Landroid/content/Context;

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->start(Landroid/content/Context;)Lcom/shilapi/xcertplay/usbbt/UsbBtSession$StartResult;

    move-result-object p1

    .line 1832
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$StartResult$Started;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtSession$StartResult$Started;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    .line 1833
    :cond_1
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$StartResult$AlreadyRunning;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtSession$StartResult$AlreadyRunning;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1834
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$StartResult$NoUsbHost;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtSession$StartResult$NoUsbHost;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$StartResult$NoDongle;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtSession$StartResult$NoDongle;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1838
    instance-of v0, p1, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$StartResult$NeedsPermission;

    if-nez v0, :cond_4

    .line 1842
    instance-of v0, p1, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$StartResult$Failed;

    if-nez v0, :cond_3

    .line 1844
    instance-of v0, p1, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$StartResult$DrivenByKernel;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/shilapi/xcertplay/usbbt/UsbBtDrivenByKernelException;

    check-cast p1, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$StartResult$DrivenByKernel;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$StartResult$DrivenByKernel;->getEvidence()Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Evidence;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtDrivenByKernelException;-><init>(Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Evidence;)V

    throw v0

    .line 1831
    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 1842
    :cond_3
    new-instance v0, Ljava/io/IOException;

    check-cast p1, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$StartResult$Failed;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$StartResult$Failed;->getReason()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "USB Bluetooth adapter could not start: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1839
    :cond_4
    sget-object p1, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor;

    sget-object v0, Lcom/shilapi/xcertplay/usbbt/UsbBtDongleState;->NOT_AUTHORISED:Lcom/shilapi/xcertplay/usbbt/UsbBtDongleState;

    invoke-virtual {p1, v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor;->dongle(Lcom/shilapi/xcertplay/usbbt/UsbBtDongleState;)Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;

    .line 1840
    new-instance p1, Ljava/io/IOException;

    const-string v0, "USB Bluetooth adapter permission was not granted; allow it with Settings \u203a Diagnostics \u203a USB Bluetooth: discoverable, then try again"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1835
    :cond_5
    sget-object p1, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor;

    sget-object v0, Lcom/shilapi/xcertplay/usbbt/UsbBtDongleState;->MISSING:Lcom/shilapi/xcertplay/usbbt/UsbBtDongleState;

    invoke-virtual {p1, v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor;->dongle(Lcom/shilapi/xcertplay/usbbt/UsbBtDongleState;)Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;

    .line 1836
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    const/4 p1, 0x0

    .line 1846
    :goto_0
    const-string/jumbo v0, "wireless USB Bluetooth host starting (own Bluetooth stack on the USB adapter)"

    invoke-static {p0, v0, v4, v3, v2}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    move v4, p1

    goto :goto_1

    .line 1823
    :cond_7
    move-object p1, p0

    check-cast p1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    .line 1824
    sget-object p1, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor;

    sget-object v0, Lcom/shilapi/xcertplay/usbbt/UsbBtDongleState;->MISSING:Lcom/shilapi/xcertplay/usbbt/UsbBtDongleState;

    invoke-virtual {p1, v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor;->dongle(Lcom/shilapi/xcertplay/usbbt/UsbBtDongleState;)Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;

    .line 1825
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1848
    :cond_8
    const-string/jumbo p1, "wireless USB Bluetooth host already running (kept across retries)"

    invoke-static {p0, p1, v4, v3, v2}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 1850
    :goto_1
    iget-boolean p1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->usbBluetoothHeld:Z

    if-nez p1, :cond_9

    .line 1851
    iput-boolean v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->usbBluetoothHeld:Z

    .line 1852
    sget-object p1, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtSession;

    invoke-virtual {p1, v4}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->hold(Z)V

    goto :goto_2

    :cond_9
    if-eqz v4, :cond_a

    .line 1854
    sget-object p1, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtSession;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->markStartedForCarPlay()V

    .line 1856
    :cond_a
    :goto_2
    sget-object p1, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtSession;

    const-wide/16 v0, 0x3a98

    invoke-virtual {p1, v0, v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->awaitReady(J)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;

    move-result-object p1

    .line 1857
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;->DISCOVERABLE:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;

    if-eq p1, v0, :cond_d

    .line 1858
    new-instance v0, Ljava/io/IOException;

    sget-object v1, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtSession;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->getLastStatus()Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->getError()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    goto :goto_3

    :cond_b
    move-object p1, v1

    :cond_c
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "USB Bluetooth adapter did not come up: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1860
    :cond_d
    sget-object p1, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor;

    sget-object v0, Lcom/shilapi/xcertplay/usbbt/UsbBtDongleState;->OK:Lcom/shilapi/xcertplay/usbbt/UsbBtDongleState;

    invoke-virtual {p1, v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor;->dongle(Lcom/shilapi/xcertplay/usbbt/UsbBtDongleState;)Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;

    .line 1861
    sget-object p1, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtSession;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->localAddress()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_e

    return-object p1

    :cond_e
    new-instance p1, Ljava/io/IOException;

    const-string v0, "USB Bluetooth adapter reported no address"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final startUsbBluetoothUnlessKernelDriven(I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->startUsbBluetooth(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final startWireless()V
    .locals 3

    .line 1099
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->availabilityPollGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1100
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;->WIRELESS:Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;

    iput-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->phase:Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;

    .line 1101
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessHandoffRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1102
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessTunnelReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1103
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessActiveReported:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1104
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$StartingHotspot;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$StartingHotspot;

    check-cast v0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->onStatus(Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;)V

    .line 1105
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 1106
    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda20;

    invoke-direct {v2, p0, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda20;-><init>(Lcom/shilapi/xcertplay/orchestration/CarPlayController;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final startWireless$lambda$47(Lcom/shilapi/xcertplay/orchestration/CarPlayController;I)V
    .locals 0

    .line 1107
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->runWireless(I)V

    return-void
.end method

.method private final startWirelessHotspot(I)Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;
    .locals 20

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 2451
    sget-object v0, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->Companion:Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;

    iget-object v3, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->appContext:Landroid/content/Context;

    const-string v4, "appContext"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/shilapi/xcertplay/orchestration/CarPlayController$startWirelessHotspot$1;

    invoke-direct {v5, v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$startWirelessHotspot$1;-><init>(Ljava/lang/Object;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v3, v5}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;->discardOldRecords(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    .line 2454
    sget-object v0, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->Companion:Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;

    iget-object v3, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->appContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;->keepHotspotSuffix(Landroid/content/Context;)V

    .line 2455
    sget-object v0, Lcom/shilapi/xcertplay/network/WirelessAddressPreference;->INSTANCE:Lcom/shilapi/xcertplay/network/WirelessAddressPreference;

    iget-object v3, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->appContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/shilapi/xcertplay/network/WirelessAddressPreference;->clearLegacyPreference(Landroid/content/Context;)Z

    move-result v0

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    .line 2456
    const-string/jumbo v0, "wireless: removed the stored IPv4-first preference; IPv6 link-local first as upstream"

    invoke-static {v1, v0, v5, v3, v6}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 2458
    :cond_0
    iput-boolean v5, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->p2pBesideSystemHotspot:Z

    .line 2460
    sget-object v0, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;->Companion:Lcom/shilapi/xcertplay/network/WirelessGroupKeeper$Companion;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper$Companion;->getShared()Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;

    move-result-object v0

    .line 2461
    new-instance v7, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda40;

    invoke-direct {v7, v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda40;-><init>(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)V

    invoke-virtual {v0, v7}, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;->setLog(Lkotlin/jvm/functions/Function1;)V

    .line 2462
    iget-object v7, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->config:Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;

    invoke-virtual {v7}, Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;->getWirelessHotspotAutoSelect()Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->config:Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;

    invoke-virtual {v7}, Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;->getWirelessHotspotMode()Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    move-result-object v7

    sget-object v8, Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;->WIFI_P2P:Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    if-eq v7, v8, :cond_1

    .line 2463
    iget-object v7, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->config:Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;

    invoke-virtual {v7}, Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;->getWirelessHotspotMode()Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "the link is "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " now"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;->closeParked(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2464
    :cond_1
    sget-object v7, Lcom/shilapi/xcertplay/network/CarWifiPassword;->INSTANCE:Lcom/shilapi/xcertplay/network/CarWifiPassword;

    iget-object v8, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->appContext:Landroid/content/Context;

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/shilapi/xcertplay/network/CarWifiPassword;->renewRequested(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2466
    const-string v7, "a new Wi-Fi password was asked for"

    invoke-virtual {v0, v7}, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;->closeParked(Ljava/lang/String;)V

    goto :goto_0

    .line 2469
    :cond_2
    iget-object v7, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->preferNextWifiMode:Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    if-eqz v7, :cond_3

    sget-object v8, Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;->WIFI_P2P:Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    if-eq v7, v8, :cond_3

    .line 2470
    iget-object v7, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->preferNextWifiMode:Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "switching to "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " after the iPhone did not join"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;->closeParked(Ljava/lang/String;)V

    goto :goto_0

    .line 2471
    :cond_3
    new-instance v7, Lcom/shilapi/xcertplay/orchestration/CarPlayController$startWirelessHotspot$3;

    invoke-direct {v7, v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$startWirelessHotspot$3;-><init>(Ljava/lang/Object;)V

    check-cast v7, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0, v7}, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;->reclaim(Lkotlin/jvm/functions/Function2;)Lkotlin/Pair;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shilapi/xcertplay/network/WirelessHotspotManager;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;

    .line 2472
    iput-object v2, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->hotspot:Lcom/shilapi/xcertplay/network/WirelessHotspotManager;

    .line 2473
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->getSsid()Ljava/lang/String;

    move-result-object v2

    .line 2474
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    const-string/jumbo v4, "unknown"

    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "wireless: reusing the Wi-Fi Direct group kept up from the last try ssid="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " iface="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (not rebuilt; same name and password)"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2473
    invoke-static {v1, v2, v5, v3, v6}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 2475
    sget-object v2, Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;->WIFI_P2P:Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    invoke-direct {v1, v2, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->noteLinkUp(Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;)V

    return-object v0

    .line 2479
    :cond_5
    :goto_0
    iget-object v0, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->config:Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;->getWirelessHotspotAutoSelect()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->config:Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;->getWirelessHotspotMode()Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->startWirelessHotspot(ILcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;)Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;

    move-result-object v0

    return-object v0

    .line 2483
    :cond_6
    invoke-direct {v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->awaitOwnLocalHotspotOff()V

    .line 2484
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/WirelessLinkAutoSelect;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/WirelessLinkAutoSelect;

    iget-object v7, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->appContext:Landroid/content/Context;

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v8, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->config:Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;

    invoke-virtual {v8}, Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;->getManualHotspotSsid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lcom/shilapi/xcertplay/orchestration/WirelessLinkAutoSelect;->systemHotspotLocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2486
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "wireless: the system hotspot is on and Android "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " hides its name and password; asking Wi-Fi Direct for real beside it (its own answer decides)"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v5, v3, v6}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 2493
    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1d

    if-ge v0, v8, :cond_8

    .line 2494
    sget-object v0, Lcom/shilapi/xcertplay/network/ExternalWifiStation;->INSTANCE:Lcom/shilapi/xcertplay/network/ExternalWifiStation;

    iget-object v8, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->appContext:Landroid/content/Context;

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lcom/shilapi/xcertplay/network/ExternalWifiStation;->current(Landroid/content/Context;)Lcom/shilapi/xcertplay/network/ExternalWifiStation$Station;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/ExternalWifiStation$Station;->getSecurity()Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    move-result-object v8

    if-eqz v8, :cond_8

    iget-object v8, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->config:Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;

    invoke-virtual {v8}, Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;->getExternalWifiPassword()Lkotlin/jvm/functions/Function1;

    move-result-object v8

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/ExternalWifiStation$Station;->getSsid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_1

    :cond_8
    const/4 v0, 0x0

    .line 2495
    :goto_1
    sget-object v8, Lcom/shilapi/xcertplay/orchestration/WirelessLinkAutoSelect;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/WirelessLinkAutoSelect;

    iget-object v9, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->appContext:Landroid/content/Context;

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v10, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->config:Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;

    invoke-virtual {v10}, Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;->getManualHotspotSsid()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10, v0}, Lcom/shilapi/xcertplay/orchestration/WirelessLinkAutoSelect;->candidates(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 2498
    iget-object v8, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->preferNextWifiMode:Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    .line 2499
    sget-object v9, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory;

    iget-object v10, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->appContext:Landroid/content/Context;

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory;->remembered(Landroid/content/Context;)Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    move-result-object v9

    .line 2500
    sget-object v10, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory;

    invoke-virtual {v10, v0, v8, v9}, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory;->order(Ljava/util/List;Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;)Ljava/util/List;

    move-result-object v10

    .line 2501
    iput-object v6, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->preferNextWifiMode:Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    .line 2502
    move-object v11, v10

    check-cast v11, Ljava/lang/Iterable;

    const-string v12, ">"

    check-cast v12, Ljava/lang/CharSequence;

    const/16 v18, 0x3e

    const/16 v19, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v11 .. v19}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 2503
    const-string v13, ""

    if-eqz v8, :cond_9

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, " (preferred="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " after the iPhone did not join)"

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_9
    move-object v8, v13

    .line 2504
    :goto_2
    const-string v14, ")"

    if-eqz v9, :cond_a

    invoke-interface {v0, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v15, " (worked here before: "

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_a
    move-object v0, v13

    :goto_3
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "wireless link auto-select candidates="

    invoke-direct {v9, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2502
    invoke-static {v1, v0, v5, v3, v6}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 2506
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v0, v6

    const/4 v9, 0x0

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_11

    add-int/lit8 v11, v9, 0x1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    .line 2509
    sget-object v15, Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;->WIFI_P2P:Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    if-ne v12, v15, :cond_b

    if-lez v9, :cond_b

    .line 2510
    invoke-direct {v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->awaitOwnLocalHotspotOff()V

    .line 2511
    sget-object v15, Lcom/shilapi/xcertplay/network/P2pPreconditions;->INSTANCE:Lcom/shilapi/xcertplay/network/P2pPreconditions;

    iget-object v3, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->appContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v15, v3}, Lcom/shilapi/xcertplay/network/P2pPreconditions;->blocker(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_b
    move-object v3, v6

    :goto_5
    if-eqz v3, :cond_d

    .line 2514
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "wireless link WIFI_P2P skipped="

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x2

    invoke-static {v1, v9, v5, v12, v6}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    if-nez v0, :cond_c

    .line 2515
    sget-object v0, Lcom/shilapi/xcertplay/network/P2pPreconditions;->INSTANCE:Lcom/shilapi/xcertplay/network/P2pPreconditions;

    invoke-virtual {v0, v3}, Lcom/shilapi/xcertplay/network/P2pPreconditions;->failure(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    :cond_c
    move v9, v11

    const/4 v3, 0x2

    goto :goto_4

    .line 2519
    :cond_d
    :try_start_0
    iput-boolean v7, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->p2pBesideSystemHotspot:Z

    .line 2520
    invoke-direct {v1, v2, v12}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->startWirelessHotspot(ILcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;)Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;

    move-result-object v0

    .line 2521
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v7, :cond_e

    .line 2522
    const-string v15, "; Wi-Fi Direct runs beside the system hotspot"

    goto :goto_6

    :cond_e
    move-object v15, v13

    :goto_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "wireless link auto-select chose "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " (attempt "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v15, 0x0

    .line 2521
    invoke-static {v1, v3, v6, v5, v15}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2525
    invoke-direct/range {p0 .. p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->isStaleWirelessRun(I)Z

    move-result v3

    if-nez v3, :cond_10

    .line 2527
    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v3

    if-ge v9, v3, :cond_f

    .line 2528
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "wireless link "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " unavailable, trying "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v15, 0x0

    invoke-static {v1, v3, v6, v5, v15}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_f
    move v9, v11

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    goto/16 :goto_4

    .line 2525
    :cond_10
    throw v0

    :cond_11
    if-eqz v7, :cond_15

    if-eqz v0, :cond_12

    .line 2533
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    goto :goto_7

    :cond_12
    const/4 v15, 0x0

    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "wireless: Wi-Fi Direct cannot run beside the system hotspot either ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "); not retrying until the hotspot is switched off or its details are entered"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v15, 0x0

    invoke-static {v1, v2, v6, v5, v15}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 2535
    new-instance v2, Ljava/io/IOException;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_14

    :cond_13
    const-string v3, "not tried"

    :cond_14
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "The system hotspot is on and Android 8-9 lets 06Link neither read nor change it (Wi-Fi Direct: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_15
    if-eqz v0, :cond_16

    goto :goto_8

    .line 2537
    :cond_16
    new-instance v0, Ljava/io/IOException;

    const-string v2, "No wireless link is available"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    :goto_8
    check-cast v0, Ljava/lang/Throwable;

    goto :goto_a

    :goto_9
    throw v0

    :goto_a
    goto :goto_9
.end method

.method private final startWirelessHotspot(ILcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;)Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 2558
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;->MANUAL:Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    const/4 v3, 0x0

    const-string v4, "appContext"

    if-ne v2, v0, :cond_1

    .line 2559
    sget-object v0, Lcom/shilapi/xcertplay/network/CarHotspotStatus;->INSTANCE:Lcom/shilapi/xcertplay/network/CarHotspotStatus;

    iget-object v5, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->appContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/shilapi/xcertplay/E01MapOptions;->ensureHotspot(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Lcom/shilapi/xcertplay/network/CarHotspotStatus;->isOnOrStarting(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2561
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v2, "The car hotspot is off. Turn it on in the car settings and connect again."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2564
    :cond_1
    :goto_0
    invoke-direct {v1, v2}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->applyHotspotNameRule(Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;)V

    .line 2565
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$WhenMappings;->$EnumSwitchMapping$7:[I

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;->ordinal()I

    move-result v5

    aget v0, v0, v5

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v0, v6, :cond_a

    if-eq v0, v5, :cond_9

    const/4 v8, 0x3

    if-eq v0, v8, :cond_7

    const/4 v8, 0x4

    if-ne v0, v8, :cond_6

    .line 2579
    sget-object v0, Lcom/shilapi/xcertplay/network/SystemHotspotCredentials;->INSTANCE:Lcom/shilapi/xcertplay/network/SystemHotspotCredentials;

    iget-object v8, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->appContext:Landroid/content/Context;

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lcom/shilapi/xcertplay/network/SystemHotspotCredentials;->read(Landroid/content/Context;)Lcom/shilapi/xcertplay/network/SystemHotspotCredentials$Credentials;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2580
    new-instance v8, Lcom/shilapi/xcertplay/network/ManualHotspotManager;

    .line 2581
    iget-object v9, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->appContext:Landroid/content/Context;

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2582
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/SystemHotspotCredentials$Credentials;->getSsid()Ljava/lang/String;

    move-result-object v10

    .line 2583
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/SystemHotspotCredentials$Credentials;->getPassphrase()Ljava/lang/String;

    move-result-object v11

    .line 2584
    sget-object v12, Lcom/shilapi/xcertplay/orchestration/ManualHotspotBand;->AUTO:Lcom/shilapi/xcertplay/orchestration/ManualHotspotBand;

    .line 2586
    sget-object v13, Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/SystemHotspotCredentials$Credentials;->getPassphrase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation;->securityFor(Ljava/lang/String;)Lcom/shilapi/xcertplay/orchestration/ManualHotspotSecurity;

    move-result-object v14

    .line 2587
    new-instance v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$startWirelessHotspot$manager$5$1;

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$startWirelessHotspot$manager$5$1;-><init>(Ljava/lang/Object;)V

    move-object v15, v0

    check-cast v15, Lkotlin/jvm/functions/Function1;

    const/4 v13, 0x0

    .line 2580
    invoke-direct/range {v8 .. v15}, Lcom/shilapi/xcertplay/network/ManualHotspotManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/orchestration/ManualHotspotBand;ILcom/shilapi/xcertplay/orchestration/ManualHotspotSecurity;Lkotlin/jvm/functions/Function1;)V

    goto :goto_2

    .line 2590
    :cond_2
    iget-object v10, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->appContext:Landroid/content/Context;

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2591
    iget-object v0, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->config:Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;->getManualHotspotSsid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    move-object v8, v0

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v8}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    move-object v11, v0

    goto :goto_1

    :cond_3
    move-object v11, v7

    :goto_1
    if-eqz v11, :cond_5

    .line 2593
    iget-object v0, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->config:Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;->getManualHotspotPassphrase()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, ""

    :cond_4
    move-object v12, v0

    .line 2594
    iget-object v0, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->config:Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;->getManualHotspotBand()Lcom/shilapi/xcertplay/orchestration/ManualHotspotBand;

    move-result-object v13

    .line 2595
    iget-object v0, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->config:Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;->getManualHotspotChannel()I

    move-result v14

    .line 2596
    iget-object v0, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->config:Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;->getManualHotspotSecurity()Lcom/shilapi/xcertplay/orchestration/ManualHotspotSecurity;

    move-result-object v15

    .line 2597
    new-instance v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$startWirelessHotspot$manager$7;

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$startWirelessHotspot$manager$7;-><init>(Ljava/lang/Object;)V

    move-object/from16 v16, v0

    check-cast v16, Lkotlin/jvm/functions/Function1;

    .line 2589
    new-instance v9, Lcom/shilapi/xcertplay/network/ManualHotspotManager;

    invoke-direct/range {v9 .. v16}, Lcom/shilapi/xcertplay/network/ManualHotspotManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/orchestration/ManualHotspotBand;ILcom/shilapi/xcertplay/orchestration/ManualHotspotSecurity;Lkotlin/jvm/functions/Function1;)V

    move-object v8, v9

    :goto_2
    check-cast v8, Lcom/shilapi/xcertplay/network/WirelessHotspotManager;

    goto :goto_3

    .line 2592
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Manual hotspot SSID is not configured"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2565
    :cond_6
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 2573
    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1a

    if-ge v0, v8, :cond_8

    .line 2574
    new-instance v0, Lcom/shilapi/xcertplay/network/LegacySoftApManager;

    iget-object v8, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->appContext:Landroid/content/Context;

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Lcom/shilapi/xcertplay/orchestration/CarPlayController$startWirelessHotspot$manager$3;

    invoke-direct {v9, v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$startWirelessHotspot$manager$3;-><init>(Ljava/lang/Object;)V

    check-cast v9, Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, v8, v9}, Lcom/shilapi/xcertplay/network/LegacySoftApManager;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    move-object v8, v0

    check-cast v8, Lcom/shilapi/xcertplay/network/WirelessHotspotManager;

    goto :goto_3

    .line 2576
    :cond_8
    new-instance v0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;

    iget-object v8, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->appContext:Landroid/content/Context;

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Lcom/shilapi/xcertplay/orchestration/CarPlayController$startWirelessHotspot$manager$4;

    invoke-direct {v9, v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$startWirelessHotspot$manager$4;-><init>(Ljava/lang/Object;)V

    check-cast v9, Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, v8, v9}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    move-object v8, v0

    check-cast v8, Lcom/shilapi/xcertplay/network/WirelessHotspotManager;

    goto :goto_3

    .line 2570
    :cond_9
    new-instance v0, Lcom/shilapi/xcertplay/network/ExternalWifiManager;

    .line 2571
    iget-object v8, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->appContext:Landroid/content/Context;

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->config:Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;

    invoke-virtual {v9}, Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;->getExternalWifiPassword()Lkotlin/jvm/functions/Function1;

    move-result-object v9

    new-instance v10, Lcom/shilapi/xcertplay/orchestration/CarPlayController$startWirelessHotspot$manager$2;

    invoke-direct {v10, v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$startWirelessHotspot$manager$2;-><init>(Ljava/lang/Object;)V

    check-cast v10, Lkotlin/jvm/functions/Function1;

    .line 2570
    invoke-direct {v0, v8, v9, v10}, Lcom/shilapi/xcertplay/network/ExternalWifiManager;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    move-object v8, v0

    check-cast v8, Lcom/shilapi/xcertplay/network/WirelessHotspotManager;

    goto :goto_3

    .line 2567
    :cond_a
    new-instance v9, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;

    iget-object v10, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->appContext:Landroid/content/Context;

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v11, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda37;

    invoke-direct {v11}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda37;-><init>()V

    .line 2568
    iget-boolean v12, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->p2pBesideSystemHotspot:Z

    const/16 v14, 0x8

    const/4 v15, 0x0

    const/4 v13, 0x0

    .line 2567
    invoke-direct/range {v9 .. v15}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v8, v9

    check-cast v8, Lcom/shilapi/xcertplay/network/WirelessHotspotManager;

    .line 2600
    :goto_3
    iput-object v8, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->hotspot:Lcom/shilapi/xcertplay/network/WirelessHotspotManager;

    .line 2601
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;->WIFI_P2P:Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    const-wide/16 v9, 0x4e20

    .line 2607
    :try_start_0
    invoke-interface {v8, v9, v10}, Lcom/shilapi/xcertplay/network/WirelessHotspotManager;->start(J)Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->noteLinkUp(Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2609
    iget-object v9, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->hotspot:Lcom/shilapi/xcertplay/network/WirelessHotspotManager;

    if-ne v9, v8, :cond_b

    iput-object v7, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->hotspot:Lcom/shilapi/xcertplay/network/WirelessHotspotManager;

    .line 2610
    :cond_b
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;->name()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda38;

    invoke-direct {v10, v8}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda38;-><init>(Lcom/shilapi/xcertplay/network/WirelessHotspotManager;)V

    invoke-direct {v1, v9, v10}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closeBestEffort(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 2611
    invoke-direct/range {p0 .. p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->isStaleWirelessRun(I)Z

    move-result v8

    if-nez v8, :cond_f

    .line 2617
    sget-object v8, Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;->LOCAL_ONLY_HOTSPOT:Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    if-ne v2, v8, :cond_d

    .line 2618
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_d

    check-cast v8, Ljava/lang/CharSequence;

    const-string v9, "incompatible Wi-Fi mode"

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v8, v9, v3, v5, v7}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-ne v3, v6, :cond_d

    .line 2619
    invoke-direct {v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->awaitOwnLocalHotspotOff()V

    sget-object v3, Lcom/shilapi/xcertplay/orchestration/WirelessLinkAutoSelect;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/WirelessLinkAutoSelect;

    iget-object v5, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->appContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->config:Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;->getManualHotspotSsid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lcom/shilapi/xcertplay/orchestration/WirelessLinkAutoSelect;->systemHotspotLocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    goto :goto_4

    .line 2621
    :cond_c
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "The system hotspot is on and Android 8-9 lets 06Link neither read nor change it ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 2623
    :cond_d
    :goto_4
    new-instance v3, Ljava/io/IOException;

    .line 2624
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;->name()Ljava/lang/String;

    move-result-object v2

    .line 2625
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_e

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    :cond_e
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Could not establish "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " hotspot: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2626
    check-cast v0, Ljava/lang/Throwable;

    .line 2623
    invoke-direct {v3, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 2611
    :cond_f
    throw v0
.end method

.method private static final startWirelessHotspot$lambda$123(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;)Lkotlin/Unit;
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2461
    invoke-static {p0, p1, v2, v0, v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final startWirelessHotspot$lambda$129(Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2567
    sget-object v0, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;->Companion:Lcom/shilapi/xcertplay/network/WirelessGroupKeeper$Companion;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper$Companion;->getShared()Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/WirelessGroupKeeper;->getLog()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final startWirelessHotspot$lambda$138(Lcom/shilapi/xcertplay/network/WirelessHotspotManager;)Lkotlin/Unit;
    .locals 0

    .line 2610
    invoke-interface {p0}, Lcom/shilapi/xcertplay/network/WirelessHotspotManager;->close()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final startWirelessTunnelControl(Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;)Z
    .locals 10

    .line 1561
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->config:Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;->getTransport()Lcom/shilapi/xcertplay/orchestration/CarPlayTransport;

    move-result-object v0

    sget-object v2, Lcom/shilapi/xcertplay/orchestration/CarPlayTransport;->WIRELESS:Lcom/shilapi/xcertplay/orchestration/CarPlayTransport;

    if-eq v0, v2, :cond_0

    goto/16 :goto_2

    .line 1562
    :cond_0
    iget-object v6, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessIdentification:Lcom/shilapi/xcertplay/transport/Iap2IdentificationConfig;

    if-nez v6, :cond_1

    return v1

    .line 1563
    :cond_1
    iget-object v7, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessAirPlayEndpoint:Lcom/shilapi/xcertplay/transport/Iap2WirelessCarPlayEndpoint;

    if-nez v7, :cond_2

    return v1

    .line 1564
    :cond_2
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->mfiSession:Lcom/shilapi/xcertplay/orchestration/MfiSession;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/orchestration/MfiSession;->getClient()Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_1

    .line 1565
    :cond_3
    const-string/jumbo v0, "wireless type-130 tunnel data stream accepted"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 1567
    :try_start_0
    sget-object v0, Lcom/shilapi/xcertplay/iap2/session/Iap2Session;->Companion:Lcom/shilapi/xcertplay/iap2/session/Iap2Session$Companion;

    .line 1569
    const-string/jumbo v4, "wireless-tunnel"

    .line 1570
    new-instance v8, Lcom/shilapi/xcertplay/orchestration/CarPlayController$startWirelessTunnelControl$channel$1;

    invoke-direct {v8, p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$startWirelessTunnelControl$channel$1;-><init>(Ljava/lang/Object;)V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 1567
    invoke-virtual {v0, p1, v4, v8}, Lcom/shilapi/xcertplay/iap2/session/Iap2Session$Companion;->openTunnel(Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/iap2/session/Iap2Session;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1578
    iget-object p1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessTunnel:Lcom/shilapi/xcertplay/orchestration/CurrentChannel;

    invoke-virtual {p1, v4}, Lcom/shilapi/xcertplay/orchestration/CurrentChannel;->replace(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shilapi/xcertplay/iap2/session/Iap2Session;

    if-eqz p1, :cond_4

    .line 1579
    const-string/jumbo v0, "wireless type-130 tunnel replaced; closing the previous link"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 1580
    new-instance v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda67;

    invoke-direct {v0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda67;-><init>(Lcom/shilapi/xcertplay/iap2/session/Iap2Session;)V

    const-string p1, "previous tunneled iAP2 link"

    invoke-direct {p0, p1, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closeBestEffort(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 1582
    :cond_4
    iget-object p1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    .line 1583
    const-string/jumbo p1, "wireless iAP2 tunnel control starting"

    invoke-static {p0, p1, v1, v2, v3}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 1585
    :try_start_1
    iget-object p1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->tunnelExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda68;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v8, p0

    :try_start_2
    invoke-direct/range {v3 .. v9}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda68;-><init>(Lcom/shilapi/xcertplay/iap2/session/Iap2Session;Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;Lcom/shilapi/xcertplay/transport/Iap2IdentificationConfig;Lcom/shilapi/xcertplay/transport/Iap2WirelessCarPlayEndpoint;Lcom/shilapi/xcertplay/orchestration/CarPlayController;I)V

    invoke-interface {p1, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v8, p0

    :goto_0
    move-object p1, v0

    .line 1627
    iget-object v0, v8, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessTunnel:Lcom/shilapi/xcertplay/orchestration/CurrentChannel;

    invoke-virtual {v0, v4}, Lcom/shilapi/xcertplay/orchestration/CurrentChannel;->clearIf(Ljava/lang/Object;)Z

    .line 1628
    new-instance v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda69;

    invoke-direct {v0, v4}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda69;-><init>(Lcom/shilapi/xcertplay/iap2/session/Iap2Session;)V

    const-string/jumbo v2, "tunneled iAP2 link"

    invoke-direct {p0, v2, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closeBestEffort(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 1629
    const-string v0, "iAP2 tunnel executor rejected the link"

    invoke-direct {p0, v0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1

    :catchall_2
    move-exception v0

    move-object v8, p0

    move-object p1, v0

    .line 1573
    const-string v0, "Could not open the tunneled iAP2 link"

    invoke-direct {p0, v0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1

    :cond_5
    :goto_1
    move-object v8, p0

    return v1

    :cond_6
    :goto_2
    move-object v8, p0

    return v1
.end method

.method private static final startWirelessTunnelControl$lambda$72$lambda$71(Lcom/shilapi/xcertplay/iap2/session/Iap2Session;)Lkotlin/Unit;
    .locals 0

    .line 1580
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/iap2/session/Iap2Session;->close()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final startWirelessTunnelControl$lambda$75(Lcom/shilapi/xcertplay/iap2/session/Iap2Session;Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;Lcom/shilapi/xcertplay/transport/Iap2IdentificationConfig;Lcom/shilapi/xcertplay/transport/Iap2WirelessCarPlayEndpoint;Lcom/shilapi/xcertplay/orchestration/CarPlayController;I)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move/from16 v3, p5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    .line 1587
    :try_start_0
    new-instance v7, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient;

    .line 1589
    new-instance v0, Lcom/shilapi/xcertplay/mfi/Iap2MfiAuthenticationClient;

    move-object/from16 v8, p1

    invoke-direct {v0, v8, v5, v6, v4}, Lcom/shilapi/xcertplay/mfi/Iap2MfiAuthenticationClient;-><init>(Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1587
    invoke-direct {v7, v1, v0}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient;-><init>(Lcom/shilapi/xcertplay/iap2/session/Iap2Session;Lcom/shilapi/xcertplay/mfi/Iap2MfiAuthenticationClient;)V

    .line 1596
    iget-object v12, v2, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->locationProvider:Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;

    .line 1597
    iget-object v13, v2, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->vehicleStatusProvider:Lcom/shilapi/xcertplay/transport/VehicleStatusProvider;

    .line 1590
    new-instance v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda56;

    invoke-direct {v0, v2, v3}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda56;-><init>(Lcom/shilapi/xcertplay/orchestration/CarPlayController;I)V

    .line 1601
    new-instance v8, Lcom/shilapi/xcertplay/orchestration/CarPlayController$startWirelessTunnelControl$2$result$2;

    invoke-direct {v8, v2}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$startWirelessTunnelControl$2$result$2;-><init>(Ljava/lang/Object;)V

    move-object/from16 v17, v8

    check-cast v17, Lkotlin/jvm/functions/Function1;

    .line 1590
    new-instance v8, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda57;

    invoke-direct {v8, v2}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda57;-><init>(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)V

    const/16 v19, 0x60

    const/16 v20, 0x0

    const-wide v10, 0x7fffffffffffffffL

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, p3

    move-object/from16 v16, v0

    move-object/from16 v18, v8

    move-object/from16 v8, p2

    invoke-static/range {v7 .. v20}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient;->run$default(Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient;Lcom/shilapi/xcertplay/transport/Iap2IdentificationConfig;Lcom/shilapi/xcertplay/transport/Iap2WirelessCarPlayEndpoint;JLcom/shilapi/xcertplay/transport/Iap2LocationProvider;Lcom/shilapi/xcertplay/transport/VehicleStatusProvider;Lcom/shilapi/xcertplay/transport/Iap2LocationRequest;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;

    move-result-object v0

    .line 1604
    iget-boolean v7, v2, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closed:Z

    if-nez v7, :cond_1

    iget-object v7, v2, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    if-eq v3, v7, :cond_0

    goto :goto_0

    .line 1605
    :cond_0
    iget-object v7, v2, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessTunnel:Lcom/shilapi/xcertplay/orchestration/CurrentChannel;

    invoke-virtual {v7, v1}, Lcom/shilapi/xcertplay/orchestration/CurrentChannel;->isCurrent(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_2

    .line 1622
    :cond_1
    :goto_0
    iget-object v0, v2, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessTunnel:Lcom/shilapi/xcertplay/orchestration/CurrentChannel;

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/orchestration/CurrentChannel;->clearIf(Ljava/lang/Object;)Z

    return-void

    .line 1606
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->getTerminal()Lcom/shilapi/xcertplay/transport/Iap2WirelessControlTerminal;

    move-result-object v0

    sget-object v7, Lcom/shilapi/xcertplay/orchestration/CarPlayController$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlTerminal;->ordinal()I

    move-result v0

    aget v0, v7, v0

    const/4 v7, 0x1

    if-eq v0, v7, :cond_4

    if-ne v0, v6, :cond_3

    .line 1608
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$ControlEnded;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$ControlEnded;

    check-cast v0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;

    invoke-direct {v2, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->onStatus(Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;)V

    goto :goto_0

    .line 1606
    :cond_3
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 1610
    :cond_4
    new-instance v0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$Failed;

    const-string v7, "Wireless iAP2 tunnel closed"

    invoke-direct {v0, v7, v5, v6, v4}, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$Failed;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;

    invoke-direct {v2, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->onStatus(Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1613
    :try_start_2
    iget-boolean v7, v2, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closed:Z

    if-nez v7, :cond_1

    iget-object v7, v2, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    if-ne v3, v7, :cond_1

    iget-object v3, v2, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessTunnel:Lcom/shilapi/xcertplay/orchestration/CurrentChannel;

    invoke-virtual {v3, v1}, Lcom/shilapi/xcertplay/orchestration/CurrentChannel;->isCurrent(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1614
    const-string/jumbo v3, "tunneled iAP2 control failed"

    invoke-direct {v2, v3, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1616
    new-instance v3, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$Failed;

    .line 1617
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    :cond_5
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1616
    invoke-direct {v3, v7, v5, v6, v4}, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$Failed;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v3, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;

    .line 1615
    invoke-direct {v2, v3}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->onStatus(Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 1622
    iget-object v2, v2, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessTunnel:Lcom/shilapi/xcertplay/orchestration/CurrentChannel;

    invoke-virtual {v2, v1}, Lcom/shilapi/xcertplay/orchestration/CurrentChannel;->clearIf(Ljava/lang/Object;)Z

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private static final startWirelessTunnelControl$lambda$75$lambda$73(Lcom/shilapi/xcertplay/orchestration/CarPlayController;I)Lkotlin/Unit;
    .locals 0

    .line 1599
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->onWirelessTunnelReady(I)V

    .line 1600
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final startWirelessTunnelControl$lambda$75$lambda$74(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;)Lkotlin/Unit;
    .locals 3

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1602
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "iAP tunnel "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final startWirelessTunnelControl$lambda$76(Lcom/shilapi/xcertplay/iap2/session/Iap2Session;)Lkotlin/Unit;
    .locals 0

    .line 1628
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/iap2/session/Iap2Session;->close()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final unbindVpn()V
    .locals 2

    .line 2994
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->vpnBound:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2995
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->vpnBound:Z

    .line 2997
    :try_start_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->appContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->serviceConnection:Lcom/shilapi/xcertplay/orchestration/CarPlayController$serviceConnection$1;

    check-cast v1, Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 3001
    iput-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->vpnService:Lcom/shilapi/xcertplay/network/CarPlayVpnService;

    return-void
.end method

.method private final waitForMfi()V
    .locals 2

    .line 1066
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->phase:Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;->MFI:Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1067
    :cond_0
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForMfi;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForMfi;

    check-cast v0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->onStatus(Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;)V

    .line 1068
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;->MFI:Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;

    new-instance v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda23;-><init>(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)V

    invoke-direct {p0, v0, v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->scheduleAvailabilityPoll(Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;Lkotlin/jvm/functions/Function0;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final waitForMfi$lambda$46(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Lkotlin/Unit;
    .locals 2

    .line 1069
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->config:Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;->getMfiTarget()Lcom/shilapi/xcertplay/orchestration/MfiTarget;

    move-result-object v0

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/orchestration/MfiTarget;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p0, 0x4

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 1071
    :cond_1
    invoke-direct {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->openLinuxMfi()V

    goto :goto_0

    .line 1070
    :cond_2
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->ch341Host:Lcom/shilapi/xcertplay/transport/Ch341UsbHost;

    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->checkCh341Mfi(Lcom/shilapi/xcertplay/transport/Ch341UsbHost;)V

    .line 1074
    :cond_3
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final watchReenumeration()V
    .locals 5

    .line 2172
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->reenumerationWatchGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 2173
    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda25;

    invoke-direct {v2, p0, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda25;-><init>(Lcom/shilapi/xcertplay/orchestration/CarPlayController;I)V

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final watchReenumeration$lambda$105(Lcom/shilapi/xcertplay/orchestration/CarPlayController;I)V
    .locals 5

    .line 2174
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closed:Z

    if-eqz v0, :cond_0

    return-void

    .line 2176
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->reenumerationWatchGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->phase:Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;

    sget-object v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;->REENUMERATION:Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;

    if-eq p1, v0, :cond_1

    goto :goto_1

    .line 2180
    :cond_1
    :try_start_0
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object p1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->iphoneHost:Lcom/shilapi/xcertplay/transport/IphoneUsbHost;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/IphoneUsbHost;->discover()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object p1, v3

    :cond_2
    check-cast p1, Landroid/hardware/usb/UsbDevice;

    if-nez p1, :cond_3

    .line 2182
    const-string/jumbo p1, "wired iPhone left USB after the CarPlay switch request"

    invoke-static {p0, p1, v1, v2, v3}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 2183
    new-instance p1, Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;

    const-string v0, "iPhone left USB after the CarPlay switch request"

    invoke-direct {p1, v0, v3, v2, v3}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->fail(Ljava/lang/Throwable;)V

    return-void

    .line 2186
    :cond_3
    const-string/jumbo v0, "wired iPhone did not come back after the CarPlay switch request; reading it again"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 2187
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->availabilityPollGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 2188
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->requestIphonePermission(Landroid/hardware/usb/UsbDevice;)V

    return-void

    .line 2177
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->phase:Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;->name()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "toLowerCase(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "wired re-enumeration watch: nothing to do (iPhone came back; phase="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1, v2, v3}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method private final watchWirelessJoin()V
    .locals 11

    .line 3049
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .line 3050
    iget v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->joinWatchGeneration:I

    if-ne v0, v3, :cond_0

    return-void

    .line 3051
    :cond_0
    iput v3, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->joinWatchGeneration:I

    .line 3052
    sget-object v0, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->Companion:Lcom/shilapi/xcertplay/network/CarPlayVpnService$Companion;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/CarPlayVpnService$Companion;->getAcceptedConnections()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    .line 3053
    iget-object v6, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessHotspotInterface:Ljava/lang/String;

    .line 3054
    sget-object v0, Lcom/shilapi/xcertplay/network/TcpDiagnostics;->INSTANCE:Lcom/shilapi/xcertplay/network/TcpDiagnostics;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/TcpDiagnostics;->snapshot()Ljava/util/Map;

    move-result-object v7

    .line 3055
    sget-object v0, Lcom/shilapi/xcertplay/network/TcpDiagnostics;->INSTANCE:Lcom/shilapi/xcertplay/network/TcpDiagnostics;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/TcpDiagnostics;->snapshotIpv6()Ljava/util/Map;

    move-result-object v9

    const/4 v1, 0x0

    .line 3056
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    if-nez v6, :cond_1

    .line 3057
    const-string v0, ""

    goto :goto_0

    :cond_1
    move-object v0, v6

    :goto_0
    invoke-static {v0}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v2, "list(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 3439
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/net/InetAddress;

    .line 3058
    instance-of v8, v8, Ljava/net/Inet4Address;

    if-eqz v8, :cond_3

    goto :goto_1

    :cond_4
    move-object v2, v1

    :goto_1
    check-cast v2, Ljava/net/InetAddress;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const/16 v2, 0x2e

    const/4 v8, 0x2

    invoke-static {v0, v2, v1, v8, v1}, Lkotlin/text/StringsKt;->substringBeforeLast$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 3057
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    :goto_2
    move-object v0, v1

    .line 3056
    :goto_3
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3059
    :goto_4
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_5

    :cond_6
    move-object v1, v0

    :goto_5
    move-object v8, v1

    check-cast v8, Ljava/lang/String;

    .line 3061
    new-instance v0, Ljava/lang/Thread;

    .line 3075
    new-instance v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, v3, v6}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda4;-><init>(Lcom/shilapi/xcertplay/orchestration/CarPlayController;ILjava/lang/String;)V

    const-string v2, "carplay-bonjour-reannounce"

    .line 3061
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 v10, 0x1

    .line 3075
    invoke-virtual {v0, v10}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3076
    new-instance v0, Ljava/lang/Thread;

    .line 3102
    new-instance v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda5;

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda5;-><init>(Lcom/shilapi/xcertplay/orchestration/CarPlayController;IJLjava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    const-string v2, "carplay-join-check"

    .line 3076
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 3102
    invoke-virtual {v0, v10}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static final watchWirelessJoin$lambda$178(Lcom/shilapi/xcertplay/orchestration/CarPlayController;ILjava/lang/String;)V
    .locals 12

    const/4 v0, 0x3

    .line 3063
    new-array v1, v0, [J

    fill-array-data v1, :array_0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_4

    aget-wide v6, v1, v5

    sub-long v2, v6, v2

    .line 3065
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3070
    iget-boolean v2, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closed:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-eq p1, v2, :cond_0

    goto :goto_1

    .line 3071
    :cond_0
    iget-object v2, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->bonjour:Lcom/shilapi/xcertplay/network/CarPlayBonjour;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->reannounce()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    const-string v2, "no Bonjour"

    :cond_2
    const/16 v3, 0x3e8

    int-to-long v8, v3

    .line 3072
    div-long v8, v6, v8

    .line 3073
    invoke-direct {p0, p2}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->hotspotClientCount(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "unknown"

    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "wireless Bonjour +"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "s after start-session: "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " hotspotClients="

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v8, 0x0

    .line 3072
    invoke-static {p0, v2, v4, v3, v8}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    move-wide v2, v6

    goto :goto_0

    :catch_0
    :cond_4
    :goto_1
    return-void

    nop

    :array_0
    .array-data 8
        0xbb8
        0x1f40
        0x3a98
    .end array-data
.end method

.method private static final watchWirelessJoin$lambda$180(Lcom/shilapi/xcertplay/orchestration/CarPlayController;IJLjava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    const/16 v2, 0x28

    const/16 v3, 0xf

    .line 3077
    filled-new-array {v3, v2}, [I

    move-result-object v2

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x2

    if-ge v5, v6, :cond_7

    aget v7, v2, v5

    if-ne v7, v3, :cond_0

    const-wide/16 v8, 0x3a98

    goto :goto_1

    :cond_0
    const-wide/16 v8, 0x61a8

    .line 3079
    :goto_1
    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3083
    iget-boolean v8, v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closed:Z

    if-nez v8, :cond_7

    iget-object v8, v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    move/from16 v9, p1

    if-eq v9, v8, :cond_1

    goto/16 :goto_4

    .line 3084
    :cond_1
    sget-object v8, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->Companion:Lcom/shilapi/xcertplay/network/CarPlayVpnService$Companion;

    invoke-virtual {v8}, Lcom/shilapi/xcertplay/network/CarPlayVpnService$Companion;->getAcceptedConnections()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v10

    sub-long v10, v10, p2

    .line 3086
    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->hotspotClientCount(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    const-string/jumbo v12, "unknown"

    if-nez v8, :cond_2

    move-object v8, v12

    :cond_2
    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    move-object v12, v1

    .line 3087
    :goto_2
    iget-boolean v13, v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessResolvedSeen:Z

    iget-boolean v14, v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessHostIsIpv6:Z

    if-eqz v14, :cond_4

    const-string v14, "IPv6"

    goto :goto_3

    :cond_4
    const-string v14, "IPv4"

    :goto_3
    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "wireless join check +"

    invoke-direct {v15, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "s: airplayConnections="

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " hotspotClients="

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " iface="

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " bonjourResolved="

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " hostFamily="

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v12, 0x0

    .line 3085
    invoke-static {v0, v4, v12, v6, v8}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 3089
    sget-object v4, Lcom/shilapi/xcertplay/network/TcpDiagnostics;->INSTANCE:Lcom/shilapi/xcertplay/network/TcpDiagnostics;

    move-object/from16 v12, p5

    invoke-virtual {v4, v12}, Lcom/shilapi/xcertplay/network/TcpDiagnostics;->delta(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    .line 3090
    sget-object v13, Lcom/shilapi/xcertplay/network/TcpDiagnostics;->INSTANCE:Lcom/shilapi/xcertplay/network/TcpDiagnostics;

    iget v14, v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->airPlayPortInUse:I

    move-object/from16 v15, p6

    invoke-virtual {v13, v14, v15}, Lcom/shilapi/xcertplay/network/TcpDiagnostics;->hotspotConnections(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "s tcp: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    const/4 v13, 0x0

    .line 3089
    invoke-static {v0, v4, v13, v6, v8}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 3091
    sget-object v4, Lcom/shilapi/xcertplay/network/TcpDiagnostics;->INSTANCE:Lcom/shilapi/xcertplay/network/TcpDiagnostics;

    move-object/from16 v14, p7

    invoke-virtual {v4, v14}, Lcom/shilapi/xcertplay/network/TcpDiagnostics;->deltaIpv6(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "s ipv6: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    invoke-static {v0, v3, v13, v6, v8}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    const-wide/16 v3, 0x0

    cmp-long v6, v10, v3

    if-lez v6, :cond_5

    goto :goto_4

    .line 3096
    :cond_5
    iget-object v3, v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->config:Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;->getTransport()Lcom/shilapi/xcertplay/orchestration/CarPlayTransport;

    move-result-object v3

    sget-object v4, Lcom/shilapi/xcertplay/orchestration/CarPlayTransport;->WIRELESS:Lcom/shilapi/xcertplay/orchestration/CarPlayTransport;

    if-ne v3, v4, :cond_6

    iget-object v3, v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessActiveReported:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_6

    .line 3097
    new-instance v3, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForIphoneWifi;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessIphoneOnWifi()Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForIphoneWifi;-><init>(Ljava/lang/Boolean;)V

    check-cast v3, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;

    invoke-direct {v0, v3}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->onStatus(Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;)V

    :cond_6
    add-int/lit8 v5, v5, 0x1

    const/16 v3, 0xf

    goto/16 :goto_0

    :catch_0
    :cond_7
    :goto_4
    return-void
.end method

.method private final watchWirelessJoinDeadline()V
    .locals 8

    .line 3114
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    .line 3115
    iget v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->joinDeadlineGeneration:I

    if-eq v0, v7, :cond_1

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->config:Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;->getTransport()Lcom/shilapi/xcertplay/orchestration/CarPlayTransport;

    move-result-object v0

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/CarPlayTransport;->WIRELESS:Lcom/shilapi/xcertplay/orchestration/CarPlayTransport;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3116
    :cond_0
    iput v7, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->joinDeadlineGeneration:I

    .line 3117
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 3121
    new-instance v0, Ljava/lang/Thread;

    .line 3164
    new-instance v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda13;

    const-wide/16 v2, 0x61a8

    move-object v6, p0

    invoke-direct/range {v1 .. v7}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda13;-><init>(JJLcom/shilapi/xcertplay/orchestration/CarPlayController;I)V

    const-string v2, "carplay-join-deadline"

    .line 3121
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 3164
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final watchWirelessJoinDeadline$lambda$183(JJLcom/shilapi/xcertplay/orchestration/CarPlayController;I)V
    .locals 36

    move-object/from16 v1, p4

    const/4 v2, 0x5

    .line 3122
    new-array v3, v2, [J

    const/4 v4, 0x0

    const-wide/16 v5, 0x3a98

    aput-wide v5, v3, v4

    const/4 v5, 0x1

    aput-wide p0, v3, v5

    const/4 v6, 0x2

    const-wide/32 v7, 0x9c40

    aput-wide v7, v3, v6

    const-wide/32 v7, 0x15f90

    const/4 v0, 0x3

    aput-wide v7, v3, v0

    const/4 v0, 0x4

    const-wide/16 v7, 0x7530

    aput-wide v7, v3, v0

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v2, :cond_c

    aget-wide v10, v3, v9

    add-long v12, p2, v10

    .line 3123
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    sub-long/2addr v12, v14

    const-wide/16 v14, 0x0

    cmp-long v0, v12, v14

    if-lez v0, :cond_0

    .line 3124
    :try_start_0
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    return-void

    .line 3125
    :cond_0
    :goto_1
    iget-boolean v0, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closed:Z

    if-nez v0, :cond_c

    iget-object v0, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    move/from16 v12, p5

    if-eq v12, v0, :cond_1

    goto/16 :goto_9

    .line 3126
    :cond_1
    iget-object v0, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessActiveReported:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessHandoffRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->activeSession:Lcom/shilapi/xcertplay/airplay/AirPlaySession;

    if-eqz v0, :cond_2

    goto/16 :goto_9

    .line 3127
    :cond_2
    invoke-direct {v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessIphoneOnWifi()Ljava/lang/Boolean;

    move-result-object v13

    .line 3128
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3129
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/WifiHandoff;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/WifiHandoff;

    iget-object v14, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wifiHandoffEvidence:Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Evidence;

    invoke-virtual {v0, v14}, Lcom/shilapi/xcertplay/orchestration/WifiHandoff;->onJoined(Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Evidence;)Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Evidence;

    move-result-object v0

    iput-object v0, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wifiHandoffEvidence:Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Evidence;

    .line 3130
    sget-object v14, Lcom/shilapi/xcertplay/orchestration/ConnectionLog;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/ConnectionLog;

    sget-object v15, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;->WIFI:Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;

    sget-object v0, Lcom/shilapi/xcertplay/orchestration/WifiHandoff;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/WifiHandoff;

    iget-object v2, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wifiHandoffEvidence:Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Evidence;

    invoke-virtual {v0, v2}, Lcom/shilapi/xcertplay/orchestration/WifiHandoff;->summary(Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Evidence;)Ljava/lang/String;

    move-result-object v17

    const/16 v21, 0x18

    const/16 v22, 0x0

    const-string v16, "joined"

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    invoke-static/range {v14 .. v22}, Lcom/shilapi/xcertplay/orchestration/ConnectionLog;->note$default(Lcom/shilapi/xcertplay/orchestration/ConnectionLog;Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;Ljava/lang/String;Ljava/lang/String;IJILjava/lang/Object;)Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;

    :cond_3
    const/16 v0, 0x3e8

    int-to-long v14, v0

    .line 3132
    div-long v14, v10, v14

    if-nez v13, :cond_4

    const-string/jumbo v0, "unknown"

    goto :goto_2

    :cond_4
    move-object v0, v13

    .line 3133
    :goto_2
    sget-object v2, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->Companion:Lcom/shilapi/xcertplay/network/CarPlayVpnService$Companion;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/network/CarPlayVpnService$Companion;->getAcceptedConnections()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    move-wide/from16 v16, v7

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    .line 3134
    sget-object v2, Lcom/shilapi/xcertplay/orchestration/WifiHandoff;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/WifiHandoff;

    const/16 v18, 0x1

    iget-object v5, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wifiHandoffEvidence:Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Evidence;

    invoke-virtual {v2, v5}, Lcom/shilapi/xcertplay/orchestration/WifiHandoff;->summary(Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Evidence;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "wireless join after Wi-Fi details +"

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "s: iPhoneOnWifi="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " airplayConnections="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " handoff="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 3132
    invoke-static {v1, v0, v5, v6, v2}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    cmp-long v0, v10, p0

    if-nez v0, :cond_a

    .line 3135
    iget-object v0, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->config:Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;->getWirelessHotspotAutoSelect()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3139
    invoke-direct {v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->joinEvidence()Lcom/shilapi/xcertplay/orchestration/WifiHandoff$JoinEvidence;

    move-result-object v5

    .line 3140
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/WifiHandoff;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/WifiHandoff;

    invoke-virtual {v0, v5}, Lcom/shilapi/xcertplay/orchestration/WifiHandoff;->joinVerdict(Lcom/shilapi/xcertplay/orchestration/WifiHandoff$JoinEvidence;)Lcom/shilapi/xcertplay/orchestration/WifiHandoff$JoinVerdict;

    move-result-object v7

    .line 3141
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/WifiHandoff$JoinVerdict;->NOT_JOINED:Lcom/shilapi/xcertplay/orchestration/WifiHandoff$JoinVerdict;

    if-ne v7, v0, :cond_6

    iget v0, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->joinSwitches:I

    if-ge v0, v6, :cond_6

    sget-object v8, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory;

    iget-object v2, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->linkModeInUse:Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    .line 3142
    :try_start_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v23, Lcom/shilapi/xcertplay/orchestration/WirelessLinkAutoSelect;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/WirelessLinkAutoSelect;

    iget-object v0, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->appContext:Landroid/content/Context;

    const-string v6, "appContext"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->config:Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;

    invoke-virtual {v6}, Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;->getManualHotspotSsid()Ljava/lang/String;

    move-result-object v25

    const/16 v27, 0x4

    const/16 v28, 0x0

    const/16 v26, 0x0

    move-object/from16 v24, v0

    invoke-static/range {v23 .. v28}, Lcom/shilapi/xcertplay/orchestration/WirelessLinkAutoSelect;->candidates$default(Lcom/shilapi/xcertplay/orchestration/WirelessLinkAutoSelect;Landroid/content/Context;Ljava/lang/String;ZILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    move-object v0, v6

    :cond_5
    check-cast v0, Ljava/util/List;

    .line 3141
    invoke-virtual {v8, v2, v0}, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory;->nextAfter(Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;Ljava/util/List;)Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    move-result-object v0

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    .line 3144
    :goto_4
    invoke-virtual {v5}, Lcom/shilapi/xcertplay/orchestration/WifiHandoff$JoinEvidence;->summary()Ljava/lang/String;

    move-result-object v2

    iget-object v6, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->linkModeInUse:Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    if-nez v0, :cond_7

    .line 3145
    const-string v8, "none (keep waiting)"

    goto :goto_5

    :cond_7
    move-object v8, v0

    :goto_5
    move-object/from16 v22, v3

    iget v3, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->joinSwitches:I

    move-object/from16 v23, v5

    sget-object v5, Lcom/shilapi/xcertplay/orchestration/WifiHandoff;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/WifiHandoff;

    move/from16 v24, v9

    iget-object v9, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wifiHandoffEvidence:Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Evidence;

    invoke-virtual {v5, v9}, Lcom/shilapi/xcertplay/orchestration/WifiHandoff;->summary(Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Evidence;)Ljava/lang/String;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    move-wide/from16 v25, v10

    const-string/jumbo v10, "wireless join check +"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, "s: verdict="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " link="

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " next="

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " switches="

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    .line 3144
    invoke-static {v1, v3, v5, v6, v4}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 3146
    sget-object v27, Lcom/shilapi/xcertplay/orchestration/ConnectionLog;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/ConnectionLog;

    sget-object v28, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;->WIFI:Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;

    invoke-virtual/range {v23 .. v23}, Lcom/shilapi/xcertplay/orchestration/WifiHandoff$JoinEvidence;->summary()Ljava/lang/String;

    move-result-object v3

    if-nez v0, :cond_8

    const-string v4, "none"

    goto :goto_6

    :cond_8
    move-object v4, v0

    :goto_6
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "verdict="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    const/16 v34, 0x18

    const/16 v35, 0x0

    const-string v29, "join-check"

    const/16 v31, 0x0

    const-wide/16 v32, 0x0

    invoke-static/range {v27 .. v35}, Lcom/shilapi/xcertplay/orchestration/ConnectionLog;->note$default(Lcom/shilapi/xcertplay/orchestration/ConnectionLog;Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;Ljava/lang/String;Ljava/lang/String;IJILjava/lang/Object;)Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;

    if-eqz v0, :cond_9

    .line 3148
    iget v2, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->joinSwitches:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->joinSwitches:I

    .line 3149
    iput-object v0, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->preferNextWifiMode:Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    .line 3150
    new-instance v16, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$SwitchingWifiLink;

    iget-object v2, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->linkModeInUse:Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    invoke-virtual/range {v23 .. v23}, Lcom/shilapi/xcertplay/orchestration/WifiHandoff$JoinEvidence;->summary()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v18, v0

    move-object/from16 v17, v2

    move-wide/from16 v19, v14

    invoke-direct/range {v16 .. v21}, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$SwitchingWifiLink;-><init>(Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;JLjava/lang/String;)V

    move-object/from16 v0, v16

    check-cast v0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;

    invoke-direct {v1, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->onStatus(Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;)V

    .line 3151
    invoke-direct {v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->restartWireless()V

    return-void

    :cond_9
    move-wide v10, v14

    goto :goto_7

    :cond_a
    move-object/from16 v22, v3

    move/from16 v24, v9

    move-wide/from16 v25, v10

    move-wide v10, v14

    const/4 v5, 0x0

    :goto_7
    cmp-long v0, v25, v16

    if-gez v0, :cond_b

    .line 3156
    new-instance v0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForIphoneWifi;

    invoke-direct {v0, v13}, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForIphoneWifi;-><init>(Ljava/lang/Boolean;)V

    check-cast v0, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;

    invoke-direct {v1, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->onStatus(Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;)V

    const/4 v2, 0x1

    goto :goto_8

    .line 3160
    :cond_b
    iget-object v0, v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 3161
    invoke-static {v1, v4, v2, v4}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closeWirelessStack$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/network/CarPlayVpnService;ILjava/lang/Object;)V

    .line 3162
    new-instance v0, Ljava/io/IOException;

    sget-object v3, Lcom/shilapi/xcertplay/orchestration/SetupDiagnosis;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/SetupDiagnosis;

    invoke-virtual {v3, v13, v10, v11, v2}, Lcom/shilapi/xcertplay/orchestration/SetupDiagnosis;->wirelessJoinTimeoutMessage(Ljava/lang/Boolean;JZ)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->fail(Ljava/lang/Throwable;)V

    :goto_8
    add-int/lit8 v9, v24, 0x1

    move-wide/from16 v7, v16

    move-object/from16 v3, v22

    const/4 v2, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_c
    :goto_9
    return-void
.end method

.method private final wifiApStateCode()Ljava/lang/Integer;
    .locals 4

    const/4 v0, 0x0

    .line 1690
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    .line 1691
    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->appContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.net.wifi.WifiManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 1692
    const-class v2, Landroid/net/wifi/WifiManager;

    const-string v3, "getWifiApState"

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1690
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1693
    :goto_0
    invoke-static {v1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    move-object v0, v1

    :goto_1
    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method private final wirelessIphoneOnWifi()Ljava/lang/Boolean;
    .locals 5

    .line 3172
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->hotspot:Lcom/shilapi/xcertplay/network/WirelessHotspotManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    :try_start_0
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v4, p0

    check-cast v4, Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    invoke-interface {v0}, Lcom/shilapi/xcertplay/network/WirelessHotspotManager;->associatedClients()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v0, v3

    :cond_0
    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 3173
    :cond_2
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessHotspotInterface:Ljava/lang/String;

    if-nez v0, :cond_3

    return-object v3

    .line 3174
    :cond_3
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->hotspotClientCount(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-lez v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :cond_5
    return-object v3
.end method

.method private final wirelessSessionListener(I)Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;
    .locals 1

    .line 1635
    new-instance v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$wirelessSessionListener$1;

    invoke-direct {v0, p0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$wirelessSessionListener$1;-><init>(Lcom/shilapi/xcertplay/orchestration/CarPlayController;I)V

    check-cast v0, Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    return-object v0
.end method


# virtual methods
.method public final attachUi(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reportStatus"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 512
    iput-object p1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->uiListener:Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    .line 513
    iput-object p2, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->uiStatusReporter:Lkotlin/jvm/functions/Function1;

    .line 514
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0, p1, p2}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda17;-><init>(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final awaitClosed(J)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 739
    :try_start_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->teardownComplete:Ljava/util/concurrent/CountDownLatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 741
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    const/4 p1, 0x0

    return p1

    .line 737
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "timeoutMillis must not be negative"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 4

    invoke-static {p0}, Lcom/shilapi/xcertplay/E01OemBluetooth;->cancelPrepared(Ljava/lang/Object;)V

    .line 657
    monitor-enter p0

    .line 658
    :try_start_0
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 659
    :try_start_1
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closed:Z

    .line 660
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 657
    monitor-exit p0

    .line 661
    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->videoGate:Lcom/shilapi/xcertplay/orchestration/VideoInCarGate;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/orchestration/VideoInCarGate;->close()V

    .line 662
    :cond_1
    sget-object v1, Lcom/shilapi/xcertplay/hud/BydNavigationOutputs;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydNavigationOutputs;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/hud/BydNavigationOutputs;->endNow()V

    .line 663
    sget-object v1, Lcom/shilapi/xcertplay/hud/BydNavigationOutputs;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydNavigationOutputs;

    new-instance v2, Lcom/shilapi/xcertplay/orchestration/CarPlayController$close$2;

    invoke-direct {v2, p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$close$2;-><init>(Ljava/lang/Object;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v1, v2}, Lcom/shilapi/xcertplay/hud/BydNavigationOutputs;->clearClusterStreamControl(Lkotlin/jvm/functions/Function1;)V

    .line 664
    invoke-direct {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closeReceivers()V

    .line 668
    sget-object v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->usbPrompt:Lcom/shilapi/xcertplay/orchestration/UsbPromptStamp;

    iget-wide v2, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->ownUsbPromptStamp:J

    invoke-virtual {v1, v2, v3}, Lcom/shilapi/xcertplay/orchestration/UsbPromptStamp;->clearIf(J)Z

    .line 669
    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->availabilityPollGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 670
    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 671
    iget v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->permissionPollGeneration:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->permissionPollGeneration:I

    .line 672
    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->touchExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 673
    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->tunnelExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 674
    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->vpnService:Lcom/shilapi/xcertplay/network/CarPlayVpnService;

    .line 675
    invoke-direct {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->unbindVpn()V

    .line 676
    new-instance v2, Ljava/lang/Thread;

    .line 714
    new-instance v3, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0, v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda8;-><init>(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/network/CarPlayVpnService;)V

    .line 713
    const-string/jumbo v1, "xcertplay-controller-teardown"

    .line 676
    invoke-direct {v2, v3, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 715
    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 716
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void

    :catchall_0
    move-exception v0

    .line 657
    monitor-exit p0

    throw v0
.end method

.method public final getPlaybackListener()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 339
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->playbackListener:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getVideoListener()Lcom/shilapi/xcertplay/orchestration/CarPlayVideoListener;
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->videoListener:Lcom/shilapi/xcertplay/orchestration/CarPlayVideoListener;

    return-object v0
.end method

.method public final hasActiveAirPlayAttachment()Z
    .locals 3

    .line 521
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->lifecycleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 522
    :try_start_0
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closed:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->vpnService:Lcom/shilapi/xcertplay/network/CarPlayVpnService;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->isAttached()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 521
    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final isClosed()Z
    .locals 1

    .line 519
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closed:Z

    return v0
.end method

.method public final reconnectIphone()V
    .locals 3

    .line 556
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->lifecycleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 557
    :try_start_0
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 558
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->mfiSession:Lcom/shilapi/xcertplay/orchestration/MfiSession;

    if-nez v1, :cond_1

    .line 559
    invoke-direct {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->startMfi()V

    goto :goto_0

    .line 560
    :cond_1
    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->config:Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;->getTransport()Lcom/shilapi/xcertplay/orchestration/CarPlayTransport;

    move-result-object v1

    sget-object v2, Lcom/shilapi/xcertplay/orchestration/CarPlayTransport;->WIRELESS:Lcom/shilapi/xcertplay/orchestration/CarPlayTransport;

    if-ne v1, v2, :cond_2

    .line 561
    invoke-direct {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->restartWireless()V

    goto :goto_0

    .line 563
    :cond_2
    invoke-direct {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->startIphone()V

    .line 565
    :goto_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 556
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final reconnectMfi()V
    .locals 2

    .line 549
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->lifecycleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 550
    :try_start_0
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 551
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closeMfiSession()V

    .line 552
    invoke-direct {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->startMfi()V

    .line 553
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 549
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final requestSiri()Z
    .locals 4

    .line 581
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->activeSession:Lcom/shilapi/xcertplay/airplay/AirPlaySession;

    if-nez v0, :cond_1

    return v1

    .line 584
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->touchExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda28;

    invoke-direct {v3, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda28;-><init>(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    return v1
.end method

.method public final requestUi(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 628
    new-instance v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda84;

    invoke-direct {v0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda84;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->onSession(Lkotlin/jvm/functions/Function1;)Z

    move-result p1

    return p1
.end method

.method public final sendKnobBack()Z
    .locals 4

    .line 596
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->activeSession:Lcom/shilapi/xcertplay/airplay/AirPlaySession;

    if-nez v0, :cond_1

    return v1

    .line 599
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->touchExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda12;

    invoke-direct {v3, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda12;-><init>(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    return v1
.end method

.method public final sendKnobPress(Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;)Z
    .locals 1

    const-string/jumbo v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 619
    new-instance v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda27;

    invoke-direct {v0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda27;-><init>(Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;)V

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->onSession(Lkotlin/jvm/functions/Function1;)Z

    move-result p1

    return p1
.end method

.method public final sendMediaButton(I)Z
    .locals 4

    .line 631
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->activeSession:Lcom/shilapi/xcertplay/airplay/AirPlaySession;

    if-nez v0, :cond_1

    return v1

    .line 634
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->touchExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda29;

    invoke-direct {v3, v0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda29;-><init>(Lcom/shilapi/xcertplay/airplay/AirPlaySession;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    return v1
.end method

.method public final sendMediaHold(IZ)Z
    .locals 1

    .line 622
    new-instance v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda83;

    invoke-direct {v0, p2, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda83;-><init>(ZI)V

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->onSession(Lkotlin/jvm/functions/Function1;)Z

    move-result p1

    return p1
.end method

.method public final sendTelephonyButton(I)Z
    .locals 4

    .line 646
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 647
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->activeSession:Lcom/shilapi/xcertplay/airplay/AirPlaySession;

    if-nez v0, :cond_1

    return v1

    .line 649
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->touchExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda39;

    invoke-direct {v3, v0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda39;-><init>(Lcom/shilapi/xcertplay/airplay/AirPlaySession;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    return v1
.end method

.method public final sendTouch(Ljava/util/List;)Z
    .locals 3

    const-string v0, "contacts"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->activeSession:Lcom/shilapi/xcertplay/airplay/AirPlaySession;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->touchExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-static {v1, v0, p1}, Lcom/shilapi/xcertplay/E01TouchQueue;->enqueue(Ljava/util/concurrent/ExecutorService;Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final sendVideoMessage(JLjava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "message"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->activeSession:Lcom/shilapi/xcertplay/airplay/AirPlaySession;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->sendRemoteControlMessage(JLjava/util/Map;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final setPlaybackListener(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 339
    iput-object p1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->playbackListener:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setVideoListener(Lcom/shilapi/xcertplay/orchestration/CarPlayVideoListener;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->videoListener:Lcom/shilapi/xcertplay/orchestration/CarPlayVideoListener;

    return-void
.end method

.method public final siriButton(Z)Z
    .locals 1

    .line 625
    new-instance v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda85;

    invoke-direct {v0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda85;-><init>(Z)V

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->onSession(Lkotlin/jvm/functions/Function1;)Z

    move-result p1

    return p1
.end method

.method public final start()V
    .locals 13

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/shilapi/xcertplay/E01BuildVariant;->isPreview(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    sget-object v1, Lcom/shilapi/xcertplay/E01BuildVariant;->AUTH_UNAVAILABLE:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->fail(Ljava/lang/Throwable;)V

    return-void

    :cond_0

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    sget-object v0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/ConnectionLog;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/orchestration/ConnectionLog;->beginAttempt()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->joinSwitches:I

    new-instance v1, Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Evidence;

    const/16 v11, 0x1ff

    const/4 v12, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v12}, Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Evidence;-><init>(Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Step;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wifiHandoffEvidence:Lcom/shilapi/xcertplay/orchestration/WifiHandoff$Evidence;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wifiHandoff5703AtElapsed:J

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->videoListener:Lcom/shilapi/xcertplay/orchestration/CarPlayVideoListener;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/shilapi/xcertplay/orchestration/VideoInCarGate;

    new-instance v2, Lcom/shilapi/xcertplay/orchestration/CarPlayController$start$2$1;

    invoke-direct {v2, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$start$2$1;-><init>(Ljava/lang/Object;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    new-instance v3, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda79;

    invoke-direct {v3, p0, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda79;-><init>(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/orchestration/CarPlayVideoListener;)V

    invoke-direct {v1, v2, v3}, Lcom/shilapi/xcertplay/orchestration/VideoInCarGate;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/orchestration/VideoInCarGate;->start()V

    iput-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->videoGate:Lcom/shilapi/xcertplay/orchestration/VideoInCarGate;

    :cond_2
    invoke-direct {p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->startMfi()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
