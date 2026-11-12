.class public final Lcom/shilapi/xcertplay/hud/BydParkedState;
.super Ljava/lang/Object;
.source "BydParkedState.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBydParkedState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BydParkedState.kt\ncom/shilapi/xcertplay/hud/BydParkedState\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,20:1\n1#2:21\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0015\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0002\u0010\u000eJ\u0017\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0010R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/hud/BydParkedState;",
        "",
        "<init>",
        "()V",
        "GEAR",
        "",
        "PARK",
        "",
        "shell",
        "Lcom/shilapi/xcertplay/hud/BydAdbShell;",
        "parked",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)Ljava/lang/Boolean;",
        "output",
        "(Ljava/lang/String;)Ljava/lang/Boolean;",
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
.field public static final GEAR:Ljava/lang/String; = "service call autoservice 5 i32 1011 i32 555745336"

.field public static final INSTANCE:Lcom/shilapi/xcertplay/hud/BydParkedState;

.field private static final PARK:I = 0x1

.field private static final shell:Lcom/shilapi/xcertplay/hud/BydAdbShell;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/hud/BydParkedState;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/hud/BydParkedState;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/hud/BydParkedState;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydParkedState;

    .line 13
    new-instance v0, Lcom/shilapi/xcertplay/hud/BydAdbShell;

    const-string v1, "DiPlay-BYD-Parked"

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/hud/BydAdbShell;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shilapi/xcertplay/hud/BydParkedState;->shell:Lcom/shilapi/xcertplay/hud/BydAdbShell;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final parked(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydParkedState;->shell:Lcom/shilapi/xcertplay/hud/BydAdbShell;

    const-string v1, "service call autoservice 5 i32 1011 i32 555745336"

    invoke-virtual {v0, p1, v1}, Lcom/shilapi/xcertplay/hud/BydAdbShell;->run(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/hud/BydParkedState;->parked(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final parked(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4

    .line 18
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydParcel;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydParcel;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/hud/BydParcel;->value(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    move-object v1, p1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-gt v2, v1, :cond_0

    const/4 v3, 0x5

    if-ge v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0
.end method
