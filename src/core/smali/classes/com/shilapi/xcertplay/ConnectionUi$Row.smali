.class public final Lcom/shilapi/xcertplay/ConnectionUi$Row;
.super Ljava/lang/Object;
.source "ConnectionFlow.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/ConnectionUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Row"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\u0018\u00002\u00020\u0001BG\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0008\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0013R\u0017\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0017\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0016\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/ConnectionUi$Row;",
        "",
        "tone",
        "Lcom/shilapi/xcertplay/ConnectionUi$Tone;",
        "title",
        "",
        "sub",
        "paths",
        "",
        "Lcom/shilapi/xcertplay/ConnectionUi$Path;",
        "segments",
        "Lcom/shilapi/xcertplay/ConnectionUi$Segments;",
        "buttons",
        "Lcom/shilapi/xcertplay/ConnectionUi$Button;",
        "<init>",
        "(Lcom/shilapi/xcertplay/ConnectionUi$Tone;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/shilapi/xcertplay/ConnectionUi$Segments;Ljava/util/List;)V",
        "getTone",
        "()Lcom/shilapi/xcertplay/ConnectionUi$Tone;",
        "getTitle",
        "()Ljava/lang/String;",
        "getSub",
        "getPaths",
        "()Ljava/util/List;",
        "getSegments",
        "()Lcom/shilapi/xcertplay/ConnectionUi$Segments;",
        "getButtons",
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
.field private final buttons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/ConnectionUi$Button;",
            ">;"
        }
    .end annotation
.end field

.field private final paths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/ConnectionUi$Path;",
            ">;"
        }
    .end annotation
.end field

.field private final segments:Lcom/shilapi/xcertplay/ConnectionUi$Segments;

.field private final sub:Ljava/lang/String;

.field private final title:Ljava/lang/String;

.field private final tone:Lcom/shilapi/xcertplay/ConnectionUi$Tone;


# direct methods
.method public constructor <init>(Lcom/shilapi/xcertplay/ConnectionUi$Tone;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/shilapi/xcertplay/ConnectionUi$Segments;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/ConnectionUi$Tone;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/ConnectionUi$Path;",
            ">;",
            "Lcom/shilapi/xcertplay/ConnectionUi$Segments;",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/ConnectionUi$Button;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "tone"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paths"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buttons"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/ConnectionUi$Row;->tone:Lcom/shilapi/xcertplay/ConnectionUi$Tone;

    iput-object p2, p0, Lcom/shilapi/xcertplay/ConnectionUi$Row;->title:Ljava/lang/String;

    iput-object p3, p0, Lcom/shilapi/xcertplay/ConnectionUi$Row;->sub:Ljava/lang/String;

    iput-object p4, p0, Lcom/shilapi/xcertplay/ConnectionUi$Row;->paths:Ljava/util/List;

    iput-object p5, p0, Lcom/shilapi/xcertplay/ConnectionUi$Row;->segments:Lcom/shilapi/xcertplay/ConnectionUi$Segments;

    iput-object p6, p0, Lcom/shilapi/xcertplay/ConnectionUi$Row;->buttons:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getButtons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/ConnectionUi$Button;",
            ">;"
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lcom/shilapi/xcertplay/ConnectionUi$Row;->buttons:Ljava/util/List;

    return-object v0
.end method

.method public final getPaths()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/ConnectionUi$Path;",
            ">;"
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lcom/shilapi/xcertplay/ConnectionUi$Row;->paths:Ljava/util/List;

    return-object v0
.end method

.method public final getSegments()Lcom/shilapi/xcertplay/ConnectionUi$Segments;
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/shilapi/xcertplay/ConnectionUi$Row;->segments:Lcom/shilapi/xcertplay/ConnectionUi$Segments;

    return-object v0
.end method

.method public final getSub()Ljava/lang/String;
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/shilapi/xcertplay/ConnectionUi$Row;->sub:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/shilapi/xcertplay/ConnectionUi$Row;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getTone()Lcom/shilapi/xcertplay/ConnectionUi$Tone;
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/shilapi/xcertplay/ConnectionUi$Row;->tone:Lcom/shilapi/xcertplay/ConnectionUi$Tone;

    return-object v0
.end method
