.class public final Lcom/shilapi/xcertplay/compat/SafeRegex;
.super Ljava/lang/Object;
.source "SafeRegex.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u000e\u0010\u000b\u001a\u00020\nX\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/compat/SafeRegex;",
        "",
        "<init>",
        "()V",
        "NEVER",
        "Lkotlin/text/Regex;",
        "getNEVER",
        "()Lkotlin/text/Regex;",
        "compile",
        "pattern",
        "",
        "TAG",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/compat/SafeRegex;

.field private static final NEVER:Lkotlin/text/Regex;

.field private static final TAG:Ljava/lang/String; = "SafeRegex"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/compat/SafeRegex;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/compat/SafeRegex;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/compat/SafeRegex;->INSTANCE:Lcom/shilapi/xcertplay/compat/SafeRegex;

    .line 16
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "(?=a)b"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shilapi/xcertplay/compat/SafeRegex;->NEVER:Lkotlin/text/Regex;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compile(Ljava/lang/String;)Lkotlin/text/Regex;
    .locals 2

    const-string v0, "pattern"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    :try_start_0
    new-instance v0, Lkotlin/text/Regex;

    invoke-direct {v0, p1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ICU/Java rejected pattern: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SafeRegex"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    sget-object p1, Lcom/shilapi/xcertplay/compat/SafeRegex;->NEVER:Lkotlin/text/Regex;

    return-object p1
.end method

.method public final getNEVER()Lkotlin/text/Regex;
    .locals 1

    .line 16
    sget-object v0, Lcom/shilapi/xcertplay/compat/SafeRegex;->NEVER:Lkotlin/text/Regex;

    return-object v0
.end method
