.class final Lcom/shilapi/xcertplay/airplay/BplistCodec$Container;
.super Lcom/shilapi/xcertplay/airplay/BplistCodec$Node;
.source "BplistCodec.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/airplay/BplistCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Container"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0007\u0008\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/airplay/BplistCodec$Container;",
        "Lcom/shilapi/xcertplay/airplay/BplistCodec$Node;",
        "head",
        "",
        "refs",
        "",
        "<init>",
        "([B[I)V",
        "getHead",
        "()[B",
        "getRefs",
        "()[I",
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


# instance fields
.field private final head:[B

.field private final refs:[I


# direct methods
.method public constructor <init>([B[I)V
    .locals 1

    const-string v0, "head"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "refs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 341
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/airplay/BplistCodec$Node;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/BplistCodec$Container;->head:[B

    iput-object p2, p0, Lcom/shilapi/xcertplay/airplay/BplistCodec$Container;->refs:[I

    return-void
.end method


# virtual methods
.method public final getHead()[B
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/BplistCodec$Container;->head:[B

    return-object v0
.end method

.method public final getRefs()[I
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/BplistCodec$Container;->refs:[I

    return-object v0
.end method
