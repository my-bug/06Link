.class public final Lcom/shilapi/xcertplay/HeadUnitCheckActivity;
.super Landroid/app/Activity;
.source "HeadUnitCheckActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Companion;,
        Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;,
        Lcom/shilapi/xcertplay/HeadUnitCheckActivity$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHeadUnitCheckActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HeadUnitCheckActivity.kt\ncom/shilapi/xcertplay/HeadUnitCheckActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 5 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,710:1\n1#2:711\n1#2:714\n1625#3:712\n1869#3:713\n1870#3:715\n1626#3:716\n1563#3:717\n1634#3,3:718\n295#3,2:721\n1869#3,2:731\n1869#3,2:733\n1878#3,3:735\n1869#3,2:738\n1869#3,2:740\n1869#3,2:742\n1878#3,3:744\n1878#3,3:747\n1563#3:750\n1634#3,3:751\n1563#3:754\n1634#3,3:755\n1869#3,2:758\n1869#3,2:760\n1869#3,2:762\n11228#4:723\n11563#4,3:724\n37#5:727\n36#5,3:728\n*S KotlinDebug\n*F\n+ 1 HeadUnitCheckActivity.kt\ncom/shilapi/xcertplay/HeadUnitCheckActivity\n*L\n97#1:714\n97#1:712\n97#1:713\n97#1:715\n97#1:716\n106#1:717\n106#1:718,3\n266#1:721,2\n380#1:731,2\n386#1:733,2\n388#1:735,3\n394#1:738,2\n399#1:740,2\n402#1:742,2\n435#1:744,3\n439#1:747,3\n514#1:750\n514#1:751,3\n515#1:754\n515#1:755,3\n533#1:758,2\n534#1:760,2\n545#1:762,2\n275#1:723\n275#1:724,3\n275#1:727\n275#1:728,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c7\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010#\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000c*\u0001\u001e\u0018\u0000 {2\u00020\u0001:\u0002z{B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0014J\u0012\u0010$\u001a\u00020!2\u0008\u0010%\u001a\u0004\u0018\u00010&H\u0014J\u0010\u0010\'\u001a\u00020!2\u0006\u0010(\u001a\u00020&H\u0014J\u0010\u0010)\u001a\u00020!2\u0006\u0010*\u001a\u00020+H\u0016J\u0008\u0010,\u001a\u00020!H\u0014J\u0008\u0010-\u001a\u00020!H\u0014J\u0008\u0010.\u001a\u00020!H\u0014J\u0008\u0010/\u001a\u00020!H\u0017J\u0010\u00100\u001a\u00020!2\u0006\u00101\u001a\u00020\u0005H\u0002J\u0008\u00102\u001a\u00020!H\u0002J\u0010\u00103\u001a\u00020!2\u0006\u00104\u001a\u00020\u0005H\u0002J\u0008\u00105\u001a\u00020!H\u0002J\u0008\u00106\u001a\u00020!H\u0002J\u0010\u00107\u001a\u00020!2\u0006\u00108\u001a\u00020\nH\u0002J\u0008\u00109\u001a\u00020!H\u0002J\u001e\u0010:\u001a\u0008\u0012\u0004\u0012\u00020<0;2\u0006\u0010=\u001a\u00020\u00122\u0006\u00104\u001a\u00020\u0005H\u0002J\u0010\u0010>\u001a\u00020!2\u0006\u0010=\u001a\u00020\u0012H\u0002J\u0010\u0010?\u001a\u00020\u00172\u0006\u0010@\u001a\u00020AH\u0002J\u0016\u0010B\u001a\u00020\u00172\u000c\u0010C\u001a\u0008\u0012\u0004\u0012\u00020A0;H\u0002J\u0008\u0010D\u001a\u00020\nH\u0002J\u0008\u0010E\u001a\u00020!H\u0002J\u0008\u0010F\u001a\u00020GH\u0002J\u0008\u0010H\u001a\u00020\u0017H\u0002J\u0008\u0010J\u001a\u00020KH\u0002J\u001e\u0010L\u001a\u00020M2\u0006\u0010F\u001a\u00020\u00172\u000c\u0010N\u001a\u0008\u0012\u0004\u0012\u00020!0OH\u0002J\u0008\u0010P\u001a\u00020MH\u0002J\u0018\u0010Q\u001a\u00020!2\u0006\u0010R\u001a\u00020S2\u0006\u0010T\u001a\u00020\u0010H\u0002J\u001a\u0010U\u001a\u00020V2\u0008\u0010=\u001a\u0004\u0018\u00010\u00122\u0006\u0010W\u001a\u00020\nH\u0002J\u001a\u0010X\u001a\u00020V2\u0008\u0010=\u001a\u0004\u0018\u00010\u00122\u0006\u0010T\u001a\u00020\u0010H\u0002J \u0010Y\u001a\u00020!2\u0006\u0010R\u001a\u00020S2\u0006\u00104\u001a\u00020\u00052\u0006\u0010T\u001a\u00020\u0010H\u0002J\u0010\u0010Z\u001a\u00020G2\u0006\u0010[\u001a\u00020\u0010H\u0002J:\u0010\\\u001a\u00020V2\u0006\u00104\u001a\u00020\u00052\u0006\u0010]\u001a\u00020\u00102\u0006\u0010^\u001a\u00020\u00102\u0008\u0010_\u001a\u0004\u0018\u00010<2\u0006\u0010`\u001a\u00020\n2\u0006\u0010a\u001a\u00020\nH\u0002J\"\u0010b\u001a\u0004\u0018\u00010c2\u0006\u0010d\u001a\u00020\u00172\u0006\u0010_\u001a\u00020<2\u0006\u0010e\u001a\u00020\nH\u0002J\u0010\u0010f\u001a\u00020!2\u0006\u0010g\u001a\u00020hH\u0002J\u0010\u0010i\u001a\u00020!2\u0006\u0010j\u001a\u00020\u0017H\u0002J\u0008\u0010k\u001a\u00020SH\u0002J\u0018\u0010l\u001a\u00020G2\u0006\u0010@\u001a\u00020\u00172\u0006\u0010m\u001a\u00020\u0010H\u0002J\u0010\u0010n\u001a\u00020\u00172\u0006\u0010o\u001a\u00020pH\u0002J\u0010\u0010m\u001a\u00020\u00102\u0006\u0010o\u001a\u00020pH\u0002J\u0010\u0010q\u001a\u00020G2\u0006\u0010o\u001a\u00020pH\u0002J&\u0010r\u001a\u00020c2\u0006\u0010F\u001a\u00020\u00172\u0006\u0010s\u001a\u00020\n2\u000c\u0010N\u001a\u0008\u0012\u0004\u0012\u00020!0OH\u0002J\u001e\u0010t\u001a\u00020c2\u0006\u0010F\u001a\u00020\u00172\u000c\u0010N\u001a\u0008\u0012\u0004\u0012\u00020!0OH\u0002J*\u0010u\u001a\u00020G2\u0006\u0010@\u001a\u00020\u00172\u0006\u0010v\u001a\u00020\u00102\u0006\u0010m\u001a\u00020\u00102\u0008\u0008\u0002\u0010w\u001a\u00020\nH\u0002J\u000c\u0010x\u001a\u00020G*\u00020GH\u0002J\u0010\u0010y\u001a\u00020\u00102\u0006\u0010@\u001a\u00020\u0010H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0007j\u0008\u0012\u0004\u0012\u00020\u0005`\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001d\u001a\u00020\u001eX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u001fR\u000e\u0010I\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006|"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/HeadUnitCheckActivity;",
        "Landroid/app/Activity;",
        "<init>",
        "()V",
        "page",
        "Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;",
        "backStack",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "dark",
        "",
        "handler",
        "Landroid/os/Handler;",
        "destroyed",
        "running",
        "progress",
        "",
        "pending",
        "Lcom/shilapi/xcertplay/HeadUnitCheck$Result;",
        "revealPage",
        "revealThrough",
        "opened",
        "",
        "",
        "awaitingFix",
        "fixRunning",
        "builtWidthDp",
        "listScroll",
        "Landroid/widget/ScrollView;",
        "appearanceCheck",
        "com/shilapi/xcertplay/HeadUnitCheckActivity$appearanceCheck$1",
        "Lcom/shilapi/xcertplay/HeadUnitCheckActivity$appearanceCheck$1;",
        "attachBaseContext",
        "",
        "newBase",
        "Landroid/content/Context;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onSaveInstanceState",
        "outState",
        "onConfigurationChanged",
        "newConfig",
        "Landroid/content/res/Configuration;",
        "onResume",
        "onPause",
        "onDestroy",
        "onBackPressed",
        "go",
        "next",
        "goBack",
        "run",
        "kind",
        "switchBluetoothOn",
        "tick",
        "finishRun",
        "earlyStop",
        "scrollToCurrentRow",
        "items",
        "",
        "Lcom/shilapi/xcertplay/HeadUnitCheck$Item;",
        "result",
        "write",
        "resolve",
        "value",
        "",
        "join",
        "pieces",
        "portrait",
        "render",
        "title",
        "Landroid/widget/TextView;",
        "lastChecked",
        "railWidthPx",
        "rail",
        "Landroid/view/ViewGroup;",
        "railChip",
        "Lcom/shilapi/xcertplay/FitText;",
        "click",
        "Lkotlin/Function0;",
        "railBusyChip",
        "overview",
        "content",
        "Landroid/widget/LinearLayout;",
        "widthDp",
        "verdictCard",
        "Landroid/view/View;",
        "wireless",
        "summaryRow",
        "listPage",
        "groupTitle",
        "id",
        "itemRow",
        "index",
        "name",
        "item",
        "shown",
        "current",
        "itemButton",
        "Landroid/widget/Button;",
        "key",
        "open",
        "runFix",
        "fix",
        "Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;",
        "openAppInfo",
        "pkg",
        "box",
        "pill",
        "color",
        "glyph",
        "mark",
        "Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;",
        "icon",
        "actionButton",
        "primary",
        "listButton",
        "text",
        "sizeSp",
        "bold",
        "pageDirection",
        "dp",
        "Page",
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
.field public static final Companion:Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Companion;

.field public static final PORTRAIT_ACTION_DP:I = 0x60

.field public static final RAIL_GAP_DP:I = 0x10

.field public static final RAIL_MAX_DP:I = 0xb4

.field public static final RAIL_MIN_DP:I = 0x64

.field public static final REQUEST_FIX_PAGE:I = 0x1965

.field public static final TAG:Ljava/lang/String; = "DiPlayCheck"

.field public static final TAG_CURRENT_ROW:Ljava/lang/String; = "headunit-check-current-row"

.field public static final TICK_MILLIS:J = 0xb4L

.field private static volatile cached:Lcom/shilapi/xcertplay/HeadUnitCheck$Result;


# instance fields
.field private final appearanceCheck:Lcom/shilapi/xcertplay/HeadUnitCheckActivity$appearanceCheck$1;

.field private awaitingFix:Z

.field private final backStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;",
            ">;"
        }
    .end annotation
.end field

.field private builtWidthDp:I

.field private dark:Z

.field private volatile destroyed:Z

.field private fixRunning:Z

.field private final handler:Landroid/os/Handler;

.field private listScroll:Landroid/widget/ScrollView;

.field private final opened:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private page:Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;

.field private pending:Lcom/shilapi/xcertplay/HeadUnitCheck$Result;

.field private progress:I

.field private railWidthPx:I

.field private revealPage:Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;

.field private revealThrough:I

.field private running:Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;


