.class public final Lcom/shilapi/xcertplay/transport/LockdownPairRecord;
.super Ljava/lang/Object;
.source "LockdownPairRecord.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/transport/LockdownPairRecord$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\u0019\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 #2\u00020\u0001:\u0001#BQ\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000b\u001a\u00020\u0007\u0012\u0006\u0010\u000c\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0006\u0010 \u001a\u00020!J\u0008\u0010\"\u001a\u00020\u0003H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0010R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0010R\u000e\u0010\u0013\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001aR\u0011\u0010\u0008\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001aR\u0011\u0010\t\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001aR\u0011\u0010\n\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001aR\u0011\u0010\u000b\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u001aR\u0011\u0010\u000c\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010\u001a\u00a8\u0006$"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/LockdownPairRecord;",
        "",
        "hostId",
        "",
        "systemBuid",
        "wifiMacAddress",
        "devicePublicKeyPem",
        "",
        "deviceCertificatePem",
        "hostPrivateKeyPem",
        "hostCertificatePem",
        "rootPrivateKeyPem",
        "rootCertificatePem",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[B[B[B[B)V",
        "getHostId",
        "()Ljava/lang/String;",
        "getSystemBuid",
        "getWifiMacAddress",
        "storedDevicePublicKeyPem",
        "storedDeviceCertificatePem",
        "storedHostPrivateKeyPem",
        "storedHostCertificatePem",
        "storedRootPrivateKeyPem",
        "storedRootCertificatePem",
        "getDevicePublicKeyPem",
        "()[B",
        "getDeviceCertificatePem",
        "getHostPrivateKeyPem",
        "getHostCertificatePem",
        "getRootPrivateKeyPem",
        "getRootCertificatePem",
        "toPairRequestDictionary",
        "Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;",
        "toString",
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
.field public static final Companion:Lcom/shilapi/xcertplay/transport/LockdownPairRecord$Companion;


# instance fields
.field private final hostId:Ljava/lang/String;

.field private final storedDeviceCertificatePem:[B

.field private final storedDevicePublicKeyPem:[B

.field private final storedHostCertificatePem:[B

.field private final storedHostPrivateKeyPem:[B

.field private final storedRootCertificatePem:[B

.field private final storedRootPrivateKeyPem:[B

.field private final systemBuid:Ljava/lang/String;

.field private final wifiMacAddress:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/transport/LockdownPairRecord$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/transport/LockdownPairRecord$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/transport/LockdownPairRecord;->Companion:Lcom/shilapi/xcertplay/transport/LockdownPairRecord$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[B[B[B[B)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/LockdownPairRecord;->hostId:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/shilapi/xcertplay/transport/LockdownPairRecord;->systemBuid:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/shilapi/xcertplay/transport/LockdownPairRecord;->wifiMacAddress:Ljava/lang/String;

    .line 37
    array-length p1, p4

    invoke-static {p4, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    const-string p2, "copyOf(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/LockdownPairRecord;->storedDevicePublicKeyPem:[B

    .line 38
    array-length p1, p5

    invoke-static {p5, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/LockdownPairRecord;->storedDeviceCertificatePem:[B

    .line 39
    array-length p1, p6

    invoke-static {p6, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/LockdownPairRecord;->storedHostPrivateKeyPem:[B

    .line 40
    array-length p1, p7

    invoke-static {p7, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/LockdownPairRecord;->storedHostCertificatePem:[B

    .line 41
    array-length p1, p8

    invoke-static {p8, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/LockdownPairRecord;->storedRootPrivateKeyPem:[B

    .line 42
    array-length p1, p9

    invoke-static {p9, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/LockdownPairRecord;->storedRootCertificatePem:[B

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[B[B[B[BLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/shilapi/xcertplay/transport/LockdownPairRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[B[B[B[B)V

    return-void
.end method


# virtual methods
.method public final getDeviceCertificatePem()[B
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/LockdownPairRecord;->storedDeviceCertificatePem:[B

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    const-string v1, "copyOf(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getDevicePublicKeyPem()[B
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/LockdownPairRecord;->storedDevicePublicKeyPem:[B

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    const-string v1, "copyOf(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getHostCertificatePem()[B
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/LockdownPairRecord;->storedHostCertificatePem:[B

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    const-string v1, "copyOf(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getHostId()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/LockdownPairRecord;->hostId:Ljava/lang/String;

    return-object v0
.end method

.method public final getHostPrivateKeyPem()[B
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/LockdownPairRecord;->storedHostPrivateKeyPem:[B

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    const-string v1, "copyOf(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getRootCertificatePem()[B
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/LockdownPairRecord;->storedRootCertificatePem:[B

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    const-string v1, "copyOf(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getRootPrivateKeyPem()[B
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/LockdownPairRecord;->storedRootPrivateKeyPem:[B

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    const-string v1, "copyOf(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getSystemBuid()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/LockdownPairRecord;->systemBuid:Ljava/lang/String;

    return-object v0
.end method

.method public final getWifiMacAddress()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/LockdownPairRecord;->wifiMacAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final toPairRequestDictionary()Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;
    .locals 4

    .line 52
    new-instance v0, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;

    const/4 v1, 0x5

    .line 54
    new-array v1, v1, [Lkotlin/Pair;

    new-instance v2, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Data;

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/transport/LockdownPairRecord;->getDeviceCertificatePem()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Data;-><init>([B)V

    const-string v3, "DeviceCertificate"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 55
    new-instance v2, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Data;

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/transport/LockdownPairRecord;->getHostCertificatePem()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Data;-><init>([B)V

    const-string v3, "HostCertificate"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 56
    new-instance v2, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Text;

    iget-object v3, p0, Lcom/shilapi/xcertplay/transport/LockdownPairRecord;->hostId:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Text;-><init>(Ljava/lang/String;)V

    const-string v3, "HostID"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 57
    new-instance v2, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Data;

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/transport/LockdownPairRecord;->getRootCertificatePem()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Data;-><init>([B)V

    const-string v3, "RootCertificate"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 58
    new-instance v2, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Text;

    iget-object v3, p0, Lcom/shilapi/xcertplay/transport/LockdownPairRecord;->systemBuid:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Text;-><init>(Ljava/lang/String;)V

    const-string v3, "SystemBUID"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 53
    invoke-static {v1}, Lkotlin/collections/MapsKt;->linkedMapOf([Lkotlin/Pair;)Ljava/util/LinkedHashMap;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 52
    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 62
    const-string v0, "LockdownPairRecord(redacted)"

    return-object v0
.end method
