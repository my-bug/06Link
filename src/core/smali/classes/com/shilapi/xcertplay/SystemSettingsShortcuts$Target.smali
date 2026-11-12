.class public final Lcom/shilapi/xcertplay/SystemSettingsShortcuts$Target;
.super Ljava/lang/Object;
.source "SystemSettingsShortcuts.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/SystemSettingsShortcuts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Target"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/SystemSettingsShortcuts$Target;",
        "",
        "intent",
        "Landroid/content/Intent;",
        "path",
        "",
        "substitute",
        "",
        "<init>",
        "(Landroid/content/Intent;Ljava/lang/String;Z)V",
        "getIntent",
        "()Landroid/content/Intent;",
        "getPath",
        "()Ljava/lang/String;",
        "getSubstitute",
        "()Z",
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


# instance fields
.field private final intent:Landroid/content/Intent;

.field private final path:Ljava/lang/String;

.field private final substitute:Z


# direct methods
.method public constructor <init>(Landroid/content/Intent;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/SystemSettingsShortcuts$Target;->intent:Landroid/content/Intent;

    iput-object p2, p0, Lcom/shilapi/xcertplay/SystemSettingsShortcuts$Target;->path:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/shilapi/xcertplay/SystemSettingsShortcuts$Target;->substitute:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Intent;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 25
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/SystemSettingsShortcuts$Target;-><init>(Landroid/content/Intent;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final getIntent()Landroid/content/Intent;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/shilapi/xcertplay/SystemSettingsShortcuts$Target;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/shilapi/xcertplay/SystemSettingsShortcuts$Target;->path:Ljava/lang/String;

    return-object v0
.end method

.method public final getSubstitute()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/SystemSettingsShortcuts$Target;->substitute:Z

    return v0
.end method