# direct methods
.method public static synthetic $r8$lambda$8t1tkjz3o2PC1n_aMs1g-Uggb-Y(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->rail$lambda$42(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$9-ZpupP4T2_8YVLod1utL2inOV4(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;Lcom/shilapi/xcertplay/HeadUnitCheck$Result;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->run$lambda$11$lambda$10(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;Lcom/shilapi/xcertplay/HeadUnitCheck$Result;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BS8NGG-IXKpxfehnSfG6QKgxVuQ(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;Lcom/shilapi/xcertplay/HeadUnitCheck$Item;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->itemButton$lambda$104(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;Lcom/shilapi/xcertplay/HeadUnitCheck$Item;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$G2W_DWHES2qi1dliMofeA0NGxGA(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;Lcom/shilapi/xcertplay/HeadUnitCheck$Item;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->itemButton$lambda$102(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;Lcom/shilapi/xcertplay/HeadUnitCheck$Item;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$G4FjUSmaxTPlGfV9ZlGyhytZOfU(Landroid/widget/ScrollView;)V
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->scrollToCurrentRow$lambda$21(Landroid/widget/ScrollView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GXGIrhyPcblWJaK7WMy6EdxK5bM(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->listButton$lambda$118$lambda$117(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GwYQU2EuvArRazKo5GT-Hr8Q508(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->railChip$lambda$58$lambda$57(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$H0rR5XjicvRUriI7as5FLnMnTRo(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->rail$lambda$41(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$HbLs_7jgrRfuFu5K63l2w65tOVY(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;Lcom/shilapi/xcertplay/HeadUnitFixes$Result;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->runFix$lambda$108$lambda$107(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;Lcom/shilapi/xcertplay/HeadUnitFixes$Result;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IJivhruyDZo4fDdbscl1j6DhxY8(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->actionButton$lambda$116$lambda$115(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$N0zU_LWRFeAP21M0QhnqyFOejLE(Landroid/bluetooth/BluetoothAdapter;)Z
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->switchBluetoothOn$lambda$16(Landroid/bluetooth/BluetoothAdapter;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Pp7gkCYAKUo5DH9_ddNw5V5I6jw(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->tick$lambda$19(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$T0Q8EqUPlo4PHO0mO2asdTdmQpw(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->tick$lambda$20(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$T8gIVxw3eYX9OXUuLIM1OFPDVKo(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->run$lambda$11(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cfr-yAtI7l8EXwlGJH-tGc_ZDmQ(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->verdictCard$lambda$73(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$coKZU0uEBi4bc7kIc5Bew_29Xyk(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->rail$lambda$45(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$eqkaXNri0b6ux0VA5b7a3uKLIbQ(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->runFix$lambda$108(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iXXZQW5agORyhxYusWmGeS6CEJc(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->join$lambda$28(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$l410y8wuZdaT0PDUmXkj5SSF0zw(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;I)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->write$lambda$22(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rmTrBB9lLdlZWVPEdCgQhaTduYg(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->rail$lambda$44$lambda$43(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ssBKZHEBw7Ouf1EDBxWT3Qy9xHM(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->itemButton$lambda$101(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$x30YEMyBkSfUskZwIFsEGOggQlw(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->verdictCard$lambda$71(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xwRgwxfkH2T5otb4L1QbAcToa1U(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->resolve$lambda$27(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zzD7zqC9E98UwzNXf4qc_6mePzM(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->summaryRow$lambda$77(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->Companion:Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;->OVERVIEW:Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;

    iput-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->page:Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->backStack:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dark:Z

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->handler:Landroid/os/Handler;

    .line 72
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->opened:Ljava/util/Set;

    .line 78
    new-instance v0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$appearanceCheck$1;

    invoke-direct {v0, p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$appearanceCheck$1;-><init>(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;)V

    iput-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->appearanceCheck:Lcom/shilapi/xcertplay/HeadUnitCheckActivity$appearanceCheck$1;

    return-void
.end method

.method public static final synthetic access$getCached$cp()Lcom/shilapi/xcertplay/HeadUnitCheck$Result;
    .locals 1

    .line 53
    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->cached:Lcom/shilapi/xcertplay/HeadUnitCheck$Result;

    return-object v0
.end method

.method public static final synthetic access$getDark$p(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dark:Z

    return p0
.end method

.method public static final synthetic access$getHandler$p(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;)Landroid/os/Handler;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$join(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;Ljava/util/List;)Ljava/lang/String;
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->join(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$render(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->render()V

    return-void
.end method

.method public static final synthetic access$setCached$cp(Lcom/shilapi/xcertplay/HeadUnitCheck$Result;)V
    .locals 0

    .line 53
    sput-object p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->cached:Lcom/shilapi/xcertplay/HeadUnitCheck$Result;

    return-void
.end method

.method private final actionButton(Ljava/lang/String;ZLkotlin/jvm/functions/Function0;)Landroid/widget/Button;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Landroid/widget/Button;"
        }
    .end annotation

    .line 660
    new-instance v0, Landroid/widget/Button;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 661
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setAllCaps(Z)V

    const/high16 v1, 0x41880000    # 17.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setSingleLine(Z)V

    .line 662
    sget-object p1, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/Glass;->getON_PRIMARY()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/Glass;->getTEXT()I

    move-result p1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 663
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    sget-object v1, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    if-eqz p2, :cond_1

    sget-object p2, Lcom/shilapi/xcertplay/Glass$Kind;->PRIMARY:Lcom/shilapi/xcertplay/Glass$Kind;

    goto :goto_1

    :cond_1
    sget-object p2, Lcom/shilapi/xcertplay/Glass$Kind;->CONTROL:Lcom/shilapi/xcertplay/Glass$Kind;

    :goto_1
    move-object v3, p2

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lcom/shilapi/xcertplay/Glass;->panel$default(Lcom/shilapi/xcertplay/Glass;Landroid/content/Context;Lcom/shilapi/xcertplay/Glass$Kind;FLcom/shilapi/xcertplay/Glass$Palette;ILjava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/shilapi/xcertplay/LegacyViewsKt;->setBackgroundCompat(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    const/16 p2, 0x38

    .line 664
    invoke-direct {p0, p2}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    invoke-direct {p0, p2}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setMinimumHeight(I)V

    const/16 p2, 0x10

    .line 665
    invoke-direct {p0, p2}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result v1

    const/4 v2, 0x6

    invoke-direct {p0, v2}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result v3

    invoke-direct {p0, p2}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result p2

    invoke-direct {p0, v2}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result v2

    invoke-virtual {v0, v1, v3, p2, v2}, Landroid/widget/Button;->setPadding(IIII)V

    invoke-static {p1}, Lcom/shilapi/xcertplay/LegacyViewsKt;->clearStateListAnimatorCompat(Landroid/view/View;)V

    .line 666
    new-instance p1, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$$ExternalSyntheticLambda1;

    invoke-direct {p1, p3}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private static final actionButton$lambda$116$lambda$115(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    .line 666
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private final box()Landroid/widget/LinearLayout;
    .locals 9

    .line 629
    new-instance v0, Landroid/widget/LinearLayout;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 630
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x12

    .line 631
    invoke-direct {p0, v1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result v3

    const/16 v4, 0xe

    invoke-direct {p0, v4}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result v4

    invoke-direct {p0, v1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result v1

    const/16 v5, 0x10

    invoke-direct {p0, v5}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result v5

    invoke-virtual {v0, v3, v4, v1, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 632
    move-object v8, v0

    check-cast v8, Landroid/view/View;

    sget-object v1, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    sget-object v3, Lcom/shilapi/xcertplay/Glass$Kind;->CARD:Lcom/shilapi/xcertplay/Glass$Kind;

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/high16 v4, 0x41b00000    # 22.0f

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lcom/shilapi/xcertplay/Glass;->panel$default(Lcom/shilapi/xcertplay/Glass;Landroid/content/Context;Lcom/shilapi/xcertplay/Glass$Kind;FLcom/shilapi/xcertplay/Glass$Palette;ILjava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/shilapi/xcertplay/LegacyViewsKt;->setBackgroundCompat(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private final color(Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;)I
    .locals 1

    .line 644
    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 645
    sget-object p1, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/Glass;->getMUTED()I

    move-result p1

    return p1

    .line 644
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 645
    :cond_1
    sget-object p1, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/Glass;->getACCENT()I

    move-result p1

    return p1

    :cond_2
    sget-object p1, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/Glass;->getBAD()I

    move-result p1

    return p1

    :cond_3
    sget-object p1, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/Glass;->getWARNING()I

    move-result p1

    return p1

    :cond_4
    sget-object p1, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/Glass;->getGOOD()I

    move-result p1

    return p1
.end method

.method private final dp(I)I
    .locals 1

    int-to-float p1, p1

    .line 694
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private final finishRun(Z)V
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->pending:Lcom/shilapi/xcertplay/HeadUnitCheck$Result;

    sput-object v0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->cached:Lcom/shilapi/xcertplay/HeadUnitCheck$Result;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 228
    iget-object p1, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->running:Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;

    if-eqz p1, :cond_0

    sget-object v1, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;->OVERVIEW:Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;

    if-eq p1, v1, :cond_0

    .line 229
    iget-object p1, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->running:Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;

    iput-object p1, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->revealPage:Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;

    .line 230
    iget p1, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->progress:I

    iput p1, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->revealThrough:I

    goto :goto_0

    .line 232
    :cond_0
    iput-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->revealPage:Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;

    const/4 p1, 0x0

    .line 233
    iput p1, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->revealThrough:I

    .line 235
    :goto_0
    iput-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->running:Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;

    .line 236
    iput-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->pending:Lcom/shilapi/xcertplay/HeadUnitCheck$Result;

    .line 237
    invoke-direct {p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->render()V

    return-void
.end method

.method private final glyph(Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;)Ljava/lang/String;
    .locals 1

    .line 640
    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 641
    const-string/jumbo p1, "\u2026"

    return-object p1

    .line 640
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 641
    :cond_1
    const-string p1, "i"

    return-object p1

    :cond_2
    const-string/jumbo p1, "\u2715"

    return-object p1

    :cond_3
    const-string p1, "!"

    return-object p1

    :cond_4
    const-string/jumbo p1, "\u2713"

    return-object p1
.end method

.method private final go(Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;)V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->page:Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;

    if-ne p1, v0, :cond_0

    return-void

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->backStack:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 141
    iput-object p1, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->page:Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;

    .line 142
    invoke-direct {p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->render()V

    return-void
.end method

.method private final goBack()V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->backStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->finish()V

    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->backStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "removeAt(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;

    iput-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->page:Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;

    .line 149
    invoke-direct {p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->render()V

    return-void
.end method

.method private final groupTitle(I)Landroid/widget/TextView;
    .locals 3

    .line 549
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/Glass;->getACCENT()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0xf

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object p1
.end method

.method private final icon(Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;)Landroid/widget/TextView;
    .locals 5

    .line 648
    new-instance v0, Landroid/widget/TextView;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 649
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->glyph(Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 650
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 651
    sget-object v2, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->WAIT:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    if-ne p1, v2, :cond_0

    sget-object v2, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/Glass;->getMUTED()I

    move-result v2

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/Glass;->getON_PRIMARY()I

    move-result v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 652
    move-object v2, v0

    check-cast v2, Landroid/view/View;

    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v4, 0x1

    .line 653
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 654
    sget-object v4, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->WAIT:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    if-ne p1, v4, :cond_1

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result p1

    sget-object v4, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/Glass;->getMUTED()I

    move-result v4

    invoke-virtual {v3, p1, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->color(Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;)I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 652
    :goto_1
    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-static {v2, v3}, Lcom/shilapi/xcertplay/LegacyViewsKt;->setBackgroundCompat(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    const/16 p1, 0xd

    .line 657
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-object v0
.end method

.method private final itemButton(Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCheck$Item;Z)Landroid/widget/Button;
    .locals 4

    .line 581
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;->getAction()Lcom/shilapi/xcertplay/HeadUnitCheck$Action;

    move-result-object v0

    sget-object v1, Lcom/shilapi/xcertplay/HeadUnitCheck$Action;->APP_INFO:Lcom/shilapi/xcertplay/HeadUnitCheck$Action;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;->getActionArg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 583
    :goto_0
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;->getFailed()Z

    move-result v1

    const-string v3, "getString(...)"

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;->getHow()Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v1

    if-eqz v1, :cond_1

    if-nez p3, :cond_1

    sget p2, Lcom/shilapi/xcertplay/host/R$string;->chk_how:I

    invoke-virtual {p0, p2}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$$ExternalSyntheticLambda5;

    invoke-direct {p3, p0, p1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$$ExternalSyntheticLambda5;-><init>(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;Ljava/lang/String;)V

    invoke-direct {p0, p2, p3}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->listButton(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroid/widget/Button;

    move-result-object p1

    return-object p1

    .line 584
    :cond_1
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;->getFailed()Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;->getFix()Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;

    move-result-object p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/shilapi/xcertplay/HeadUnitFixes;->INSTANCE:Lcom/shilapi/xcertplay/HeadUnitFixes;

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;->getFix()Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/shilapi/xcertplay/HeadUnitFixes;->label(Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$$ExternalSyntheticLambda6;

    invoke-direct {p3, p0, p2}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$$ExternalSyntheticLambda6;-><init>(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;Lcom/shilapi/xcertplay/HeadUnitCheck$Item;)V

    invoke-direct {p0, p1, p3}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->listButton(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroid/widget/Button;

    move-result-object p1

    .line 585
    iget-boolean p2, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->fixRunning:Z

    xor-int/2addr p2, v2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    return-object p1

    :cond_2
    if-eqz v0, :cond_3

    .line 586
    sget p1, Lcom/shilapi/xcertplay/host/R$string;->chk_app_info:I

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$$ExternalSyntheticLambda7;

    invoke-direct {p3, p0, p2}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$$ExternalSyntheticLambda7;-><init>(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;Lcom/shilapi/xcertplay/HeadUnitCheck$Item;)V

    invoke-direct {p0, p1, p3}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->listButton(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroid/widget/Button;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private static final itemButton$lambda$101(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 583
    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->opened:Ljava/util/Set;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->render()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final itemButton$lambda$102(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;Lcom/shilapi/xcertplay/HeadUnitCheck$Item;)Lkotlin/Unit;
    .locals 0

    .line 584
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;->getFix()Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->runFix(Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final itemButton$lambda$104(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;Lcom/shilapi/xcertplay/HeadUnitCheck$Item;)Lkotlin/Unit;
    .locals 0

    .line 586
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;->getActionArg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->openAppInfo(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final itemRow(Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;IILcom/shilapi/xcertplay/HeadUnitCheck$Item;ZZ)Landroid/view/View;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v7, p2

    move-object/from16 v8, p4

    .line 552
    new-instance v9, Landroid/widget/LinearLayout;

    move-object v10, v0

    check-cast v10, Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v11, 0x0

    .line 553
    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v12, 0x10

    invoke-virtual {v9, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v1, 0x34

    .line 554
    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result v1

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result v2

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result v1

    invoke-virtual {v9, v11, v2, v11, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    if-eqz p6, :cond_0

    .line 555
    const-string v1, "headunit-check-current-row"

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v7, 0x1

    .line 557
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/Glass;->getMUTED()I

    move-result v3

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/16 v2, 0xf

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->text$default(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;Ljava/lang/String;IIZILjava/lang/Object;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    check-cast v1, Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x1a

    invoke-direct {v0, v3}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result v3

    const/4 v13, -0x2

    invoke-direct {v2, v3, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v9, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v14, 0x0

    if-eqz p5, :cond_1

    if-eqz v8, :cond_1

    .line 558
    invoke-virtual {v8}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;->getMark()Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v14

    :goto_0
    const/4 v15, 0x1

    if-eqz p6, :cond_2

    .line 559
    new-instance v2, Landroid/widget/ProgressBar;

    invoke-direct {v2, v10}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v15}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    :goto_1
    check-cast v2, Landroid/view/View;

    goto :goto_3

    :cond_2
    if-nez v1, :cond_3

    sget-object v2, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->WAIT:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    goto :goto_2

    :cond_3
    move-object v2, v1

    :goto_2
    invoke-direct {v0, v2}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->icon(Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;)Landroid/widget/TextView;

    move-result-object v2

    goto :goto_1

    .line 560
    :goto_3
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x18

    invoke-direct {v0, v4}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result v5

    invoke-direct {v0, v4}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result v4

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v4, v3

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 v5, 0xa

    invoke-direct {v0, v5}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result v6

    invoke-static {v4, v6}, Lcom/shilapi/xcertplay/LegacyViewsKt;->setMarginEndCompat(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast v3, Landroid/view/ViewGroup$LayoutParams;

    .line 559
    invoke-virtual {v9, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 561
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 562
    sget-object v3, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->BAD:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    if-ne v1, v3, :cond_4

    sget-object v3, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/Glass;->getBAD()I

    move-result v3

    goto :goto_4

    :cond_4
    sget-object v3, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/Glass;->getTEXT()I

    move-result v3

    :goto_4
    move/from16 v4, p3

    .line 563
    invoke-virtual {v0, v4}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "getString(...)"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v4, v12, v3, v15}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-eqz p6, :cond_5

    .line 565
    sget v3, Lcom/shilapi/xcertplay/host/R$string;->chk_running:I

    invoke-virtual {v0, v3}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_5
    if-eqz p5, :cond_7

    if-nez v8, :cond_6

    goto :goto_5

    .line 567
    :cond_6
    invoke-virtual {v8}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;->getDetail()Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->join(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    .line 566
    :cond_7
    :goto_5
    sget v3, Lcom/shilapi/xcertplay/host/R$string;->chk_waiting:I

    invoke-virtual {v0, v3}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 564
    :goto_6
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 569
    sget-object v4, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->WARN:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    if-ne v1, v4, :cond_8

    sget-object v1, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/Glass;->getWARNING()I

    move-result v1

    goto :goto_7

    :cond_8
    sget-object v1, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/Glass;->getMUTED()I

    move-result v1

    :goto_7
    const/16 v4, 0xa

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v10, v2

    const/16 v2, 0xe

    const/16 v12, 0xa

    const/4 v4, 0x0

    move-object/from16 v16, v3

    move v3, v1

    move-object/from16 v1, v16

    invoke-static/range {v0 .. v6}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->text$default(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;Ljava/lang/String;IIZILjava/lang/Object;)Landroid/widget/TextView;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 570
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;->name()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 571
    iget-object v1, v0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->opened:Ljava/util/Set;

    invoke-interface {v1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    if-eqz v8, :cond_9

    invoke-virtual {v8}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;->getHow()Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v1

    if-eqz v1, :cond_9

    goto :goto_8

    :cond_9
    const/4 v15, 0x0

    :goto_8
    if-eqz v15, :cond_a

    .line 572
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;->getHow()Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->resolve(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/Glass;->getACCENT()I

    move-result v3

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/16 v2, 0xe

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->text$default(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;Ljava/lang/String;IIZILjava/lang/Object;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result v2

    invoke-virtual {v1, v11, v2, v11, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    check-cast v1, Landroid/view/View;

    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 573
    :cond_a
    move-object v2, v10

    check-cast v2, Landroid/view/View;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v11, v13, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v9, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p5, :cond_b

    if-eqz v8, :cond_b

    .line 574
    invoke-direct {v0, v7, v8, v15}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->itemButton(Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCheck$Item;Z)Landroid/widget/Button;

    move-result-object v14

    :cond_b
    if-eqz v14, :cond_c

    .line 575
    check-cast v14, Landroid/view/View;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v12}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/shilapi/xcertplay/LegacyViewsKt;->setMarginStartCompat(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v9, v14, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 576
    :cond_c
    check-cast v9, Landroid/view/View;

    return-object v9
.end method

.method private final items(Lcom/shilapi/xcertplay/HeadUnitCheck$Result;Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/HeadUnitCheck$Result;",
            "Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;",
            ")",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/HeadUnitCheck$Item;",
            ">;"
        }
    .end annotation

    .line 256
    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 260
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 256
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 259
    :cond_1
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Result;->getCommon()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 258
    :cond_2
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Result;->getWireless()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 257
    :cond_3
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Result;->getWired()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private final join(Ljava/util/List;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 280
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    sget p1, Lcom/shilapi/xcertplay/host/R$string;->chk_sep:I

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "getString(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    new-instance v6, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$$ExternalSyntheticLambda11;

    invoke-direct {v6, p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$$ExternalSyntheticLambda11;-><init>(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;)V

    const/16 v7, 0x1e

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v8}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static final join$lambda$28(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->resolve(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method private final lastChecked()Ljava/lang/String;
    .locals 10

    .line 346
    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->cached:Lcom/shilapi/xcertplay/HeadUnitCheck$Result;

    const-string v1, "getString(...)"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/HeadUnitCheck$Result;->getAt()J

    move-result-wide v2

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCheckSummary;->INSTANCE:Lcom/shilapi/xcertplay/HeadUnitCheckSummary;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/shilapi/xcertplay/HeadUnitCheckSummary;->at(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 347
    :goto_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 348
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/4 v5, 0x1

    .line 349
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v8, 0x0

    if-ne v6, v7, :cond_2

    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v0, v4, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 350
    :goto_2
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v6, "HH:mm"

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_3

    .line 351
    sget v0, Lcom/shilapi/xcertplay/host/R$string;->chk_last_today:I

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v4, v2, v8

    invoke-virtual {p0, v0, v2}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 352
    :cond_3
    sget v0, Lcom/shilapi/xcertplay/host/R$string;->chk_last_date:I

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "MM-dd"

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v6, v7, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v2, v3, v8

    invoke-virtual {p0, v0, v3}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 346
    :cond_4
    sget v0, Lcom/shilapi/xcertplay/host/R$string;->chk_running:I

    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final listButton(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroid/widget/Button;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Landroid/widget/Button;"
        }
    .end annotation

    .line 669
    new-instance v0, Landroid/widget/Button;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 670
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setAllCaps(Z)V

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setSingleLine(Z)V

    .line 671
    sget-object v1, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/Glass;->getTEXT()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 672
    move-object v8, v0

    check-cast v8, Landroid/view/View;

    sget-object v1, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    sget-object v3, Lcom/shilapi/xcertplay/Glass$Kind;->CONTROL:Lcom/shilapi/xcertplay/Glass$Kind;

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lcom/shilapi/xcertplay/Glass;->panel$default(Lcom/shilapi/xcertplay/Glass;Landroid/content/Context;Lcom/shilapi/xcertplay/Glass$Kind;FLcom/shilapi/xcertplay/Glass$Palette;ILjava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/shilapi/xcertplay/LegacyViewsKt;->setBackgroundCompat(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    const/16 v1, 0x2a

    .line 673
    invoke-direct {p0, v1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setMinHeight(I)V

    invoke-direct {p0, v1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinimumHeight(I)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setMinWidth(I)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setMinimumWidth(I)V

    const/16 p1, 0xc8

    .line 674
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setMaxWidth(I)V

    const/16 p1, 0xe

    .line 675
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result v3

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result p1

    invoke-direct {p0, v2}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result v2

    invoke-virtual {v0, v1, v3, p1, v2}, Landroid/widget/Button;->setPadding(IIII)V

    invoke-static {v8}, Lcom/shilapi/xcertplay/LegacyViewsKt;->clearStateListAnimatorCompat(Landroid/view/View;)V

    .line 676
    new-instance p1, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$$ExternalSyntheticLambda10;

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$$ExternalSyntheticLambda10;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private static final listButton$lambda$118$lambda$117(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    .line 676
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private final listPage(Landroid/widget/LinearLayout;Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;I)V
    .locals 13

    move-object v1, p2

    .line 507
    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->running:Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->pending:Lcom/shilapi/xcertplay/HeadUnitCheck$Result;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->cached:Lcom/shilapi/xcertplay/HeadUnitCheck$Result;

    .line 508
    :goto_0
    sget-object v2, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_2

    if-eq v2, v3, :cond_1

    .line 511
    sget-object v2, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->Companion:Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Companion;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Companion;->getCOMMON_COUNT()I

    move-result v2

    goto :goto_1

    .line 510
    :cond_1
    sget-object v2, Lcom/shilapi/xcertplay/ConnectionSteps;->INSTANCE:Lcom/shilapi/xcertplay/ConnectionSteps;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/ConnectionSteps;->getWIRELESS()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_1

    .line 509
    :cond_2
    sget-object v2, Lcom/shilapi/xcertplay/ConnectionSteps;->INSTANCE:Lcom/shilapi/xcertplay/ConnectionSteps;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/ConnectionSteps;->getWIRED()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    move v6, v2

    .line 513
    sget-object v2, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;->ordinal()I

    move-result v5

    aget v2, v2, v5

    const/16 v5, 0xa

    if-eq v2, v4, :cond_5

    if-eq v2, v3, :cond_3

    .line 516
    sget-object v2, Lcom/shilapi/xcertplay/HeadUnitCheck;->INSTANCE:Lcom/shilapi/xcertplay/HeadUnitCheck;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/HeadUnitCheck;->getCOMMON_NAMES()Ljava/util/List;

    move-result-object v2

    goto :goto_4

    .line 515
    :cond_3
    sget-object v2, Lcom/shilapi/xcertplay/ConnectionSteps;->INSTANCE:Lcom/shilapi/xcertplay/ConnectionSteps;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/ConnectionSteps;->getWIRELESS()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 754
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 755
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 756
    check-cast v4, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    .line 515
    invoke-virtual {v4}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;->getName()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 756
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 757
    :cond_4
    move-object v2, v3

    check-cast v2, Ljava/util/List;

    goto :goto_4

    .line 514
    :cond_5
    sget-object v2, Lcom/shilapi/xcertplay/ConnectionSteps;->INSTANCE:Lcom/shilapi/xcertplay/ConnectionSteps;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/ConnectionSteps;->getWIRED()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 750
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 751
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 752
    check-cast v4, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    .line 514
    invoke-virtual {v4}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;->getName()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 752
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 753
    :cond_6
    move-object v2, v3

    check-cast v2, Ljava/util/List;

    :goto_4
    if-eqz v0, :cond_7

    .line 518
    invoke-direct {p0, v0, p2}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->items(Lcom/shilapi/xcertplay/HeadUnitCheck$Result;Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;)Ljava/util/List;

    move-result-object v0

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    :goto_5
    move-object v3, v0

    .line 521
    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->running:Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;

    const/4 v7, 0x0

    if-ne v0, v1, :cond_8

    iget v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->progress:I

    :goto_6
    move v4, v0

    goto :goto_7

    .line 522
    :cond_8
    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->revealPage:Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;

    if-ne v0, v1, :cond_9

    iget v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->revealThrough:I

    goto :goto_6

    :cond_9
    if-nez v3, :cond_a

    const/4 v4, 0x0

    goto :goto_7

    :cond_a
    move v4, v6

    .line 531
    :goto_7
    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;->WIRELESS:Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;

    const/4 v8, -0x1

    const/4 v9, -0x2

    if-ne v1, v0, :cond_e

    .line 533
    invoke-direct {p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->box()Landroid/widget/LinearLayout;

    move-result-object v10

    sget v0, Lcom/shilapi/xcertplay/host/R$string;->chk_group_bt:I

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->groupTitle(I)Landroid/widget/TextView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v11, 0x1f

    invoke-static {v7, v11}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 758
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    move-object v0, v12

    check-cast v0, Lkotlin/collections/IntIterator;

    invoke-virtual {v0}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v5

    move-object v0, p0

    .line 533
    invoke-static/range {v0 .. v5}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->listPage$row(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;Ljava/util/List;Ljava/util/List;II)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object v1, p2

    goto :goto_8

    .line 534
    :cond_b
    invoke-direct {p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->box()Landroid/widget/LinearLayout;

    move-result-object v12

    sget v1, Lcom/shilapi/xcertplay/host/R$string;->chk_group_wifi:I

    invoke-direct {p0, v1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->groupTitle(I)Landroid/widget/TextView;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {v11, v6}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 760
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    move-object v1, v6

    check-cast v1, Lkotlin/collections/IntIterator;

    invoke-virtual {v1}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v5

    move-object v0, p0

    move-object v1, p2

    .line 534
    invoke-static/range {v0 .. v5}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->listPage$row(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;Ljava/util/List;Ljava/util/List;II)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_9

    :cond_c
    const/16 v1, 0x280

    move/from16 v2, p3

    if-lt v2, v1, :cond_d

    .line 536
    new-instance v1, Landroid/widget/LinearLayout;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 537
    check-cast v10, Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v7, v9, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, v10, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 538
    check-cast v12, Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v9, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 v4, 0xe

    invoke-direct {p0, v4}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/shilapi/xcertplay/LegacyViewsKt;->setMarginStartCompat(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, v12, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 539
    check-cast v1, Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 541
    :cond_d
    check-cast v10, Landroid/view/View;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v10, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 542
    check-cast v12, Landroid/view/View;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xc

    invoke-direct {p0, v2}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v12, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 545
    :cond_e
    invoke-direct {p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->box()Landroid/widget/LinearLayout;

    move-result-object v10

    invoke-static {v7, v6}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 762
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    move-object v1, v6

    check-cast v1, Lkotlin/collections/IntIterator;

    invoke-virtual {v1}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v5

    move-object v0, p0

    move-object v1, p2

    .line 545
    invoke-static/range {v0 .. v5}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->listPage$row(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;Ljava/util/List;Ljava/util/List;II)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_a

    :cond_f
    check-cast v10, Landroid/view/View;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private static final listPage$row(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;Ljava/util/List;Ljava/util/List;II)Landroid/view/View;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/HeadUnitCheckActivity;",
            "Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/HeadUnitCheck$Item;",
            ">;II)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 527
    invoke-interface {p2, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-eqz p3, :cond_0

    invoke-static {p3, p5}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    move-object v4, p2

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-ge p5, p4, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 529
    :goto_1
    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->running:Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;

    if-ne v0, p1, :cond_2

    if-ne p5, p4, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    move-object v0, p0

    move-object v1, p1

    move v2, p5

    .line 526
    invoke-direct/range {v0 .. v6}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->itemRow(Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;IILcom/shilapi/xcertplay/HeadUnitCheck$Item;ZZ)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private final openAppInfo(Ljava/lang/String;)V
    .locals 6

    const-string v0, "package:"

    .line 621
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;

    .line 622
    sget-object v1, Lcom/shilapi/xcertplay/SystemPageActivity;->Companion:Lcom/shilapi/xcertplay/SystemPageActivity$Companion;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 623
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 622
    invoke-direct {v3, v4, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2, v3}, Lcom/shilapi/xcertplay/SystemPageActivity$Companion;->wrap(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->startActivity(Landroid/content/Intent;)V

    .line 624
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 621
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final overview(Landroid/widget/LinearLayout;I)V
    .locals 12

    .line 431
    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->cached:Lcom/shilapi/xcertplay/HeadUnitCheck$Result;

    const/4 v1, 0x0

    .line 432
    invoke-direct {p0, v0, v1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->verdictCard(Lcom/shilapi/xcertplay/HeadUnitCheck$Result;Z)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->verdictCard(Lcom/shilapi/xcertplay/HeadUnitCheck$Result;Z)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/view/View;

    aput-object v2, v5, v1

    aput-object v4, v5, v3

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/16 v3, 0x230

    const/16 v4, 0xc

    const/4 v5, -0x1

    const/4 v6, -0x2

    if-lt p2, v3, :cond_3

    .line 434
    new-instance v3, Lcom/shilapi/xcertplay/EqualHeightRow;

    move-object v7, p0

    check-cast v7, Landroid/content/Context;

    invoke-direct {v3, v7}, Lcom/shilapi/xcertplay/EqualHeightRow;-><init>(Landroid/content/Context;)V

    .line 435
    check-cast v2, Ljava/lang/Iterable;

    .line 745
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v7, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v9, v7, 0x1

    if-gez v7, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v8, Landroid/view/View;

    .line 436
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v10, v1, v6, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    if-lez v7, :cond_1

    move-object v7, v10

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 v11, 0xe

    invoke-direct {p0, v11}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result v11

    invoke-static {v7, v11}, Lcom/shilapi/xcertplay/LegacyViewsKt;->setMarginStartCompat(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    :cond_1
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast v10, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v3, v8, v10}, Lcom/shilapi/xcertplay/EqualHeightRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v7, v9

    goto :goto_0

    .line 438
    :cond_2
    check-cast v3, Landroid/view/View;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 439
    :cond_3
    check-cast v2, Ljava/lang/Iterable;

    .line 748
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v7, v1, 0x1

    if-gez v1, :cond_4

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_4
    check-cast v3, Landroid/view/View;

    .line 440
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-lez v1, :cond_5

    invoke-direct {p0, v4}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result v1

    iput v1, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :cond_5
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast v8, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v1, v7

    goto :goto_1

    .line 442
    :cond_6
    :goto_2
    invoke-direct {p0, v0, p2}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->summaryRow(Lcom/shilapi/xcertplay/HeadUnitCheck$Result;I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-direct {p0, v4}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private final pageDirection(Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 2

    .line 689
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/res/Configuration;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    .line 690
    invoke-static {p1, v0}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/widget/TextView;I)V

    :cond_0
    return-object p1
.end method

.method private final pill(Ljava/lang/String;I)Landroid/widget/TextView;
    .locals 5

    const/4 v0, 0x1

    const/16 v1, 0xe

    .line 635
    invoke-direct {p0, p1, v1, p2, v0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0xc

    .line 636
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result v2

    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result v4

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result v0

    invoke-direct {p0, v3}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result v3

    invoke-virtual {p1, v2, v4, v0, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 637
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-direct {p0, v1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const v1, 0xffffff

    and-int/2addr p2, v1

    const/high16 v1, 0x33000000

    or-int/2addr p2, v1

    invoke-virtual {v2, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v2}, Lcom/shilapi/xcertplay/LegacyViewsKt;->setBackgroundCompat(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-object p1
.end method

.method private final portrait()Z
    .locals 3

    .line 284
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 v2, 0x230

    if-lt v1, v2, :cond_0

    iget v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    mul-int/lit8 v1, v1, 0xa

    iget v2, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    mul-int/lit8 v2, v2, 0x9

    if-ge v1, v2, :cond_1

    :cond_0
    iget v1, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    if-le v1, v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final rail()Landroid/view/ViewGroup;
    .locals 11

    .line 359
    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->page:Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;

    sget-object v1, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    .line 362
    sget v0, Lcom/shilapi/xcertplay/host/R$string;->chk_recheck:I

    goto :goto_0

    .line 361
    :cond_0
    sget v0, Lcom/shilapi/xcertplay/host/R$string;->chk_run_wireless:I

    goto :goto_0

    .line 360
    :cond_1
    sget v0, Lcom/shilapi/xcertplay/host/R$string;->chk_run_wired:I

    .line 364
    :goto_0
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-static {v3}, Landroidx/core/os/ConfigurationCompat;->getLocales(Landroid/content/res/Configuration;)Landroidx/core/os/LocaleListCompat;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/core/os/LocaleListCompat;->get(I)Ljava/util/Locale;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    const-string/jumbo v5, "zh"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 366
    iget-object v5, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->running:Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;

    iget-object v6, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->page:Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;

    const-string v7, "getString(...)"

    if-eq v5, v6, :cond_4

    sget-object v5, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;->OVERVIEW:Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;

    if-ne v6, v5, :cond_3

    iget-object v5, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->running:Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;

    sget-object v6, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;->OVERVIEW:Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;

    if-ne v5, v6, :cond_3

    goto :goto_2

    .line 367
    :cond_3
    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$$ExternalSyntheticLambda19;

    invoke-direct {v5, p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$$ExternalSyntheticLambda19;-><init>(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;)V

    invoke-direct {p0, v0, v5}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->railChip(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Lcom/shilapi/xcertplay/FitText;

    move-result-object v0

    goto :goto_3

    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->railBusyChip()Lcom/shilapi/xcertplay/FitText;

    move-result-object v0

    :goto_3
    const/4 v5, 0x3

    .line 369
    new-array v5, v5, [Lcom/shilapi/xcertplay/FitText;

    aput-object v0, v5, v4

    if-eqz v3, :cond_5

    .line 370
    const-string v0, "English"

    goto :goto_4

    :cond_5
    const-string/jumbo v0, "\u4e2d\u6587"

    :goto_4
    new-instance v6, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$$ExternalSyntheticLambda20;

    invoke-direct {v6, p0, v3}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$$ExternalSyntheticLambda20;-><init>(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;Z)V

    invoke-direct {p0, v0, v6}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->railChip(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Lcom/shilapi/xcertplay/FitText;

    move-result-object v0

    .line 374
    sget v3, Lcom/shilapi/xcertplay/host/R$string;->language_app_language:I

    invoke-virtual {p0, v3}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Lcom/shilapi/xcertplay/FitText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 375
    new-instance v3, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$$ExternalSyntheticLambda21;

    invoke-direct {v3, p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$$ExternalSyntheticLambda21;-><init>(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;)V

    invoke-virtual {v0, v3}, Lcom/shilapi/xcertplay/FitText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 376
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 373
    aput-object v0, v5, v2

    .line 377
    sget v0, Lcom/shilapi/xcertplay/host/R$string;->back:I

    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$$ExternalSyntheticLambda22;

    invoke-direct {v3, p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$$ExternalSyntheticLambda22;-><init>(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;)V

    invoke-direct {p0, v0, v3}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->railChip(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Lcom/shilapi/xcertplay/FitText;

    move-result-object v0

    aput-object v0, v5, v1

    .line 368
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 380
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    .line 731
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shilapi/xcertplay/FitText;

    .line 380
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Lcom/shilapi/xcertplay/FitText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    .line 381
    :cond_6
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 382
    invoke-direct {p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->portrait()Z

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v5, :cond_d

    .line 383
    iput v4, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->railWidthPx:I

    .line 384
    new-instance v5, Landroid/widget/LinearLayout;

    move-object v7, p0

    check-cast v7, Landroid/content/Context;

    invoke-direct {v5, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 385
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v8, 0x28

    invoke-direct {p0, v8}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result v8

    sub-int/2addr v7, v8

    const/16 v8, 0xe

    invoke-direct {p0, v8}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result v9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v2

    mul-int v9, v9, v10

    sub-int/2addr v7, v9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/2addr v7, v0

    .line 733
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shilapi/xcertplay/FitText;

    const/high16 v9, 0x41500000    # 13.0f

    .line 386
    invoke-virtual {v2, v9}, Lcom/shilapi/xcertplay/FitText;->setOneLineMinSp(F)V

    const/high16 v9, 0x41a00000    # 20.0f

    invoke-virtual {v2, v9}, Lcom/shilapi/xcertplay/FitText;->setTextSize(F)V

    invoke-static {v7, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v2, v9, v3}, Lcom/shilapi/xcertplay/FitText;->measure(II)V

    goto :goto_6

    .line 387
    :cond_7
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shilapi/xcertplay/FitText;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/FitText;->getTextSize()F

    move-result v2

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shilapi/xcertplay/FitText;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/FitText;->getTextSize()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    goto :goto_7

    .line 736
    :cond_8
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v6, v1, 0x1

    if-gez v1, :cond_9

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_9
    check-cast v3, Lcom/shilapi/xcertplay/FitText;

    .line 389
    invoke-virtual {v3, v4, v2}, Lcom/shilapi/xcertplay/FitText;->setTextSize(IF)V

    .line 390
    check-cast v3, Landroid/view/View;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v7, v4, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    if-lez v1, :cond_a

    move-object v1, v7

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, v8}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result v9

    invoke-static {v1, v9}, Lcom/shilapi/xcertplay/LegacyViewsKt;->setMarginStartCompat(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    :cond_a
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v5, v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v1, v6

    goto :goto_8

    .line 392
    :cond_b
    check-cast v5, Landroid/view/ViewGroup;

    return-object v5

    .line 387
    :cond_c
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 738
    :cond_d
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shilapi/xcertplay/FitText;

    .line 394
    invoke-virtual {v2, v3, v3}, Lcom/shilapi/xcertplay/FitText;->measure(II)V

    goto :goto_9

    .line 395
    :cond_e
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v0, v0

    const v2, 0x3e2e147b    # 0.17f

    mul-float v0, v0, v2

    float-to-int v0, v0

    const/16 v2, 0xb4

    const/16 v5, 0x64

    invoke-static {v0, v5, v2}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result v0

    .line 396
    invoke-direct {p0, v5}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result v2

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shilapi/xcertplay/FitText;

    invoke-virtual {v7}, Lcom/shilapi/xcertplay/FitText;->getMeasuredWidth()I

    move-result v7

    :cond_f
    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/shilapi/xcertplay/FitText;

    invoke-virtual {v8}, Lcom/shilapi/xcertplay/FitText;->getMeasuredWidth()I

    move-result v8

    if-ge v7, v8, :cond_f

    move v7, v8

    goto :goto_a

    :cond_10
    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 397
    iput v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->railWidthPx:I

    .line 398
    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 740
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shilapi/xcertplay/FitText;

    .line 399
    invoke-virtual {v5, v0, v3}, Lcom/shilapi/xcertplay/FitText;->measure(II)V

    goto :goto_b

    .line 400
    :cond_11
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shilapi/xcertplay/FitText;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/FitText;->getTextSize()F

    move-result v2

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shilapi/xcertplay/FitText;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/FitText;->getTextSize()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    goto :goto_c

    .line 401
    :cond_12
    new-instance v0, Lcom/shilapi/xcertplay/SplitColumn;

    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    const/16 v5, 0xc

    invoke-direct {p0, v5}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result v5

    const/16 v6, 0x38

    invoke-direct {p0, v6}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result v6

    invoke-direct {v0, v3, v5, v6}, Lcom/shilapi/xcertplay/SplitColumn;-><init>(Landroid/content/Context;II)V

    .line 742
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shilapi/xcertplay/FitText;

    .line 402
    invoke-virtual {v3, v4, v2}, Lcom/shilapi/xcertplay/FitText;->setTextSize(IF)V

    check-cast v3, Landroid/view/View;

    invoke-virtual {v0, v3}, Lcom/shilapi/xcertplay/SplitColumn;->addView(Landroid/view/View;)V

    goto :goto_d

    .line 403
    :cond_13
    check-cast v0, Landroid/view/ViewGroup;

    return-object v0

    .line 400
    :cond_14
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 396
    :cond_15
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    goto :goto_f

    :goto_e
    throw v0

    :goto_f
    goto :goto_e
.end method

.method private static final rail$lambda$41(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;)Lkotlin/Unit;
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->page:Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->run(Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final rail$lambda$42(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;Z)Lkotlin/Unit;
    .locals 2

    .line 371
    sget-object v0, Lcom/shilapi/xcertplay/AppLocale;->INSTANCE:Lcom/shilapi/xcertplay/AppLocale;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    if-eqz p1, :cond_0

    const-string p1, "en"

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "zh"

    :goto_0
    invoke-virtual {v0, v1, p1}, Lcom/shilapi/xcertplay/AppLocale;->save(Landroid/content/Context;Ljava/lang/String;)V

    .line 372
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-ge p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->recreate()V

    .line 373
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final rail$lambda$44$lambda$43(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;Landroid/view/View;)Z
    .locals 0

    .line 375
    sget-object p1, Lcom/shilapi/xcertplay/AppLocale;->INSTANCE:Lcom/shilapi/xcertplay/AppLocale;

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p1, p0}, Lcom/shilapi/xcertplay/AppLocale;->showPicker(Landroid/app/Activity;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static final rail$lambda$45(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;)Lkotlin/Unit;
    .locals 0

    .line 377
    invoke-direct {p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->goBack()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final railBusyChip()Lcom/shilapi/xcertplay/FitText;
    .locals 10

    .line 418
    new-instance v0, Lcom/shilapi/xcertplay/FitText;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    const/4 v1, 0x2

    const/high16 v3, 0x41300000    # 11.0f

    invoke-direct {v0, v2, v1, v3}, Lcom/shilapi/xcertplay/FitText;-><init>(Landroid/content/Context;IF)V

    const/high16 v1, 0x41500000    # 13.0f

    .line 419
    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/FitText;->setOneLineMinSp(F)V

    .line 420
    sget v1, Lcom/shilapi/xcertplay/host/R$string;->chk_running:I

    invoke-virtual {p0, v1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/FitText;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41880000    # 17.0f

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/FitText;->setTextSize(F)V

    sget-object v1, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/Glass;->getMUTED()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/FitText;->setTextColor(I)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/FitText;->setGravity(I)V

    .line 421
    const-string v1, "sans-serif-medium"

    const/4 v8, 0x0

    invoke-static {v1, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/FitText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 422
    move-object v9, v0

    check-cast v9, Landroid/view/View;

    sget-object v1, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    sget-object v3, Lcom/shilapi/xcertplay/Glass$Kind;->CONTROL:Lcom/shilapi/xcertplay/Glass$Kind;

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/high16 v4, 0x41b00000    # 22.0f

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lcom/shilapi/xcertplay/Glass;->panel$default(Lcom/shilapi/xcertplay/Glass;Landroid/content/Context;Lcom/shilapi/xcertplay/Glass$Kind;FLcom/shilapi/xcertplay/Glass$Palette;ILjava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/shilapi/xcertplay/LegacyViewsKt;->setBackgroundCompat(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    const/16 v1, 0xe

    .line 423
    invoke-direct {p0, v1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result v2

    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result v4

    invoke-direct {p0, v1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result v1

    invoke-direct {p0, v3}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result v3

    invoke-virtual {v0, v2, v4, v1, v3}, Lcom/shilapi/xcertplay/FitText;->setPadding(IIII)V

    invoke-static {v9}, Lcom/shilapi/xcertplay/LegacyViewsKt;->clearStateListAnimatorCompat(Landroid/view/View;)V

    const/16 v1, 0x38

    .line 424
    invoke-direct {p0, v1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/FitText;->setMinHeight(I)V

    .line 425
    invoke-virtual {v0, v8}, Lcom/shilapi/xcertplay/FitText;->setClickable(Z)V

    invoke-virtual {v0, v8}, Lcom/shilapi/xcertplay/FitText;->setFocusable(Z)V

    invoke-virtual {v0, v8}, Lcom/shilapi/xcertplay/FitText;->setEnabled(Z)V

    return-object v0
.end method

.method private final railChip(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Lcom/shilapi/xcertplay/FitText;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/shilapi/xcertplay/FitText;"
        }
    .end annotation

    .line 406
    new-instance v0, Lcom/shilapi/xcertplay/FitText;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    const/4 v1, 0x2

    const/high16 v3, 0x41300000    # 11.0f

    invoke-direct {v0, v2, v1, v3}, Lcom/shilapi/xcertplay/FitText;-><init>(Landroid/content/Context;IF)V

    const/high16 v1, 0x41500000    # 13.0f

    .line 407
    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/FitText;->setOneLineMinSp(F)V

    .line 408
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/FitText;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41880000    # 17.0f

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/FitText;->setTextSize(F)V

    sget-object p1, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/Glass;->getTEXT()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/FitText;->setTextColor(I)V

    const/16 p1, 0x11

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/FitText;->setGravity(I)V

    .line 409
    const-string p1, "sans-serif-medium"

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/FitText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 410
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    sget-object v1, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/Glass;->getRIPPLE()I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    const-string/jumbo v1, "valueOf(...)"

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    sget-object v3, Lcom/shilapi/xcertplay/Glass$Kind;->CONTROL:Lcom/shilapi/xcertplay/Glass$Kind;

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/high16 v4, 0x41b00000    # 22.0f

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lcom/shilapi/xcertplay/Glass;->panel$default(Lcom/shilapi/xcertplay/Glass;Landroid/content/Context;Lcom/shilapi/xcertplay/Glass$Kind;FLcom/shilapi/xcertplay/Glass$Palette;ILjava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v8, v1, v2}, Lcom/shilapi/xcertplay/LegacyViewsKt;->rippleCompat(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/shilapi/xcertplay/LegacyViewsKt;->setBackgroundCompat(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    const/16 v1, 0xe

    .line 411
    invoke-direct {p0, v1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result v2

    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result v4

    invoke-direct {p0, v1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result v1

    invoke-direct {p0, v3}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result v3

    invoke-virtual {v0, v2, v4, v1, v3}, Lcom/shilapi/xcertplay/FitText;->setPadding(IIII)V

    invoke-static {p1}, Lcom/shilapi/xcertplay/LegacyViewsKt;->clearStateListAnimatorCompat(Landroid/view/View;)V

    const/16 p1, 0x38

    .line 412
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/FitText;->setMinHeight(I)V

    const/4 p1, 0x1

    .line 413
    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/FitText;->setClickable(Z)V

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/FitText;->setFocusable(Z)V

    .line 414
    new-instance p1, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$$ExternalSyntheticLambda16;

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$$ExternalSyntheticLambda16;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/FitText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private static final railChip$lambda$58$lambda$57(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    .line 414
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private final render()V
    .locals 14

    .line 287
    sget-object v0, Lcom/shilapi/xcertplay/Appearance;->INSTANCE:Lcom/shilapi/xcertplay/Appearance;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcom/shilapi/xcertplay/Appearance;->isDark$default(Lcom/shilapi/xcertplay/Appearance;Landroid/content/Context;Ljava/util/Calendar;ILjava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dark:Z

    .line 288
    sget-object v0, Lcom/shilapi/xcertplay/Appearance;->INSTANCE:Lcom/shilapi/xcertplay/Appearance;

    iget-boolean v4, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dark:Z

    invoke-virtual {v0, v4}, Lcom/shilapi/xcertplay/Appearance;->activityTheme(Z)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->setTheme(I)V

    .line 289
    sget-object v0, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    iget-boolean v4, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dark:Z

    invoke-virtual {v0, v4}, Lcom/shilapi/xcertplay/Glass;->use(Z)Lcom/shilapi/xcertplay/Glass$Palette;

    move-result-object v0

    .line 290
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/Glass$Palette;->getBase()I

    move-result v0

    invoke-direct {v5, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v5, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 291
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->builtWidthDp:I

    .line 292
    invoke-direct {p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->rail()Landroid/view/ViewGroup;

    move-result-object v0

    .line 293
    iget v4, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->railWidthPx:I

    .line 294
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v7, 0xc

    invoke-direct {p0, v7}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v5, v8, v8, v8, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 295
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->screenWidthDp:I

    add-int/lit8 v7, v7, -0x28

    invoke-direct {p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->portrait()Z

    move-result v9

    const/16 v10, 0x10

    if-eqz v9, :cond_0

    const/4 v9, 0x0

    goto :goto_0

    :cond_0
    int-to-float v9, v4

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v9, v11

    float-to-int v9, v9

    add-int/2addr v9, v10

    :goto_0
    sub-int/2addr v7, v9

    .line 296
    iget-object v9, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->page:Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;

    sget-object v11, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v9}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;->ordinal()I

    move-result v9

    aget v9, v11, v9

    if-eq v9, v6, :cond_4

    if-eq v9, v3, :cond_3

    const/4 v3, 0x3

    if-eq v9, v3, :cond_2

    const/4 v3, 0x4

    if-ne v9, v3, :cond_1

    .line 297
    invoke-direct {p0, v5, v7}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->overview(Landroid/widget/LinearLayout;I)V

    goto :goto_1

    .line 296
    :cond_1
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 300
    :cond_2
    sget-object v3, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;->COMMON:Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;

    invoke-direct {p0, v5, v3, v7}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->listPage(Landroid/widget/LinearLayout;Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;I)V

    goto :goto_1

    .line 299
    :cond_3
    sget-object v3, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;->WIRELESS:Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;

    invoke-direct {p0, v5, v3, v7}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->listPage(Landroid/widget/LinearLayout;Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;I)V

    goto :goto_1

    .line 298
    :cond_4
    sget-object v3, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;->WIRED:Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;

    invoke-direct {p0, v5, v3, v7}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->listPage(Landroid/widget/LinearLayout;Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;I)V

    .line 302
    :goto_1
    new-instance v3, Landroid/widget/ScrollView;

    invoke-direct {v3, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v6}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    check-cast v5, Landroid/view/View;

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x1

    const/4 v11, -0x2

    invoke-direct {v7, v9, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5, v7}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 303
    iput-object v3, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->listScroll:Landroid/widget/ScrollView;

    .line 304
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 305
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 306
    move-object v7, v5

    check-cast v7, Landroid/view/View;

    sget-object v12, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-static {v12, v2, v6, v2}, Lcom/shilapi/xcertplay/Glass;->backdrop$default(Lcom/shilapi/xcertplay/Glass;Lcom/shilapi/xcertplay/Glass$Palette;ILjava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/shilapi/xcertplay/LegacyViewsKt;->setBackgroundCompat(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    const/16 v2, 0x14

    .line 307
    invoke-direct {p0, v2}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result v6

    const/16 v12, 0xa

    invoke-direct {p0, v12}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result v13

    invoke-direct {p0, v2}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result v2

    invoke-virtual {v5, v6, v13, v2, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 309
    invoke-direct {p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->title()Landroid/widget/TextView;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v9, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v5, v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    invoke-direct {p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->portrait()Z

    move-result v2

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v2, :cond_5

    .line 311
    check-cast v3, Landroid/view/View;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v9, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-direct {p0, v12}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v5, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 312
    check-cast v0, Landroid/view/View;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x60

    invoke-direct {p0, v2}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result v2

    invoke-direct {v1, v9, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-direct {p0, v2}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 314
    :cond_5
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 315
    check-cast v3, Landroid/view/View;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v8, v9, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 316
    check-cast v0, Landroid/view/View;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v3, v1

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, v10}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/shilapi/xcertplay/LegacyViewsKt;->setMarginStartCompat(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    check-cast v2, Landroid/view/View;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v9, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-direct {p0, v12}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v5, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 319
    :goto_2
    invoke-virtual {p0, v7}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->setContentView(Landroid/view/View;)V

    .line 320
    sget-object v0, Lcom/shilapi/xcertplay/CarDisplay;->INSTANCE:Lcom/shilapi/xcertplay/CarDisplay;

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const-string v2, "getDecorView(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/CarDisplay;->textDirection(Landroid/view/View;)V

    .line 321
    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->running:Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;

    iget-object v1, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->page:Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;

    if-ne v0, v1, :cond_6

    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;->OVERVIEW:Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;

    if-eq v1, v0, :cond_6

    invoke-direct {p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->scrollToCurrentRow()V

    :cond_6
    return-void
.end method

.method private final resolve(Ljava/lang/Object;)Ljava/lang/String;
    .locals 9

    .line 274
    instance-of v0, p1, Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Text;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    const-string v1, "getString(...)"

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Text;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 275
    :cond_0
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Text;->getId()I

    move-result v0

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Text;->getArgs()[Ljava/lang/Object;

    move-result-object p1

    .line 723
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, p1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 724
    array-length v3, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_3

    aget-object v6, p1, v5

    .line 275
    instance-of v7, v6, Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    if-nez v7, :cond_1

    instance-of v7, v6, Lcom/shilapi/xcertplay/HeadUnitCheck$ModeList;

    if-eqz v7, :cond_2

    :cond_1
    invoke-direct {p0, v6}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->resolve(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 725
    :cond_2
    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 726
    :cond_3
    check-cast v2, Ljava/util/List;

    .line 723
    check-cast v2, Ljava/util/Collection;

    .line 730
    new-array p1, v4, [Ljava/lang/Object;

    invoke-interface {v2, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 275
    array-length v2, p1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 276
    :cond_4
    instance-of v0, p1, Lcom/shilapi/xcertplay/HeadUnitCheck$ModeList;

    if-eqz v0, :cond_5

    check-cast p1, Lcom/shilapi/xcertplay/HeadUnitCheck$ModeList;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$ModeList;->getModes()Ljava/util/List;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    const-string p1, " / "

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    new-instance v6, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$$ExternalSyntheticLambda9;

    invoke-direct {v6, p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$$ExternalSyntheticLambda9;-><init>(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;)V

    const/16 v7, 0x1e

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v8}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 277
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static final resolve$lambda$27(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;)Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;->getLabel()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "getString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method private final run(Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;)V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->running:Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;

    if-eqz v0, :cond_0

    return-void

    .line 156
    :cond_0
    iput-object p1, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->running:Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;

    const/4 p1, 0x0

    .line 157
    iput p1, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->progress:I

    const/4 v0, 0x0

    .line 158
    iput-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->pending:Lcom/shilapi/xcertplay/HeadUnitCheck$Result;

    .line 159
    iput-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->revealPage:Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;

    .line 160
    iput p1, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->revealThrough:I

    .line 161
    iget-object p1, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->opened:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 162
    invoke-direct {p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->render()V

    .line 163
    new-instance p1, Ljava/lang/Thread;

    .line 177
    new-instance v0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$$ExternalSyntheticLambda14;-><init>(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;)V

    const-string v1, "headunit-check"

    .line 163
    invoke-direct {p1, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 177
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static final run$lambda$11(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;)V
    .locals 5

    .line 164
    const-string v0, "getApplicationContext(...)"

    invoke-direct {p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->switchBluetoothOn()V

    .line 165
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v1, Lcom/shilapi/xcertplay/HeadUnitCheck;->INSTANCE:Lcom/shilapi/xcertplay/HeadUnitCheck;

    sget-object v2, Lcom/shilapi/xcertplay/HeadUnitCheckProbe;->INSTANCE:Lcom/shilapi/xcertplay/HeadUnitCheckProbe;

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/shilapi/xcertplay/HeadUnitCheckProbe;->read(Landroid/content/Context;)Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/shilapi/xcertplay/HeadUnitCheck;->evaluate(Lcom/shilapi/xcertplay/HeadUnitCheck$Inputs;J)Lcom/shilapi/xcertplay/HeadUnitCheck$Result;

    move-result-object v1

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

    .line 166
    :goto_0
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "DiPlayCheck"

    const-string v4, "head unit check failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-static {v1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    check-cast v1, Lcom/shilapi/xcertplay/HeadUnitCheck$Result;

    if-eqz v1, :cond_2

    .line 168
    :try_start_1
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v2, Lcom/shilapi/xcertplay/HeadUnitCheckSummary;->INSTANCE:Lcom/shilapi/xcertplay/HeadUnitCheckSummary;

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v1}, Lcom/shilapi/xcertplay/HeadUnitCheckSummary;->save(Landroid/content/Context;Lcom/shilapi/xcertplay/HeadUnitCheck$Result;)V

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

    .line 169
    :goto_1
    :try_start_2
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-direct {p0, v1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->write(Lcom/shilapi/xcertplay/HeadUnitCheck$Result;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :cond_2
    :goto_2
    new-instance v0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, v1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$$ExternalSyntheticLambda3;-><init>(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;Lcom/shilapi/xcertplay/HeadUnitCheck$Result;)V

    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final run$lambda$11$lambda$10(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;Lcom/shilapi/xcertplay/HeadUnitCheck$Result;)V
    .locals 1

    .line 172
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->destroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 173
    iput-object p1, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->running:Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;

    invoke-direct {p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->render()V

    return-void

    .line 174
    :cond_1
    iput-object p1, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->pending:Lcom/shilapi/xcertplay/HeadUnitCheck$Result;

    .line 175
    invoke-direct {p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->tick()V

    return-void
.end method

.method private final runFix(Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;)V
    .locals 2

    .line 592
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->fixRunning:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->running:Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 593
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->fixRunning:Z

    .line 594
    invoke-direct {p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->render()V

    .line 595
    new-instance v0, Ljava/lang/Thread;

    .line 617
    new-instance v1, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$$ExternalSyntheticLambda8;-><init>(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;)V

    const-string p1, "headunit-fix"

    .line 595
    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 617
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final runFix$lambda$108(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;)V
    .locals 3

    .line 596
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitFixes;->INSTANCE:Lcom/shilapi/xcertplay/HeadUnitFixes;

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getApplicationContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lcom/shilapi/xcertplay/HeadUnitFixes;->apply(Landroid/content/Context;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;)Lcom/shilapi/xcertplay/HeadUnitFixes$Result;

    move-result-object v0

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

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcom/shilapi/xcertplay/HeadUnitFixes$Result;

    .line 597
    new-instance v1, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0, v0, p1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$$ExternalSyntheticLambda18;-><init>(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;Lcom/shilapi/xcertplay/HeadUnitFixes$Result;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;)V

    invoke-virtual {p0, v1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final runFix$lambda$108$lambda$107(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;Lcom/shilapi/xcertplay/HeadUnitFixes$Result;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;)V
    .locals 3

    const/4 v0, 0x0

    .line 598
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->fixRunning:Z

    .line 599
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->destroyed:Z

    if-eqz v1, :cond_0

    goto :goto_3

    :cond_0
    if-eqz p1, :cond_1

    .line 600
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/HeadUnitFixes$Result;->getOpen()Landroid/content/Intent;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-eqz p1, :cond_2

    .line 602
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/HeadUnitFixes$Result;->getReady()Z

    move-result p1

    if-ne p1, v2, :cond_2

    iget-object p1, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->page:Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->run(Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;)V

    return-void

    :cond_2
    if-eqz v1, :cond_5

    .line 604
    iput-boolean v2, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->awaitingFix:Z

    .line 605
    :try_start_0
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 606
    sget-object p1, Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;->VPN_CONSENT:Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;

    if-ne p2, p1, :cond_3

    const/16 p1, 0x1965

    invoke-virtual {p0, v1, p1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 607
    :cond_3
    sget-object p1, Lcom/shilapi/xcertplay/SystemPageActivity;->Companion:Lcom/shilapi/xcertplay/SystemPageActivity$Companion;

    move-object p2, p0

    check-cast p2, Landroid/content/Context;

    invoke-virtual {p1, p2, v1}, Lcom/shilapi/xcertplay/SystemPageActivity$Companion;->wrap(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->startActivity(Landroid/content/Intent;)V

    .line 608
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 605
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 608
    :goto_2
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 609
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->awaitingFix:Z

    invoke-direct {p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->render()V

    :cond_4
    :goto_3
    return-void

    .line 612
    :cond_5
    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    sget p2, Lcom/shilapi/xcertplay/host/R$string;->check_fix_failed:I

    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 613
    invoke-direct {p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->render()V

    return-void
.end method

.method private final scrollToCurrentRow()V
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->listScroll:Landroid/widget/ScrollView;

    if-nez v0, :cond_0

    return-void

    .line 243
    :cond_0
    new-instance v1, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$$ExternalSyntheticLambda2;-><init>(Landroid/widget/ScrollView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final scrollToCurrentRow$lambda$21(Landroid/widget/ScrollView;)V
    .locals 4

    .line 244
    const-string v0, "headunit-check-current-row"

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-eqz v0, :cond_2

    if-eq v0, p0, :cond_2

    .line 248
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    .line 249
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_1

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 251
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    sub-int/2addr v2, v0

    invoke-static {v2, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    .line 252
    invoke-virtual {p0, v1, v0}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    return-void
.end method

.method private final summaryRow(Lcom/shilapi/xcertplay/HeadUnitCheck$Result;I)Landroid/view/View;
    .locals 10

    .line 475
    invoke-direct {p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->box()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 476
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v2, 0x0

    if-eqz p1, :cond_5

    .line 477
    sget-object v3, Lcom/shilapi/xcertplay/HeadUnitCheck;->INSTANCE:Lcom/shilapi/xcertplay/HeadUnitCheck;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/HeadUnitCheck;->getSUMMARY()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/Pair;

    invoke-virtual {v4}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-virtual {v4}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 478
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Result;->getCommon()Ljava/util/List;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    if-nez v6, :cond_0

    goto :goto_0

    .line 479
    :cond_0
    move-object v7, v1

    check-cast v7, Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_1

    const-string v7, "    "

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v1, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 480
    :cond_1
    invoke-virtual {p0, v4}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const-string v7, " "

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v4, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/4 v4, 0x1

    if-ne v5, v4, :cond_2

    .line 482
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Result;->getPort()Lcom/shilapi/xcertplay/HeadUnitCheck$Port;

    move-result-object v7

    invoke-virtual {v7}, Lcom/shilapi/xcertplay/HeadUnitCheck$Port;->getMoved()Z

    move-result v7

    if-eqz v7, :cond_2

    sget v7, Lcom/shilapi/xcertplay/host/R$string;->chk_port_moved:I

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Result;->getPort()Lcom/shilapi/xcertplay/HeadUnitCheck$Port;

    move-result-object v8

    invoke-virtual {v8}, Lcom/shilapi/xcertplay/HeadUnitCheck$Port;->getFallback()Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-array v9, v4, [Ljava/lang/Object;

    aput-object v8, v9, v2

    invoke-virtual {p0, v7, v9}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_2
    if-ne v5, v4, :cond_3

    .line 483
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Result;->getPort()Lcom/shilapi/xcertplay/HeadUnitCheck$Port;

    move-result-object v7

    invoke-virtual {v7}, Lcom/shilapi/xcertplay/HeadUnitCheck$Port;->getTaken()Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Result;->getPort()Lcom/shilapi/xcertplay/HeadUnitCheck$Port;

    move-result-object v7

    invoke-virtual {v7}, Lcom/shilapi/xcertplay/HeadUnitCheck$Port;->getPreferred()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 484
    :cond_3
    invoke-virtual {v6}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;->getMark()Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->glyph(Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;)Ljava/lang/String;

    move-result-object v7

    .line 481
    :goto_1
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 486
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    .line 487
    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v1, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 488
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    if-ne v5, v4, :cond_4

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Result;->getPort()Lcom/shilapi/xcertplay/HeadUnitCheck$Port;

    move-result-object v4

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/HeadUnitCheck$Port;->getMoved()Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->WARN:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    goto :goto_2

    :cond_4
    invoke-virtual {v6}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;->getMark()Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    move-result-object v4

    :goto_2
    invoke-direct {p0, v4}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->color(Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;)I

    move-result v4

    invoke-direct {v7, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/16 v5, 0x21

    invoke-virtual {v1, v7, v8, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_0

    .line 489
    :cond_5
    sget p1, Lcom/shilapi/xcertplay/host/R$string;->chk_running:I

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 490
    :cond_6
    sget-object p1, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/Glass;->getMUTED()I

    move-result v6

    const/16 v8, 0x8

    const/4 v9, 0x0

    const-string v4, ""

    const/16 v5, 0xf

    const/4 v7, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v9}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->text$default(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;Ljava/lang/String;IIZILjava/lang/Object;)Landroid/widget/TextView;

    move-result-object p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    sget v1, Lcom/shilapi/xcertplay/host/R$string;->chk_common_more:I

    invoke-virtual {p0, v1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "getString(...)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$$ExternalSyntheticLambda17;

    invoke-direct {v4, p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$$ExternalSyntheticLambda17;-><init>(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;)V

    invoke-direct {p0, v1, v2, v4}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->actionButton(Ljava/lang/String;ZLkotlin/jvm/functions/Function0;)Landroid/widget/Button;

    move-result-object v1

    const/16 v4, 0x230

    const/4 v5, -0x2

    if-lt p2, v4, :cond_7

    .line 493
    new-instance p2, Landroid/widget/LinearLayout;

    move-object v4, v3

    check-cast v4, Landroid/content/Context;

    invoke-direct {p2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v4, 0x10

    invoke-virtual {p2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 494
    check-cast p1, Landroid/view/View;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v4, v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    check-cast v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p2, p1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 495
    check-cast v1, Landroid/view/View;

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 v4, 0xc

    invoke-direct {p0, v4}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result v4

    invoke-static {v2, v4}, Lcom/shilapi/xcertplay/LegacyViewsKt;->setMarginStartCompat(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p2, v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 496
    check-cast p2, Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 498
    :cond_7
    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 499
    check-cast v1, Landroid/view/View;

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0xa

    invoke-direct {p0, p2}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result p2

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 501
    :goto_3
    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private static final summaryRow$lambda$77(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;)Lkotlin/Unit;
    .locals 1

    .line 491
    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;->COMMON:Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->go(Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final switchBluetoothOn()V
    .locals 8

    .line 186
    const-string v0, "getApplicationContext(...)"

    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/shilapi/xcertplay/compat/Api19Kt;->bluetoothAdapterCompat(Landroid/content/Context;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

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

    :goto_0
    invoke-static {v1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    check-cast v1, Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_1

    goto/16 :goto_7

    .line 187
    :cond_1
    :try_start_1
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v2, p0

    check-cast v2, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_1
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v2, v3

    :cond_2
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_c

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v2, v3, :cond_3

    goto/16 :goto_7

    .line 188
    :cond_3
    :try_start_2
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v2, p0

    check-cast v2, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;

    sget-object v2, Lcom/shilapi/xcertplay/DiPlayBluetooth;->INSTANCE:Lcom/shilapi/xcertplay/DiPlayBluetooth;

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v1}, Lcom/shilapi/xcertplay/DiPlayBluetooth;->route(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;)Lcom/shilapi/xcertplay/BluetoothRoute;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/BluetoothRoute;->getMayTurnOn()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v0, v3

    :cond_4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_7

    .line 189
    :cond_5
    sget-object v0, Lcom/shilapi/xcertplay/bluetooth/BluetoothEnableGuard;->INSTANCE:Lcom/shilapi/xcertplay/bluetooth/BluetoothEnableGuard;

    .line 190
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 191
    :try_start_3
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v5, p0

    check-cast v5, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v5}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v5

    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v5}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v5}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    move-object v5, v6

    :cond_6
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 189
    new-instance v6, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$$ExternalSyntheticLambda15;

    invoke-direct {v6, v1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$$ExternalSyntheticLambda15;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/shilapi/xcertplay/bluetooth/BluetoothEnableGuard;->requestEnable(JZLkotlin/jvm/functions/Function0;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_7

    .line 194
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const/16 v0, 0x2710

    int-to-long v5, v0

    add-long/2addr v3, v5

    .line 195
    :goto_4
    :try_start_4
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception v0

    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    move-object v0, v5

    :cond_8
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-gez v0, :cond_9

    const-wide/16 v5, 0xfa

    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_4

    .line 196
    :cond_9
    :try_start_5
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object v0, v1

    :cond_a
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/shilapi/xcertplay/bluetooth/BluetoothEnableGuard;->INSTANCE:Lcom/shilapi/xcertplay/bluetooth/BluetoothEnableGuard;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/bluetooth/BluetoothEnableGuard;->noteStayedOn()V

    goto :goto_7

    .line 197
    :cond_b
    sget-object v0, Lcom/shilapi/xcertplay/bluetooth/BluetoothEnableGuard;->INSTANCE:Lcom/shilapi/xcertplay/bluetooth/BluetoothEnableGuard;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/shilapi/xcertplay/bluetooth/BluetoothEnableGuard;->noteDidNotStayOn(J)V

    :cond_c
    :goto_7
    return-void
.end method

.method private static final switchBluetoothOn$lambda$16(Landroid/bluetooth/BluetoothAdapter;)Z
    .locals 0

    .line 192
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result p0

    return p0
.end method

.method private final text(Ljava/lang/String;IIZ)Landroid/widget/TextView;
    .locals 2

    .line 679
    new-instance v0, Landroid/widget/TextView;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 680
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x2

    int-to-float p2, p2

    .line 681
    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 682
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p4, :cond_0

    .line 683
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 684
    :cond_0
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->pageDirection(Landroid/widget/TextView;)Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic text$default(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;Ljava/lang/String;IIZILjava/lang/Object;)Landroid/widget/TextView;
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 679
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method private final tick()V
    .locals 4

    .line 205
    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->running:Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;

    if-nez v0, :cond_0

    goto :goto_0

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->pending:Lcom/shilapi/xcertplay/HeadUnitCheck$Result;

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v1, v0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->items(Lcom/shilapi/xcertplay/HeadUnitCheck$Result;Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;)Ljava/util/List;

    move-result-object v1

    .line 207
    sget-object v2, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;->OVERVIEW:Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    .line 208
    invoke-direct {p0, v3}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->finishRun(Z)V

    return-void

    .line 211
    :cond_2
    iget v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->progress:I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_3

    .line 212
    invoke-direct {p0, v3}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->finishRun(Z)V

    return-void

    .line 215
    :cond_3
    iget v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->progress:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->progress:I

    .line 216
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;

    .line 217
    invoke-direct {p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->render()V

    .line 218
    invoke-direct {p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->scrollToCurrentRow()V

    .line 219
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;->getMark()Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    move-result-object v0

    sget-object v1, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->BAD:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    const-wide/16 v2, 0xb4

    if-ne v0, v1, :cond_4

    .line 220
    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$$ExternalSyntheticLambda23;-><init>(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 223
    :cond_4
    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$$ExternalSyntheticLambda24;-><init>(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final tick$lambda$19(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;)V
    .locals 1

    .line 220
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->destroyed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->finishRun(Z)V

    :cond_0
    return-void
.end method

.method private static final tick$lambda$20(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;)V
    .locals 1

    .line 223
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->destroyed:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->tick()V

    :cond_0
    return-void
.end method

.method private final title()Landroid/widget/TextView;
    .locals 8

    .line 325
    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->page:Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;

    sget-object v1, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v5, 0x3

    if-eq v0, v5, :cond_1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 326
    sget v0, Lcom/shilapi/xcertplay/host/R$string;->chk_title:I

    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->lastChecked()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    goto :goto_0

    .line 325
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 329
    :cond_1
    sget v0, Lcom/shilapi/xcertplay/host/R$string;->chk_common_page:I

    sget-object v5, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->Companion:Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Companion;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Companion;->getCOMMON_COUNT()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v5, v6, v3

    invoke-virtual {p0, v0, v6}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    goto :goto_0

    .line 328
    :cond_2
    sget v0, Lcom/shilapi/xcertplay/host/R$string;->chk_wireless_page:I

    sget-object v5, Lcom/shilapi/xcertplay/ConnectionSteps;->INSTANCE:Lcom/shilapi/xcertplay/ConnectionSteps;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/ConnectionSteps;->getWIRELESS()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v5, v6, v3

    invoke-virtual {p0, v0, v6}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    goto :goto_0

    .line 327
    :cond_3
    sget v0, Lcom/shilapi/xcertplay/host/R$string;->chk_wired_page:I

    sget-object v5, Lcom/shilapi/xcertplay/ConnectionSteps;->INSTANCE:Lcom/shilapi/xcertplay/ConnectionSteps;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/ConnectionSteps;->getWIRED()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v5, v6, v3

    invoke-virtual {p0, v0, v6}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 325
    :goto_0
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    const-string v5, "component1(...)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 331
    new-instance v5, Landroid/text/SpannableStringBuilder;

    move-object v6, v2

    check-cast v6, Ljava/lang/CharSequence;

    invoke-direct {v5, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 332
    new-instance v6, Landroid/text/style/StyleSpan;

    invoke-direct {v6, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v7, 0x21

    invoke-virtual {v5, v6, v3, v2, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    if-eqz v0, :cond_4

    .line 334
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 335
    const-string v3, "   "

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v5, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 336
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v3, 0xf

    invoke-direct {v0, v3, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v5, v0, v2, v3, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 337
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    sget-object v3, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/Glass;->getMUTED()I

    move-result v3

    invoke-direct {v0, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v5, v0, v2, v3, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 339
    :cond_4
    new-instance v0, Landroid/widget/TextView;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 340
    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    sget-object v1, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/Glass;->getTEXT()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->pageDirection(Landroid/widget/TextView;)Landroid/widget/TextView;

    return-object v0
.end method

.method private final verdictCard(Lcom/shilapi/xcertplay/HeadUnitCheck$Result;Z)Landroid/view/View;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v7, p2

    .line 446
    invoke-direct {v0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->box()Landroid/widget/LinearLayout;

    move-result-object v8

    if-eqz p1, :cond_1

    if-eqz v7, :cond_0

    .line 447
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Result;->getWirelessVerdict()Lcom/shilapi/xcertplay/HeadUnitCheck$Verdict;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Result;->getWiredVerdict()Lcom/shilapi/xcertplay/HeadUnitCheck$Verdict;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move-object v9, v1

    .line 448
    new-instance v1, Landroid/widget/LinearLayout;

    move-object v10, v0

    check-cast v10, Landroid/content/Context;

    invoke-direct {v1, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    if-eqz v7, :cond_2

    .line 449
    sget v2, Lcom/shilapi/xcertplay/host/R$string;->chk_wireless_title:I

    goto :goto_1

    :cond_2
    sget v2, Lcom/shilapi/xcertplay/host/R$string;->chk_wired_title:I

    :goto_1
    invoke-virtual {v0, v2}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v12, "getString(...)"

    invoke-static {v2, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/Glass;->getTEXT()I

    move-result v3

    const/16 v4, 0x13

    const/4 v13, 0x1

    invoke-direct {v0, v2, v4, v3, v13}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 450
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x2

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-direct {v3, v11, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    check-cast v3, Landroid/view/ViewGroup$LayoutParams;

    .line 449
    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 452
    iget-object v2, v0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->running:Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;

    sget-object v3, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;->OVERVIEW:Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;

    if-eq v2, v3, :cond_5

    if-nez v9, :cond_3

    goto :goto_3

    .line 453
    :cond_3
    sget-object v2, Lcom/shilapi/xcertplay/HeadUnitCheckSummary;->INSTANCE:Lcom/shilapi/xcertplay/HeadUnitCheckSummary;

    invoke-virtual {v9}, Lcom/shilapi/xcertplay/HeadUnitCheck$Verdict;->getState()Lcom/shilapi/xcertplay/HeadUnitCheck$State;

    move-result-object v3

    invoke-virtual {v9}, Lcom/shilapi/xcertplay/HeadUnitCheck$Verdict;->getStep()I

    move-result v4

    invoke-virtual {v2, v10, v3, v4}, Lcom/shilapi/xcertplay/HeadUnitCheckSummary;->word(Landroid/content/Context;Lcom/shilapi/xcertplay/HeadUnitCheck$State;I)Lkotlin/Pair;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    .line 454
    sget-object v4, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->GOOD:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    if-ne v2, v4, :cond_4

    sget-object v2, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/Glass;->getGOOD()I

    move-result v2

    goto :goto_2

    :cond_4
    sget-object v2, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/Glass;->getBAD()I

    move-result v2

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    goto :goto_4

    .line 452
    :cond_5
    :goto_3
    sget v2, Lcom/shilapi/xcertplay/host/R$string;->chk_running:I

    invoke-virtual {v0, v2}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/Glass;->getMUTED()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    .line 451
    :goto_4
    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "component1(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 456
    invoke-direct {v0, v3, v2}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->pill(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v14, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v4, v3

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 v5, 0x8

    invoke-direct {v0, v5}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result v6

    invoke-static {v4, v6}, Lcom/shilapi/xcertplay/LegacyViewsKt;->setMarginStartCompat(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 457
    check-cast v1, Landroid/view/View;

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-eqz v9, :cond_6

    .line 459
    invoke-virtual {v9}, Lcom/shilapi/xcertplay/HeadUnitCheck$Verdict;->getReason()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->join(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/Glass;->getTEXT()I

    move-result v3

    const/16 v2, 0x8

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/16 v4, 0x8

    const/16 v2, 0x11

    const/16 v16, 0x8

    const/4 v4, 0x0

    const/16 v14, 0x8

    invoke-static/range {v0 .. v6}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->text$default(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;Ljava/lang/String;IIZILjava/lang/Object;)Landroid/widget/TextView;

    move-result-object v1

    invoke-direct {v0, v14}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result v2

    invoke-virtual {v1, v11, v2, v11, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    check-cast v1, Landroid/view/View;

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 460
    invoke-virtual {v9}, Lcom/shilapi/xcertplay/HeadUnitCheck$Verdict;->getAdvice()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->join(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/Glass;->getMUTED()I

    move-result v3

    const/16 v2, 0xf

    invoke-static/range {v0 .. v6}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->text$default(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;Ljava/lang/String;IIZILjava/lang/Object;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result v2

    invoke-virtual {v1, v11, v2, v11, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    check-cast v1, Landroid/view/View;

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_5

    :cond_6
    const/16 v14, 0x8

    .line 463
    :goto_5
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v10}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v13, v11, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v8, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 464
    sget-object v1, Lcom/shilapi/xcertplay/ConnectionSteps;->INSTANCE:Lcom/shilapi/xcertplay/ConnectionSteps;

    invoke-virtual {v1, v7}, Lcom/shilapi/xcertplay/ConnectionSteps;->count(Z)I

    move-result v1

    if-eqz v7, :cond_7

    .line 465
    sget-object v2, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;->WIRELESS:Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;

    goto :goto_6

    :cond_7
    sget-object v2, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;->WIRED:Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;

    .line 466
    :goto_6
    sget v3, Lcom/shilapi/xcertplay/host/R$string;->chk_view_n:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v4, v13, [Ljava/lang/Object;

    aput-object v1, v4, v11

    invoke-virtual {v0, v3, v4}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$$ExternalSyntheticLambda12;

    invoke-direct {v3, v0, v2}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$$ExternalSyntheticLambda12;-><init>(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;)V

    invoke-direct {v0, v1, v11, v3}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->actionButton(Ljava/lang/String;ZLkotlin/jvm/functions/Function0;)Landroid/widget/Button;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 467
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xc

    invoke-direct {v0, v5}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast v3, Landroid/view/ViewGroup$LayoutParams;

    .line 466
    invoke-virtual {v8, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v7, :cond_8

    .line 468
    sget v1, Lcom/shilapi/xcertplay/host/R$string;->chk_run_wireless:I

    goto :goto_7

    :cond_8
    sget v1, Lcom/shilapi/xcertplay/host/R$string;->chk_run_wired:I

    :goto_7
    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$$ExternalSyntheticLambda13;

    invoke-direct {v3, v0, v2}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$$ExternalSyntheticLambda13;-><init>(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;)V

    invoke-direct {v0, v1, v13, v3}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->actionButton(Ljava/lang/String;ZLkotlin/jvm/functions/Function0;)Landroid/widget/Button;

    move-result-object v1

    .line 470
    iget-object v2, v0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->running:Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;

    if-nez v2, :cond_9

    const/4 v11, 0x1

    :cond_9
    invoke-virtual {v1, v11}, Landroid/widget/Button;->setEnabled(Z)V

    check-cast v1, Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-direct {v0, v14}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dp(I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    .line 468
    invoke-virtual {v8, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 471
    check-cast v8, Landroid/view/View;

    return-object v8
.end method

.method private static final verdictCard$lambda$71(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;)Lkotlin/Unit;
    .locals 0

    .line 466
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->go(Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final verdictCard$lambda$73(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;)Lkotlin/Unit;
    .locals 0

    .line 469
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->go(Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;)V

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->run(Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;)V

    .line 470
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final write(Lcom/shilapi/xcertplay/HeadUnitCheck$Result;)V
    .locals 6

    .line 264
    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCheck;->INSTANCE:Lcom/shilapi/xcertplay/HeadUnitCheck;

    new-instance v1, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$write$text$1;

    invoke-direct {v1, p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$write$text$1;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    new-instance v2, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$$ExternalSyntheticLambda4;-><init>(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/shilapi/xcertplay/HeadUnitCheck;->toText(Lcom/shilapi/xcertplay/HeadUnitCheck$Result;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object p1

    .line 265
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->lines(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DiPlayCheck"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 266
    new-array v1, v0, [Ljava/io/File;

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v3, p0

    check-cast v3, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;

    invoke-virtual {p0, v2}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v3}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :goto_1
    invoke-static {v3}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v3, v2

    :cond_2
    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->getFilesDir()Ljava/io/File;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 721
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 267
    :try_start_1
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v4, p0

    check-cast v4, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;

    new-instance v4, Ljava/io/File;

    const-string v5, "headunit-check.txt"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4, p1, v2, v0, v2}, Lkotlin/io/FilesKt;->writeText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v3

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v3}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :goto_2
    invoke-static {v3}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_4
    return-void
.end method

.method private static final write$lambda$22(Lcom/shilapi/xcertplay/HeadUnitCheckActivity;I)Ljava/lang/String;
    .locals 0

    .line 264
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "getString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "newBase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    sget-object v0, Lcom/shilapi/xcertplay/CarDisplay;->INSTANCE:Lcom/shilapi/xcertplay/CarDisplay;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/CarDisplay;->wrap(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Activity.onBackPressed"
    .end annotation

    .line 136
    invoke-direct {p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->goBack()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 111
    sget-object v0, Lcom/shilapi/xcertplay/CarDisplay;->INSTANCE:Lcom/shilapi/xcertplay/CarDisplay;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/CarDisplay;->onConfigurationChanged(Landroid/content/Context;)V

    .line 112
    sget-object v0, Lcom/shilapi/xcertplay/Appearance;->INSTANCE:Lcom/shilapi/xcertplay/Appearance;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcom/shilapi/xcertplay/Appearance;->isDark$default(Lcom/shilapi/xcertplay/Appearance;Landroid/content/Context;Ljava/util/Calendar;ILjava/lang/Object;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->dark:Z

    if-ne v0, v1, :cond_1

    iget p1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->builtWidthDp:I

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->render()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v0, 0x1

    .line 130
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->destroyed:Z

    .line 131
    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 132
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->appearanceCheck:Lcom/shilapi/xcertplay/HeadUnitCheckActivity$appearanceCheck$1;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 126
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 105
    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->page:Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "page"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->backStack:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .line 717
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 718
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 719
    check-cast v2, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;

    .line 106
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Page;->name()Ljava/lang/String;

    move-result-object v2

    .line 719
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 720
    :cond_0
    check-cast v1, Ljava/util/List;

    .line 717
    check-cast v1, Ljava/util/Collection;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "back"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method
