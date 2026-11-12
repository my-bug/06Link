.class public final Lcom/shilapi/xcertplay/transport/Iap2WiredCarPlayEndpoint;
.super Ljava/lang/Object;
.source "Iap2WiredControlClient.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/transport/Iap2WiredCarPlayEndpoint$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIap2WiredControlClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Iap2WiredControlClient.kt\ncom/shilapi/xcertplay/transport/Iap2WiredCarPlayEndpoint\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,227:1\n1#2:228\n1740#3,3:229\n*S KotlinDebug\n*F\n+ 1 Iap2WiredControlClient.kt\ncom/shilapi/xcertplay/transport/Iap2WiredCarPlayEndpoint\n*L\n187#1:229,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000f\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B9\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\u0008\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0008\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000fR\u0013\u0010\t\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000fR\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/Iap2WiredCarPlayEndpoint;",
        "",
        "ipv6Addresses",
        "",
        "",
        "airPlayPort",
        "",
        "publicKey",
        "sourceVersion",
        "deviceIdentifier",
        "<init>",
        "(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getAirPlayPort",
        "()I",
        "getPublicKey",
        "()Ljava/lang/String;",
        "getSourceVersion",
        "getDeviceIdentifier",
        "getIpv6Addresses",
        "()Ljava/util/List;",
        "Companion",
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
.field private static final Companion:Lcom/shilapi/xcertplay/transport/Iap2WiredCarPlayEndpoint$Companion;


# instance fields
.field private final airPlayPort:I

.field private final deviceIdentifier:Ljava/lang/String;

.field private final ipv6Addresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final publicKey:Ljava/lang/String;

.field private final sourceVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/transport/Iap2WiredCarPlayEndpoint$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/transport/Iap2WiredCarPlayEndpoint$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/transport/Iap2WiredCarPlayEndpoint;->Companion:Lcom/shilapi/xcertplay/transport/Iap2WiredCarPlayEndpoint$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "ipv6Addresses"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "publicKey"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sourceVersion"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput p2, p0, Lcom/shilapi/xcertplay/transport/Iap2WiredCarPlayEndpoint;->airPlayPort:I

    .line 178
    iput-object p3, p0, Lcom/shilapi/xcertplay/transport/Iap2WiredCarPlayEndpoint;->publicKey:Ljava/lang/String;

    .line 179
    iput-object p4, p0, Lcom/shilapi/xcertplay/transport/Iap2WiredCarPlayEndpoint;->sourceVersion:Ljava/lang/String;

    .line 180
    iput-object p5, p0, Lcom/shilapi/xcertplay/transport/Iap2WiredCarPlayEndpoint;->deviceIdentifier:Ljava/lang/String;

    .line 183
    move-object p2, p1

    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lcom/shilapi/xcertplay/transport/Iap2WiredCarPlayEndpoint;->ipv6Addresses:Ljava/util/List;

    .line 186
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_b

    .line 187
    sget-object p1, Lcom/shilapi/xcertplay/transport/Iap2WiredCarPlayEndpoint;->Companion:Lcom/shilapi/xcertplay/transport/Iap2WiredCarPlayEndpoint$Companion;

    .line 229
    instance-of p3, p2, Ljava/util/Collection;

    if-eqz p3, :cond_0

    move-object p3, p2

    check-cast p3, Ljava/util/Collection;

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_1

    .line 230
    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 187
    invoke-virtual {p1, p3}, Lcom/shilapi/xcertplay/transport/Iap2WiredCarPlayEndpoint$Companion;->isIpv6Literal(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Every wired address must be an IPv6 text literal"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 188
    :cond_2
    :goto_1
    iget p1, p0, Lcom/shilapi/xcertplay/transport/Iap2WiredCarPlayEndpoint;->airPlayPort:I

    const/4 p2, 0x1

    if-gt p2, p1, :cond_a

    const/high16 p2, 0x10000

    if-ge p1, p2, :cond_a

    .line 189
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2WiredCarPlayEndpoint;->publicKey:Ljava/lang/String;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_9

    .line 190
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2WiredCarPlayEndpoint;->sourceVersion:Ljava/lang/String;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_8

    .line 191
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2WiredCarPlayEndpoint;->publicKey:Ljava/lang/String;

    check-cast p1, Ljava/lang/CharSequence;

    const/4 p2, 0x0

    const/4 p3, 0x2

    const/4 p4, 0x0

    invoke-static {p1, p2, p2, p3, p4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 192
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2WiredCarPlayEndpoint;->sourceVersion:Ljava/lang/String;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1, p2, p2, p3, p4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 193
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2WiredCarPlayEndpoint;->deviceIdentifier:Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 194
    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p5

    if-lez p5, :cond_4

    .line 195
    invoke-static {p1, p2, p2, p3, p4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "deviceIdentifier must not contain U+0000"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 194
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "deviceIdentifier is optional, but must not be empty when provided"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_2
    return-void

    .line 192
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "sourceVersion must not contain U+0000"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 191
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "publicKey must not contain U+0000"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 190
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "sourceVersion is required and must not be empty"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 189
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "publicKey is required and must not be empty"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 188
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "airPlayPort must be in 1..65535"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 186
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "At least one wired IPv6 address is required"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public synthetic constructor <init>(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 175
    invoke-direct/range {v0 .. v5}, Lcom/shilapi/xcertplay/transport/Iap2WiredCarPlayEndpoint;-><init>(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getAirPlayPort()I
    .locals 1

    .line 177
    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2WiredCarPlayEndpoint;->airPlayPort:I

    return v0
.end method

.method public final getDeviceIdentifier()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2WiredCarPlayEndpoint;->deviceIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public final getIpv6Addresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2WiredCarPlayEndpoint;->ipv6Addresses:Ljava/util/List;

    return-object v0
.end method

.method public final getPublicKey()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2WiredCarPlayEndpoint;->publicKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getSourceVersion()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2WiredCarPlayEndpoint;->sourceVersion:Ljava/lang/String;

    return-object v0
.end method
