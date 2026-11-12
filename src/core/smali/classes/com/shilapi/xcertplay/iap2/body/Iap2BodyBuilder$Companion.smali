.class public final Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder$Companion;
.super Ljava/lang/Object;
.source "Iap2BodyBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder$Companion;",
        "",
        "<init>",
        "()V",
        "of",
        "Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;",
        "endpoint",
        "Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoint;",
        "opaque",
        "messageId",
        "",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final of(Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoint;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;
    .locals 7

    const-string v0, "endpoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    new-instance v1, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoint;->getFields()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;-><init>(Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoint;Ljava/lang/Integer;Ljava/util/List;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public final opaque(I)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;
    .locals 6

    .line 172
    new-instance v0, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;-><init>(Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoint;Ljava/lang/Integer;Ljava/util/List;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
