.class final synthetic Lcom/shilapi/xcertplay/DiPlayActivity$openSettingsSection$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "DiPlayActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/DiPlayActivity;->openSettingsSection(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/widget/LinearLayout;",
        "Lkotlin/Unit;",
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

    const-class v3, Lcom/shilapi/xcertplay/DiPlayActivity;

    const-string/jumbo v5, "settings(Landroid/widget/LinearLayout;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-string/jumbo v4, "settings"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 4119
    check-cast p1, Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/DiPlayActivity$openSettingsSection$1;->invoke(Landroid/widget/LinearLayout;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/widget/LinearLayout;)V
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4119
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity$openSettingsSection$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/shilapi/xcertplay/DiPlayActivity;

    # invokes: Lcom/shilapi/xcertplay/DiPlayActivity;->settings(Landroid/widget/LinearLayout;)V
    invoke-static {v0, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->access$settings(Lcom/shilapi/xcertplay/DiPlayActivity;Landroid/widget/LinearLayout;)V

    return-void
.end method
