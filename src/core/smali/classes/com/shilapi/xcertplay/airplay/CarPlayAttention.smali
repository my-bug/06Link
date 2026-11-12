.class public final Lcom/shilapi/xcertplay/airplay/CarPlayAttention;
.super Ljava/lang/Object;
.source "CarPlayAttention.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/airplay/CarPlayAttention$Reason;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0010B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u000c\u001a\u0004\u0018\u00010\u00062\u0006\u0010\r\u001a\u00020\u000eJ\u000e\u0010\u000f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000eR(\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/airplay/CarPlayAttention;",
        "",
        "<init>",
        "()V",
        "listener",
        "Lkotlin/Function1;",
        "Lcom/shilapi/xcertplay/airplay/CarPlayAttention$Reason;",
        "",
        "getListener",
        "()Lkotlin/jvm/functions/Function1;",
        "setListener",
        "(Lkotlin/jvm/functions/Function1;)V",
        "reasonFor",
        "audioType",
        "",
        "audioStarted",
        "Reason",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/airplay/CarPlayAttention;

.field private static volatile listener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/shilapi/xcertplay/airplay/CarPlayAttention$Reason;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/airplay/CarPlayAttention;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/airplay/CarPlayAttention;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/airplay/CarPlayAttention;->INSTANCE:Lcom/shilapi/xcertplay/airplay/CarPlayAttention;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final audioStarted(Ljava/lang/String;)V
    .locals 1

    const-string v0, "audioType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/airplay/CarPlayAttention;->reasonFor(Ljava/lang/String;)Lcom/shilapi/xcertplay/airplay/CarPlayAttention$Reason;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    sget-object v0, Lcom/shilapi/xcertplay/airplay/CarPlayAttention;->listener:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public final getListener()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/shilapi/xcertplay/airplay/CarPlayAttention$Reason;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 19
    sget-object v0, Lcom/shilapi/xcertplay/airplay/CarPlayAttention;->listener:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final reasonFor(Ljava/lang/String;)Lcom/shilapi/xcertplay/airplay/CarPlayAttention$Reason;
    .locals 2

    const-string v0, "audioType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "toLowerCase(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x589895c

    if-eq v0, v1, :cond_3

    const v1, 0x2eaeb418

    if-eq v0, v1, :cond_2

    const v1, 0x5c13d641

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 24
    :cond_1
    sget-object p1, Lcom/shilapi/xcertplay/airplay/CarPlayAttention$Reason;->NAVIGATION:Lcom/shilapi/xcertplay/airplay/CarPlayAttention$Reason;

    return-object p1

    .line 21
    :cond_2
    const-string/jumbo v0, "telephony"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 22
    sget-object p1, Lcom/shilapi/xcertplay/airplay/CarPlayAttention$Reason;->CALL:Lcom/shilapi/xcertplay/airplay/CarPlayAttention$Reason;

    return-object p1

    .line 21
    :cond_3
    const-string v0, "alert"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return-object p1

    .line 23
    :cond_5
    sget-object p1, Lcom/shilapi/xcertplay/airplay/CarPlayAttention$Reason;->ALERT:Lcom/shilapi/xcertplay/airplay/CarPlayAttention$Reason;

    return-object p1
.end method

.method public final setListener(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/shilapi/xcertplay/airplay/CarPlayAttention$Reason;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 19
    sput-object p1, Lcom/shilapi/xcertplay/airplay/CarPlayAttention;->listener:Lkotlin/jvm/functions/Function1;

    return-void
.end method
