.class public final Lcom/shilapi/xcertplay/HeadUnitCheck;
.super Ljava/lang/Object;
.source "HeadUnitCheck.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/HeadUnitCheck$Action;,
        Lcom/shilapi/xcertplay/HeadUnitCheck$Decoder;,
        Lcom/shilapi/xcertplay/HeadUnitCheck$Dongle;,
        Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;,
        Lcom/shilapi/xcertplay/HeadUnitCheck$Item;,
        Lcom/shilapi/xcertplay/HeadUnitCheck$Live;,
        Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;,
        Lcom/shilapi/xcertplay/HeadUnitCheck$ModeList;,
        Lcom/shilapi/xcertplay/HeadUnitCheck$OtherApp;,
        Lcom/shilapi/xcertplay/HeadUnitCheck$Port;,
        Lcom/shilapi/xcertplay/HeadUnitCheck$Result;,
        Lcom/shilapi/xcertplay/HeadUnitCheck$State;,
        Lcom/shilapi/xcertplay/HeadUnitCheck$Text;,
        Lcom/shilapi/xcertplay/HeadUnitCheck$Verdict;,
        Lcom/shilapi/xcertplay/HeadUnitCheck$WhenMappings;,
        Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHeadUnitCheck.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HeadUnitCheck.kt\ncom/shilapi/xcertplay/HeadUnitCheck\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,521:1\n1#2:522\n1563#3:523\n1634#3,3:524\n1563#3:527\n1634#3,3:528\n360#3,7:531\n1573#3:538\n1604#3,4:539\n360#3,7:543\n295#3,2:550\n295#3,2:552\n1878#3,3:554\n*S KotlinDebug\n*F\n+ 1 HeadUnitCheck.kt\ncom/shilapi/xcertplay/HeadUnitCheck\n*L\n152#1:523\n152#1:524,3\n208#1:527\n208#1:528,3\n328#1:531,7\n367#1:538\n367#1:539,4\n386#1:543,7\n391#1:550,2\n405#1:552,2\n512#1:554,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0008\u00c0\u0002\u0018\u00002\u00020\u0001:\u000fBCDEFGHIJKLMNOPB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J)\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00052\u0012\u0010\u000f\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010\u0010\"\u00020\u0001H\u0002\u00a2\u0006\u0002\u0010\u0011J\u0016\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017J\u0016\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u00072\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u0016\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u00072\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\tH\u0002J\u0018\u0010\u001e\u001a\u00020\u00192\u0006\u0010\u001f\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u0010\u0010 \u001a\u00020\u00192\u0006\u0010\u001f\u001a\u00020\u0005H\u0002J\u0018\u0010!\u001a\u00020\u00192\u0006\u0010\u001f\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020\u0005H\u0002J\u001d\u0010#\u001a\u0004\u0018\u00010\u00052\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0007H\u0002\u00a2\u0006\u0002\u0010%J,\u0010&\u001a\u00020\u00192\u0006\u0010\u001f\u001a\u00020\u00052\u0006\u0010\'\u001a\u00020(2\u0008\u0008\u0002\u0010)\u001a\u00020\u001c2\u0008\u0008\u0002\u0010*\u001a\u00020\u001cH\u0002J\u000e\u0010+\u001a\u00020\u00012\u0006\u0010\'\u001a\u00020(J3\u0010-\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u00072\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u00072\u0008\u0010-\u001a\u0004\u0018\u00010.2\u0006\u0010\u001a\u001a\u00020\u001cH\u0000\u00a2\u0006\u0002\u0008/J\u0018\u00100\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u001c2\u0006\u0010\"\u001a\u00020\u0005H\u0002J&\u00101\u001a\u0002022\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u00072\u0006\u0010\u001a\u001a\u00020\u001c2\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u0016\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u00072\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u0010\u00103\u001a\u00020\u00192\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u0010\u00104\u001a\u00020\t2\u0006\u00105\u001a\u00020\u0005H\u0002J\u0010\u00106\u001a\u00020\u00192\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J#\u0010;\u001a\u0004\u0018\u00010\u00052\u000c\u0010<\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00072\u0006\u0010\'\u001a\u00020\u0005\u00a2\u0006\u0002\u0010=J<\u0010>\u001a\u00020\t2\u0006\u0010?\u001a\u00020\u00132\u0018\u0010@\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00010\u0007\u0012\u0004\u0012\u00020\t0A2\u0012\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\t0AR\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R#\u0010\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u00080\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010,\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u0017\u00107\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00088\u0010\u000bR#\u00109\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00080\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008:\u0010\u000b\u00a8\u0006Q"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/HeadUnitCheck;",
        "",
        "<init>",
        "()V",
        "DEFAULT_PORT",
        "",
        "OTHER_CARPLAY_APPS",
        "",
        "Lkotlin/Pair;",
        "",
        "getOTHER_CARPLAY_APPS",
        "()Ljava/util/List;",
        "t",
        "Lcom/shilapi/xcertplay/HeadUnitCheck$Text;",
        "id",
        "args",
        "",
        "(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;",
        "evaluate",
        "Lcom/shilapi/xcertplay/HeadUnitCheck$Result;",
        "i",
        "Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;",
        "at",
        "",
        "wired",
        "Lcom/shilapi/xcertplay/HeadUnitCheck$Item;",
        "wireless",
        "secure",
        "",
        "version",
        "firstFrame",
        "name",
        "liveOnly",
        "waitFor",
        "step",
        "firstNotOk",
        "items",
        "(Ljava/util/List;)Ljava/lang/Integer;",
        "portItem",
        "port",
        "Lcom/shilapi/xcertplay/HeadUnitCheck$Port;",
        "common",
        "resultStep",
        "owner",
        "FIRST_APP_UID",
        "live",
        "Lcom/shilapi/xcertplay/HeadUnitCheck$Live;",
        "live$common_release",
        "stepHint",
        "verdict",
        "Lcom/shilapi/xcertplay/HeadUnitCheck$Verdict;",
        "androidVersion",
        "releaseLabel",
        "sdk",
        "video",
        "COMMON_NAMES",
        "getCOMMON_NAMES",
        "SUMMARY",
        "getSUMMARY",
        "listenerUid",
        "lines",
        "(Ljava/util/List;I)Ljava/lang/Integer;",
        "toText",
        "result",
        "resolve",
        "Lkotlin/Function1;",
        "Mark",
        "Text",
        "Action",
        "Item",
        "State",
        "Verdict",
        "Result",
        "Decoder",
        "Dongle",
        "WifiMode",
        "Port",
        "OtherApp",
        "Live",
        "Inputs",
        "ModeList",
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
.field private static final COMMON_NAMES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_PORT:I = 0x1b58

.field private static final FIRST_APP_UID:I = 0x2710

.field public static final INSTANCE:Lcom/shilapi/xcertplay/HeadUnitCheck;

