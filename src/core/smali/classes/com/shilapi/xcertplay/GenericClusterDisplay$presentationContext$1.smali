.class public final Lcom/shilapi/xcertplay/GenericClusterDisplay$presentationContext$1;
.super Landroid/content/ContextWrapper;
.source "GenericClusterDisplay.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/GenericClusterDisplay;->presentationContext(Landroid/content/Context;)Landroid/content/Context;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGenericClusterDisplay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GenericClusterDisplay.kt\ncom/shilapi/xcertplay/GenericClusterDisplay$presentationContext$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,368:1\n1#2:369\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/shilapi/xcertplay/GenericClusterDisplay$presentationContext$1",
        "Landroid/content/ContextWrapper;",
        "createDisplayContext",
        "Landroid/content/Context;",
        "display",
        "Landroid/view/Display;",
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


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 146
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public createDisplayContext(Landroid/view/Display;)Landroid/content/Context;
    .locals 3

    const-string v0, "display"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    .line 149
    sget-object v1, Lcom/shilapi/xcertplay/GenericClusterDisplay;->INSTANCE:Lcom/shilapi/xcertplay/GenericClusterDisplay;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    # invokes: Lcom/shilapi/xcertplay/GenericClusterDisplay;->metricsMatch(Landroid/content/Context;Landroid/view/Display;)Z
    invoke-static {v1, v0, p1}, Lcom/shilapi/xcertplay/GenericClusterDisplay;->access$metricsMatch(Lcom/shilapi/xcertplay/GenericClusterDisplay;Landroid/content/Context;Landroid/view/Display;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 150
    :cond_0
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/GenericClusterDisplay$presentationContext$1;

    sget-object v1, Lcom/shilapi/xcertplay/GenericClusterDisplay;->INSTANCE:Lcom/shilapi/xcertplay/GenericClusterDisplay;

    # invokes: Lcom/shilapi/xcertplay/GenericClusterDisplay;->sizeConfiguration(Landroid/content/Context;Landroid/view/Display;)Landroid/content/res/Configuration;
    invoke-static {v1, v0, p1}, Lcom/shilapi/xcertplay/GenericClusterDisplay;->access$sizeConfiguration(Lcom/shilapi/xcertplay/GenericClusterDisplay;Landroid/content/Context;Landroid/view/Display;)Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Landroid/content/res/Configuration;)Landroid/content/Context;

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

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    check-cast v1, Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 151
    sget-object v2, Lcom/shilapi/xcertplay/GenericClusterDisplay;->INSTANCE:Lcom/shilapi/xcertplay/GenericClusterDisplay;

    # invokes: Lcom/shilapi/xcertplay/GenericClusterDisplay;->metricsMatch(Landroid/content/Context;Landroid/view/Display;)Z
    invoke-static {v2, v1, p1}, Lcom/shilapi/xcertplay/GenericClusterDisplay;->access$metricsMatch(Lcom/shilapi/xcertplay/GenericClusterDisplay;Landroid/content/Context;Landroid/view/Display;)Z

    move-result p1

    if-eqz p1, :cond_2

    move-object v0, v1

    :cond_2
    return-object v0
.end method
