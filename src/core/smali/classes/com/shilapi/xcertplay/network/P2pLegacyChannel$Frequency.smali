.class public final Lcom/shilapi/xcertplay/network/P2pLegacyChannel$Frequency;
.super Ljava/lang/Object;
.source "P2pLegacyChannel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/network/P2pLegacyChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Frequency"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\n\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/P2pLegacyChannel$Frequency;",
        "",
        "mhz",
        "",
        "source",
        "",
        "<init>",
        "(Ljava/lang/Integer;Ljava/lang/String;)V",
        "getMhz",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getSource",
        "()Ljava/lang/String;",
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
.field private final mhz:Ljava/lang/Integer;

.field private final source:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/network/P2pLegacyChannel$Frequency;->mhz:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/shilapi/xcertplay/network/P2pLegacyChannel$Frequency;->source:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getMhz()Ljava/lang/Integer;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/P2pLegacyChannel$Frequency;->mhz:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getSource()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/P2pLegacyChannel$Frequency;->source:Ljava/lang/String;

    return-object v0
.end method
