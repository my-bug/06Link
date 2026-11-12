.class public final Lcom/shilapi/xcertplay/usbbt/LinkKeyStore$Entry;
.super Ljava/lang/Object;
.source "LinkKeyStore.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/usbbt/LinkKeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLinkKeyStore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LinkKeyStore.kt\ncom/shilapi/xcertplay/usbbt/LinkKeyStore$Entry\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,63:1\n1#2:64\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/usbbt/LinkKeyStore$Entry;",
        "",
        "key",
        "",
        "type",
        "",
        "<init>",
        "([BI)V",
        "getKey",
        "()[B",
        "getType",
        "()I",
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
.field private final key:[B

.field private final type:I


# direct methods
.method public constructor <init>([BI)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/usbbt/LinkKeyStore$Entry;->key:[B

    iput p2, p0, Lcom/shilapi/xcertplay/usbbt/LinkKeyStore$Entry;->type:I

    .line 11
    array-length p1, p1

    const/16 p2, 0x10

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "link key is 16 bytes"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final getKey()[B
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/LinkKeyStore$Entry;->key:[B

    return-object v0
.end method

.method public final getType()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/LinkKeyStore$Entry;->type:I

    return v0
.end method
