.class public final Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;
.super Ljava/lang/Object;
.source "NetworkAdbPersistence.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Outcome;,
        Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNetworkAdbPersistence.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NetworkAdbPersistence.kt\ncom/shilapi/xcertplay/network/NetworkAdbPersistence\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,118:1\n1#2:119\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002&\'B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J \u0010\u0007\u001a\u0004\u0018\u00010\u00052\u0016\u0008\u0002\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00050\tJ%\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0016\u0008\u0002\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00050\t\u00a2\u0006\u0002\u0010\u000cJ>\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000b2\u0016\u0010\u0012\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\t2\u0016\u0008\u0002\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00050\tJ>\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000b2\u0016\u0010\u0012\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\t2\u0014\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00050\tH\u0002J6\u0010\u0019\u001a\u00020\u00102\u0016\u0010\u0012\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\t2\u0016\u0008\u0002\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00050\tJd\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00100\u001b2\u0006\u0010\u001c\u001a\u00020\u000b2\u0014\u0010\u001d\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00050\t2\u000e\u0010\u001e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010 0\u001f2\"\u0010!\u001a\u001e\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\t\u0012\u0004\u0012\u00020\u00100\tJ\u000e\u0010\"\u001a\u00020\u000b2\u0006\u0010#\u001a\u00020\u0005J\u0012\u0010$\u001a\u0004\u0018\u00010\u00052\u0006\u0010%\u001a\u00020\u0005H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0082D\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017\u00a8\u0006("
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;",
        "",
        "<init>",
        "()V",
        "PORT",
        "",
        "PROP",
        "persistedPort",
        "get",
        "Lkotlin/Function1;",
        "adbSecure",
        "",
        "(Lkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;",
        "SET",
        "CLEAR",
        "ensurePersisted",
        "Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Result;",
        "enabled",
        "run",
        "lastAttempt",
        "getLastAttempt",
        "()Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Result;",
        "setLastAttempt",
        "(Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Result;)V",
        "attempt",
        "clearPersisted",
        "viaSuThenAdb",
        "Lkotlin/Pair;",
        "suAvailable",
        "runSu",
        "openAdb",
        "Lkotlin/Function0;",
        "Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;",
        "op",
        "isAllowedCommand",
        "command",
        "systemProperty",
        "name",
        "Outcome",
        "Result",
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
.field private static final CLEAR:Ljava/lang/String;

.field public static final INSTANCE:Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;

.field public static final PORT:Ljava/lang/String; = "5555"

.field private static final PROP:Ljava/lang/String; = "persist.adb.tcp.port"

.field private static final SET:Ljava/lang/String;

.field private static volatile lastAttempt:Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Result;


