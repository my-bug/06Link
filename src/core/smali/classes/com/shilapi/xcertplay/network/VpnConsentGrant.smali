.class public final Lcom/shilapi/xcertplay/network/VpnConsentGrant;
.super Ljava/lang/Object;
.source "VpnConsentGrant.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVpnConsentGrant.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VpnConsentGrant.kt\ncom/shilapi/xcertplay/network/VpnConsentGrant\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,67:1\n1#2:68\n1255#3,2:69\n*S KotlinDebug\n*F\n+ 1 VpnConsentGrant.kt\ncom/shilapi/xcertplay/network/VpnConsentGrant\n*L\n65#1:69,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0007J\u0017\u0010\u000e\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000f\u001a\u00020\u0007H\u0000\u00a2\u0006\u0002\u0008\u0010JM\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u000c2\u0018\u0010\u0015\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u0017\u0012\u0004\u0012\u00020\u00180\u00162\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001aH\u0000\u00a2\u0006\u0002\u0008\u001cJ\u0012\u0010\u001d\u001a\u00020\u000c2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0007H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/VpnConsentGrant;",
        "",
        "<init>",
        "()V",
        "PACKAGE",
        "Lkotlin/text/Regex;",
        "RC",
        "",
        "grant",
        "context",
        "Landroid/content/Context;",
        "granted",
        "",
        "result",
        "command",
        "packageName",
        "command$shared_release",
        "run",
        "sdk",
        "",
        "suAvailable",
        "runSu",
        "Lkotlin/Function1;",
        "",
        "Lcom/shilapi/xcertplay/network/RootShell$Result;",
        "openAdb",
        "Lkotlin/Function0;",
        "Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;",
        "run$shared_release",
        "ranOk",
        "output",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/network/VpnConsentGrant;

.field private static final PACKAGE:Lkotlin/text/Regex;

.field private static final RC:Ljava/lang/String; = "FA_RC"


# direct methods
.method public static synthetic $r8$lambda$qjyzv8eSNxNxKECWkZAgbymQBis(Ljava/util/List;)Lcom/shilapi/xcertplay/network/RootShell$Result;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/network/VpnConsentGrant;->grant$lambda$0(Ljava/util/List;)Lcom/shilapi/xcertplay/network/RootShell$Result;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$y8qqa3P7Eeeu1-J0o6a3k1H3W9Q(Landroid/content/Context;)Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/network/VpnConsentGrant;->grant$lambda$1(Landroid/content/Context;)Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/network/VpnConsentGrant;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/network/VpnConsentGrant;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/network/VpnConsentGrant;->INSTANCE:Lcom/shilapi/xcertplay/network/VpnConsentGrant;

    .line 15
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "[A-Za-z][A-Za-z0-9_]*(\\.[A-Za-z][A-Za-z0-9_]*)+"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shilapi/xcertplay/network/VpnConsentGrant;->PACKAGE:Lkotlin/text/Regex;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final grant$lambda$0(Ljava/util/List;)Lcom/shilapi/xcertplay/network/RootShell$Result;
    .locals 3

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget-object v0, Lcom/shilapi/xcertplay/network/RootShell;->INSTANCE:Lcom/shilapi/xcertplay/network/RootShell;

    const-wide/16 v1, 0xfa0

    invoke-virtual {v0, p0, v1, v2}, Lcom/shilapi/xcertplay/network/RootShell;->run(Ljava/util/List;J)Lcom/shilapi/xcertplay/network/RootShell$Result;

    move-result-object p0

    return-object p0
.end method

.method private static final grant$lambda$1(Landroid/content/Context;)Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;
    .locals 2

    .line 24
    sget-object v0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->INSTANCE:Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->openAdb(Landroid/content/Context;Z)Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;

    move-result-object p0

    return-object p0
.end method

