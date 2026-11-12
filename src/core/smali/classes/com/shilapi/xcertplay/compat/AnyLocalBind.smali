.class public final Lcom/shilapi/xcertplay/compat/AnyLocalBind;
.super Ljava/lang/Object;
.source "AnyLocalBind.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/compat/AnyLocalBind$Attempt;,
        Lcom/shilapi/xcertplay/compat/AnyLocalBind$BindFailedException;,
        Lcom/shilapi/xcertplay/compat/AnyLocalBind$ScopeResolver;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnyLocalBind.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnyLocalBind.kt\ncom/shilapi/xcertplay/compat/AnyLocalBind\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,206:1\n1#2:207\n1669#3,8:208\n*S KotlinDebug\n*F\n+ 1 AnyLocalBind.kt\ncom/shilapi/xcertplay/compat/AnyLocalBind\n*L\n97#1:208,8\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0003456B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u000c\u001a\u00020\rJ\u0006\u0010\u000e\u001a\u00020\rJ\u0010\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\tJ4\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\r0\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\r2\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\t2\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0005J\u0018\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0005J\\\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\r2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\t2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\t2\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00102\u0016\u0008\u0002\u0010\u001d\u001a\u0010\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020 \u0018\u00010\u001e2\u0014\u0008\u0002\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020 0\u001eJR\u0010\"\u001a\u00020#2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\r2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\t2\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00102\u0016\u0008\u0002\u0010\u001d\u001a\u0010\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020 \u0018\u00010\u001e2\u0014\u0008\u0002\u0010!\u001a\u000e\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020 0\u001eJ`\u0010\u0019\u001a\u00020\u001a2\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\r0\u00132\u0006\u0010\u001b\u001a\u00020\t2\u0006\u0010\u001c\u001a\u00020\t2\u0014\u0010\u001d\u001a\u0010\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020 \u0018\u00010\u001e2\u000e\u0008\u0002\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u001a0%2\u0014\u0008\u0002\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020 0\u001eJX\u0010\"\u001a\u00020#2\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\r0\u00132\u0006\u0010\u001b\u001a\u00020\t2\u0014\u0010\u001d\u001a\u0010\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020 \u0018\u00010\u001e2\u000e\u0008\u0002\u0010$\u001a\u0008\u0012\u0004\u0012\u00020#0%2\u0014\u0008\u0002\u0010!\u001a\u000e\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020 0\u001eJs\u0010&\u001a\u0002H\'\"\u0008\u0008\u0000\u0010\'*\u00020(2\u0006\u0010)\u001a\u00020\u001f2\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\r0\u00132\u0006\u0010\u001b\u001a\u00020\t2\u0014\u0010\u001d\u001a\u0010\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020 \u0018\u00010\u001e2\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u0002H\'0%2\u0018\u0010*\u001a\u0014\u0012\u0004\u0012\u0002H\'\u0012\u0004\u0012\u00020,\u0012\u0004\u0012\u00020 0+H\u0002\u00a2\u0006\u0002\u0010-J&\u0010.\u001a\u00020 2\u0014\u0010\u001d\u001a\u0010\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020 \u0018\u00010\u001e2\u0006\u0010/\u001a\u00020\u001fH\u0002J\u000e\u00100\u001a\u00020\u001f2\u0006\u0010\u0018\u001a\u00020\rJ\u0012\u00101\u001a\u0004\u0018\u0001022\u0006\u0010\u0018\u001a\u000203H\u0002R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0008\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000b\u00a8\u00067"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/compat/AnyLocalBind;",
        "",
        "<init>",
        "()V",
        "interfaceScope",
        "Lcom/shilapi/xcertplay/compat/AnyLocalBind$ScopeResolver;",
        "getInterfaceScope",
        "()Lcom/shilapi/xcertplay/compat/AnyLocalBind$ScopeResolver;",
        "deviceSdk",
        "",
        "getDeviceSdk",
        "()I",
        "inet6Any",
        "Ljava/net/InetAddress;",
        "inet4Any",
        "ipv6WildcardUsable",
        "",
        "sdkInt",
        "candidates",
        "",
        "localAddress",
        "exact",
        "resolver",
        "scoped",
        "address",
        "bindServer",
        "Ljava/net/ServerSocket;",
        "port",
        "backlog",
        "log",
        "Lkotlin/Function1;",
        "",
        "",
        "configure",
        "bindDatagram",
        "Ljava/net/DatagramSocket;",
        "factory",
        "Lkotlin/Function0;",
        "bindFirst",
        "S",
        "Ljava/io/Closeable;",
        "kind",
        "bind",
        "Lkotlin/Function2;",
        "Ljava/net/InetSocketAddress;",
        "(Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;)Ljava/io/Closeable;",
        "note",
        "message",
        "describe",
        "ownerOf",
        "Ljava/net/NetworkInterface;",
        "Ljava/net/Inet6Address;",
        "Attempt",
        "BindFailedException",
        "ScopeResolver",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/compat/AnyLocalBind;

