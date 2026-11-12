.class final synthetic Lcom/shilapi/xcertplay/compat/AndroidRuntimeLevel$probe$2;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "AndroidRuntimeLevel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/compat/AndroidRuntimeLevel;->probe$default(Lcom/shilapi/xcertplay/compat/AndroidRuntimeLevel;ILjava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/shilapi/xcertplay/compat/AndroidRuntimeLevel$Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-class v3, Lcom/shilapi/xcertplay/compat/AndroidRuntimeLevel;

    const-string v5, "defaultFieldPresent(Ljava/lang/String;Ljava/lang/String;)Z"

    const/4 v6, 0x0

    const/4 v1, 0x2

    const-string v4, "defaultFieldPresent"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/shilapi/xcertplay/compat/AndroidRuntimeLevel$probe$2;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/shilapi/xcertplay/compat/AndroidRuntimeLevel;

    # invokes: Lcom/shilapi/xcertplay/compat/AndroidRuntimeLevel;->defaultFieldPresent(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, p1, p2}, Lcom/shilapi/xcertplay/compat/AndroidRuntimeLevel;->access$defaultFieldPresent(Lcom/shilapi/xcertplay/compat/AndroidRuntimeLevel;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 65
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/compat/AndroidRuntimeLevel$probe$2;->invoke(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