.method private final ranOk(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 65
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->lineSequence(Ljava/lang/CharSequence;)Lkotlin/sequences/Sequence;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 69
    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 65
    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FA_RC=0"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method


# virtual methods
.method public final command$shared_release(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    sget-object v0, Lcom/shilapi/xcertplay/network/VpnConsentGrant;->PACKAGE:Lkotlin/text/Regex;

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/system/bin/appops set "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ACTIVATE_VPN allow"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final grant(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v0, "getPackageName(...)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 22
    sget-object v0, Lcom/shilapi/xcertplay/network/RootShell;->INSTANCE:Lcom/shilapi/xcertplay/network/RootShell;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/RootShell;->available()Z

    move-result v4

    new-instance v5, Lcom/shilapi/xcertplay/network/VpnConsentGrant$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/shilapi/xcertplay/network/VpnConsentGrant$$ExternalSyntheticLambda0;-><init>()V

    .line 19
    new-instance v6, Lcom/shilapi/xcertplay/network/VpnConsentGrant$$ExternalSyntheticLambda1;

    invoke-direct {v6, p1}, Lcom/shilapi/xcertplay/network/VpnConsentGrant$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/shilapi/xcertplay/network/VpnConsentGrant;->run$shared_release(Ljava/lang/String;IZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final granted(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    const-string/jumbo v0, "su"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "adb-root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "adb-su"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final run$shared_release(Ljava/lang/String;IZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/shilapi/xcertplay/network/RootShell$Result;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "id"

    const-string v1, "packageName"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "runSu"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "openAdb"

    invoke-static {p5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x15

    if-ge p2, v1, :cond_0

    .line 42
    const-string/jumbo p1, "skipped"

    return-object p1

    .line 43
    :cond_0
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/network/VpnConsentGrant;->command$shared_release(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "refused"

    return-object p1

    :cond_1
    if-eqz p3, :cond_2

    .line 44
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p4, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shilapi/xcertplay/network/RootShell$Result;

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/network/RootShell$Result;->getOk()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string/jumbo p1, "su"

    return-object p1

    .line 45
    :cond_2
    :try_start_0
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-interface {p5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    sget-object p3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :goto_0
    invoke-static {p2}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    const/4 p2, 0x0

    :cond_3
    check-cast p2, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;

    const-string p3, "none"

    if-nez p2, :cond_4

    return-object p3

    .line 47
    :cond_4
    :try_start_1
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;->getShell()Lkotlin/jvm/functions/Function1;

    move-result-object p4

    .line 48
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;->getAccess()Lcom/shilapi/xcertplay/adb/LocalAdb$Access;

    move-result-object p5

    sget-object v1, Lcom/shilapi/xcertplay/adb/LocalAdb$Access;->READY:Lcom/shilapi/xcertplay/adb/LocalAdb$Access;

    if-ne p5, v1, :cond_b

    if-nez p4, :cond_5

    goto/16 :goto_5

    .line 49
    :cond_5
    invoke-interface {p4, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 50
    sget-object v1, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->INSTANCE:Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;

    invoke-virtual {v1, p5}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->isRoot(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 51
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;->getRestartAsRoot()Lkotlin/jvm/functions/Function0;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    if-eqz v1, :cond_7

    :try_start_2
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_3
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_1
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v1, v2

    :cond_6
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    .line 52
    invoke-interface {p4, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 54
    :cond_7
    sget-object v0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->INSTANCE:Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;

    invoke-virtual {v0, p5}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->isRoot(Ljava/lang/String;)Z

    move-result p5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    const-string v0, "; echo FA_RC=$?"

    if-eqz p5, :cond_9

    .line 55
    :try_start_4
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/network/VpnConsentGrant;->ranOk(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p3, "adb-root"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 61
    :cond_8
    :try_start_5
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object p1, p0

    check-cast p1, Lcom/shilapi/xcertplay/network/VpnConsentGrant;

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;->getClose()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-object p3

    .line 57
    :cond_9
    :try_start_6
    sget-object p5, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->INSTANCE:Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;

    invoke-virtual {p5, p4}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->suForm(Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object p5

    if-eqz p5, :cond_a

    .line 58
    sget-object v1, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->INSTANCE:Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;

    invoke-virtual {v1, p5, p1}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->wrap$shared_release(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/network/VpnConsentGrant;->ranOk(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "adb-su"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 61
    :try_start_7
    sget-object p3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object p3, p0

    check-cast p3, Lcom/shilapi/xcertplay/network/VpnConsentGrant;

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;->getClose()Lkotlin/jvm/functions/Function0;

    move-result-object p2

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p2

    sget-object p3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    return-object p1

    :cond_a
    :try_start_8
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object p1, p0

    check-cast p1, Lcom/shilapi/xcertplay/network/VpnConsentGrant;

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;->getClose()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception p1

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    return-object p3

    :cond_b
    :goto_5
    :try_start_9
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object p1, p0

    check-cast p1, Lcom/shilapi/xcertplay/network/VpnConsentGrant;

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;->getClose()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception p1

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    return-object p3

    :catchall_6
    move-exception p1

    :try_start_a
    sget-object p3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;->getClose()Lkotlin/jvm/functions/Function0;

    move-result-object p2

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    goto :goto_7

    :catchall_7
    move-exception p2

    sget-object p3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7
    throw p1
.end method
