.class public final Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;
.super Ljava/lang/Object;
.source "Ipv6RouteRepair.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;,
        Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;,
        Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIpv6RouteRepair.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Ipv6RouteRepair.kt\ncom/shilapi/xcertplay/network/Ipv6RouteRepair\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,166:1\n1740#2,3:167\n1740#2,3:173\n1740#2,3:176\n1#3:170\n1255#4,2:171\n*S KotlinDebug\n*F\n+ 1 Ipv6RouteRepair.kt\ncom/shilapi/xcertplay/network/Ipv6RouteRepair\n*L\n51#1:167,3\n94#1:173,3\n103#1:176,3\n164#1:171,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0013\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0003/01B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\n\u001a\u00020\u000bJ\u001b\u0010\u000c\u001a\u00020\u000b2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000eH\u0000\u00a2\u0006\u0002\u0008\u000fJa\u0010\u0010\u001a\u00020\u00112\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000e2\u0006\u0010\u0012\u001a\u00020\u000b2\u0018\u0010\u0013\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u000e\u0012\u0004\u0012\u00020\u00150\u00142\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00192\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001bH\u0000\u00a2\u0006\u0002\u0008\u001dJ\u0016\u0010\u001a\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u000bJ\u0010\u0010!\u001a\u00020\u000b2\u0008\u0010\"\u001a\u0004\u0018\u00010\u0007J\u001d\u0010#\u001a\u0004\u0018\u00010\u00072\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000eH\u0000\u00a2\u0006\u0002\u0008$J\u0019\u0010%\u001a\u0004\u0018\u00010\u00072\u0008\u0010\"\u001a\u0004\u0018\u00010\u0007H\u0000\u00a2\u0006\u0002\u0008&J\u001e\u0010\'\u001a\u0004\u0018\u00010\u00072\u0014\u0010(\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0014J\u001d\u0010)\u001a\u00020\u00072\u0006\u0010*\u001a\u00020\u00072\u0006\u0010+\u001a\u00020\u0007H\u0000\u00a2\u0006\u0002\u0008,J\u0012\u0010-\u001a\u00020\u000b2\u0008\u0010.\u001a\u0004\u0018\u00010\u0007H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00062"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;",
        "",
        "<init>",
        "()V",
        "COMMAND",
        "Lkotlin/text/Regex;",
        "RC",
        "",
        "askedAdb",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "claimAdbPrompt",
        "",
        "safe",
        "commands",
        "",
        "safe$shared_release",
        "run",
        "Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;",
        "suAvailable",
        "runSu",
        "Lkotlin/Function1;",
        "Lcom/shilapi/xcertplay/network/RootShell$Result;",
        "prefer",
        "Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;",
        "sdk",
        "",
        "openAdb",
        "Lkotlin/Function0;",
        "Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;",
        "run$shared_release",
        "context",
        "Landroid/content/Context;",
        "mayAsk",
        "isRoot",
        "idOutput",
        "ifaceOf",
        "ifaceOf$shared_release",
        "uidOf",
        "uidOf$shared_release",
        "suForm",
        "shell",
        "wrap",
        "form",
        "command",
        "wrap$shared_release",
        "ranOk",
        "output",
        "Via",
        "AdbLink",
        "Attempt",
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
.field private static final COMMAND:Lkotlin/text/Regex;

.field public static final INSTANCE:Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;

.field private static final RC:Ljava/lang/String; = "FA_RC"

