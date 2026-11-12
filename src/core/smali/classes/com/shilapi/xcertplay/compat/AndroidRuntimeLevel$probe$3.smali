.class final synthetic Lcom/shilapi/xcertplay/compat/AndroidRuntimeLevel$probe$3;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "AndroidRuntimeLevel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


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
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
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

    const-string v5, "defaultSystemProperty(Ljava/lang/String;)Ljava/lang/String;"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-string v4, "defaultSystemProperty"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 66
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/compat/AndroidRuntimeLevel$probe$3;->invoke(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/shilapi/xcertplay/compat/AndroidRuntimeLevel$probe$3;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/shilapi/xcertplay/compat/AndroidRuntimeLevel;

    # invokes: Lcom/shilapi/xcertplay/compat/AndroidRuntimeLevel;->defaultSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/shilapi/xcertplay/compat/AndroidRuntimeLevel;->access$defaultSystemProperty(Lcom/shilapi/xcertplay/compat/AndroidRuntimeLevel;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
