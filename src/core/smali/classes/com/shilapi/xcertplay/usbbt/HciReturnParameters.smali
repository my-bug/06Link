.class public final Lcom/shilapi/xcertplay/usbbt/HciReturnParameters;
.super Ljava/lang/Object;
.source "HciEvents.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$BufferSize;,
        Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002\u0018\u0019B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\nJ\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\t\u001a\u00020\nJ\u0010\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\t\u001a\u00020\nJ\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\t\u001a\u00020\nJ\u0015\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u0013J\u000e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0010J\u000e\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0010R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/usbbt/HciReturnParameters;",
        "",
        "<init>",
        "()V",
        "CORE_VERSIONS",
        "",
        "",
        "bdAddr",
        "Lcom/shilapi/xcertplay/usbbt/BdAddr;",
        "cc",
        "Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;",
        "localVersion",
        "Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;",
        "bufferSize",
        "Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$BufferSize;",
        "localFeatures",
        "",
        "inquiryTxPower",
        "",
        "(Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;)Ljava/lang/Integer;",
        "supportsSecureSimplePairing",
        "",
        "features",
        "supportsExtendedInquiryResponse",
        "LocalVersion",
        "BufferSize",
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
.field private static final CORE_VERSIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Lcom/shilapi/xcertplay/usbbt/HciReturnParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/HciReturnParameters;

    const/16 v0, 0xf

    .line 128
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "1.0b"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "1.1"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "1.2"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "2.0"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "2.1"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "3.0"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "4.0"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "4.1"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "4.2"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "5.0"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "5.1"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "5.2"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "5.3"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "5.4"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "6.0"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters;->CORE_VERSIONS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCORE_VERSIONS$p()Ljava/util/List;
    .locals 1

    .line 120
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters;->CORE_VERSIONS:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final bdAddr(Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;)Lcom/shilapi/xcertplay/usbbt/BdAddr;
    .locals 2

    const-string v0, "cc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;->getStatus()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;->getReturnParameters()[B

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/shilapi/xcertplay/usbbt/BdAddr;->Companion:Lcom/shilapi/xcertplay/usbbt/BdAddr$Companion;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;->getReturnParameters()[B

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/shilapi/xcertplay/usbbt/BdAddr$Companion;->fromLittleEndian([BI)Lcom/shilapi/xcertplay/usbbt/BdAddr;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final bufferSize(Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;)Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$BufferSize;
    .locals 6

    const-string v0, "cc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;->getReturnParameters()[B

    move-result-object v0

    .line 141
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;->getStatus()I

    move-result p1

    if-nez p1, :cond_1

    array-length p1, v0

    const/16 v1, 0x8

    if-ge p1, v1, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    new-instance p1, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$BufferSize;

    sget-object v1, Lcom/shilapi/xcertplay/usbbt/HciEvent;->Companion:Lcom/shilapi/xcertplay/usbbt/HciEvent$Companion;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/shilapi/xcertplay/usbbt/HciEvent$Companion;->u16$shared_release([BI)I

    move-result v1

    sget-object v2, Lcom/shilapi/xcertplay/usbbt/HciEvent;->Companion:Lcom/shilapi/xcertplay/usbbt/HciEvent$Companion;

    const/4 v3, 0x3

    invoke-virtual {v2, v0, v3}, Lcom/shilapi/xcertplay/usbbt/HciEvent$Companion;->u8$shared_release([BI)I

    move-result v2

    sget-object v3, Lcom/shilapi/xcertplay/usbbt/HciEvent;->Companion:Lcom/shilapi/xcertplay/usbbt/HciEvent$Companion;

    const/4 v4, 0x4

    invoke-virtual {v3, v0, v4}, Lcom/shilapi/xcertplay/usbbt/HciEvent$Companion;->u16$shared_release([BI)I

    move-result v3

    sget-object v4, Lcom/shilapi/xcertplay/usbbt/HciEvent;->Companion:Lcom/shilapi/xcertplay/usbbt/HciEvent$Companion;

    const/4 v5, 0x6

    invoke-virtual {v4, v0, v5}, Lcom/shilapi/xcertplay/usbbt/HciEvent$Companion;->u16$shared_release([BI)I

    move-result v0

    invoke-direct {p1, v1, v2, v3, v0}, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$BufferSize;-><init>(IIII)V

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final inquiryTxPower(Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;)Ljava/lang/Integer;
    .locals 2

    const-string v0, "cc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;->getStatus()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;->getReturnParameters()[B

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;->getReturnParameters()[B

    move-result-object p1

    const/4 v0, 0x1

    aget-byte p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final localFeatures(Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;)[B
    .locals 2

    const-string v0, "cc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;->getStatus()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;->getReturnParameters()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;->getReturnParameters()[B

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0, v1}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final localVersion(Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;)Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;
    .locals 8

    const-string v0, "cc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;->getReturnParameters()[B

    move-result-object v0

    .line 135
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;->getStatus()I

    move-result p1

    if-nez p1, :cond_1

    array-length p1, v0

    const/16 v1, 0x9

    if-ge p1, v1, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    new-instance v2, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;

    sget-object p1, Lcom/shilapi/xcertplay/usbbt/HciEvent;->Companion:Lcom/shilapi/xcertplay/usbbt/HciEvent$Companion;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/shilapi/xcertplay/usbbt/HciEvent$Companion;->u8$shared_release([BI)I

    move-result v3

    sget-object p1, Lcom/shilapi/xcertplay/usbbt/HciEvent;->Companion:Lcom/shilapi/xcertplay/usbbt/HciEvent$Companion;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/shilapi/xcertplay/usbbt/HciEvent$Companion;->u16$shared_release([BI)I

    move-result v4

    sget-object p1, Lcom/shilapi/xcertplay/usbbt/HciEvent;->Companion:Lcom/shilapi/xcertplay/usbbt/HciEvent$Companion;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/shilapi/xcertplay/usbbt/HciEvent$Companion;->u8$shared_release([BI)I

    move-result v5

    sget-object p1, Lcom/shilapi/xcertplay/usbbt/HciEvent;->Companion:Lcom/shilapi/xcertplay/usbbt/HciEvent$Companion;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/shilapi/xcertplay/usbbt/HciEvent$Companion;->u16$shared_release([BI)I

    move-result v6

    sget-object p1, Lcom/shilapi/xcertplay/usbbt/HciEvent;->Companion:Lcom/shilapi/xcertplay/usbbt/HciEvent$Companion;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/shilapi/xcertplay/usbbt/HciEvent$Companion;->u16$shared_release([BI)I

    move-result v7

    invoke-direct/range {v2 .. v7}, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;-><init>(IIIII)V

    return-object v2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final supportsExtendedInquiryResponse([B)Z
    .locals 2

    const-string v0, "features"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    array-length v0, p1

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    const/4 v0, 0x6

    aget-byte p1, p1, v0

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final supportsSecureSimplePairing([B)Z
    .locals 2

    const-string v0, "features"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    array-length v0, p1

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    const/4 v0, 0x6

    aget-byte p1, p1, v0

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
