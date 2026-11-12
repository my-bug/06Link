.class public final Lcom/shilapi/xcertplay/update/MiniJson;
.super Ljava/lang/Object;
.source "MiniJson.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/update/MiniJson$Parser;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u00c0\u0002\u0018\u00002\u00020\u0001:\u0001\u0007B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/update/MiniJson;",
        "",
        "<init>",
        "()V",
        "parse",
        "text",
        "",
        "Parser",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/update/MiniJson;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/update/MiniJson;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/update/MiniJson;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/update/MiniJson;->INSTANCE:Lcom/shilapi/xcertplay/update/MiniJson;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final parse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const-string/jumbo v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v0, Lcom/shilapi/xcertplay/update/MiniJson$Parser;

    invoke-direct {v0, p1}, Lcom/shilapi/xcertplay/update/MiniJson$Parser;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->skipWhitespace()V

    .line 15
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->readValue()Ljava/lang/Object;

    move-result-object p1

    .line 16
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->skipWhitespace()V

    .line 17
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->atEnd()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    :cond_0
    const-string/jumbo p1, "trailing characters after JSON value"

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/update/MiniJson$Parser;->fail(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method