.field private static final OTHER_CARPLAY_APPS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final SUMMARY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$NA3iJ7QjqYC6FFTSf1csZAmQQ84(Lcom/shilapi/xcertplay/HeadUnitCheck$OtherApp;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/HeadUnitCheck;->common$lambda$12(Lcom/shilapi/xcertplay/HeadUnitCheck$OtherApp;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 20

    new-instance v0, Lcom/shilapi/xcertplay/HeadUnitCheck;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/HeadUnitCheck;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/HeadUnitCheck;->INSTANCE:Lcom/shilapi/xcertplay/HeadUnitCheck;

    const/4 v0, 0x7

    .line 132
    new-array v1, v0, [Lkotlin/Pair;

    const-string v2, "com.juyou.app"

    const-string v3, "DrivePlay"

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 133
    const-string v2, "cn.manstep.phonemirrorBox"

    const-string v4, "AutoKit"

    invoke-static {v2, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 134
    const-string v2, "com.carletter.car"

    const-string v5, "Carletter"

    invoke-static {v2, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 135
    const-string v2, "com.zjinnova.zlink"

    const-string v6, "Zlink"

    invoke-static {v2, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    .line 136
    const-string v2, "com.ex.carplayapp"

    const-string v7, "EasyConnection"

    invoke-static {v2, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v7, 0x4

    aput-object v2, v1, v7

    .line 137
    const-string v2, "com.autonavi.amapauto"

    const-string v8, "Amap Auto"

    invoke-static {v2, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v8, 0x5

    aput-object v2, v1, v8

    .line 138
    const-string v2, "com.baidu.carlife.baiducarlife"

    const-string v9, "Baidu CarLife"

    invoke-static {v2, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v9, 0x6

    aput-object v2, v1, v9

    .line 131
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/shilapi/xcertplay/HeadUnitCheck;->OTHER_CARPLAY_APPS:Ljava/util/List;

    .line 489
    sget v1, Lcom/shilapi/xcertplay/host/R$string;->chk_c_android:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->chk_c_others:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v10, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_37:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    sget v11, Lcom/shilapi/xcertplay/host/R$string;->chk_c_ports:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 490
    sget v12, Lcom/shilapi/xcertplay/host/R$string;->chk_c_discovery:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    sget v13, Lcom/shilapi/xcertplay/host/R$string;->chk_c_video:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    sget v14, Lcom/shilapi/xcertplay/host/R$string;->chk_c_sound:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    sget v15, Lcom/shilapi/xcertplay/host/R$string;->chk_c_mic:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    sget v16, Lcom/shilapi/xcertplay/host/R$string;->chk_c_carbt:I

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 491
    sget v17, Lcom/shilapi/xcertplay/host/R$string;->chk_c_back:I

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    sget v18, Lcom/shilapi/xcertplay/host/R$string;->chk_c_touch:I

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v19, 0x7

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Integer;

    aput-object v1, v0, v3

    aput-object v2, v0, v4

    aput-object v10, v0, v5

    aput-object v11, v0, v6

    aput-object v12, v0, v7

    aput-object v13, v0, v8

    aput-object v14, v0, v9

    aput-object v15, v0, v19

    const/16 v1, 0x8

    aput-object v16, v0, v1

    const/16 v1, 0x9

    aput-object v17, v0, v1

    const/16 v1, 0xa

    aput-object v18, v0, v1

    .line 489
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/HeadUnitCheck;->COMMON_NAMES:Ljava/util/List;

    .line 494
    new-array v0, v9, [Lkotlin/Pair;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->chk_short_video:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->chk_short_volume:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->chk_short_mic:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v5

    .line 495
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->chk_short_port:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->chk_short_others:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->chk_short_android:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v8

    .line 494
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/HeadUnitCheck;->SUMMARY:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final androidVersion(Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;)Lcom/shilapi/xcertplay/HeadUnitCheck$Item;
    .locals 21

    move-object/from16 v0, p0

    .line 444
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getAndroidClaimedSdk()I

    move-result v1

    const/4 v2, 0x0

    if-gtz v1, :cond_0

    .line 445
    new-instance v3, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    sget v4, Lcom/shilapi/xcertplay/host/R$string;->chk_c_android:I

    sget-object v5, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->INFO:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget v1, Lcom/shilapi/xcertplay/host/R$string;->chk_d_android_unknown:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const/16 v13, 0x1f8

    const/4 v14, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v3 .. v14}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v3

    .line 447
    :cond_0
    sget v1, Lcom/shilapi/xcertplay/host/R$string;->chk_d_android_claimed:I

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getAndroidClaimedRelease()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getAndroidClaimedSdk()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v3, v6, v2

    const/4 v3, 0x1

    aput-object v4, v6, v3

    invoke-direct {v0, v1, v6}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v1

    .line 448
    sget v4, Lcom/shilapi/xcertplay/host/R$string;->chk_d_android_probed:I

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getAndroidProbedSdk()I

    move-result v6

    invoke-direct {v0, v6}, Lcom/shilapi/xcertplay/HeadUnitCheck;->releaseLabel(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getAndroidProbedSdk()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v6, v8, v2

    aput-object v7, v8, v3

    invoke-direct {v0, v4, v8}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v4

    .line 450
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getAndroidClaimTooHigh()Z

    move-result v6

    const/4 v7, 0x3

    if-eqz v6, :cond_1

    new-instance v8, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    .line 451
    sget v9, Lcom/shilapi/xcertplay/host/R$string;->chk_c_android:I

    sget-object v10, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->WARN:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    .line 452
    new-array v6, v7, [Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    aput-object v1, v6, v2

    aput-object v4, v6, v3

    sget v1, Lcom/shilapi/xcertplay/host/R$string;->chk_d_android_spoof:I

    new-array v3, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v3}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v1

    aput-object v1, v6, v5

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    .line 453
    sget v1, Lcom/shilapi/xcertplay/host/R$string;->chk_h_android_spoof:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v12

    const/16 v18, 0x1f0

    const/16 v19, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 450
    invoke-direct/range {v8 .. v19}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v8

    .line 455
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getAndroidPropDisagree()Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v8, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    .line 456
    sget v9, Lcom/shilapi/xcertplay/host/R$string;->chk_c_android:I

    sget-object v10, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->WARN:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    .line 457
    new-array v6, v7, [Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    aput-object v1, v6, v2

    aput-object v4, v6, v3

    sget v1, Lcom/shilapi/xcertplay/host/R$string;->chk_d_android_prop:I

    .line 458
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getAndroidPropRelease()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    const-string v4, "?"

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getAndroidPropSdk()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    :goto_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v11, v5, [Ljava/lang/Object;

    aput-object v4, v11, v2

    aput-object v7, v11, v3

    .line 457
    invoke-direct {v0, v1, v11}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v1

    aput-object v1, v6, v5

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    .line 459
    sget v1, Lcom/shilapi/xcertplay/host/R$string;->chk_h_android_spoof:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v12

    const/16 v18, 0x1f0

    const/16 v19, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 455
    invoke-direct/range {v8 .. v19}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v8

    .line 461
    :cond_4
    new-instance v9, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    sget v10, Lcom/shilapi/xcertplay/host/R$string;->chk_c_android:I

    sget-object v11, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->OK:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    new-array v6, v7, [Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    aput-object v1, v6, v2

    aput-object v4, v6, v3

    sget v1, Lcom/shilapi/xcertplay/host/R$string;->chk_d_android_match:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v1

    aput-object v1, v6, v5

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    const/16 v19, 0x1f8

    const/16 v20, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v9 .. v20}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9
.end method

.method private final common(Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;)Ljava/util/List;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;",
            ")",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/HeadUnitCheck$Item;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 403
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 404
    move-object v8, v7

    check-cast v8, Ljava/util/Collection;

    invoke-direct/range {p0 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck;->androidVersion(Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;)Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 405
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getOtherApps()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 552
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v9, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/shilapi/xcertplay/HeadUnitCheck$OtherApp;

    .line 405
    invoke-virtual {v3}, Lcom/shilapi/xcertplay/HeadUnitCheck$OtherApp;->getRunning()Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    check-cast v2, Lcom/shilapi/xcertplay/HeadUnitCheck$OtherApp;

    .line 406
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getOtherApps()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shilapi/xcertplay/HeadUnitCheck$OtherApp;

    const/4 v10, 0x0

    if-eqz v2, :cond_2

    .line 408
    new-instance v11, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    sget v12, Lcom/shilapi/xcertplay/host/R$string;->chk_c_others:I

    sget-object v13, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->WARN:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget v1, Lcom/shilapi/xcertplay/host/R$string;->chk_d_others_running:I

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/HeadUnitCheck$OtherApp;->getLabel()Ljava/lang/String;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v3, v4, v10

    invoke-direct {v0, v1, v4}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    .line 409
    sget v1, Lcom/shilapi/xcertplay/host/R$string;->chk_h_others_running:I

    new-array v3, v10, [Ljava/lang/Object;

    invoke-direct {v0, v1, v3}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v15

    sget-object v18, Lcom/shilapi/xcertplay/HeadUnitCheck$Action;->APP_INFO:Lcom/shilapi/xcertplay/HeadUnitCheck$Action;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/HeadUnitCheck$OtherApp;->getPkg()Ljava/lang/String;

    move-result-object v19

    const/16 v21, 0x130

    const/16 v22, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    .line 408
    invoke-direct/range {v11 .. v22}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_2

    :cond_2
    if-nez v1, :cond_3

    .line 410
    new-instance v12, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    sget v13, Lcom/shilapi/xcertplay/host/R$string;->chk_c_others:I

    sget-object v14, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->OK:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget v1, Lcom/shilapi/xcertplay/host/R$string;->chk_d_others_none:I

    new-array v2, v10, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    const/16 v22, 0x1f8

    const/16 v23, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v12 .. v23}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v11, v12

    goto :goto_2

    .line 411
    :cond_3
    new-instance v13, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    sget v14, Lcom/shilapi/xcertplay/host/R$string;->chk_c_others:I

    sget-object v15, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->OK:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/HeadUnitCheck$OtherApp;->getRunning()Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->chk_d_others_idle:I

    goto :goto_1

    :cond_4
    sget v2, Lcom/shilapi/xcertplay/host/R$string;->chk_d_others_maybe:I

    .line 412
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getOtherApps()Ljava/util/List;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Ljava/lang/Iterable;

    const-string v3, " / "

    move-object/from16 v17, v3

    check-cast v17, Ljava/lang/CharSequence;

    new-instance v22, Lcom/shilapi/xcertplay/HeadUnitCheck$$ExternalSyntheticLambda0;

    invoke-direct/range {v22 .. v22}, Lcom/shilapi/xcertplay/HeadUnitCheck$$ExternalSyntheticLambda0;-><init>()V

    const/16 v23, 0x1e

    const/16 v24, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v16 .. v24}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v3, v4, v10

    .line 411
    invoke-direct {v0, v2, v4}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    .line 412
    sget-object v20, Lcom/shilapi/xcertplay/HeadUnitCheck$Action;->APP_INFO:Lcom/shilapi/xcertplay/HeadUnitCheck$Action;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/HeadUnitCheck$OtherApp;->getPkg()Ljava/lang/String;

    move-result-object v21

    const/16 v23, 0x138

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    .line 411
    invoke-direct/range {v13 .. v24}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v11, v13

    .line 407
    :goto_2
    invoke-interface {v8, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 414
    sget v1, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_37:I

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getPort()Lcom/shilapi/xcertplay/HeadUnitCheck$Port;

    move-result-object v2

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/shilapi/xcertplay/HeadUnitCheck;->portItem$default(Lcom/shilapi/xcertplay/HeadUnitCheck;ILcom/shilapi/xcertplay/HeadUnitCheck$Port;ZZILjava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 415
    new-instance v11, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    sget v12, Lcom/shilapi/xcertplay/host/R$string;->chk_c_ports:I

    sget-object v13, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->OK:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget v1, Lcom/shilapi/xcertplay/host/R$string;->chk_d_ports_ok:I

    new-array v2, v10, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/16 v21, 0x1f8

    const/16 v22, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v11 .. v22}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v8, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 416
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getLive()Lcom/shilapi/xcertplay/HeadUnitCheck$Live;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Live;->getWireless()Z

    move-result v1

    if-ne v1, v9, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getLive()Lcom/shilapi/xcertplay/HeadUnitCheck$Live;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Live;->getPhase()Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    move-result-object v1

    sget-object v2, Lcom/shilapi/xcertplay/ConnectionProgress$Phase;->CONNECTED:Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    if-ne v1, v2, :cond_5

    .line 417
    new-instance v11, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    sget v12, Lcom/shilapi/xcertplay/host/R$string;->chk_c_discovery:I

    sget-object v13, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->OK:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget v1, Lcom/shilapi/xcertplay/host/R$string;->chk_d_discovery_ok:I

    new-array v2, v10, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/16 v21, 0x1f8

    const/16 v22, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v11 .. v22}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_3

    .line 418
    :cond_5
    new-instance v12, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    sget v13, Lcom/shilapi/xcertplay/host/R$string;->chk_c_discovery:I

    sget-object v14, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->WAIT:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget v1, Lcom/shilapi/xcertplay/host/R$string;->chk_on_connect:I

    new-array v2, v10, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    const/16 v22, 0xf8

    const/16 v23, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    invoke-direct/range {v12 .. v23}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v11, v12

    :goto_3
    invoke-interface {v8, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 419
    invoke-direct/range {p0 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck;->video(Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;)Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 420
    new-instance v11, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    sget v12, Lcom/shilapi/xcertplay/host/R$string;->chk_c_sound:I

    sget-object v13, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->OK:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget v1, Lcom/shilapi/xcertplay/host/R$string;->chk_d_sound:I

    new-array v2, v10, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/16 v21, 0x1f8

    const/16 v22, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v11 .. v22}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v8, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 422
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getMicrophone()Z

    move-result v1

    if-nez v1, :cond_6

    new-instance v11, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    sget v12, Lcom/shilapi/xcertplay/host/R$string;->chk_c_mic:I

    sget-object v13, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->INFO:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget v1, Lcom/shilapi/xcertplay/host/R$string;->chk_d_mic_none:I

    new-array v2, v10, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/16 v21, 0x1f8

    const/16 v22, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v11 .. v22}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_4

    .line 423
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getMicrophoneAllowed()Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v11, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    sget v12, Lcom/shilapi/xcertplay/host/R$string;->chk_c_mic:I

    sget-object v13, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->WARN:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget v1, Lcom/shilapi/xcertplay/host/R$string;->chk_d_mic_denied:I

    new-array v2, v10, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    sget v1, Lcom/shilapi/xcertplay/host/R$string;->chk_h_mic_denied:I

    new-array v2, v10, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v15

    const/16 v21, 0x1f0

    const/16 v22, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v11 .. v22}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_4

    .line 424
    :cond_7
    new-instance v12, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    sget v13, Lcom/shilapi/xcertplay/host/R$string;->chk_c_mic:I

    sget-object v14, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->OK:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget v1, Lcom/shilapi/xcertplay/host/R$string;->chk_d_mic_ok:I

    new-array v2, v10, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    const/16 v22, 0x1f8

    const/16 v23, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v12 .. v23}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v11, v12

    :goto_4
    invoke-interface {v8, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 426
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getCarBluetoothIphone()Ljava/lang/Boolean;

    move-result-object v1

    .line 427
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v11, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    sget v12, Lcom/shilapi/xcertplay/host/R$string;->chk_c_carbt:I

    sget-object v13, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->WARN:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget v1, Lcom/shilapi/xcertplay/host/R$string;->chk_d_carbt_yes:I

    new-array v2, v10, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    sget v1, Lcom/shilapi/xcertplay/host/R$string;->chk_h_carbt:I

    new-array v2, v10, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v15

    const/16 v21, 0x1f0

    const/16 v22, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v11 .. v22}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_5

    .line 428
    :cond_8
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v11, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    sget v12, Lcom/shilapi/xcertplay/host/R$string;->chk_c_carbt:I

    sget-object v13, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->OK:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget v1, Lcom/shilapi/xcertplay/host/R$string;->chk_d_carbt_no:I

    new-array v2, v10, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/16 v21, 0x1f8

    const/16 v22, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v11 .. v22}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_5

    :cond_9
    if-nez v1, :cond_e

    .line 429
    new-instance v12, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    sget v13, Lcom/shilapi/xcertplay/host/R$string;->chk_c_carbt:I

    sget-object v14, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->INFO:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->chk_d_carbt_unknown:I

    new-array v3, v10, [Ljava/lang/Object;

    invoke-direct {v0, v2, v3}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v2

    aput-object v2, v1, v10

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->chk_h_carbt:I

    new-array v3, v10, [Ljava/lang/Object;

    invoke-direct {v0, v2, v3}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    const/16 v22, 0x1f8

    const/16 v23, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v12 .. v23}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v11, v12

    .line 426
    :goto_5
    invoke-interface {v8, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 431
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getBackLongPressSeen()Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v11, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    sget v12, Lcom/shilapi/xcertplay/host/R$string;->chk_c_back:I

    sget-object v13, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->OK:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget v1, Lcom/shilapi/xcertplay/host/R$string;->chk_d_back_yes:I

    new-array v2, v10, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/16 v21, 0x1f8

    const/16 v22, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v11 .. v22}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_6

    .line 432
    :cond_a
    new-instance v12, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    sget v13, Lcom/shilapi/xcertplay/host/R$string;->chk_c_back:I

    sget-object v14, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->INFO:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget v1, Lcom/shilapi/xcertplay/host/R$string;->chk_d_back_no:I

    new-array v2, v10, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    const/16 v22, 0x1f8

    const/16 v23, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v12 .. v23}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v11, v12

    :goto_6
    invoke-interface {v8, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 434
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getTouchPoints()I

    move-result v1

    if-gtz v1, :cond_b

    new-instance v11, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    sget v12, Lcom/shilapi/xcertplay/host/R$string;->chk_c_touch:I

    sget-object v13, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->INFO:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget v1, Lcom/shilapi/xcertplay/host/R$string;->chk_d_touch_none:I

    new-array v2, v10, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/16 v21, 0x1f8

    const/16 v22, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v11 .. v22}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_7

    .line 435
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getTouchPoints()I

    move-result v1

    if-ne v1, v9, :cond_c

    new-instance v11, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    sget v12, Lcom/shilapi/xcertplay/host/R$string;->chk_c_touch:I

    sget-object v13, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->INFO:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget v1, Lcom/shilapi/xcertplay/host/R$string;->chk_d_touch_1:I

    new-array v2, v10, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/16 v21, 0x1f8

    const/16 v22, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v11 .. v22}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_7

    .line 436
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getTouchPoints()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_d

    new-instance v11, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    sget v12, Lcom/shilapi/xcertplay/host/R$string;->chk_c_touch:I

    sget-object v13, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->OK:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget v1, Lcom/shilapi/xcertplay/host/R$string;->chk_d_touch_5:I

    new-array v2, v10, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/16 v21, 0x1f8

    const/16 v22, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v11 .. v22}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_7

    .line 437
    :cond_d
    new-instance v12, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    sget v13, Lcom/shilapi/xcertplay/host/R$string;->chk_c_touch:I

    sget-object v14, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->OK:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget v1, Lcom/shilapi/xcertplay/host/R$string;->chk_d_touch_2:I

    new-array v2, v10, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    const/16 v22, 0x1f8

    const/16 v23, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v12 .. v23}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v11, v12

    :goto_7
    invoke-interface {v8, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 439
    check-cast v7, Ljava/util/List;

    return-object v7

    .line 426
    :cond_e
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    goto :goto_9

    :goto_8
    throw v1

    :goto_9
    goto :goto_8
.end method

.method private static final common$lambda$12(Lcom/shilapi/xcertplay/HeadUnitCheck$OtherApp;)Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 412
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/HeadUnitCheck$OtherApp;->getLabel()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method private final firstFrame(ILcom/shilapi/xcertplay/HeadUnitCheck$Inputs;)Lcom/shilapi/xcertplay/HeadUnitCheck$Item;
    .locals 13

    .line 323
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getDecoder()Lcom/shilapi/xcertplay/HeadUnitCheck$Decoder;

    move-result-object p2

    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCheck$Decoder;->NONE:Lcom/shilapi/xcertplay/HeadUnitCheck$Decoder;

    if-ne p2, v0, :cond_0

    new-instance v1, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    sget-object v3, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->BAD:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget p2, Lcom/shilapi/xcertplay/host/R$string;->chk_d_no_decoder:I

    const/4 v0, 0x0

    new-array v2, v0, [Ljava/lang/Object;

    invoke-direct {p0, p2, v2}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    sget p2, Lcom/shilapi/xcertplay/host/R$string;->chk_h_no_decoder:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, p2, v0}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v5

    const/16 v11, 0x1d0

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v2, p1

    invoke-direct/range {v1 .. v12}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_0
    move v2, p1

    .line 324
    invoke-direct {p0, v2}, Lcom/shilapi/xcertplay/HeadUnitCheck;->liveOnly(I)Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    move-result-object p1

    return-object p1
.end method

.method private final firstNotOk(Ljava/util/List;)Ljava/lang/Integer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/HeadUnitCheck$Item;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 532
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 533
    check-cast v1, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    .line 328
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;->getMark()Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    move-result-object v1

    sget-object v2, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->OK:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_2

    goto :goto_2

    :cond_2
    move-object p1, v1

    :goto_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v1
.end method

.method private final liveOnly(I)Lcom/shilapi/xcertplay/HeadUnitCheck$Item;
    .locals 12

    .line 326
    new-instance v0, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    sget-object v2, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->WAIT:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget v1, Lcom/shilapi/xcertplay/host/R$string;->chk_on_connect:I

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0, v1, v3}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/16 v10, 0xf8

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method private final portItem(ILcom/shilapi/xcertplay/HeadUnitCheck$Port;ZZ)Lcom/shilapi/xcertplay/HeadUnitCheck$Item;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 336
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Port;->getTaken()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-direct/range {p0 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck;->liveOnly(I)Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    move-result-object v1

    return-object v1

    .line 338
    :cond_0
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Port;->getSelf()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    new-instance v5, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    sget-object v7, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->OK:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->chk_d_port_self:I

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Port;->getPreferred()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-direct {v0, v2, v3}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/16 v15, 0x1f8

    const/16 v16, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v6, p1

    invoke-direct/range {v5 .. v16}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v5

    .line 339
    :cond_1
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Port;->getTaken()Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 340
    new-instance v6, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    sget-object v8, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->INFO:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->chk_d_port_free:I

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Port;->getPreferred()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-direct {v0, v2, v3}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const/16 v16, 0xf8

    const/16 v17, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v7, p1

    move/from16 v15, p4

    invoke-direct/range {v6 .. v17}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6

    .line 341
    :cond_2
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Port;->getFallback()Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x2

    if-eqz v2, :cond_5

    sget-object v8, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->INFO:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    new-array v2, v5, [Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    sget v6, Lcom/shilapi/xcertplay/host/R$string;->chk_d_port_moved:I

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Port;->getPreferred()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/HeadUnitCheck;->owner(Lcom/shilapi/xcertplay/HeadUnitCheck$Port;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Port;->getFallback()Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v7, v11, v4

    aput-object v9, v11, v3

    aput-object v10, v11, v5

    invoke-direct {v0, v6, v11}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v5

    aput-object v5, v2, v4

    .line 342
    sget v5, Lcom/shilapi/xcertplay/host/R$string;->chk_d_port_leave:I

    new-array v6, v4, [Ljava/lang/Object;

    invoke-direct {v0, v5, v6}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v5

    if-eqz p3, :cond_4

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Port;->getOwnerUid()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :cond_3
    const/16 v1, 0x2710

    if-ge v4, v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    :goto_0
    aput-object v5, v2, v3

    .line 341
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    new-instance v6, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0xf8

    const/16 v17, 0x0

    move/from16 v7, p1

    move/from16 v15, p4

    invoke-direct/range {v6 .. v17}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6

    .line 344
    :cond_5
    new-instance v6, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    sget-object v8, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->BAD:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->chk_d_port_blocked:I

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Port;->getPreferred()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/HeadUnitCheck;->owner(Lcom/shilapi/xcertplay/HeadUnitCheck$Port;)Ljava/lang/Object;

    move-result-object v1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v7, v5, v4

    aput-object v1, v5, v3

    invoke-direct {v0, v2, v5}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    sget v1, Lcom/shilapi/xcertplay/host/R$string;->chk_h_port_blocked:I

    new-array v2, v4, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v10

    const/16 v16, 0x1f0

    const/16 v17, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v7, p1

    invoke-direct/range {v6 .. v17}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6
.end method

.method static synthetic portItem$default(Lcom/shilapi/xcertplay/HeadUnitCheck;ILcom/shilapi/xcertplay/HeadUnitCheck$Port;ZZILjava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Item;
    .locals 1

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    .line 335
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/HeadUnitCheck;->portItem(ILcom/shilapi/xcertplay/HeadUnitCheck$Port;ZZ)Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    move-result-object p0

    return-object p0
.end method

.method private final releaseLabel(I)Ljava/lang/String;
    .locals 2

    packed-switch p1, :pswitch_data_0

    .line 470
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "API "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 469
    :pswitch_1
    const-string p1, "14"

    return-object p1

    :pswitch_2
    const-string p1, "13"

    return-object p1

    :pswitch_3
    const-string p1, "12L"

    return-object p1

    :pswitch_4
    const-string p1, "12"

    return-object p1

    :pswitch_5
    const-string p1, "11"

    return-object p1

    :pswitch_6
    const-string p1, "10"

    return-object p1

    .line 468
    :pswitch_7
    const-string p1, "9"

    return-object p1

    :pswitch_8
    const-string p1, "8.1"

    return-object p1

    :pswitch_9
    const-string p1, "8.0"

    return-object p1

    :pswitch_a
    const-string p1, "7.1"

    return-object p1

    :pswitch_b
    const-string p1, "7.0"

    return-object p1

    :pswitch_c
    const-string p1, "6.0"

    return-object p1

    .line 467
    :pswitch_d
    const-string p1, "5.1"

    return-object p1

    :pswitch_e
    const-string p1, "5.0"

    return-object p1

    :pswitch_f
    const-string p1, "4.4"

    return-object p1

    :pswitch_10
    const-string p1, "4.3"

    return-object p1

    :pswitch_11
    const-string p1, "4.2"

    return-object p1

    :pswitch_12
    const-string p1, "4.1"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private final secure(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/16 v2, 0x20

    .line 320
    invoke-static {p1, v2, v0, v1, v0}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    const-wide v3, 0x4000cccccccccccdL    # 2.1

    cmpl-double p1, v1, v3

    if-ltz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    return v0
.end method

.method private final stepHint(ZI)I
    .locals 1

    .line 383
    sget-object v0, Lcom/shilapi/xcertplay/ConnectionSteps;->INSTANCE:Lcom/shilapi/xcertplay/ConnectionSteps;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/ConnectionSteps;->of(Z)Ljava/util/List;

    move-result-object p1

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;->getHint()I

    move-result p1

    return p1
.end method

.method private final varargs t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;
    .locals 2

    .line 141
    new-instance v0, Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/shilapi/xcertplay/HeadUnitCheck$Text;-><init>(I[Ljava/lang/Object;)V

    return-object v0
.end method

.method private static final toText$lambda$14$section(Ljava/lang/StringBuilder;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/HeadUnitCheck$Item;",
            ">;)V"
        }
    .end annotation

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "== "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0xa

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 512
    check-cast p4, Ljava/lang/Iterable;

    .line 555
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p4

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    if-gez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v1, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    .line 512
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;->getMark()Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    move-result-object v0

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;->getName()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;->getDetail()Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ". ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "] "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v2

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final verdict(Ljava/util/List;ZLcom/shilapi/xcertplay/HeadUnitCheck$Inputs;)Lcom/shilapi/xcertplay/HeadUnitCheck$Verdict;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/HeadUnitCheck$Item;",
            ">;Z",
            "Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;",
            ")",
            "Lcom/shilapi/xcertplay/HeadUnitCheck$Verdict;"
        }
    .end annotation

    .line 544
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 545
    check-cast v3, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    .line 386
    invoke-virtual {v3}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;->getMark()Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    move-result-object v3

    sget-object v4, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->BAD:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_1
    const/4 v0, 0x1

    if-ltz v2, :cond_3

    .line 388
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    .line 389
    new-instance p2, Lcom/shilapi/xcertplay/HeadUnitCheck$Verdict;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;->getHard()Z

    move-result p3

    if-eqz p3, :cond_2

    sget-object p3, Lcom/shilapi/xcertplay/HeadUnitCheck$State;->UNUSABLE:Lcom/shilapi/xcertplay/HeadUnitCheck$State;

    goto :goto_2

    :cond_2
    sget-object p3, Lcom/shilapi/xcertplay/HeadUnitCheck$State;->STUCK:Lcom/shilapi/xcertplay/HeadUnitCheck$State;

    :goto_2
    add-int/2addr v2, v0

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;->getDetail()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;->getHow()Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOfNotNull(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p2, p3, v2, v0, p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Verdict;-><init>(Lcom/shilapi/xcertplay/HeadUnitCheck$State;ILjava/util/List;Ljava/util/List;)V

    return-object p2

    .line 391
    :cond_3
    check-cast p1, Ljava/lang/Iterable;

    .line 550
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    .line 391
    invoke-virtual {v3}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;->getMark()Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    move-result-object v3

    sget-object v4, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->WARN:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    if-ne v3, v4, :cond_4

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_3
    check-cast v2, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    if-eqz v2, :cond_6

    .line 392
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;->getDetail()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_7

    :cond_6
    sget p1, Lcom/shilapi/xcertplay/host/R$string;->chk_no_advice:I

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {p0, p1, v2}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :cond_7
    if-eqz p2, :cond_b

    .line 394
    invoke-virtual {p3}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getBtStack()Lcom/shilapi/xcertplay/compat/BluetoothStack;

    move-result-object p2

    sget-object v2, Lcom/shilapi/xcertplay/compat/BluetoothStack;->ENABLED:Lcom/shilapi/xcertplay/compat/BluetoothStack;

    if-eq p2, v2, :cond_9

    invoke-virtual {p3}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getBtStack()Lcom/shilapi/xcertplay/compat/BluetoothStack;

    move-result-object p2

    sget-object v2, Lcom/shilapi/xcertplay/compat/BluetoothStack;->OFF:Lcom/shilapi/xcertplay/compat/BluetoothStack;

    if-ne p2, v2, :cond_8

    goto :goto_4

    .line 395
    :cond_8
    sget p2, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_2:I

    goto :goto_5

    :cond_9
    :goto_4
    sget p2, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_1:I

    .line 396
    :goto_5
    sget v2, Lcom/shilapi/xcertplay/host/R$string;->chk_v_route:I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {p0, p2, v3}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object p2

    invoke-virtual {p3}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getSelectedMode()Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;

    move-result-object v3

    if-nez v3, :cond_a

    invoke-virtual {p3}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getModes()Ljava/util/List;

    move-result-object p3

    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p3

    move-object v3, p3

    check-cast v3, Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;

    if-nez v3, :cond_a

    sget-object v3, Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;->WIFI_DIRECT:Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;

    :cond_a
    invoke-virtual {v3}, Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;->getLabel()I

    move-result p3

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {p0, p3, v3}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object p3

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v1

    aput-object p3, v3, v0

    invoke-direct {p0, v2, v3}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    goto :goto_7

    .line 397
    :cond_b
    invoke-virtual {p3}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getIphoneModes()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_c

    invoke-virtual {p3}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getIphoneAllowed()Z

    move-result p2

    if-eqz p2, :cond_c

    sget p2, Lcom/shilapi/xcertplay/host/R$string;->chk_v_wired_ready:I

    goto :goto_6

    :cond_c
    sget p2, Lcom/shilapi/xcertplay/host/R$string;->chk_v_wired_ok:I

    :goto_6
    new-array p3, v1, [Ljava/lang/Object;

    invoke-direct {p0, p2, p3}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 398
    :goto_7
    new-instance p3, Lcom/shilapi/xcertplay/HeadUnitCheck$Verdict;

    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCheck$State;->USABLE:Lcom/shilapi/xcertplay/HeadUnitCheck$State;

    invoke-direct {p3, v0, v1, p2, p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Verdict;-><init>(Lcom/shilapi/xcertplay/HeadUnitCheck$State;ILjava/util/List;Ljava/util/List;)V

    return-object p3
.end method

.method private final video(Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;)Lcom/shilapi/xcertplay/HeadUnitCheck$Item;
    .locals 17

    move-object/from16 v0, p0

    .line 474
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 475
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getDecoder()Lcom/shilapi/xcertplay/HeadUnitCheck$Decoder;

    move-result-object v2

    sget-object v3, Lcom/shilapi/xcertplay/HeadUnitCheck$WhenMappings;->$EnumSwitchMapping$3:[I

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/HeadUnitCheck$Decoder;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_9

    const/4 v5, 0x2

    if-eq v2, v5, :cond_1

    const/4 v5, 0x3

    if-ne v2, v5, :cond_0

    .line 478
    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    sget v5, Lcom/shilapi/xcertplay/host/R$string;->chk_d_video_hw:I

    new-array v6, v3, [Ljava/lang/Object;

    invoke-direct {v0, v5, v6}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->OK:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    goto :goto_0

    .line 475
    :cond_0
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 477
    :cond_1
    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    sget v5, Lcom/shilapi/xcertplay/host/R$string;->chk_d_video_sw:I

    new-array v6, v3, [Ljava/lang/Object;

    invoke-direct {v0, v5, v6}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->WARN:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    .line 480
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getHevcDecoder()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getHevcUnsustainable()Z

    move-result v5

    if-nez v5, :cond_2

    move-object v5, v1

    check-cast v5, Ljava/util/Collection;

    sget v6, Lcom/shilapi/xcertplay/host/R$string;->chk_d_video_hevc:I

    new-array v7, v3, [Ljava/lang/Object;

    invoke-direct {v0, v6, v7}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 481
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getLiveFps()I

    move-result v5

    if-lez v5, :cond_3

    move-object v5, v1

    check-cast v5, Ljava/util/Collection;

    sget v6, Lcom/shilapi/xcertplay/host/R$string;->chk_d_video_fps:I

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getLiveFps()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v7, v8, v3

    invoke-direct {v0, v6, v8}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 482
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getFps60Unsustainable()Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v5, v1

    check-cast v5, Ljava/util/Collection;

    sget v6, Lcom/shilapi/xcertplay/host/R$string;->chk_d_video_60_bad:I

    new-array v7, v3, [Ljava/lang/Object;

    invoke-direct {v0, v6, v7}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 483
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getHevcUnsustainable()Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v5, v1

    check-cast v5, Ljava/util/Collection;

    sget v6, Lcom/shilapi/xcertplay/host/R$string;->chk_d_video_hevc_bad:I

    new-array v7, v3, [Ljava/lang/Object;

    invoke-direct {v0, v6, v7}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 484
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getFps60Unsustainable()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getHevcUnsustainable()Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_6
    const/4 v3, 0x1

    .line 485
    :cond_7
    new-instance v4, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    sget v5, Lcom/shilapi/xcertplay/host/R$string;->chk_c_video:I

    if-eqz v3, :cond_8

    sget-object v3, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->OK:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    if-ne v2, v3, :cond_8

    sget-object v2, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->INFO:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    :cond_8
    move-object v6, v2

    move-object v7, v1

    check-cast v7, Ljava/util/List;

    const/16 v14, 0x1f8

    const/4 v15, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v4 .. v15}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4

    .line 476
    :cond_9
    new-instance v5, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    sget v6, Lcom/shilapi/xcertplay/host/R$string;->chk_c_video:I

    sget-object v7, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->BAD:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget v1, Lcom/shilapi/xcertplay/host/R$string;->chk_d_no_decoder:I

    new-array v2, v3, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    sget v1, Lcom/shilapi/xcertplay/host/R$string;->chk_h_no_decoder:I

    new-array v2, v3, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v9

    const/16 v15, 0x1d0

    const/16 v16, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v5 .. v16}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v5
.end method

.method private final waitFor(II)Lcom/shilapi/xcertplay/HeadUnitCheck$Item;
    .locals 12

    .line 327
    new-instance v0, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    sget-object v2, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->WAIT:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget v1, Lcom/shilapi/xcertplay/host/R$string;->chk_after_step:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-direct {p0, v1, v3}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/16 v10, 0xf8

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method private final wired(Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;)Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;",
            ")",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/HeadUnitCheck$Item;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 152
    sget-object v1, Lcom/shilapi/xcertplay/ConnectionSteps;->INSTANCE:Lcom/shilapi/xcertplay/ConnectionSteps;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/ConnectionSteps;->getWIRED()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 523
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 524
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 525
    check-cast v4, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    .line 152
    invoke-virtual {v4}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;->getName()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 525
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 526
    :cond_0
    check-cast v2, Ljava/util/List;

    .line 153
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getIphoneModes()Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 154
    :goto_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 156
    move-object v7, v6

    check-cast v7, Ljava/util/Collection;

    .line 157
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getUsbHost()Z

    move-result v8

    if-eqz v8, :cond_2

    new-instance v9, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v10

    sget-object v11, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->OK:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget v8, Lcom/shilapi/xcertplay/host/R$string;->step_wd_102_1_hint:I

    new-array v12, v5, [Ljava/lang/Object;

    invoke-direct {v0, v8, v12}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v8

    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    const/16 v19, 0x1f8

    const/16 v20, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v9 .. v20}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_2

    .line 158
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getUsbfs()Z

    move-result v8

    if-eqz v8, :cond_3

    new-instance v9, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v10

    sget-object v11, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->WARN:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget v8, Lcom/shilapi/xcertplay/host/R$string;->chk_d_usb_maybe:I

    new-array v12, v5, [Ljava/lang/Object;

    invoke-direct {v0, v8, v12}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v8

    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    sget v8, Lcom/shilapi/xcertplay/host/R$string;->chk_h_iphone_no:I

    new-array v13, v5, [Ljava/lang/Object;

    invoke-direct {v0, v8, v13}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v13

    const/16 v19, 0x1f0

    const/16 v20, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v9 .. v20}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_2

    .line 159
    :cond_3
    new-instance v10, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v11

    sget-object v12, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->BAD:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget v8, Lcom/shilapi/xcertplay/host/R$string;->chk_d_usb_none:I

    new-array v9, v5, [Ljava/lang/Object;

    invoke-direct {v0, v8, v9}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v8

    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    sget v8, Lcom/shilapi/xcertplay/host/R$string;->chk_h_usb_none:I

    new-array v9, v5, [Ljava/lang/Object;

    invoke-direct {v0, v8, v9}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v14

    const/16 v20, 0x1d0

    const/16 v21, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v10 .. v21}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v9, v10

    :goto_2
    invoke-interface {v7, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 162
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    invoke-direct {v0, v8}, Lcom/shilapi/xcertplay/HeadUnitCheck;->liveOnly(I)Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x2

    if-eqz v1, :cond_4

    .line 164
    new-instance v9, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v10

    sget-object v11, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->OK:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget v8, Lcom/shilapi/xcertplay/host/R$string;->chk_d_iphone_yes:I

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getIphoneModes()Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-array v13, v4, [Ljava/lang/Object;

    aput-object v12, v13, v5

    invoke-direct {v0, v8, v13}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v8

    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    const/16 v19, 0x1f8

    const/16 v20, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v9 .. v20}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_3

    .line 165
    :cond_4
    new-instance v10, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v11

    sget-object v12, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->WARN:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget v8, Lcom/shilapi/xcertplay/host/R$string;->chk_d_iphone_no:I

    new-array v9, v5, [Ljava/lang/Object;

    invoke-direct {v0, v8, v9}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v8

    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    sget v8, Lcom/shilapi/xcertplay/host/R$string;->chk_h_iphone_no:I

    new-array v9, v5, [Ljava/lang/Object;

    invoke-direct {v0, v8, v9}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v14

    const/16 v20, 0x1f0

    const/16 v21, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v10 .. v21}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v9, v10

    .line 164
    :goto_3
    invoke-interface {v7, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x3

    if-nez v1, :cond_5

    .line 168
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    invoke-direct {v0, v9, v8}, Lcom/shilapi/xcertplay/HeadUnitCheck;->waitFor(II)Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    move-result-object v9

    goto :goto_4

    .line 169
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getIphoneAllowed()Z

    move-result v9

    if-eqz v9, :cond_6

    new-instance v10, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v11

    sget-object v12, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->OK:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget v9, Lcom/shilapi/xcertplay/host/R$string;->chk_d_allowed:I

    new-array v13, v5, [Ljava/lang/Object;

    invoke-direct {v0, v9, v13}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v9

    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    const/16 v20, 0x1f8

    const/16 v21, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v10 .. v21}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v9, v10

    goto :goto_4

    .line 170
    :cond_6
    new-instance v11, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v12

    sget-object v13, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->INFO:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget v9, Lcom/shilapi/xcertplay/host/R$string;->chk_d_usb_perm_no:I

    new-array v10, v5, [Ljava/lang/Object;

    invoke-direct {v0, v9, v10}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v9

    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/16 v21, 0x1f8

    const/16 v22, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v11 .. v22}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v9, v11

    :goto_4
    invoke-interface {v7, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x4

    if-nez v1, :cond_7

    .line 172
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    invoke-direct {v0, v10, v8}, Lcom/shilapi/xcertplay/HeadUnitCheck;->waitFor(II)Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    move-result-object v10

    goto :goto_5

    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getIphoneAllowed()Z

    move-result v10

    if-eqz v10, :cond_8

    new-instance v11, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v12

    sget-object v13, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->OK:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget v10, Lcom/shilapi/xcertplay/host/R$string;->chk_d_allowed:I

    new-array v14, v5, [Ljava/lang/Object;

    invoke-direct {v0, v10, v14}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v10

    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/16 v21, 0x1f8

    const/16 v22, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v11 .. v22}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v10, v11

    goto :goto_5

    :cond_8
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    invoke-direct {v0, v10}, Lcom/shilapi/xcertplay/HeadUnitCheck;->liveOnly(I)Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    move-result-object v10

    :goto_5
    invoke-interface {v7, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x5

    if-nez v1, :cond_9

    .line 173
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    invoke-direct {v0, v9, v8}, Lcom/shilapi/xcertplay/HeadUnitCheck;->waitFor(II)Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    move-result-object v9

    goto :goto_6

    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getIphoneAllowed()Z

    move-result v11

    if-eqz v11, :cond_a

    new-instance v12, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v13

    sget-object v14, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->OK:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget v9, Lcom/shilapi/xcertplay/host/R$string;->chk_d_allowed:I

    new-array v10, v5, [Ljava/lang/Object;

    invoke-direct {v0, v9, v10}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v9

    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    const/16 v22, 0x1f8

    const/16 v23, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v12 .. v23}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v9, v12

    goto :goto_6

    :cond_a
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    invoke-direct {v0, v10, v9}, Lcom/shilapi/xcertplay/HeadUnitCheck;->waitFor(II)Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    move-result-object v9

    :goto_6
    invoke-interface {v7, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x6

    if-nez v1, :cond_b

    .line 176
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    invoke-direct {v0, v9, v8}, Lcom/shilapi/xcertplay/HeadUnitCheck;->waitFor(II)Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    move-result-object v9

    goto :goto_7

    .line 177
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getIphoneCarPlayMode()Z

    move-result v10

    if-eqz v10, :cond_c

    new-instance v11, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v12

    sget-object v13, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->OK:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget v9, Lcom/shilapi/xcertplay/host/R$string;->chk_d_cp_mode_yes:I

    new-array v10, v5, [Ljava/lang/Object;

    invoke-direct {v0, v9, v10}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v9

    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/16 v21, 0x1f8

    const/16 v22, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v11 .. v22}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v9, v11

    goto :goto_7

    .line 178
    :cond_c
    new-instance v12, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v13

    sget-object v14, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->INFO:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget v9, Lcom/shilapi/xcertplay/host/R$string;->chk_d_cp_mode_later:I

    new-array v10, v5, [Ljava/lang/Object;

    invoke-direct {v0, v9, v10}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v9

    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    const/16 v22, 0xf8

    const/16 v23, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    invoke-direct/range {v12 .. v23}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v9, v12

    :goto_7
    invoke-interface {v7, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_d

    .line 180
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getIphoneCarPlayMode()Z

    move-result v9

    if-eqz v9, :cond_d

    const/4 v9, 0x1

    goto :goto_8

    :cond_d
    const/4 v9, 0x0

    :goto_8
    const/4 v10, 0x7

    const/4 v11, 0x7

    :goto_9
    if-ge v11, v3, :cond_f

    .line 181
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    if-eqz v9, :cond_e

    invoke-direct {v0, v12}, Lcom/shilapi/xcertplay/HeadUnitCheck;->liveOnly(I)Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    move-result-object v12

    goto :goto_a

    :cond_e
    invoke-direct {v0, v12, v10}, Lcom/shilapi/xcertplay/HeadUnitCheck;->waitFor(II)Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    move-result-object v12

    :goto_a
    invoke-interface {v7, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    :cond_f
    :goto_b
    const/16 v11, 0x13

    if-ge v3, v11, :cond_11

    .line 183
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    if-eqz v9, :cond_10

    invoke-direct {v0, v11}, Lcom/shilapi/xcertplay/HeadUnitCheck;->liveOnly(I)Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    move-result-object v11

    goto :goto_c

    :cond_10
    invoke-direct {v0, v11, v10}, Lcom/shilapi/xcertplay/HeadUnitCheck;->waitFor(II)Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    move-result-object v11

    :goto_c
    invoke-interface {v7, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 187
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getVpnConsent()Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static {v3, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 188
    new-instance v12, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v13

    sget-object v14, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->WARN:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget v3, Lcom/shilapi/xcertplay/host/R$string;->chk_d_vpn_no:I

    new-array v4, v5, [Ljava/lang/Object;

    invoke-direct {v0, v3, v4}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    sget v3, Lcom/shilapi/xcertplay/host/R$string;->chk_h_vpn:I

    new-array v4, v5, [Ljava/lang/Object;

    invoke-direct {v0, v3, v4}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getVpnFix()Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;

    move-result-object v17

    const/16 v22, 0x1e0

    const/16 v23, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v12 .. v23}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_e

    :cond_12
    if-nez v9, :cond_15

    .line 190
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getVpnConsent()Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    new-instance v12, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v13

    sget-object v14, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->INFO:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget v3, Lcom/shilapi/xcertplay/host/R$string;->chk_d_vpn_yes:I

    new-array v4, v5, [Ljava/lang/Object;

    invoke-direct {v0, v3, v4}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    const/16 v22, 0xf8

    const/16 v23, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    invoke-direct/range {v12 .. v23}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_e

    .line 191
    :cond_13
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-eqz v1, :cond_14

    const/4 v4, 0x7

    goto :goto_d

    :cond_14
    const/4 v4, 0x3

    :goto_d
    invoke-direct {v0, v3, v4}, Lcom/shilapi/xcertplay/HeadUnitCheck;->waitFor(II)Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    move-result-object v12

    goto :goto_e

    .line 192
    :cond_15
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-direct {v0, v3}, Lcom/shilapi/xcertplay/HeadUnitCheck;->liveOnly(I)Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    move-result-object v12

    :goto_e
    invoke-interface {v7, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/16 v3, 0x14

    if-nez v9, :cond_17

    .line 195
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-eqz v1, :cond_16

    const/4 v8, 0x7

    :cond_16
    invoke-direct {v0, v3, v8}, Lcom/shilapi/xcertplay/HeadUnitCheck;->waitFor(II)Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    move-result-object v1

    goto :goto_f

    .line 196
    :cond_17
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getVpnConsent()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-direct {v0, v1, v3}, Lcom/shilapi/xcertplay/HeadUnitCheck;->waitFor(II)Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    move-result-object v1

    goto :goto_f

    .line 197
    :cond_18
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/HeadUnitCheck;->liveOnly(I)Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    move-result-object v1

    :goto_f
    invoke-interface {v7, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x15

    :goto_10
    const/16 v3, 0x18

    if-ge v1, v3, :cond_19

    .line 200
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-direct {v0, v3}, Lcom/shilapi/xcertplay/HeadUnitCheck;->liveOnly(I)Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 202
    :cond_19
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/HeadUnitCheck;->firstFrame(ILcom/shilapi/xcertplay/HeadUnitCheck$Inputs;)Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 203
    check-cast v6, Ljava/util/List;

    return-object v6
.end method

.method private final wireless(Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;)Ljava/util/List;
    .locals 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;",
            ")",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/HeadUnitCheck$Item;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 208
    sget-object v1, Lcom/shilapi/xcertplay/ConnectionSteps;->INSTANCE:Lcom/shilapi/xcertplay/ConnectionSteps;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/ConnectionSteps;->getWIRELESS()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 527
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 528
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 529
    check-cast v4, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    .line 208
    invoke-virtual {v4}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;->getName()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 529
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 530
    :cond_0
    move-object v7, v2

    check-cast v7, Ljava/util/List;

    .line 209
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getBtStack()Lcom/shilapi/xcertplay/compat/BluetoothStack;

    move-result-object v1

    sget-object v2, Lcom/shilapi/xcertplay/compat/BluetoothStack;->ENABLED:Lcom/shilapi/xcertplay/compat/BluetoothStack;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v1, v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getBtStack()Lcom/shilapi/xcertplay/compat/BluetoothStack;

    move-result-object v1

    sget-object v2, Lcom/shilapi/xcertplay/compat/BluetoothStack;->OFF:Lcom/shilapi/xcertplay/compat/BluetoothStack;

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    .line 210
    :goto_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 212
    move-object v9, v8

    check-cast v9, Ljava/util/Collection;

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getBtStack()Lcom/shilapi/xcertplay/compat/BluetoothStack;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, -0x1

    goto :goto_3

    :cond_3
    sget-object v6, Lcom/shilapi/xcertplay/HeadUnitCheck$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/compat/BluetoothStack;->ordinal()I

    move-result v2

    aget v2, v6, v2

    :goto_3
    const/4 v6, 0x2

    if-eq v2, v4, :cond_5

    if-eq v2, v6, :cond_4

    .line 215
    new-instance v10, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v11

    sget-object v12, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->INFO:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->chk_d_bt_vendor:I

    new-array v13, v5, [Ljava/lang/Object;

    invoke-direct {v0, v2, v13}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    const/16 v20, 0x1f8

    const/16 v21, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v10 .. v21}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_4

    .line 214
    :cond_4
    new-instance v11, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v12

    sget-object v13, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->WARN:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->chk_d_bt_off:I

    new-array v10, v5, [Ljava/lang/Object;

    invoke-direct {v0, v2, v10}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->chk_h_bt_off:I

    new-array v10, v5, [Ljava/lang/Object;

    invoke-direct {v0, v2, v10}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getBtFix()Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;

    move-result-object v16

    const/16 v21, 0x1e0

    const/16 v22, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v11 .. v22}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v10, v11

    goto :goto_4

    .line 213
    :cond_5
    new-instance v12, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v13

    sget-object v14, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->OK:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->chk_d_bt_native:I

    new-array v10, v5, [Ljava/lang/Object;

    invoke-direct {v0, v2, v10}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    const/16 v22, 0x1f8

    const/16 v23, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v12 .. v23}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v10, v12

    .line 212
    :goto_4
    invoke-interface {v9, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_6

    .line 219
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getBtStack()Lcom/shilapi/xcertplay/compat/BluetoothStack;

    move-result-object v2

    sget-object v10, Lcom/shilapi/xcertplay/compat/BluetoothStack;->ENABLED:Lcom/shilapi/xcertplay/compat/BluetoothStack;

    if-ne v2, v10, :cond_6

    .line 220
    new-instance v11, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v12

    sget-object v13, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->OK:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->chk_d_dongle_unneeded:I

    new-array v10, v5, [Ljava/lang/Object;

    invoke-direct {v0, v2, v10}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/16 v21, 0x1f8

    const/16 v22, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v11 .. v22}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_5

    :cond_6
    if-eqz v1, :cond_7

    .line 221
    new-instance v12, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v13

    sget-object v14, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->WAIT:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->steps_bt_switched_usb:I

    new-array v10, v5, [Ljava/lang/Object;

    invoke-direct {v0, v2, v10}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    const/16 v22, 0xf8

    const/16 v23, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    invoke-direct/range {v12 .. v23}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v11, v12

    goto :goto_5

    .line 222
    :cond_7
    new-instance v13, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v14

    sget-object v15, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->OK:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->steps_bt_switched_usb:I

    new-array v10, v5, [Ljava/lang/Object;

    invoke-direct {v0, v2, v10}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    const/16 v23, 0x1f8

    const/16 v24, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v13 .. v24}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v11, v13

    :goto_5
    invoke-interface {v9, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x8

    const/4 v10, 0x4

    if-eqz v1, :cond_8

    .line 225
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getBtStack()Lcom/shilapi/xcertplay/compat/BluetoothStack;

    move-result-object v11

    sget-object v12, Lcom/shilapi/xcertplay/compat/BluetoothStack;->ENABLED:Lcom/shilapi/xcertplay/compat/BluetoothStack;

    if-ne v11, v12, :cond_8

    const/4 v11, 0x2

    :goto_6
    if-ge v11, v2, :cond_16

    .line 226
    new-instance v12, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v13

    sget-object v14, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->OK:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget v15, Lcom/shilapi/xcertplay/host/R$string;->chk_d_dongle_unneeded:I

    new-array v3, v5, [Ljava/lang/Object;

    invoke-direct {v0, v15, v3}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    const/16 v22, 0x1f8

    const/16 v23, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v12 .. v23}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v9, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    const/16 v3, 0xa

    goto :goto_6

    .line 229
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getUsbHost()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getUsbfs()Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_7

    .line 230
    :cond_9
    new-instance v11, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v12

    sget-object v13, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->BAD:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget v3, Lcom/shilapi/xcertplay/host/R$string;->chk_d_usb_none:I

    new-array v14, v5, [Ljava/lang/Object;

    invoke-direct {v0, v3, v14}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    sget v3, Lcom/shilapi/xcertplay/host/R$string;->chk_h_usb_none:I

    new-array v15, v5, [Ljava/lang/Object;

    invoke-direct {v0, v3, v15}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v15

    const/16 v21, 0x1d0

    const/16 v22, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v11 .. v22}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_8

    .line 229
    :cond_a
    :goto_7
    new-instance v12, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v13

    sget-object v14, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->OK:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget v3, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_3_hint:I

    new-array v11, v5, [Ljava/lang/Object;

    invoke-direct {v0, v3, v11}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    const/16 v22, 0x1f8

    const/16 v23, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v12 .. v23}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v11, v12

    .line 230
    :goto_8
    invoke-interface {v9, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 233
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getDongle()Lcom/shilapi/xcertplay/HeadUnitCheck$Dongle;

    move-result-object v3

    sget-object v11, Lcom/shilapi/xcertplay/HeadUnitCheck$Dongle;->NONE:Lcom/shilapi/xcertplay/HeadUnitCheck$Dongle;

    const/4 v12, 0x3

    if-ne v3, v11, :cond_b

    new-instance v25, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v26

    sget-object v27, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->BAD:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget v3, Lcom/shilapi/xcertplay/host/R$string;->chk_d_dongle_none:I

    new-array v11, v5, [Ljava/lang/Object;

    invoke-direct {v0, v3, v11}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v28

    sget v3, Lcom/shilapi/xcertplay/host/R$string;->chk_h_dongle_none:I

    new-array v11, v5, [Ljava/lang/Object;

    invoke-direct {v0, v3, v11}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v29

    const/16 v35, 0x1f0

    const/16 v36, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-direct/range {v25 .. v36}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_9
    move-object/from16 v11, v25

    goto/16 :goto_a

    .line 234
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getDongle()Lcom/shilapi/xcertplay/HeadUnitCheck$Dongle;

    move-result-object v3

    sget-object v11, Lcom/shilapi/xcertplay/HeadUnitCheck$Dongle;->NOT_ALLOWED:Lcom/shilapi/xcertplay/HeadUnitCheck$Dongle;

    if-ne v3, v11, :cond_c

    new-instance v25, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v26

    sget-object v27, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->WARN:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget v3, Lcom/shilapi/xcertplay/host/R$string;->chk_d_dongle_not_allowed:I

    new-array v11, v5, [Ljava/lang/Object;

    invoke-direct {v0, v3, v11}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v28

    sget v3, Lcom/shilapi/xcertplay/host/R$string;->chk_h_dongle_not_allowed:I

    new-array v11, v5, [Ljava/lang/Object;

    invoke-direct {v0, v3, v11}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v29

    const/16 v35, 0x1f0

    const/16 v36, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-direct/range {v25 .. v36}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_9

    .line 235
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getDongleName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    new-instance v25, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v26

    sget-object v27, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->OK:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget v3, Lcom/shilapi/xcertplay/host/R$string;->chk_d_dongle_named:I

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getDongleName()Ljava/lang/String;

    move-result-object v11

    new-array v12, v4, [Ljava/lang/Object;

    aput-object v11, v12, v5

    invoke-direct {v0, v3, v12}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v28

    const/16 v35, 0x1f8

    const/16 v36, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-direct/range {v25 .. v36}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_9

    .line 236
    :cond_d
    new-instance v11, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v12

    sget-object v13, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->OK:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget v3, Lcom/shilapi/xcertplay/host/R$string;->chk_d_allowed:I

    new-array v14, v5, [Ljava/lang/Object;

    invoke-direct {v0, v3, v14}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/16 v21, 0x1f8

    const/16 v22, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v11 .. v22}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 232
    :goto_a
    invoke-interface {v9, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 239
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getDongle()Lcom/shilapi/xcertplay/HeadUnitCheck$Dongle;

    move-result-object v3

    sget-object v11, Lcom/shilapi/xcertplay/HeadUnitCheck$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/HeadUnitCheck$Dongle;->ordinal()I

    move-result v3

    aget v3, v11, v3

    if-eq v3, v4, :cond_f

    if-eq v3, v6, :cond_e

    .line 242
    new-instance v11, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v12

    sget-object v13, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->OK:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget v3, Lcom/shilapi/xcertplay/host/R$string;->chk_d_allowed:I

    new-array v14, v5, [Ljava/lang/Object;

    invoke-direct {v0, v3, v14}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/16 v21, 0x1f8

    const/16 v22, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v11 .. v22}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_b

    .line 241
    :cond_e
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-direct {v0, v3, v10}, Lcom/shilapi/xcertplay/HeadUnitCheck;->waitFor(II)Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    move-result-object v11

    goto :goto_b

    .line 240
    :cond_f
    new-instance v12, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v13

    sget-object v14, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->WARN:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget v3, Lcom/shilapi/xcertplay/host/R$string;->chk_d_dongle_not_allowed:I

    new-array v11, v5, [Ljava/lang/Object;

    invoke-direct {v0, v3, v11}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    sget v3, Lcom/shilapi/xcertplay/host/R$string;->chk_h_dongle_not_allowed:I

    new-array v11, v5, [Ljava/lang/Object;

    invoke-direct {v0, v3, v11}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v16

    const/16 v22, 0x1f0

    const/16 v23, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v12 .. v23}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v11, v12

    .line 239
    :goto_b
    invoke-interface {v9, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 244
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getDongle()Lcom/shilapi/xcertplay/HeadUnitCheck$Dongle;

    move-result-object v3

    sget-object v11, Lcom/shilapi/xcertplay/HeadUnitCheck$Dongle;->NONE:Lcom/shilapi/xcertplay/HeadUnitCheck$Dongle;

    const/4 v12, 0x5

    if-eq v3, v11, :cond_11

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getDongle()Lcom/shilapi/xcertplay/HeadUnitCheck$Dongle;

    move-result-object v3

    sget-object v11, Lcom/shilapi/xcertplay/HeadUnitCheck$Dongle;->NOT_ALLOWED:Lcom/shilapi/xcertplay/HeadUnitCheck$Dongle;

    if-ne v3, v11, :cond_10

    goto :goto_c

    :cond_10
    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-direct {v0, v3}, Lcom/shilapi/xcertplay/HeadUnitCheck;->liveOnly(I)Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    move-result-object v3

    goto :goto_d

    :cond_11
    :goto_c
    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-direct {v0, v3, v10}, Lcom/shilapi/xcertplay/HeadUnitCheck;->waitFor(II)Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    move-result-object v3

    :goto_d
    invoke-interface {v9, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getDongle()Lcom/shilapi/xcertplay/HeadUnitCheck$Dongle;

    move-result-object v3

    sget-object v11, Lcom/shilapi/xcertplay/HeadUnitCheck$Dongle;->NONE:Lcom/shilapi/xcertplay/HeadUnitCheck$Dongle;

    const/4 v12, 0x6

    if-eq v3, v11, :cond_12

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getDongle()Lcom/shilapi/xcertplay/HeadUnitCheck$Dongle;

    move-result-object v3

    sget-object v11, Lcom/shilapi/xcertplay/HeadUnitCheck$Dongle;->NOT_ALLOWED:Lcom/shilapi/xcertplay/HeadUnitCheck$Dongle;

    if-eq v3, v11, :cond_12

    new-instance v25, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v26

    sget-object v27, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->OK:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget v3, Lcom/shilapi/xcertplay/host/R$string;->chk_d_allowed:I

    new-array v11, v5, [Ljava/lang/Object;

    invoke-direct {v0, v3, v11}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v28

    const/16 v35, 0x1f8

    const/16 v36, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-direct/range {v25 .. v36}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_e

    :cond_12
    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-direct {v0, v3, v10}, Lcom/shilapi/xcertplay/HeadUnitCheck;->waitFor(II)Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    move-result-object v25

    :goto_e
    move-object/from16 v3, v25

    invoke-interface {v9, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 248
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getDongle()Lcom/shilapi/xcertplay/HeadUnitCheck$Dongle;

    move-result-object v3

    sget-object v11, Lcom/shilapi/xcertplay/HeadUnitCheck$Dongle;->NONE:Lcom/shilapi/xcertplay/HeadUnitCheck$Dongle;

    const/4 v12, 0x7

    if-ne v3, v11, :cond_13

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-direct {v0, v3, v10}, Lcom/shilapi/xcertplay/HeadUnitCheck;->waitFor(II)Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    move-result-object v3

    goto/16 :goto_f

    .line 249
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getDongleVersion()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_15

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getDongleVersion()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/shilapi/xcertplay/HeadUnitCheck;->secure(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 250
    new-instance v25, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v26

    sget-object v27, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->OK:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget v3, Lcom/shilapi/xcertplay/host/R$string;->chk_d_bt_version:I

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getDongleVersion()Ljava/lang/String;

    move-result-object v11

    new-array v12, v4, [Ljava/lang/Object;

    aput-object v11, v12, v5

    invoke-direct {v0, v3, v12}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v28

    const/16 v35, 0x1f8

    const/16 v36, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-direct/range {v25 .. v36}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v3, v25

    goto :goto_f

    .line 251
    :cond_14
    new-instance v11, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v12

    sget-object v13, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->BAD:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget v3, Lcom/shilapi/xcertplay/host/R$string;->chk_d_bt_version_old:I

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getDongleVersion()Ljava/lang/String;

    move-result-object v14

    new-array v15, v4, [Ljava/lang/Object;

    aput-object v14, v15, v5

    invoke-direct {v0, v3, v15}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    sget v3, Lcom/shilapi/xcertplay/host/R$string;->chk_h_dongle_none:I

    new-array v15, v5, [Ljava/lang/Object;

    invoke-direct {v0, v3, v15}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v15

    const/16 v21, 0x1d0

    const/16 v22, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v11 .. v22}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v3, v11

    goto :goto_f

    .line 252
    :cond_15
    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-direct {v0, v3}, Lcom/shilapi/xcertplay/HeadUnitCheck;->liveOnly(I)Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    move-result-object v3

    .line 247
    :goto_f
    invoke-interface {v9, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_16
    if-eqz v1, :cond_17

    .line 255
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getBtStack()Lcom/shilapi/xcertplay/compat/BluetoothStack;

    move-result-object v3

    sget-object v11, Lcom/shilapi/xcertplay/compat/BluetoothStack;->ENABLED:Lcom/shilapi/xcertplay/compat/BluetoothStack;

    if-ne v3, v11, :cond_18

    goto :goto_10

    :cond_17
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getDongle()Lcom/shilapi/xcertplay/HeadUnitCheck$Dongle;

    move-result-object v3

    sget-object v11, Lcom/shilapi/xcertplay/HeadUnitCheck$Dongle;->NONE:Lcom/shilapi/xcertplay/HeadUnitCheck$Dongle;

    if-eq v3, v11, :cond_18

    :goto_10
    const/4 v3, 0x1

    goto :goto_11

    :cond_18
    const/4 v3, 0x0

    .line 256
    :goto_11
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getPairedIphones()Ljava/lang/Integer;

    move-result-object v11

    if-eqz v11, :cond_19

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    goto :goto_12

    :cond_19
    const/4 v11, 0x0

    :goto_12
    if-lez v11, :cond_1a

    const/4 v11, 0x1

    goto :goto_13

    :cond_1a
    const/4 v11, 0x0

    .line 258
    :goto_13
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getModes()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1b

    new-instance v25, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v26

    sget-object v27, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->BAD:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->chk_d_modes_none:I

    new-array v6, v5, [Ljava/lang/Object;

    invoke-direct {v0, v2, v6}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v28

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->chk_h_modes_none:I

    new-array v6, v5, [Ljava/lang/Object;

    invoke-direct {v0, v2, v6}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v29

    const/16 v35, 0x1d0

    const/16 v36, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x1

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-direct/range {v25 .. v36}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v12, v25

    const/16 v26, 0x1

    goto :goto_14

    .line 259
    :cond_1b
    new-instance v12, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v13

    sget-object v14, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->OK:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->chk_d_modes:I

    new-instance v15, Lcom/shilapi/xcertplay/HeadUnitCheck$ModeList;

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getModes()Ljava/util/List;

    move-result-object v10

    invoke-direct {v15, v10}, Lcom/shilapi/xcertplay/HeadUnitCheck$ModeList;-><init>(Ljava/util/List;)V

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getSelectedMode()Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;

    move-result-object v10

    if-nez v10, :cond_1c

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getModes()Ljava/util/List;

    move-result-object v10

    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;

    :cond_1c
    invoke-virtual {v10}, Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;->getLabel()I

    move-result v10

    const/16 v26, 0x1

    new-array v4, v5, [Ljava/lang/Object;

    invoke-direct {v0, v10, v4}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v4

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v15, v6, v5

    aput-object v4, v6, v26

    invoke-direct {v0, v2, v6}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    const/16 v22, 0x1f8

    const/16 v23, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v12 .. v23}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 258
    :goto_14
    invoke-interface {v9, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x9

    .line 261
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-direct {v0, v2}, Lcom/shilapi/xcertplay/HeadUnitCheck;->liveOnly(I)Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/16 v2, 0xa

    :goto_15
    const/16 v4, 0xd

    if-ge v2, v4, :cond_1f

    .line 263
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-eqz v3, :cond_1d

    invoke-direct {v0, v4}, Lcom/shilapi/xcertplay/HeadUnitCheck;->liveOnly(I)Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    move-result-object v4

    goto :goto_17

    :cond_1d
    if-eqz v1, :cond_1e

    const/4 v6, 0x1

    goto :goto_16

    :cond_1e
    const/4 v6, 0x4

    :goto_16
    invoke-direct {v0, v4, v6}, Lcom/shilapi/xcertplay/HeadUnitCheck;->waitFor(II)Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    move-result-object v4

    :goto_17
    invoke-interface {v9, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_1f
    if-nez v3, :cond_21

    .line 266
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-eqz v1, :cond_20

    const/4 v4, 0x1

    goto :goto_18

    :cond_20
    const/4 v4, 0x4

    :goto_18
    invoke-direct {v0, v2, v4}, Lcom/shilapi/xcertplay/HeadUnitCheck;->waitFor(II)Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    move-result-object v2

    goto/16 :goto_19

    .line 267
    :cond_21
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getPairedIphones()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_22

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-direct {v0, v2}, Lcom/shilapi/xcertplay/HeadUnitCheck;->liveOnly(I)Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    move-result-object v2

    goto :goto_19

    :cond_22
    if-eqz v11, :cond_23

    .line 268
    new-instance v12, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v13

    sget-object v14, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->INFO:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->chk_d_paired_known:I

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getPairedIphones()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v6, 0x1

    new-array v10, v6, [Ljava/lang/Object;

    aput-object v4, v10, v5

    invoke-direct {v0, v2, v10}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    const/16 v22, 0xf8

    const/16 v23, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    invoke-direct/range {v12 .. v23}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v2, v12

    goto :goto_19

    .line 269
    :cond_23
    new-instance v13, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v14

    sget-object v15, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->WARN:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->chk_d_paired_none:I

    new-array v4, v5, [Ljava/lang/Object;

    invoke-direct {v0, v2, v4}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->chk_h_paired_none:I

    new-array v4, v5, [Ljava/lang/Object;

    invoke-direct {v0, v2, v4}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v17

    const/16 v23, 0x1f0

    const/16 v24, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v13 .. v24}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v2, v13

    .line 265
    :goto_19
    invoke-interface {v9, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/16 v2, 0xe

    .line 271
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-eqz v3, :cond_24

    invoke-direct {v0, v4}, Lcom/shilapi/xcertplay/HeadUnitCheck;->liveOnly(I)Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    move-result-object v4

    goto :goto_1b

    :cond_24
    if-eqz v1, :cond_25

    const/4 v6, 0x1

    goto :goto_1a

    :cond_25
    const/4 v6, 0x4

    :goto_1a
    invoke-direct {v0, v4, v6}, Lcom/shilapi/xcertplay/HeadUnitCheck;->waitFor(II)Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    move-result-object v4

    :goto_1b
    invoke-interface {v9, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/16 v4, 0xf

    if-nez v3, :cond_27

    .line 273
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-eqz v1, :cond_26

    const/4 v6, 0x1

    goto :goto_1c

    :cond_26
    const/4 v6, 0x4

    :goto_1c
    invoke-direct {v0, v4, v6}, Lcom/shilapi/xcertplay/HeadUnitCheck;->waitFor(II)Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    move-result-object v4

    goto :goto_1e

    :cond_27
    if-eqz v11, :cond_29

    .line 274
    new-instance v10, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v11

    sget-object v12, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->INFO:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget v4, Lcom/shilapi/xcertplay/host/R$string;->chk_d_paired_known:I

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getPairedIphones()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_28

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_1d

    :cond_28
    const/4 v6, 0x0

    :goto_1d
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/Object;

    aput-object v6, v14, v5

    invoke-direct {v0, v4, v14}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    const/16 v20, 0xf8

    const/16 v21, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    invoke-direct/range {v10 .. v21}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v4, v10

    goto :goto_1e

    .line 275
    :cond_29
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-direct {v0, v4, v2}, Lcom/shilapi/xcertplay/HeadUnitCheck;->waitFor(II)Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    move-result-object v4

    .line 272
    :goto_1e
    invoke-interface {v9, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/16 v4, 0x10

    if-eqz v1, :cond_2a

    .line 279
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getRfcomm()Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2a

    new-instance v10, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v11

    sget-object v12, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->BAD:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget v4, Lcom/shilapi/xcertplay/host/R$string;->chk_d_rfcomm_no:I

    new-array v6, v5, [Ljava/lang/Object;

    invoke-direct {v0, v4, v6}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    sget v4, Lcom/shilapi/xcertplay/host/R$string;->chk_h_rfcomm_no:I

    new-array v6, v5, [Ljava/lang/Object;

    invoke-direct {v0, v4, v6}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v14

    const/16 v20, 0x1d0

    const/16 v21, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v10 .. v21}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_20

    :cond_2a
    if-eqz v1, :cond_2b

    .line 280
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getRfcomm()Ljava/lang/Boolean;

    move-result-object v6

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    new-instance v10, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v11

    sget-object v12, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->INFO:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget v4, Lcom/shilapi/xcertplay/host/R$string;->chk_d_rfcomm_yes:I

    new-array v6, v5, [Ljava/lang/Object;

    invoke-direct {v0, v4, v6}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    const/16 v20, 0xf8

    const/16 v21, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    invoke-direct/range {v10 .. v21}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_20

    :cond_2b
    if-eqz v3, :cond_2c

    .line 281
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-direct {v0, v4}, Lcom/shilapi/xcertplay/HeadUnitCheck;->liveOnly(I)Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    move-result-object v10

    goto :goto_20

    .line 282
    :cond_2c
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-eqz v1, :cond_2d

    const/4 v10, 0x1

    goto :goto_1f

    :cond_2d
    const/4 v10, 0x4

    :goto_1f
    invoke-direct {v0, v4, v10}, Lcom/shilapi/xcertplay/HeadUnitCheck;->waitFor(II)Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    move-result-object v10

    :goto_20
    invoke-interface {v9, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/16 v4, 0x11

    if-nez v3, :cond_2f

    if-eqz v1, :cond_2e

    .line 284
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getRfcomm()Ljava/lang/Boolean;

    move-result-object v1

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    goto :goto_21

    :cond_2e
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-direct {v0, v1, v4}, Lcom/shilapi/xcertplay/HeadUnitCheck;->waitFor(II)Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    move-result-object v1

    goto :goto_22

    :cond_2f
    :goto_21
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/HeadUnitCheck;->liveOnly(I)Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    move-result-object v1

    :goto_22
    invoke-interface {v9, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x12

    :goto_23
    const/16 v4, 0x1f

    if-ge v1, v4, :cond_32

    .line 286
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-eqz v3, :cond_30

    invoke-direct {v0, v4}, Lcom/shilapi/xcertplay/HeadUnitCheck;->liveOnly(I)Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    move-result-object v4

    goto :goto_25

    :cond_30
    move-object v6, v8

    check-cast v6, Ljava/util/List;

    invoke-direct {v0, v6}, Lcom/shilapi/xcertplay/HeadUnitCheck;->firstNotOk(Ljava/util/List;)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_31

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_24

    :cond_31
    const/16 v6, 0xe

    :goto_24
    invoke-direct {v0, v4, v6}, Lcom/shilapi/xcertplay/HeadUnitCheck;->waitFor(II)Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    move-result-object v4

    :goto_25
    invoke-interface {v9, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 288
    :cond_32
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getFiveGhz()Ljava/lang/Boolean;

    move-result-object v1

    const/16 v26, 0x1

    .line 289
    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_33

    new-instance v10, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v11

    sget-object v12, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->INFO:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget v1, Lcom/shilapi/xcertplay/host/R$string;->chk_d_band_5:I

    new-array v4, v5, [Ljava/lang/Object;

    invoke-direct {v0, v1, v4}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    const/16 v20, 0xf8

    const/16 v21, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    invoke-direct/range {v10 .. v21}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_26

    .line 291
    :cond_33
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_34

    new-instance v10, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v11

    sget-object v12, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->WARN:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget v1, Lcom/shilapi/xcertplay/host/R$string;->chk_d_band_24:I

    new-array v4, v5, [Ljava/lang/Object;

    invoke-direct {v0, v1, v4}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    sget v1, Lcom/shilapi/xcertplay/host/R$string;->chk_h_band_24:I

    new-array v4, v5, [Ljava/lang/Object;

    invoke-direct {v0, v1, v4}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v14

    const/16 v20, 0x1f0

    const/16 v21, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v10 .. v21}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_26

    :cond_34
    if-nez v1, :cond_40

    .line 292
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/HeadUnitCheck;->liveOnly(I)Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    move-result-object v10

    .line 288
    :goto_26
    invoke-interface {v9, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 295
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getSelectedMode()Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;

    move-result-object v1

    if-nez v1, :cond_35

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;

    :cond_35
    sget-object v4, Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;->WIFI_DIRECT:Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;

    if-ne v1, v4, :cond_36

    const/4 v6, 0x1

    goto :goto_27

    :cond_36
    const/4 v6, 0x0

    :goto_27
    const/16 v1, 0x20

    if-eqz v6, :cond_37

    .line 297
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getHotspotOn()Ljava/lang/Boolean;

    move-result-object v4

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 298
    new-instance v10, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v11

    sget-object v12, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->WARN:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget v1, Lcom/shilapi/xcertplay/host/R$string;->chk_d_hotspot_conflict:I

    new-array v4, v5, [Ljava/lang/Object;

    invoke-direct {v0, v1, v4}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    sget v1, Lcom/shilapi/xcertplay/host/R$string;->chk_h_hotspot_conflict:I

    new-array v4, v5, [Ljava/lang/Object;

    invoke-direct {v0, v1, v4}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v14

    const/16 v20, 0x1f0

    const/16 v21, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v10 .. v21}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_28

    :cond_37
    if-eqz v6, :cond_38

    .line 299
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getHotspotOn()Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 300
    new-instance v10, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v11

    sget-object v12, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->INFO:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget v1, Lcom/shilapi/xcertplay/host/R$string;->chk_d_hotspot_off:I

    new-array v4, v5, [Ljava/lang/Object;

    invoke-direct {v0, v1, v4}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    const/16 v20, 0xf8

    const/16 v21, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    invoke-direct/range {v10 .. v21}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_28

    :cond_38
    if-nez v6, :cond_39

    .line 302
    new-instance v11, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v12

    sget-object v13, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->INFO:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget v1, Lcom/shilapi/xcertplay/host/R$string;->chk_d_hotspot_used:I

    new-array v4, v5, [Ljava/lang/Object;

    invoke-direct {v0, v1, v4}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/16 v21, 0xf8

    const/16 v22, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-direct/range {v11 .. v22}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v10, v11

    goto :goto_28

    .line 303
    :cond_39
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/HeadUnitCheck;->liveOnly(I)Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    move-result-object v10

    :goto_28
    invoke-interface {v9, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x21

    .line 305
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-eqz v3, :cond_3a

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/HeadUnitCheck;->liveOnly(I)Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    move-result-object v1

    goto :goto_2a

    :cond_3a
    move-object v4, v8

    check-cast v4, Ljava/util/List;

    invoke-direct {v0, v4}, Lcom/shilapi/xcertplay/HeadUnitCheck;->firstNotOk(Ljava/util/List;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_3b

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_29

    :cond_3b
    const/16 v4, 0xe

    :goto_29
    invoke-direct {v0, v1, v4}, Lcom/shilapi/xcertplay/HeadUnitCheck;->waitFor(II)Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    move-result-object v1

    :goto_2a
    invoke-interface {v9, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x22

    :goto_2b
    const/16 v4, 0x24

    if-ge v1, v4, :cond_3e

    .line 307
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-eqz v3, :cond_3c

    invoke-direct {v0, v4}, Lcom/shilapi/xcertplay/HeadUnitCheck;->liveOnly(I)Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    move-result-object v4

    goto :goto_2d

    :cond_3c
    move-object v5, v8

    check-cast v5, Ljava/util/List;

    invoke-direct {v0, v5}, Lcom/shilapi/xcertplay/HeadUnitCheck;->firstNotOk(Ljava/util/List;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_3d

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_2c

    :cond_3d
    const/16 v5, 0xe

    :goto_2c
    invoke-direct {v0, v4, v5}, Lcom/shilapi/xcertplay/HeadUnitCheck;->waitFor(II)Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    move-result-object v4

    :goto_2d
    invoke-interface {v9, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 309
    :cond_3e
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getPort()Lcom/shilapi/xcertplay/HeadUnitCheck$Port;

    move-result-object v2

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static/range {v0 .. v6}, Lcom/shilapi/xcertplay/HeadUnitCheck;->portItem$default(Lcom/shilapi/xcertplay/HeadUnitCheck;ILcom/shilapi/xcertplay/HeadUnitCheck$Port;ZZILjava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x25

    :goto_2e
    const/16 v2, 0x27

    if-ge v1, v2, :cond_3f

    .line 311
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-direct {v0, v2}, Lcom/shilapi/xcertplay/HeadUnitCheck;->liveOnly(I)Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 313
    :cond_3f
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/HeadUnitCheck;->firstFrame(ILcom/shilapi/xcertplay/HeadUnitCheck$Inputs;)Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 314
    check-cast v8, Ljava/util/List;

    return-object v8

    .line 288
    :cond_40
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    goto :goto_30

    :goto_2f
    throw v1

    :goto_30
    goto :goto_2f
.end method


# virtual methods
.method public final evaluate(Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;J)Lcom/shilapi/xcertplay/HeadUnitCheck$Result;
    .locals 13

    const-string v0, "i"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    invoke-direct/range {p0 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck;->wired(Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getLive()Lcom/shilapi/xcertplay/HeadUnitCheck$Live;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Live;->getWireless()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v3}, Lcom/shilapi/xcertplay/HeadUnitCheck;->live$common_release(Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Live;Z)Ljava/util/List;

    move-result-object v7

    .line 145
    invoke-direct/range {p0 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck;->wireless(Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getLive()Lcom/shilapi/xcertplay/HeadUnitCheck$Live;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Live;->getWireless()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v2, v1

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/shilapi/xcertplay/HeadUnitCheck;->live$common_release(Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Live;Z)Ljava/util/List;

    move-result-object v8

    .line 146
    invoke-direct/range {p0 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck;->common(Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;)Ljava/util/List;

    move-result-object v9

    .line 147
    new-instance v4, Lcom/shilapi/xcertplay/HeadUnitCheck$Result;

    invoke-direct {p0, v7, v3, p1}, Lcom/shilapi/xcertplay/HeadUnitCheck;->verdict(Ljava/util/List;ZLcom/shilapi/xcertplay/HeadUnitCheck$Inputs;)Lcom/shilapi/xcertplay/HeadUnitCheck$Verdict;

    move-result-object v10

    invoke-direct {p0, v8, v1, p1}, Lcom/shilapi/xcertplay/HeadUnitCheck;->verdict(Ljava/util/List;ZLcom/shilapi/xcertplay/HeadUnitCheck$Inputs;)Lcom/shilapi/xcertplay/HeadUnitCheck$Verdict;

    move-result-object v11

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;->getPort()Lcom/shilapi/xcertplay/HeadUnitCheck$Port;

    move-result-object v12

    move-wide v5, p2

    invoke-direct/range {v4 .. v12}, Lcom/shilapi/xcertplay/HeadUnitCheck$Result;-><init>(JLjava/util/List;Ljava/util/List;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Verdict;Lcom/shilapi/xcertplay/HeadUnitCheck$Verdict;Lcom/shilapi/xcertplay/HeadUnitCheck$Port;)V

    return-object v4
.end method

.method public final getCOMMON_NAMES()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 489
    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCheck;->COMMON_NAMES:Ljava/util/List;

    return-object v0
.end method

.method public final getOTHER_CARPLAY_APPS()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 131
    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCheck;->OTHER_CARPLAY_APPS:Ljava/util/List;

    return-object v0
.end method

.method public final getSUMMARY()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 494
    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCheck;->SUMMARY:Ljava/util/List;

    return-object v0
.end method

.method public final listenerUid(Ljava/util/List;I)Ljava/lang/Integer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    const-string v0, "lines"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 499
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    const-string v1, "%04X"

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "format(...)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 500
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 501
    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    new-instance v4, Lkotlin/text/Regex;

    const-string v5, "\\s+"

    invoke-direct {v4, v5}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v1

    .line 502
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0x8

    if-lt v4, v5, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string/jumbo v5, "sl"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 503
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/16 v5, 0x3a

    const/4 v6, 0x2

    invoke-static {v4, v5, v3, v6, v3}, Lkotlin/text/StringsKt;->substringAfterLast$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "0A"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x7

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v3
.end method

.method public final live$common_release(Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Live;Z)Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/HeadUnitCheck$Item;",
            ">;",
            "Lcom/shilapi/xcertplay/HeadUnitCheck$Live;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/HeadUnitCheck$Item;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p3

    const-string v2, "items"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    goto :goto_0

    .line 362
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/shilapi/xcertplay/HeadUnitCheck$Live;->getPhase()Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    move-result-object v2

    sget-object v3, Lcom/shilapi/xcertplay/HeadUnitCheck$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/ConnectionProgress$Phase;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    .line 365
    invoke-virtual/range {p2 .. p2}, Lcom/shilapi/xcertplay/HeadUnitCheck$Live;->getStep()I

    move-result v2

    goto :goto_1

    :cond_1
    :goto_0
    return-object v0

    .line 363
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v3

    .line 367
    :goto_1
    check-cast v0, Ljava/lang/Iterable;

    .line 538
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v0, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .line 540
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v8, v6, 0x1

    if-gez v6, :cond_3

    .line 541
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_3
    check-cast v7, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    if-ge v8, v2, :cond_4

    .line 370
    invoke-virtual {v7}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;->getMark()Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    move-result-object v6

    sget-object v9, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->WAIT:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    if-eq v6, v9, :cond_5

    :cond_4
    if-ge v8, v2, :cond_6

    invoke-virtual {v7}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;->getLive()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 371
    :cond_5
    new-instance v9, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    invoke-virtual {v7}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;->getName()I

    move-result v10

    sget-object v11, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->OK:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget-object v6, Lcom/shilapi/xcertplay/HeadUnitCheck;->INSTANCE:Lcom/shilapi/xcertplay/HeadUnitCheck;

    sget v7, Lcom/shilapi/xcertplay/host/R$string;->chk_passed_live:I

    new-array v12, v5, [Ljava/lang/Object;

    invoke-direct {v6, v7, v12}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v6

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    const/16 v19, 0x1f8

    const/16 v20, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v9 .. v20}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_3
    move-object v7, v9

    goto/16 :goto_6

    :cond_6
    if-ne v8, v2, :cond_9

    .line 372
    invoke-virtual/range {p2 .. p2}, Lcom/shilapi/xcertplay/HeadUnitCheck$Live;->getPhase()Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    move-result-object v6

    sget-object v9, Lcom/shilapi/xcertplay/ConnectionProgress$Phase;->STUCK:Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    if-ne v6, v9, :cond_9

    .line 373
    new-instance v10, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    invoke-virtual {v7}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;->getName()I

    move-result v11

    sget-object v12, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->BAD:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    invoke-virtual/range {p2 .. p2}, Lcom/shilapi/xcertplay/HeadUnitCheck$Live;->getDetail()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_7

    sget-object v6, Lcom/shilapi/xcertplay/HeadUnitCheck;->INSTANCE:Lcom/shilapi/xcertplay/HeadUnitCheck;

    invoke-direct {v6, v1, v8}, Lcom/shilapi/xcertplay/HeadUnitCheck;->stepHint(ZI)I

    move-result v7

    new-array v9, v5, [Ljava/lang/Object;

    invoke-direct {v6, v7, v9}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v6

    :cond_7
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->listOfNotNull(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    .line 374
    sget-object v6, Lcom/shilapi/xcertplay/HeadUnitCheck;->INSTANCE:Lcom/shilapi/xcertplay/HeadUnitCheck;

    if-eqz v1, :cond_8

    sget v7, Lcom/shilapi/xcertplay/host/R$string;->chk_h_live_wireless:I

    goto :goto_4

    :cond_8
    sget v7, Lcom/shilapi/xcertplay/host/R$string;->chk_h_live_wired:I

    :goto_4
    new-array v9, v5, [Ljava/lang/Object;

    invoke-direct {v6, v7, v9}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v14

    const/16 v20, 0x1f0

    const/16 v21, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 373
    invoke-direct/range {v10 .. v21}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_5

    :cond_9
    if-ne v8, v2, :cond_b

    .line 375
    invoke-virtual/range {p2 .. p2}, Lcom/shilapi/xcertplay/HeadUnitCheck$Live;->getPhase()Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    move-result-object v6

    sget-object v9, Lcom/shilapi/xcertplay/ConnectionProgress$Phase;->CONNECTING:Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    if-eq v6, v9, :cond_a

    invoke-virtual/range {p2 .. p2}, Lcom/shilapi/xcertplay/HeadUnitCheck$Live;->getPhase()Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    move-result-object v6

    sget-object v9, Lcom/shilapi/xcertplay/ConnectionProgress$Phase;->RECONNECTING:Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    if-ne v6, v9, :cond_b

    .line 376
    :cond_a
    new-instance v10, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    invoke-virtual {v7}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;->getName()I

    move-result v11

    sget-object v12, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->INFO:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget-object v6, Lcom/shilapi/xcertplay/HeadUnitCheck;->INSTANCE:Lcom/shilapi/xcertplay/HeadUnitCheck;

    sget v7, Lcom/shilapi/xcertplay/host/R$string;->chk_connecting_now:I

    new-array v9, v5, [Ljava/lang/Object;

    invoke-direct {v6, v7, v9}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v6

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    const/16 v20, 0xf8

    const/16 v21, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    invoke-direct/range {v10 .. v21}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_5
    move-object v7, v10

    goto :goto_6

    :cond_b
    if-le v8, v2, :cond_c

    .line 377
    invoke-virtual {v7}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;->getLive()Z

    move-result v6

    if-eqz v6, :cond_c

    new-instance v9, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    invoke-virtual {v7}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;->getName()I

    move-result v10

    sget-object v11, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->WAIT:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget-object v6, Lcom/shilapi/xcertplay/HeadUnitCheck;->INSTANCE:Lcom/shilapi/xcertplay/HeadUnitCheck;

    sget v7, Lcom/shilapi/xcertplay/host/R$string;->chk_after_step:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    new-array v13, v3, [Ljava/lang/Object;

    aput-object v12, v13, v5

    invoke-direct {v6, v7, v13}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v6

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    const/16 v19, 0xf8

    const/16 v20, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-direct/range {v9 .. v20}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_3

    .line 541
    :cond_c
    :goto_6
    invoke-interface {v4, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v6, v8

    goto/16 :goto_2

    .line 542
    :cond_d
    check-cast v4, Ljava/util/List;

    return-object v4
.end method

.method public final owner(Lcom/shilapi/xcertplay/HeadUnitCheck$Port;)Ljava/lang/Object;
    .locals 3

    const-string v0, "port"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Port;->getOwnerName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mnld"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget p1, Lcom/shilapi/xcertplay/host/R$string;->chk_owner_gps:I

    new-array v0, v1, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object p1

    return-object p1

    .line 349
    :cond_0
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Port;->getOwnerName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Port;->getOwnerName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 350
    :cond_1
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Port;->getOwnerUid()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    sget v0, Lcom/shilapi/xcertplay/host/R$string;->chk_owner_system:I

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Port;->getOwnerUid()Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-direct {p0, v0, v2}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object p1

    return-object p1

    .line 351
    :cond_2
    sget p1, Lcom/shilapi/xcertplay/host/R$string;->chk_owner_unknown:I

    new-array v0, v1, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/shilapi/xcertplay/HeadUnitCheck;->t(I[Ljava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object p1

    return-object p1
.end method

.method public final toText(Lcom/shilapi/xcertplay/HeadUnitCheck$Result;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/HeadUnitCheck$Result;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolve"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 514
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Result;->getWiredVerdict()Lcom/shilapi/xcertplay/HeadUnitCheck$Verdict;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Verdict;->getState()Lcom/shilapi/xcertplay/HeadUnitCheck$State;

    move-result-object v1

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Result;->getWiredVerdict()Lcom/shilapi/xcertplay/HeadUnitCheck$Verdict;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/HeadUnitCheck$Verdict;->getStep()I

    move-result v2

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Result;->getWirelessVerdict()Lcom/shilapi/xcertplay/HeadUnitCheck$Verdict;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/HeadUnitCheck$Verdict;->getState()Lcom/shilapi/xcertplay/HeadUnitCheck$State;

    move-result-object v3

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Result;->getWirelessVerdict()Lcom/shilapi/xcertplay/HeadUnitCheck$Verdict;

    move-result-object v4

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/HeadUnitCheck$Verdict;->getStep()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "wired="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " wireless="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 515
    const-string/jumbo v1, "wired"

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Result;->getWired()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, p3, p2, v1, v2}, Lcom/shilapi/xcertplay/HeadUnitCheck;->toText$lambda$14$section(Ljava/lang/StringBuilder;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/util/List;)V

    .line 516
    const-string/jumbo v1, "wireless"

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Result;->getWireless()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, p3, p2, v1, v2}, Lcom/shilapi/xcertplay/HeadUnitCheck;->toText$lambda$14$section(Ljava/lang/StringBuilder;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/util/List;)V

    .line 517
    const-string/jumbo v1, "shared"

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Result;->getCommon()Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p3, p2, v1, p1}, Lcom/shilapi/xcertplay/HeadUnitCheck;->toText$lambda$14$section(Ljava/lang/StringBuilder;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/util/List;)V

    .line 509
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