# direct methods
.method public static synthetic $r8$lambda$b4qPnt3PjwjUq5Mm7zzVSH4TVwE(Lkotlin/jvm/functions/Function1;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;->viaSuThenAdb$lambda$7(Lkotlin/jvm/functions/Function1;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jnq4ITaYQbRdRJqSvAysGrvwEMM(Lkotlin/jvm/functions/Function1;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;->viaSuThenAdb$lambda$5(Lkotlin/jvm/functions/Function1;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;->INSTANCE:Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;

    .line 42
    const-string/jumbo v0, "setprop persist.adb.tcp.port 5555"

    sput-object v0, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;->SET:Ljava/lang/String;

    .line 43
    const-string/jumbo v0, "setprop persist.adb.tcp.port \"\""

    sput-object v0, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;->CLEAR:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$systemProperty(Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;->systemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic adbSecure$default(Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Boolean;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 39
    new-instance p1, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$adbSecure$1;

    invoke-direct {p1, p0}, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$adbSecure$1;-><init>(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;->adbSecure(Lkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private final attempt(ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Result;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Result;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 60
    new-instance p1, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Result;

    sget-object p2, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Outcome;->DISABLED:Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Outcome;

    const-string p3, "disabled"

    invoke-direct {p1, p2, p3}, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Result;-><init>(Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Outcome;Ljava/lang/String;)V

    return-object p1

    .line 61
    :cond_0
    invoke-virtual {p0, p3}, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;->adbSecure(Lkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Result;

    sget-object p2, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Outcome;->NOT_SECURE:Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Outcome;

    const-string v0, "ro.adb.secure"

    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-nez p3, :cond_1

    const-string/jumbo p3, "unknown"

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ro.adb.secure="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Result;-><init>(Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Outcome;Ljava/lang/String;)V

    return-object p1

    .line 62
    :cond_2
    invoke-virtual {p0, p3}, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;->persistedPort(Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "5555"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const-string v1, "persist.adb.tcp.port=5555"

    if-eqz p1, :cond_3

    new-instance p1, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Result;

    sget-object p2, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Outcome;->ALREADY:Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Outcome;

    invoke-direct {p1, p2, v1}, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Result;-><init>(Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Outcome;Ljava/lang/String;)V

    return-object p1

    :cond_3
    if-nez p2, :cond_4

    .line 63
    new-instance p1, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Result;

    sget-object p2, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Outcome;->NO_CHANNEL:Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Outcome;

    const-string p3, "no-privileged-channel"

    invoke-direct {p1, p2, p3}, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Result;-><init>(Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Outcome;Ljava/lang/String;)V

    return-object p1

    .line 64
    :cond_4
    :try_start_0
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object p1, p0

    check-cast p1, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;

    sget-object p1, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;->SET:Ljava/lang/String;

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :goto_0
    invoke-virtual {p0, p3}, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;->persistedPort(Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance p1, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Result;

    sget-object p2, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Outcome;->PERSISTED:Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Outcome;

    invoke-direct {p1, p2, v1}, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Result;-><init>(Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Outcome;Ljava/lang/String;)V

    goto :goto_1

    .line 67
    :cond_5
    new-instance p1, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Result;

    sget-object p2, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Outcome;->FAILED:Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Outcome;

    invoke-virtual {p0, p3}, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;->persistedPort(Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_6

    const-string/jumbo p3, "unset"

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "set-did-not-stick(persist.adb.tcp.port="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Result;-><init>(Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Outcome;Ljava/lang/String;)V

    :goto_1
    return-object p1
.end method

.method public static synthetic clearPersisted$default(Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Result;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 71
    new-instance p2, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$clearPersisted$1;

    invoke-direct {p2, p0}, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$clearPersisted$1;-><init>(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/jvm/functions/Function1;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;->clearPersisted(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Result;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic ensurePersisted$default(Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Result;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 50
    new-instance p3, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$ensurePersisted$1;

    invoke-direct {p3, p0}, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$ensurePersisted$1;-><init>(Ljava/lang/Object;)V

    check-cast p3, Lkotlin/jvm/functions/Function1;

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;->ensurePersisted(ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Result;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic persistedPort$default(Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 35
    new-instance p1, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$persistedPort$1;

    invoke-direct {p1, p0}, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$persistedPort$1;-><init>(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;->persistedPort(Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final systemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    .line 114
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;

    .line 115
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 114
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 116
    :goto_1
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    move-object v0, p1

    :goto_2
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static final viaSuThenAdb$lambda$5(Lkotlin/jvm/functions/Function1;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    sget-object v0, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;->INSTANCE:Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;->isAllowedCommand(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static final viaSuThenAdb$lambda$7(Lkotlin/jvm/functions/Function1;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    sget-object v0, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;->INSTANCE:Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;->isAllowedCommand(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final adbSecure(Lkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    const-string v0, "get"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    const-string v0, "ro.adb.secure"

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final clearPersisted(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Result;"
        }
    .end annotation

    const-string v0, "get"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0, p2}, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;->persistedPort(Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Result;

    sget-object p2, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Outcome;->CLEARED:Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Outcome;

    const-string v0, "already-unset"

    invoke-direct {p1, p2, v0}, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Result;-><init>(Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Outcome;Ljava/lang/String;)V

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    .line 73
    new-instance p1, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Result;

    sget-object p2, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Outcome;->NO_CHANNEL:Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Outcome;

    const-string v0, "no-privileged-channel"

    invoke-direct {p1, p2, v0}, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Result;-><init>(Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Outcome;Ljava/lang/String;)V

    return-object p1

    .line 74
    :cond_1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;

    sget-object v0, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;->CLEAR:Ljava/lang/String;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :goto_0
    invoke-virtual {p0, p2}, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;->persistedPort(Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    new-instance p1, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Result;

    sget-object p2, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Outcome;->CLEARED:Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Outcome;

    const-string v0, "cleared"

    invoke-direct {p1, p2, v0}, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Result;-><init>(Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Outcome;Ljava/lang/String;)V

    goto :goto_1

    .line 76
    :cond_2
    new-instance p1, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Result;

    sget-object p2, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Outcome;->FAILED:Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Outcome;

    const-string v0, "clear-did-not-stick"

    invoke-direct {p1, p2, v0}, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Result;-><init>(Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Outcome;Ljava/lang/String;)V

    :goto_1
    return-object p1
.end method

.method public final ensurePersisted(ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Result;"
        }
    .end annotation

    const-string v0, "get"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;->attempt(ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Result;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Result;->getOutcome()Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Outcome;

    move-result-object p2

    sget-object p3, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Outcome;->PERSISTED:Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Outcome;

    if-eq p2, p3, :cond_1

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Result;->getOutcome()Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Outcome;

    move-result-object p2

    sget-object p3, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Outcome;->FAILED:Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Outcome;

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    sput-object p1, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;->lastAttempt:Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Result;

    return-object p1
.end method

.method public final getLastAttempt()Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Result;
    .locals 1

    .line 57
    sget-object v0, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;->lastAttempt:Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Result;

    return-object v0
.end method

.method public final isAllowedCommand(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "command"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    sget-object v0, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;->SET:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;->CLEAR:Ljava/lang/String;

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

.method public final persistedPort(Lkotlin/jvm/functions/Function1;)Ljava/lang/String;
    .locals 2
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

    const-string v0, "get"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    const-string v0, "persist.adb.tcp.port"

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    return-object p1

    :cond_0
    return-object v0
.end method

.method public final setLastAttempt(Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Result;)V
    .locals 0

    .line 57
    sput-object p1, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;->lastAttempt:Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Result;

    return-void
.end method

.method public final viaSuThenAdb(ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)Lkotlin/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Result;",
            ">;)",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Result;",
            ">;"
        }
    .end annotation

    const-string v0, "runSu"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "openAdb"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "op"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 94
    new-instance p1, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {p4, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Result;

    .line 95
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Result;->getOutcome()Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Outcome;

    move-result-object p2

    sget-object v1, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Outcome;->FAILED:Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Outcome;

    if-eq p2, v1, :cond_1

    const-string/jumbo p2, "su"

    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1

    :cond_0
    move-object p1, v0

    .line 98
    :cond_1
    :try_start_0
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

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

    if-eqz p3, :cond_2

    move-object p2, v0

    :cond_2
    check-cast p2, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;

    if-eqz p2, :cond_3

    .line 100
    :try_start_1
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;->getShell()Lkotlin/jvm/functions/Function1;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;->getAccess()Lcom/shilapi/xcertplay/adb/LocalAdb$Access;

    move-result-object v1

    sget-object v2, Lcom/shilapi/xcertplay/adb/LocalAdb$Access;->READY:Lcom/shilapi/xcertplay/adb/LocalAdb$Access;

    if-ne v1, v2, :cond_3

    goto :goto_1

    :catchall_1
    move-exception p1

    goto/16 :goto_6

    :cond_3
    move-object p3, v0

    :goto_1
    if-nez p3, :cond_4

    move-object v1, v0

    goto :goto_2

    .line 101
    :cond_4
    new-instance v1, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$$ExternalSyntheticLambda1;

    invoke-direct {v1, p3}, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    :goto_2
    if-eqz p1, :cond_5

    .line 102
    const-string/jumbo p3, "su-failed,adb"

    goto :goto_3

    :cond_5
    const-string p3, "adb"

    :goto_3
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;->getAccess()Lcom/shilapi/xcertplay/adb/LocalAdb$Access;

    move-result-object v2

    if-nez v2, :cond_7

    :cond_6
    const-string v2, "none"

    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "("

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    if-nez v1, :cond_9

    if-eqz p1, :cond_9

    .line 104
    invoke-static {p3, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 107
    :try_start_2
    sget-object p3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object p3, p0

    check-cast p3, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;->getClose()Lkotlin/jvm/functions/Function0;

    move-result-object p2

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_8
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p2

    sget-object p3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    return-object p1

    .line 105
    :cond_9
    :try_start_3
    invoke-interface {p4, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p3, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 107
    :try_start_4
    sget-object p3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object p3, p0

    check-cast p3, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;->getClose()Lkotlin/jvm/functions/Function0;

    move-result-object p2

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_a
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception p2

    sget-object p3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    return-object p1

    :goto_6
    :try_start_5
    sget-object p3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;->getClose()Lkotlin/jvm/functions/Function0;

    move-result-object p2

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_b
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_7

    :catchall_4
    move-exception p2

    sget-object p3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7
    throw p1
.end method