.field private static final interfaceScope:Lcom/shilapi/xcertplay/compat/AnyLocalBind$ScopeResolver;


# direct methods
.method public static synthetic $r8$lambda$5i2E1BIezViQJpfOUqT8esL00uc()Ljava/net/ServerSocket;
    .locals 1

    invoke-static {}, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->bindServer$lambda$9()Ljava/net/ServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$93NVDxeW2rWgGjdwrybqUTjWf1I(Lkotlin/jvm/functions/Function1;ILjava/net/ServerSocket;Ljava/net/InetSocketAddress;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->bindServer$lambda$11(Lkotlin/jvm/functions/Function1;ILjava/net/ServerSocket;Ljava/net/InetSocketAddress;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$E4T8bkSsmWHoV7nH_4loHWIuV9Q(Ljava/net/Inet6Address;)Ljava/net/Inet6Address;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->interfaceScope$lambda$3(Ljava/net/Inet6Address;)Ljava/net/Inet6Address;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$HeUpuoHAjjHsIlM74lgqGuH1CRw(Ljava/net/DatagramSocket;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->bindDatagram$lambda$13(Ljava/net/DatagramSocket;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$M-qNme8-SS81hh_LIyhiSHL_C4U(Ljava/net/DatagramSocket;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->bindDatagram$lambda$8(Ljava/net/DatagramSocket;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ODjwQq1q19xKRnQLc2Xwc_Jlnbg(Ljava/net/ServerSocket;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->bindServer$lambda$10(Ljava/net/ServerSocket;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$P87afKrJmrGK_fv8a022UGWoTyg()Ljava/net/DatagramSocket;
    .locals 1

    invoke-static {}, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->bindDatagram$lambda$12()Ljava/net/DatagramSocket;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$gMHPclhEys7aaAysRePykx-FcNQ(Ljava/net/ServerSocket;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->bindServer$lambda$7(Ljava/net/ServerSocket;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qoHeKR0mr5KsJsmEni5wkpmGL0U(Lkotlin/jvm/functions/Function1;Ljava/net/DatagramSocket;Ljava/net/InetSocketAddress;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->bindDatagram$lambda$14(Lkotlin/jvm/functions/Function1;Ljava/net/DatagramSocket;Ljava/net/InetSocketAddress;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/compat/AnyLocalBind;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/compat/AnyLocalBind;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->INSTANCE:Lcom/shilapi/xcertplay/compat/AnyLocalBind;

    .line 53
    new-instance v0, Lcom/shilapi/xcertplay/compat/AnyLocalBind$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/compat/AnyLocalBind$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->interfaceScope:Lcom/shilapi/xcertplay/compat/AnyLocalBind$ScopeResolver;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic bindDatagram$default(Lcom/shilapi/xcertplay/compat/AnyLocalBind;Ljava/net/InetAddress;IZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/net/DatagramSocket;
    .locals 1

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_1

    const/4 p3, 0x0

    :cond_1
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_2

    const/4 p4, 0x0

    :cond_2
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_3

    .line 123
    new-instance p5, Lcom/shilapi/xcertplay/compat/AnyLocalBind$$ExternalSyntheticLambda3;

    invoke-direct {p5}, Lcom/shilapi/xcertplay/compat/AnyLocalBind$$ExternalSyntheticLambda3;-><init>()V

    .line 118
    :cond_3
    invoke-virtual/range {p0 .. p5}, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->bindDatagram(Ljava/net/InetAddress;IZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Ljava/net/DatagramSocket;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic bindDatagram$default(Lcom/shilapi/xcertplay/compat/AnyLocalBind;Ljava/util/List;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/net/DatagramSocket;
    .locals 6

    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_0

    .line 142
    new-instance p4, Lcom/shilapi/xcertplay/compat/AnyLocalBind$$ExternalSyntheticLambda4;

    invoke-direct {p4}, Lcom/shilapi/xcertplay/compat/AnyLocalBind$$ExternalSyntheticLambda4;-><init>()V

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    .line 143
    new-instance p5, Lcom/shilapi/xcertplay/compat/AnyLocalBind$$ExternalSyntheticLambda5;

    invoke-direct {p5}, Lcom/shilapi/xcertplay/compat/AnyLocalBind$$ExternalSyntheticLambda5;-><init>()V

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p5

    .line 138
    invoke-virtual/range {v0 .. v5}, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->bindDatagram(Ljava/util/List;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)Ljava/net/DatagramSocket;

    move-result-object p0

    return-object p0
.end method

.method private static final bindDatagram$lambda$12()Ljava/net/DatagramSocket;
    .locals 2

    .line 142
    new-instance v0, Ljava/net/DatagramSocket;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    return-object v0
.end method

.method private static final bindDatagram$lambda$13(Ljava/net/DatagramSocket;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final bindDatagram$lambda$14(Lkotlin/jvm/functions/Function1;Ljava/net/DatagramSocket;Ljava/net/InetSocketAddress;)Lkotlin/Unit;
    .locals 1

    const-string/jumbo v0, "socket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "address"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    check-cast p2, Ljava/net/SocketAddress;

    invoke-virtual {p1, p2}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 147
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final bindDatagram$lambda$8(Ljava/net/DatagramSocket;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final bindFirst(Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;)Ljava/io/Closeable;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Ljava/io/Closeable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/net/InetAddress;",
            ">;I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "+TS;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TS;-",
            "Ljava/net/InetSocketAddress;",
            "Lkotlin/Unit;",
            ">;)TS;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    check-cast v4, Ljava/util/List;

    .line 158
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/net/InetAddress;

    const/4 v7, 0x0

    .line 161
    :try_start_0
    invoke-interface/range {p5 .. p5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 162
    :try_start_1
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, v6, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v9, p6

    :try_start_2
    invoke-interface {v9, v8, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    move-object v0, v4

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 164
    invoke-virtual {v1, v6}, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->describe(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v0

    move-object v10, v4

    check-cast v10, Ljava/lang/Iterable;

    const-string v7, "; "

    move-object v11, v7

    check-cast v11, Ljava/lang/CharSequence;

    const/16 v17, 0x3e

    const/16 v18, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v10 .. v18}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " bound "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " after "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v10, p4

    :try_start_3
    invoke-direct {v1, v10, v0}, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->note(Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    return-object v8

    :catch_1
    move-exception v0

    move-object/from16 v10, p4

    goto :goto_2

    :catch_2
    move-exception v0

    move-object/from16 v10, p4

    move-object/from16 v9, p6

    :goto_2
    move-object v7, v8

    goto :goto_3

    :catch_3
    move-exception v0

    move-object/from16 v10, p4

    move-object/from16 v9, p6

    .line 168
    :goto_3
    move-object v8, v4

    check-cast v8, Ljava/util/Collection;

    new-instance v11, Lcom/shilapi/xcertplay/compat/AnyLocalBind$Attempt;

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {v11, v6, v3, v0}, Lcom/shilapi/xcertplay/compat/AnyLocalBind$Attempt;-><init>(Ljava/net/InetAddress;ILjava/lang/Throwable;)V

    invoke-interface {v8, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    if-eqz v7, :cond_0

    .line 170
    :try_start_4
    invoke-interface {v7}, Ljava/io/Closeable;->close()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 171
    :catch_4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_0

    .line 176
    :cond_2
    new-instance v0, Lcom/shilapi/xcertplay/compat/AnyLocalBind$BindFailedException;

    invoke-direct {v0, v2, v4}, Lcom/shilapi/xcertplay/compat/AnyLocalBind$BindFailedException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public static synthetic bindServer$default(Lcom/shilapi/xcertplay/compat/AnyLocalBind;Ljava/net/InetAddress;IIZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/net/ServerSocket;
    .locals 1

    and-int/lit8 p8, p7, 0x2

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_1

    const/16 p3, 0x32

    :cond_1
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_2

    const/4 p4, 0x0

    :cond_2
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_3

    const/4 p5, 0x0

    :cond_3
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_4

    .line 114
    new-instance p6, Lcom/shilapi/xcertplay/compat/AnyLocalBind$$ExternalSyntheticLambda1;

    invoke-direct {p6}, Lcom/shilapi/xcertplay/compat/AnyLocalBind$$ExternalSyntheticLambda1;-><init>()V

    .line 108
    :cond_4
    invoke-virtual/range {p0 .. p6}, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->bindServer(Ljava/net/InetAddress;IIZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Ljava/net/ServerSocket;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic bindServer$default(Lcom/shilapi/xcertplay/compat/AnyLocalBind;Ljava/util/List;IILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/net/ServerSocket;
    .locals 7

    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_0

    .line 131
    new-instance p5, Lcom/shilapi/xcertplay/compat/AnyLocalBind$$ExternalSyntheticLambda6;

    invoke-direct {p5}, Lcom/shilapi/xcertplay/compat/AnyLocalBind$$ExternalSyntheticLambda6;-><init>()V

    :cond_0
    move-object v5, p5

    and-int/lit8 p5, p7, 0x20

    if-eqz p5, :cond_1

    .line 132
    new-instance p6, Lcom/shilapi/xcertplay/compat/AnyLocalBind$$ExternalSyntheticLambda7;

    invoke-direct {p6}, Lcom/shilapi/xcertplay/compat/AnyLocalBind$$ExternalSyntheticLambda7;-><init>()V

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p6

    .line 126
    invoke-virtual/range {v0 .. v6}, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->bindServer(Ljava/util/List;IILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)Ljava/net/ServerSocket;

    move-result-object p0

    return-object p0
.end method

.method private static final bindServer$lambda$10(Ljava/net/ServerSocket;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final bindServer$lambda$11(Lkotlin/jvm/functions/Function1;ILjava/net/ServerSocket;Ljava/net/InetSocketAddress;)Lkotlin/Unit;
    .locals 1

    const-string/jumbo v0, "socket"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "address"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    invoke-interface {p0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    check-cast p3, Ljava/net/SocketAddress;

    invoke-virtual {p2, p3, p1}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V

    .line 136
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final bindServer$lambda$7(Ljava/net/ServerSocket;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final bindServer$lambda$9()Ljava/net/ServerSocket;
    .locals 1

    .line 131
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0}, Ljava/net/ServerSocket;-><init>()V

    return-object v0
.end method

.method public static synthetic candidates$default(Lcom/shilapi/xcertplay/compat/AnyLocalBind;Ljava/net/InetAddress;ZILcom/shilapi/xcertplay/compat/AnyLocalBind$ScopeResolver;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    .line 80
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->getDeviceSdk()I

    move-result p3

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    .line 81
    sget-object p4, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->interfaceScope:Lcom/shilapi/xcertplay/compat/AnyLocalBind$ScopeResolver;

    .line 77
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->candidates(Ljava/net/InetAddress;ZILcom/shilapi/xcertplay/compat/AnyLocalBind$ScopeResolver;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final interfaceScope$lambda$3(Ljava/net/Inet6Address;)Ljava/net/Inet6Address;
    .locals 4

    const-string v0, "address"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    sget-object v0, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->INSTANCE:Lcom/shilapi/xcertplay/compat/AnyLocalBind;

    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-direct {v0, p0}, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->ownerOf(Ljava/net/Inet6Address;)Ljava/net/NetworkInterface;

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

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Ljava/net/NetworkInterface;

    if-nez v0, :cond_1

    return-object v2

    .line 55
    :cond_1
    :try_start_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v1

    invoke-static {v2, v1, v0}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BLjava/net/NetworkInterface;)Ljava/net/Inet6Address;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_1
    invoke-static {v1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v1, v2

    :cond_2
    check-cast v1, Ljava/net/Inet6Address;

    if-nez v1, :cond_4

    .line 56
    :try_start_2
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object p0

    invoke-static {v0}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Ljava/net/NetworkInterface;)I

    move-result v0

    invoke-static {v2, p0, v0}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p0

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    invoke-static {p0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move-object v2, p0

    :goto_3
    move-object v1, v2

    check-cast v1, Ljava/net/Inet6Address;

    :cond_4
    return-object v1
.end method

.method public static synthetic ipv6WildcardUsable$default(Lcom/shilapi/xcertplay/compat/AnyLocalBind;IILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->getDeviceSdk()I

    move-result p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->ipv6WildcardUsable(I)Z

    move-result p0

    return p0
.end method

.method private final note(Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 181
    :try_start_0
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private final ownerOf(Ljava/net/Inet6Address;)Ljava/net/NetworkInterface;
    .locals 6

    .line 196
    invoke-virtual {p1}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object p1

    .line 197
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 198
    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->iterator(Ljava/util/Enumeration;)Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 199
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    const-string v4, "getInetAddresses(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->iterator(Ljava/util/Enumeration;)Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 200
    instance-of v5, v4, Ljava/net/Inet6Address;

    if-eqz v5, :cond_2

    check-cast v4, Ljava/net/Inet6Address;

    invoke-virtual {v4}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v4

    invoke-static {v4, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v2

    :cond_3
    return-object v1
.end method

.method public static synthetic scoped$default(Lcom/shilapi/xcertplay/compat/AnyLocalBind;Ljava/net/InetAddress;Lcom/shilapi/xcertplay/compat/AnyLocalBind$ScopeResolver;ILjava/lang/Object;)Ljava/net/InetAddress;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 101
    sget-object p2, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->interfaceScope:Lcom/shilapi/xcertplay/compat/AnyLocalBind$ScopeResolver;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->scoped(Ljava/net/InetAddress;Lcom/shilapi/xcertplay/compat/AnyLocalBind$ScopeResolver;)Ljava/net/InetAddress;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final bindDatagram(Ljava/net/InetAddress;IZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Ljava/net/DatagramSocket;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetAddress;",
            "IZ",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/net/DatagramSocket;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/net/DatagramSocket;"
        }
    .end annotation

    const-string v0, "configure"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v12, 0xc

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, p0

    move-object v8, p1

    move/from16 v9, p3

    .line 124
    invoke-static/range {v7 .. v13}, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->candidates$default(Lcom/shilapi/xcertplay/compat/AnyLocalBind;Ljava/net/InetAddress;ZILcom/shilapi/xcertplay/compat/AnyLocalBind$ScopeResolver;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move/from16 v3, p2

    move-object/from16 v4, p4

    invoke-static/range {v1 .. v8}, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->bindDatagram$default(Lcom/shilapi/xcertplay/compat/AnyLocalBind;Ljava/util/List;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/net/DatagramSocket;

    move-result-object p1

    return-object p1
.end method

.method public final bindDatagram(Ljava/util/List;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)Ljava/net/DatagramSocket;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/net/InetAddress;",
            ">;I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/net/DatagramSocket;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/net/DatagramSocket;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/net/DatagramSocket;"
        }
    .end annotation

    const-string v0, "candidates"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configure"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    new-instance v7, Lcom/shilapi/xcertplay/compat/AnyLocalBind$$ExternalSyntheticLambda8;

    invoke-direct {v7, p5}, Lcom/shilapi/xcertplay/compat/AnyLocalBind$$ExternalSyntheticLambda8;-><init>(Lkotlin/jvm/functions/Function1;)V

    const-string v2, "DatagramSocket"

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->bindFirst(Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;)Ljava/io/Closeable;

    move-result-object p1

    check-cast p1, Ljava/net/DatagramSocket;

    return-object p1
.end method

.method public final bindServer(Ljava/net/InetAddress;IIZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Ljava/net/ServerSocket;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetAddress;",
            "IIZ",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/net/ServerSocket;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/net/ServerSocket;"
        }
    .end annotation

    const-string v0, "configure"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v13, 0xc

    const/4 v14, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p4

    .line 115
    invoke-static/range {v8 .. v14}, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->candidates$default(Lcom/shilapi/xcertplay/compat/AnyLocalBind;Ljava/net/InetAddress;ZILcom/shilapi/xcertplay/compat/AnyLocalBind$ScopeResolver;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/16 v8, 0x10

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p5

    invoke-static/range {v1 .. v9}, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->bindServer$default(Lcom/shilapi/xcertplay/compat/AnyLocalBind;Ljava/util/List;IILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/net/ServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public final bindServer(Ljava/util/List;IILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)Ljava/net/ServerSocket;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/net/InetAddress;",
            ">;II",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/net/ServerSocket;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/net/ServerSocket;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/net/ServerSocket;"
        }
    .end annotation

    const-string v0, "candidates"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configure"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    new-instance v7, Lcom/shilapi/xcertplay/compat/AnyLocalBind$$ExternalSyntheticLambda9;

    invoke-direct {v7, p6, p3}, Lcom/shilapi/xcertplay/compat/AnyLocalBind$$ExternalSyntheticLambda9;-><init>(Lkotlin/jvm/functions/Function1;I)V

    const-string v2, "ServerSocket"

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->bindFirst(Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;)Ljava/io/Closeable;

    move-result-object p1

    check-cast p1, Ljava/net/ServerSocket;

    return-object p1
.end method

.method public final candidates(Ljava/net/InetAddress;ZILcom/shilapi/xcertplay/compat/AnyLocalBind$ScopeResolver;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetAddress;",
            "ZI",
            "Lcom/shilapi/xcertplay/compat/AnyLocalBind$ScopeResolver;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    const-string v0, "resolver"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 83
    invoke-virtual {p1}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 84
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 85
    move-object p2, v0

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p4}, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->scoped(Ljava/net/InetAddress;Lcom/shilapi/xcertplay/compat/AnyLocalBind$ScopeResolver;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_1
    invoke-virtual {p0, p3}, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->ipv6WildcardUsable(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 87
    move-object p2, v0

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->inet6Any()Ljava/net/InetAddress;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 88
    instance-of p1, p1, Ljava/net/Inet6Address;

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->inet4Any()Ljava/net/InetAddress;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 89
    :cond_2
    instance-of p2, p1, Ljava/net/Inet6Address;

    if-eqz p2, :cond_3

    .line 90
    move-object p2, v0

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p4}, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->scoped(Ljava/net/InetAddress;Lcom/shilapi/xcertplay/compat/AnyLocalBind$ScopeResolver;)Ljava/net/InetAddress;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->inet4Any()Ljava/net/InetAddress;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 95
    :cond_3
    move-object p1, v0

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->inet4Any()Ljava/net/InetAddress;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_4
    :goto_1
    check-cast v0, Ljava/lang/Iterable;

    .line 208
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 209
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 210
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_5
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    .line 211
    move-object v0, p4

    check-cast v0, Ljava/net/InetAddress;

    .line 97
    sget-object v1, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->INSTANCE:Lcom/shilapi/xcertplay/compat/AnyLocalBind;

    invoke-virtual {v1, v0}, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->describe(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 213
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 215
    :cond_6
    check-cast p2, Ljava/util/List;

    return-object p2
.end method

.method public final describe(Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 6

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    instance-of v0, p1, Ljava/net/Inet6Address;

    if-eqz v0, :cond_0

    move-object v1, p1

    check-cast v1, Ljava/net/Inet6Address;

    invoke-virtual {v1}, Ljava/net/Inet6Address;->isAnyLocalAddress()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "::"

    return-object p1

    .line 189
    :cond_0
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "toString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    if-eqz v0, :cond_7

    .line 190
    move-object v0, v1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x25

    const/4 v5, 0x0

    invoke-static {v0, v4, v2, v3, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    .line 191
    :cond_2
    check-cast p1, Ljava/net/Inet6Address;

    invoke-virtual {p1}, Ljava/net/Inet6Address;->getScopedInterface()Ljava/net/NetworkInterface;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move-object v5, v0

    goto :goto_2

    :cond_4
    :goto_0
    invoke-virtual {p1}, Ljava/net/Inet6Address;->getScopeId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    move-object p1, v5

    :goto_1
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_6
    :goto_2
    if-eqz v5, :cond_7

    .line 192
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    :goto_3
    return-object v1
.end method

.method public final getDeviceSdk()I
    .locals 2

    .line 64
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_1
    const v0, 0x7fffffff

    return v0
.end method

.method public final getInterfaceScope()Lcom/shilapi/xcertplay/compat/AnyLocalBind$ScopeResolver;
    .locals 1

    .line 53
    sget-object v0, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->interfaceScope:Lcom/shilapi/xcertplay/compat/AnyLocalBind$ScopeResolver;

    return-object v0
.end method

.method public final inet4Any()Ljava/net/InetAddress;
    .locals 2

    const/4 v0, 0x4

    .line 67
    new-array v0, v0, [B

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    const-string v1, "getByAddress(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final inet6Any()Ljava/net/InetAddress;
    .locals 2

    const/16 v0, 0x10

    .line 66
    new-array v0, v0, [B

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    const-string v1, "getByAddress(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final ipv6WildcardUsable(I)Z
    .locals 1

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final scoped(Ljava/net/InetAddress;Lcom/shilapi/xcertplay/compat/AnyLocalBind$ScopeResolver;)Ljava/net/InetAddress;
    .locals 2

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    instance-of v0, p1, Ljava/net/Inet6Address;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/net/Inet6Address;

    invoke-virtual {v0}, Ljava/net/Inet6Address;->isLinkLocalAddress()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {v0}, Ljava/net/Inet6Address;->getScopeId()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/net/Inet6Address;->getScopedInterface()Ljava/net/NetworkInterface;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 104
    :cond_1
    invoke-interface {p2, v0}, Lcom/shilapi/xcertplay/compat/AnyLocalBind$ScopeResolver;->scope(Ljava/net/Inet6Address;)Ljava/net/Inet6Address;

    move-result-object p2

    if-eqz p2, :cond_2

    check-cast p2, Ljava/net/InetAddress;

    return-object p2

    :cond_2
    :goto_0
    return-object p1
.end method
