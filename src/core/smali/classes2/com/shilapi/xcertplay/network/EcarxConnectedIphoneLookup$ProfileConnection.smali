.class final Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup$ProfileConnection;
.super Ljava/lang/Object;
.source "EcarxConnectedIphoneLookup.kt"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProfileConnection"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEcarxConnectedIphoneLookup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EcarxConnectedIphoneLookup.kt\ncom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup$ProfileConnection\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,195:1\n1#2:196\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u00052\u0006\u0010\t\u001a\u00020\nJ\u001c\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\u0012\u0010\u0011\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup$ProfileConnection;",
        "Landroid/content/ServiceConnection;",
        "<init>",
        "(Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;)V",
        "api",
        "",
        "ready",
        "Ljava/util/concurrent/CountDownLatch;",
        "awaitApi",
        "remainingMillis",
        "",
        "onServiceConnected",
        "",
        "name",
        "Landroid/content/ComponentName;",
        "binder",
        "Landroid/os/IBinder;",
        "onServiceDisconnected",
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


# instance fields
.field private volatile api:Ljava/lang/Object;

.field private final ready:Ljava/util/concurrent/CountDownLatch;

.field final synthetic this$0:Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;


# direct methods
.method public constructor <init>(Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;)V
    .locals 2
    .param p1, "this$0"    # Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup$ProfileConnection;->this$0:Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup$ProfileConnection;->ready:Ljava/util/concurrent/CountDownLatch;

    .line 79
    return-void
.end method


# virtual methods
.method public final awaitApi(J)Ljava/lang/Object;
    .locals 3
    .param p1, "remainingMillis"    # J

    .line 84
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    iget-object v0, p0, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup$ProfileConnection;->api:Ljava/lang/Object;

    return-object v0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup$ProfileConnection;->ready:Ljava/util/concurrent/CountDownLatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 86
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup$ProfileConnection;->api:Ljava/lang/Object;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 11
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 90
    if-nez p2, :cond_0

    .line 91
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup$ProfileConnection;->ready:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 92
    return-void

    .line 94
    :cond_0
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup$ProfileConnection;

    .line 196
    .local v0, "$this$onServiceConnected_u24lambda_u240":Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup$ProfileConnection;
    const/4 v1, 0x0

    .line 94
    .local v1, "$i$a$-runCatching-EcarxConnectedIphoneLookup$ProfileConnection$onServiceConnected$descriptor$1":I
    invoke-interface {p2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v2

    .end local v0    # "$this$onServiceConnected_u24lambda_u240":Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup$ProfileConnection;
    .end local v1    # "$i$a$-runCatching-EcarxConnectedIphoneLookup$ProfileConnection$onServiceConnected$descriptor$1":I
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

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v0, v2

    :cond_1
    check-cast v0, Ljava/lang/String;

    .line 95
    .local v0, "descriptor":Ljava/lang/String;
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup$ProfileConnection;->this$0:Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;

    # getter for: Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;->classLoader:Ljava/lang/ClassLoader;
    invoke-static {v1}, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;->access$getClassLoader$p(Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup;)Ljava/lang/ClassLoader;

    move-result-object v1

    .line 96
    .local v1, "loader":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 97
    :try_start_1
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v3, p0

    check-cast v3, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup$ProfileConnection;

    .local v3, "$this$onServiceConnected_u24lambda_u241":Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup$ProfileConnection;
    const/4 v4, 0x0

    .line 98
    .local v4, "$i$a$-runCatching-EcarxConnectedIphoneLookup$ProfileConnection$onServiceConnected$1":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "$Stub"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 99
    .local v5, "stub":Ljava/lang/Class;
    const-string v6, "asInterface"

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, Landroid/os/IBinder;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p2, v7, v10

    invoke-virtual {v6, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 97
    .end local v3    # "$this$onServiceConnected_u24lambda_u241":Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup$ProfileConnection;
    .end local v4    # "$i$a$-runCatching-EcarxConnectedIphoneLookup$ProfileConnection$onServiceConnected$1":I
    .end local v5    # "stub":Ljava/lang/Class;
    invoke-static {v6}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v3}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 100
    :goto_1
    invoke-static {v3}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move-object v2, v3

    goto :goto_2

    .line 102
    :cond_3
    nop

    .line 96
    :goto_2
    iput-object v2, p0, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup$ProfileConnection;->api:Ljava/lang/Object;

    .line 104
    iget-object v2, p0, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup$ProfileConnection;->ready:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 105
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shilapi/xcertplay/network/EcarxConnectedIphoneLookup$ProfileConnection;->api:Ljava/lang/Object;

    .line 109
    return-void
.end method