.field private static final askedAdb:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static synthetic $r8$lambda$HXsCFR9HBksoYoDLN5fDMLhKThs(Lcom/shilapi/xcertplay/adb/LocalAdb;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->openAdb$lambda$12(Lcom/shilapi/xcertplay/adb/LocalAdb;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ILSEOB-WJahJ8Y3UOnW1537cKi8(Lcom/shilapi/xcertplay/adb/LocalAdb;)Z
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->openAdb$lambda$10(Lcom/shilapi/xcertplay/adb/LocalAdb;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$QVLVaK_mlyD5LLQ9mVEjsFhT_co(Lcom/shilapi/xcertplay/adb/LocalAdb;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->openAdb$lambda$11(Lcom/shilapi/xcertplay/adb/LocalAdb;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Ws3_rWMTbTl2j_YYoMGmE-igAKs(Lkotlin/jvm/functions/Function1;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->run$tryAdb$lambda$6(Lkotlin/jvm/functions/Function1;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->INSTANCE:Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;

    .line 41
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "ip -6 route replace fe80::/64 dev [A-Za-z0-9_.-]{1,32}( table [A-Za-z0-9_.-]{1,32})?"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->COMMAND:Lkotlin/text/Regex;

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->askedAdb:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$run$tryAdb(Lkotlin/jvm/functions/Function0;Ljava/util/List;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/util/List;I)Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;
    .locals 0

    .line 19
    invoke-static {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->run$tryAdb(Lkotlin/jvm/functions/Function0;Ljava/util/List;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/util/List;I)Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$run$trySu(ZLjava/util/List;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/functions/Function1;Ljava/util/List;)Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;
    .locals 0

    .line 19
    invoke-static {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->run$trySu(ZLjava/util/List;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/functions/Function1;Ljava/util/List;)Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;

    move-result-object p0

    return-object p0
.end method

.method private static final openAdb$lambda$10(Lcom/shilapi/xcertplay/adb/LocalAdb;)Z
    .locals 1

    .line 139
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/adb/LocalAdb;->restartAsRoot()Lcom/shilapi/xcertplay/adb/LocalAdb$RootResult;

    move-result-object p0

    sget-object v0, Lcom/shilapi/xcertplay/adb/LocalAdb$RootResult;->RESTARTED:Lcom/shilapi/xcertplay/adb/LocalAdb$RootResult;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/shilapi/xcertplay/adb/LocalAdb$RootResult;->ALREADY_ROOT:Lcom/shilapi/xcertplay/adb/LocalAdb$RootResult;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static final openAdb$lambda$11(Lcom/shilapi/xcertplay/adb/LocalAdb;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "command"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x1d4c0

    .line 142
    invoke-virtual {p0, p1, v0}, Lcom/shilapi/xcertplay/adb/LocalAdb;->shell(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final openAdb$lambda$12(Lcom/shilapi/xcertplay/adb/LocalAdb;)Lkotlin/Unit;
    .locals 0

    .line 141
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/adb/LocalAdb;->close()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final ranOk(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 164
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->lineSequence(Ljava/lang/CharSequence;)Lkotlin/sequences/Sequence;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 171
    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 164
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

.method public static synthetic run$shared_release$default(Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;Ljava/util/List;ZLkotlin/jvm/functions/Function1;Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;
    .locals 7

    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_0

    const/4 p4, 0x0

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p7, 0x10

    if-eqz p4, :cond_1

    .line 63
    sget p5, Landroid/os/Build$VERSION;->SDK_INT:I

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p5

    move-object v6, p6

    .line 58
    invoke-virtual/range {v0 .. v6}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->run$shared_release(Ljava/util/List;ZLkotlin/jvm/functions/Function1;Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;ILkotlin/jvm/functions/Function0;)Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;

    move-result-object p0

    return-object p0
.end method

.method private static final run$tryAdb(Lkotlin/jvm/functions/Function0;Ljava/util/List;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/util/List;I)Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;"
        }
    .end annotation

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    .line 80
    const-string v4, "id"

    .line 0
    const-string v5, "adbNms:"

    const-string v6, "adbSu="

    const-string v7, "adbUid="

    const-string v8, "adb="

    .line 80
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-interface/range {p0 .. p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v9, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v9

    const/4 v10, 0x0

    if-nez v9, :cond_10

    move-object v9, v0

    check-cast v9, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;

    .line 82
    :try_start_1
    move-object/from16 v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v9}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;->getAccess()Lcom/shilapi/xcertplay/adb/LocalAdb$Access;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-virtual {v9}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;->getShell()Lkotlin/jvm/functions/Function1;

    move-result-object v8

    .line 84
    invoke-virtual {v9}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;->getAccess()Lcom/shilapi/xcertplay/adb/LocalAdb$Access;

    move-result-object v0

    sget-object v11, Lcom/shilapi/xcertplay/adb/LocalAdb$Access;->READY:Lcom/shilapi/xcertplay/adb/LocalAdb$Access;

    if-ne v0, v11, :cond_f

    if-nez v8, :cond_0

    goto/16 :goto_c

    .line 85
    :cond_0
    new-instance v11, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-interface {v8, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->INSTANCE:Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;

    iget-object v12, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v0, v12}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->isRoot(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v9}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;->getRestartAsRoot()Lkotlin/jvm/functions/Function0;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    if-eqz v0, :cond_3

    .line 88
    :try_start_2
    sget-object v12, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_3
    sget-object v12, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    move-object v0, v12

    :cond_1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object/from16 v0, p1

    check-cast v0, Ljava/util/Collection;

    const-string v12, "adbRootRestart=ok"

    invoke-interface {v0, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_2

    .line 89
    :cond_2
    move-object/from16 v0, p1

    check-cast v0, Ljava/util/Collection;

    const-string v4, "adbRootRestart=no"

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_3
    :goto_2
    sget-object v0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->INSTANCE:Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;

    iget-object v4, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->isRoot(Ljava/lang/String;)Z

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_a

    const-string v12, "; echo FA_RC=$?"

    const-string v13, " "

    const/4 v14, 0x1

    if-eqz v4, :cond_7

    .line 92
    :try_start_4
    move-object/from16 v0, p1

    check-cast v0, Ljava/util/Collection;

    const-string v3, "adbUid=0"

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 93
    iput-boolean v14, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 94
    move-object v0, v2

    check-cast v0, Ljava/lang/Iterable;

    .line 173
    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_4

    .line 174
    :cond_4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 94
    sget-object v2, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->INSTANCE:Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v1}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->ranOk(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 95
    move-object/from16 v0, p1

    check-cast v0, Ljava/util/Collection;

    const-string v1, "adb-root=failed"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_a

    .line 121
    :try_start_5
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v9}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;->getClose()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    return-object v10

    .line 94
    :cond_6
    :goto_4
    :try_start_6
    new-instance v1, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;

    sget-object v0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;->ADB_ROOT:Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;

    move-object/from16 v15, p1

    check-cast v15, Ljava/lang/Iterable;

    move-object/from16 v16, v13

    check-cast v16, Ljava/lang/CharSequence;

    const/16 v22, 0x3e

    const/16 v23, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v15 .. v23}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v14, v14, v2}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;-><init>(Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;ZZLjava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_a

    .line 121
    :try_start_7
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v9}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;->getClose()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    return-object v1

    .line 98
    :cond_7
    :try_start_8
    move-object/from16 v4, p1

    check-cast v4, Ljava/util/Collection;

    iget-object v11, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v0, v11}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->uidOf$shared_release(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_8

    const-string/jumbo v11, "unknown"

    :cond_8
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-virtual {v0, v8}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->suForm(Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_c

    .line 101
    move-object/from16 v0, p1

    check-cast v0, Ljava/util/Collection;

    const/16 v19, 0x4

    const/16 v20, 0x0

    const/16 v16, 0x20

    const/16 v17, 0x5f

    const/16 v18, 0x0

    invoke-static/range {v15 .. v20}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 102
    iput-boolean v14, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 103
    move-object v0, v2

    check-cast v0, Ljava/lang/Iterable;

    .line 176
    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_9

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_7

    .line 177
    :cond_9
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 103
    sget-object v2, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->INSTANCE:Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;

    invoke-virtual {v2, v15, v1}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->wrap$shared_release(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v1}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->ranOk(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 104
    move-object/from16 v0, p1

    check-cast v0, Ljava/util/Collection;

    const-string v1, "adb-su=failed"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_a

    .line 121
    :try_start_9
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v9}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;->getClose()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_6

    :catchall_4
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    return-object v10

    .line 103
    :cond_b
    :goto_7
    :try_start_a
    new-instance v1, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;

    sget-object v0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;->ADB_SU:Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;

    move-object/from16 v15, p1

    check-cast v15, Ljava/lang/Iterable;

    move-object/from16 v16, v13

    check-cast v16, Ljava/lang/CharSequence;

    const/16 v22, 0x3e

    const/16 v23, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v15 .. v23}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v14, v14, v2}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;-><init>(Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;ZZLjava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    .line 121
    :try_start_b
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v9}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;->getClose()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_8

    :catchall_5
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8
    return-object v1

    .line 107
    :cond_c
    :try_start_c
    move-object/from16 v4, p1

    check-cast v4, Ljava/util/Collection;

    const-string v6, "adbSu=none"

    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-virtual {v0, v2}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->ifaceOf$shared_release(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    const/16 v2, 0x18

    if-gt v2, v3, :cond_e

    const/16 v2, 0x1d

    if-ge v3, v2, :cond_e

    .line 112
    sget-object v2, Lcom/shilapi/xcertplay/network/AdbNmsRouteRepair;->INSTANCE:Lcom/shilapi/xcertplay/network/AdbNmsRouteRepair;

    new-instance v4, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$$ExternalSyntheticLambda3;

    invoke-direct {v4, v8}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v2, v3, v0, v4}, Lcom/shilapi/xcertplay/network/AdbNmsRouteRepair;->repair(ILjava/lang/String;Lkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/network/AdbNmsRouteRepair$Result;

    move-result-object v0

    .line 113
    iput-boolean v14, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 114
    move-object/from16 v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/AdbNmsRouteRepair$Result;->getDetail()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/AdbNmsRouteRepair$Result;->getOk()Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v1, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;

    sget-object v0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;->ADB_NMS:Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;

    move-object/from16 v15, p1

    check-cast v15, Ljava/lang/Iterable;

    move-object/from16 v16, v13

    check-cast v16, Ljava/lang/CharSequence;

    const/16 v22, 0x3e

    const/16 v23, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v15 .. v23}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v14, v14, v2}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;-><init>(Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;ZZLjava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    .line 121
    :try_start_d
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v9}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;->getClose()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    goto :goto_9

    :catchall_6
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9
    return-object v1

    :cond_d
    :try_start_e
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v9}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;->getClose()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    goto :goto_a

    :catchall_7
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_a
    return-object v10

    .line 118
    :cond_e
    :try_start_f
    move-object/from16 v0, p1

    check-cast v0, Ljava/util/Collection;

    const-string v1, "adbNms=unavailable"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    .line 121
    :try_start_10
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v9}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;->getClose()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    goto :goto_b

    :catchall_8
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_b
    return-object v10

    :cond_f
    :goto_c
    :try_start_11
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v9}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;->getClose()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    goto :goto_d

    :catchall_9
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_d
    return-object v10

    :catchall_a
    move-exception v0

    move-object v1, v0

    :try_start_12
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v9}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;->getClose()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    goto :goto_e

    :catchall_b
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_e
    throw v1

    .line 80
    :cond_10
    move-object/from16 v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "adb=error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object v10
.end method

.method private static final run$tryAdb$lambda$6(Lkotlin/jvm/functions/Function1;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static final run$trySu(ZLjava/util/List;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/functions/Function1;Ljava/util/List;)Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/shilapi/xcertplay/network/RootShell$Result;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 71
    check-cast p1, Ljava/util/Collection;

    const-string/jumbo p0, "su=none"

    invoke-interface {p1, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_0
    const/4 p0, 0x1

    .line 72
    iput-boolean p0, p2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 73
    invoke-interface {p3, p4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shilapi/xcertplay/network/RootShell$Result;

    .line 74
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/network/RootShell$Result;->getOk()Z

    move-result p3

    if-eqz p3, :cond_1

    move-object p2, p1

    check-cast p2, Ljava/util/Collection;

    const-string/jumbo p3, "su=ok"

    invoke-interface {p2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;

    sget-object p3, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;->SU:Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    const-string p1, " "

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const/16 v7, 0x3e

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v8}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p0, p0, p1}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;-><init>(Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;ZZLjava/lang/String;)V

    return-object p2

    .line 75
    :cond_1
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/network/RootShell$Result;->getExitCode()Ljava/lang/Integer;

    move-result-object p0

    if-nez p0, :cond_2

    const-string p0, "none"

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "su=failed(exit="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public final claimAdbPrompt()Z
    .locals 3

    .line 49
    sget-object v0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->askedAdb:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    return v0
.end method

.method public final ifaceOf$shared_release(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "commands"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Lkotlin/text/Regex;

    const-string v3, "\\bdev (\\S+)"

    invoke-direct {v2, v3}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v2, v0, v3, v4, v1}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_0

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_3

    .line 151
    new-instance p1, Lkotlin/text/Regex;

    const-string v2, "[A-Za-z0-9_.-]{1,32}"

    invoke-direct {p1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-object v0

    :cond_3
    return-object v1
.end method

.method public final isRoot(Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 146
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "(^|\\s)uid=0\\("

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lkotlin/text/Regex;->containsMatchIn(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final openAdb(Landroid/content/Context;Z)Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    new-instance v1, Lcom/shilapi/xcertplay/adb/LocalAdb;

    sget-object v0, Lcom/shilapi/xcertplay/adb/AdbKeys;->INSTANCE:Lcom/shilapi/xcertplay/adb/AdbKeys;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/adb/AdbKeys;->load(Landroid/content/Context;)Ljava/security/KeyPair;

    move-result-object v2

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/shilapi/xcertplay/adb/LocalAdb;-><init>(Ljava/security/KeyPair;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 133
    invoke-virtual {v1, p2}, Lcom/shilapi/xcertplay/adb/LocalAdb;->connect(Z)Lcom/shilapi/xcertplay/adb/LocalAdb$Access;

    move-result-object v3

    .line 134
    sget-object p1, Lcom/shilapi/xcertplay/adb/LocalAdb$Access;->READY:Lcom/shilapi/xcertplay/adb/LocalAdb$Access;

    if-ne v3, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 137
    new-instance v0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$openAdb$1;

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$openAdb$1;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    move-object v4, v0

    goto :goto_1

    :cond_1
    move-object v4, p2

    :goto_1
    if-eqz p1, :cond_2

    .line 138
    new-instance v0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$$ExternalSyntheticLambda0;-><init>(Lcom/shilapi/xcertplay/adb/LocalAdb;)V

    move-object v5, v0

    goto :goto_2

    :cond_2
    move-object v5, p2

    :goto_2
    if-eqz p1, :cond_3

    .line 142
    new-instance p2, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$$ExternalSyntheticLambda1;

    invoke-direct {p2, v1}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$$ExternalSyntheticLambda1;-><init>(Lcom/shilapi/xcertplay/adb/LocalAdb;)V

    :cond_3
    move-object v6, p2

    .line 135
    new-instance v2, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;

    .line 141
    new-instance v7, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$$ExternalSyntheticLambda2;

    invoke-direct {v7, v1}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$$ExternalSyntheticLambda2;-><init>(Lcom/shilapi/xcertplay/adb/LocalAdb;)V

    .line 135
    invoke-direct/range {v2 .. v7}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;-><init>(Lcom/shilapi/xcertplay/adb/LocalAdb$Access;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    return-object v2
.end method

.method public final run$shared_release(Ljava/util/List;ZLkotlin/jvm/functions/Function1;Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;ILkotlin/jvm/functions/Function0;)Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/shilapi/xcertplay/network/RootShell$Result;",
            ">;",
            "Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;",
            "I",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;",
            ">;)",
            "Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;"
        }
    .end annotation

    move-object/from16 v0, p4

    const-string v1, "commands"

    move-object/from16 v6, p1

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "runSu"

    move-object/from16 v2, p3

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "openAdb"

    move-object/from16 v8, p6

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-virtual/range {p0 .. p1}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->safe$shared_release(Ljava/util/List;)Z

    move-result v1

    const/4 v9, 0x0

    if-nez v1, :cond_0

    new-instance v0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;

    sget-object v1, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;->NONE:Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;

    const-string v2, "refused=unexpected-command"

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;-><init>(Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;ZZLjava/lang/String;)V

    return-object v0

    .line 67
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v1

    check-cast v4, Ljava/util/List;

    .line 68
    new-instance v5, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 125
    sget-object v1, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;->ADB_ROOT:Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;

    const/4 v10, 0x1

    const/4 v3, 0x2

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;->ADB_SU:Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;->ADB_NMS:Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-array v0, v3, [Lkotlin/reflect/KFunction;

    new-instance v2, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$run$order$3;

    move/from16 v3, p2

    move-object v7, v6

    move-object/from16 v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$run$order$3;-><init>(ZLjava/util/List;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    aput-object v2, v0, v9

    new-instance v2, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$run$order$4;

    move-object/from16 v6, p1

    move/from16 v7, p5

    move-object v3, v8

    invoke-direct/range {v2 .. v7}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$run$order$4;-><init>(Lkotlin/jvm/functions/Function0;Ljava/util/List;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/util/List;I)V

    aput-object v2, v0, v10

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_2
    :goto_0
    new-array v0, v3, [Lkotlin/reflect/KFunction;

    new-instance v2, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$run$order$1;

    move-object/from16 v6, p1

    move/from16 v7, p5

    move-object/from16 v3, p6

    invoke-direct/range {v2 .. v7}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$run$order$1;-><init>(Lkotlin/jvm/functions/Function0;Ljava/util/List;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/util/List;I)V

    aput-object v2, v0, v9

    new-instance v2, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$run$order$2;

    move-object/from16 v7, p1

    move/from16 v3, p2

    move-object/from16 v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$run$order$2;-><init>(ZLjava/util/List;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    aput-object v2, v0, v10

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 126
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KFunction;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;

    if-eqz v1, :cond_3

    return-object v1

    .line 127
    :cond_4
    new-instance v0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;

    sget-object v1, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;->NONE:Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;

    iget-boolean v2, v5, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    move-object v10, v4

    check-cast v10, Ljava/lang/Iterable;

    const-string v3, " "

    move-object v11, v3

    check-cast v11, Ljava/lang/CharSequence;

    const/16 v17, 0x3e

    const/16 v18, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v10 .. v18}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;-><init>(Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;ZZLjava/lang/String;)V

    return-object v0
.end method

.method public final safe$shared_release(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "commands"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    check-cast p1, Ljava/lang/Iterable;

    .line 167
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 51
    sget-object v1, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->COMMAND:Lkotlin/text/Regex;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public final suForm(Lkotlin/jvm/functions/Function1;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string/jumbo v0, "shell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    const-string/jumbo v0, "su -c id"

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->isRoot(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p1, "su -c"

    return-object p1

    .line 158
    :cond_0
    const-string/jumbo v0, "su 0 id"

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->isRoot(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string/jumbo p1, "su 0"

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final uidOf$shared_release(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 153
    new-instance v1, Lkotlin/text/Regex;

    const-string/jumbo v2, "uid=(\\d+)"

    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v1, p1, v2, v3, v0}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    return-object v0
.end method

.method public final wrap$shared_release(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "form"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "command"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    const-string/jumbo v0, "su -c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "su -c \'"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "su 0 "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
