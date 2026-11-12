.class public final Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;
.super Ljava/lang/Object;
.source "EcarxConnectedIphoneLookup.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup$Companion;,
        Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup$ProfileConnection;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEcarxConnectedIphoneLookup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EcarxConnectedIphoneLookup.kt\ncom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,195:1\n1#2:196\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u001f2\u00020\u0001:\u0002\u001e\u001fB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010\u0010\u001a\u00020\u0011J\u0016\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00132\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0016J\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0016J\u0008\u0010\u0019\u001a\u00020\u0011H\u0016J\u0018\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00020\u00182\u0006\u0010\u001c\u001a\u00020\u001dH\u0002R\u0016\u0010\u0006\u001a\n \u0007*\u0004\u0018\u00010\u00030\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00060\u000bR\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u00060\u000bR\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00060\u000bR\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;",
        "Ljava/io/Closeable;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "appContext",
        "kotlin.jvm.PlatformType",
        "classLoader",
        "Ljava/lang/ClassLoader;",
        "hfpConnection",
        "Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup$ProfileConnection;",
        "a2dpConnection",
        "adapterConnection",
        "bound",
        "",
        "ensureBound",
        "",
        "connectedDevices",
        "",
        "Lcom/shilapi/xcertplay/network/EcarxConnectedDevice;",
        "timeoutMillis",
        "",
        "connectedAddress",
        "",
        "close",
        "bindProfile",
        "className",
        "connection",
        "Landroid/content/ServiceConnection;",
        "ProfileConnection",
        "Companion",
        "shared"
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
.field public static final A2DP_CLASS:Ljava/lang/String; = "ecarx.bluetooth.service.a2dp.A2dpService"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ADAPTER_CLASS:Ljava/lang/String; = "ecarx.bluetooth.service.btservice.AdapterService"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final Companion:Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup$Companion;

.field public static final DEFAULT_TIMEOUT_MILLIS:J = 0xbb8L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HFP_CLASS:Ljava/lang/String; = "ecarx.bluetooth.service.hfp.HeadsetService"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SERVICE_PACKAGE:Ljava/lang/String; = "ecarx.bluetooth.service"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final a2dpConnection:Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup$ProfileConnection;

.field private final adapterConnection:Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup$ProfileConnection;

.field private final appContext:Landroid/content/Context;

.field private bound:Z

.field private final classLoader:Ljava/lang/ClassLoader;

.field private final hfpConnection:Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup$ProfileConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;->Companion:Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;->appContext:Landroid/content/Context;

    .line 34
    nop

    .line 29
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;

    .local v0, "$this$classLoader_u24lambda_u240":Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;
    const/4 v1, 0x0

    .line 30
    .local v1, "$i$a$-runCatching-EcarxConnectedIphoneLookup$classLoader$1":I
    iget-object v2, v0, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;->appContext:Landroid/content/Context;

    .line 31
    const-string v3, "ecarx.bluetooth.service"

    .line 32
    nop

    .line 30
    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 33
    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 29
    .end local v0    # "$this$classLoader_u24lambda_u240":Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;
    .end local v1    # "$i$a$-runCatching-EcarxConnectedIphoneLookup$classLoader$1":I
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 34
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Ljava/lang/ClassLoader;

    iput-object v0, p0, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;->classLoader:Ljava/lang/ClassLoader;

    .line 36
    new-instance v0, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup$ProfileConnection;

    invoke-direct {v0, p0}, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup$ProfileConnection;-><init>(Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;)V

    iput-object v0, p0, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;->hfpConnection:Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup$ProfileConnection;

    .line 37
    new-instance v0, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup$ProfileConnection;

    invoke-direct {v0, p0}, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup$ProfileConnection;-><init>(Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;)V

    iput-object v0, p0, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;->a2dpConnection:Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup$ProfileConnection;

    .line 38
    new-instance v0, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup$ProfileConnection;

    invoke-direct {v0, p0}, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup$ProfileConnection;-><init>(Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;)V

    iput-object v0, p0, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;->adapterConnection:Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup$ProfileConnection;

    .line 27
    return-void
.end method

