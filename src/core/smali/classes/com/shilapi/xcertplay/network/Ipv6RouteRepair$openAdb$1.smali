.class final synthetic Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$openAdb$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "Ipv6RouteRepair.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/network/Ipv6RouteRepair;->openAdb(Landroid/content/Context;Z)Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;
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

    const-class v3, Lcom/shilapi/xcertplay/adb/LocalAdb;

    const-string/jumbo v5, "shell(Ljava/lang/String;)Ljava/lang/String;"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-string/jumbo v4, "shell"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 137
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$openAdb$1;->invoke(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$openAdb$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/shilapi/xcertplay/adb/LocalAdb;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/adb/LocalAdb;->shell(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
