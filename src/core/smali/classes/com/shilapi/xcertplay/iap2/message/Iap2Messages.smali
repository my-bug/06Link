.class public final Lcom/shilapi/xcertplay/iap2/message/Iap2Messages;
.super Ljava/lang/Object;
.source "Iap2Messages.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J-\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0017\u0010\u0008\u001a\u0013\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\t\u00a2\u0006\u0002\u0008\u000cH\u0086\u0008\u00f8\u0001\u0000J-\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u000f2\u0017\u0010\u0008\u001a\u0013\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\t\u00a2\u0006\u0002\u0008\u000cH\u0086\u0008\u00f8\u0001\u0000J\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0005\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/iap2/message/Iap2Messages;",
        "",
        "<init>",
        "()V",
        "build",
        "Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;",
        "endpoint",
        "Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoint;",
        "block",
        "Lkotlin/Function1;",
        "Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "buildRaw",
        "messageId",
        "",
        "reader",
        "Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;",
        "frame",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/iap2/message/Iap2Messages;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/iap2/message/Iap2Messages;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/iap2/message/Iap2Messages;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/iap2/message/Iap2Messages;->INSTANCE:Lcom/shilapi/xcertplay/iap2/message/Iap2Messages;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build(Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoint;Lkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoint;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;"
        }
    .end annotation

    const-string v0, "endpoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    sget-object v0, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->Companion:Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder$Companion;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder$Companion;->of(Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoint;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    move-result-object p1

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->build()Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;

    move-result-object p1

    return-object p1
.end method

.method public final buildRaw(ILkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    sget-object v0, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->Companion:Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder$Companion;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder$Companion;->opaque(I)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    move-result-object p1

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->build()Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;

    move-result-object p1

    return-object p1
.end method

.method public final reader(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;
    .locals 1

    const-string v0, "frame"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget-object v0, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->Companion:Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader$Companion;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader$Companion;->of(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;

    move-result-object p1

    return-object p1
.end method