.method public static final synthetic access$getClassLoader$p(Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;)Ljava/lang/ClassLoader;
    .locals 1
    .param p0, "$this"    # Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;

    .line 27
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;->classLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method private final bindProfile(Ljava/lang/String;Landroid/content/ServiceConnection;)V
    .locals 5
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "connection"    # Landroid/content/ServiceConnection;

    .line 75
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "ecarx.bluetooth.service"

    invoke-direct {v1, v2, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "setComponent(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .local v0, "intent":Landroid/content/Intent;
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;

    .line 196
    .local v1, "$this$bindProfile_u24lambda_u246":Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;
    const/4 v2, 0x0

    .line 76
    .local v2, "$i$a$-runCatching-EcarxConnectedIphoneLookup$bindProfile$1":I
    iget-object v3, v1, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;->appContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, p2, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    .end local v1    # "$this$bindProfile_u24lambda_u246":Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;
    .end local v2    # "$i$a$-runCatching-EcarxConnectedIphoneLookup$bindProfile$1":I
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :goto_0
    return-void
.end method

.method public static synthetic connectedAddress$default(Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;JILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 63
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-wide/16 p1, 0xbb8

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;->connectedAddress(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic connectedDevices$default(Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;JILjava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 50
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 51
    const-wide/16 p1, 0xbb8

    .line 50
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;->connectedDevices(J)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static final connectedDevices$lambda$2(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "$adapterApi"    # Ljava/lang/Object;
    .param p1, "address"    # Ljava/lang/String;

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    if-eqz p0, :cond_0

    move-object v0, p0

    .line 196
    .local v0, "it":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 59
    .local v1, "$i$a$-let-EcarxConnectedIphoneLookup$connectedDevices$1$1":I
    invoke-static {v0, p1}, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookupKt;->queryBtRemoteDeviceName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "it":Ljava/lang/Object;
    .end local v1    # "$i$a$-let-EcarxConnectedIphoneLookup$connectedDevices$1$1":I
    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 67
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;->bound:Z

    if-nez v0, :cond_0

    return-void

    .line 68
    :cond_0
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;

    .line 196
    .local v0, "$this$close_u24lambda_u243":Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;
    const/4 v1, 0x0

    .line 68
    .local v1, "$i$a$-runCatching-EcarxConnectedIphoneLookup$close$1":I
    iget-object v2, v0, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;->appContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;->hfpConnection:Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup$ProfileConnection;

    check-cast v3, Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .end local v0    # "$this$close_u24lambda_u243":Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;
    .end local v1    # "$i$a$-runCatching-EcarxConnectedIphoneLookup$close$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :goto_0
    :try_start_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;

    .line 196
    .local v0, "$this$close_u24lambda_u244":Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;
    const/4 v1, 0x0

    .line 69
    .local v1, "$i$a$-runCatching-EcarxConnectedIphoneLookup$close$2":I
    iget-object v2, v0, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;->appContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;->a2dpConnection:Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup$ProfileConnection;

    check-cast v3, Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .end local v0    # "$this$close_u24lambda_u244":Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;
    .end local v1    # "$i$a$-runCatching-EcarxConnectedIphoneLookup$close$2":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :goto_1
    :try_start_2
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;

    .line 196
    .local v0, "$this$close_u24lambda_u245":Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;
    const/4 v1, 0x0

    .line 70
    .local v1, "$i$a$-runCatching-EcarxConnectedIphoneLookup$close$3":I
    iget-object v2, v0, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;->appContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;->adapterConnection:Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup$ProfileConnection;

    check-cast v3, Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .end local v0    # "$this$close_u24lambda_u245":Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;
    .end local v1    # "$i$a$-runCatching-EcarxConnectedIphoneLookup$close$3":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :goto_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;->bound:Z

    .line 72
    return-void
.end method

.method public final connectedAddress(J)Ljava/lang/String;
    .locals 1
    .param p1, "timeoutMillis"    # J

    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;->connectedDevices(J)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->singleOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shilapi/xcertplay/network/EcarxConnectedDevice;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/EcarxConnectedDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final connectedDevices(J)Ljava/util/List;
    .locals 7
    .param p1, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/network/EcarxConnectedDevice;",
            ">;"
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;->ensureBound()V

    .line 54
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 55
    .local v0, "deadline":J
    iget-object v2, p0, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;->hfpConnection:Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup$ProfileConnection;

    sget-object v3, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;->Companion:Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup$Companion;

    invoke-virtual {v3, v0, v1}, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup$Companion;->remaining(J)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup$ProfileConnection;->awaitApi(J)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 56
    .local v2, "hfpApi":Ljava/lang/Object;
    :cond_0
    iget-object v3, p0, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;->a2dpConnection:Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup$ProfileConnection;

    sget-object v4, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;->Companion:Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup$Companion;

    invoke-virtual {v4, v0, v1}, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup$Companion;->remaining(J)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup$ProfileConnection;->awaitApi(J)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 57
    .local v3, "a2dpApi":Ljava/lang/Object;
    :cond_1
    iget-object v4, p0, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;->adapterConnection:Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup$ProfileConnection;

    sget-object v5, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;->Companion:Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup$Companion;

    invoke-virtual {v5, v0, v1}, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup$Companion;->remaining(J)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup$ProfileConnection;->awaitApi(J)Ljava/lang/Object;

    move-result-object v4

    .line 58
    .local v4, "adapterApi":Ljava/lang/Object;
    new-instance v5, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup$$ExternalSyntheticLambda0;

    invoke-direct {v5, v4}, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;)V

    invoke-static {v2, v3, v5}, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookupKt;->connectedDevicesFromProfileApis(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object v5

    return-object v5
.end method

.method public final ensureBound()V
    .locals 2

    .line 42
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;->bound:Z

    if-eqz v0, :cond_0

    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;->hfpConnection:Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup$ProfileConnection;

    check-cast v0, Landroid/content/ServiceConnection;

    const-string v1, "ecarx.bluetooth.service.hfp.HeadsetService"

    invoke-direct {p0, v1, v0}, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;->bindProfile(Ljava/lang/String;Landroid/content/ServiceConnection;)V

    .line 44
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;->a2dpConnection:Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup$ProfileConnection;

    check-cast v0, Landroid/content/ServiceConnection;

    const-string v1, "ecarx.bluetooth.service.a2dp.A2dpService"

    invoke-direct {p0, v1, v0}, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;->bindProfile(Ljava/lang/String;Landroid/content/ServiceConnection;)V

    .line 45
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;->adapterConnection:Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup$ProfileConnection;

    check-cast v0, Landroid/content/ServiceConnection;

    const-string v1, "ecarx.bluetooth.service.btservice.AdapterService"

    invoke-direct {p0, v1, v0}, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;->bindProfile(Ljava/lang/String;Landroid/content/ServiceConnection;)V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;->bound:Z

    .line 47
    return-void
.end method
