.class public final Lcom/shilapi/xcertplay/transport/LockdownPairRecord$Companion;
.super Ljava/lang/Object;
.source "LockdownPairRecord.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/transport/LockdownPairRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLockdownPairRecord.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockdownPairRecord.kt\ncom/shilapi/xcertplay/transport/LockdownPairRecord$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,434:1\n1#2:435\n1869#3,2:436\n*S KotlinDebug\n*F\n+ 1 LockdownPairRecord.kt\ncom/shilapi/xcertplay/transport/LockdownPairRecord$Companion\n*L\n87#1:436,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003JN\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u000bJ5\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u0013H\u0000\u00a2\u0006\u0002\u0008\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/LockdownPairRecord$Companion;",
        "",
        "<init>",
        "()V",
        "restore",
        "Lcom/shilapi/xcertplay/transport/LockdownPairRecord;",
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
        "create",
        "material",
        "Lcom/shilapi/xcertplay/transport/CertificateMaterial;",
        "create$shared_release",
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

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/LockdownPairRecord$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create$shared_release(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLcom/shilapi/xcertplay/transport/CertificateMaterial;)Lcom/shilapi/xcertplay/transport/LockdownPairRecord;
    .locals 12

    const-string v0, "hostId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "systemBuid"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "wifiMacAddress"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "devicePublicKeyPem"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "material"

    move-object/from16 v1, p5

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    new-instance v1, Lcom/shilapi/xcertplay/transport/LockdownPairRecord;

    .line 112
    invoke-virtual/range {p5 .. p5}, Lcom/shilapi/xcertplay/transport/CertificateMaterial;->getDeviceCertificatePem()[B

    move-result-object v6

    .line 113
    invoke-virtual/range {p5 .. p5}, Lcom/shilapi/xcertplay/transport/CertificateMaterial;->getHostPrivateKeyPem()[B

    move-result-object v7

    .line 114
    invoke-virtual/range {p5 .. p5}, Lcom/shilapi/xcertplay/transport/CertificateMaterial;->getHostCertificatePem()[B

    move-result-object v8

    .line 115
    invoke-virtual/range {p5 .. p5}, Lcom/shilapi/xcertplay/transport/CertificateMaterial;->getRootPrivateKeyPem()[B

    move-result-object v9

    .line 116
    invoke-virtual/range {p5 .. p5}, Lcom/shilapi/xcertplay/transport/CertificateMaterial;->getRootCertificatePem()[B

    move-result-object v10

    const/4 v11, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 107
    invoke-direct/range {v1 .. v11}, Lcom/shilapi/xcertplay/transport/LockdownPairRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[B[B[B[BLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public final restore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[B[B[B[B)Lcom/shilapi/xcertplay/transport/LockdownPairRecord;
    .locals 11

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    const-string v0, "hostId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "systemBuid"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "wifiMacAddress"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "devicePublicKeyPem"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceCertificatePem"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hostPrivateKeyPem"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hostCertificatePem"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootPrivateKeyPem"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootCertificatePem"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 78
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 79
    move-object v0, p3

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x6

    .line 86
    new-array v0, v0, [[B

    const/4 v1, 0x0

    aput-object p4, v0, v1

    const/4 v2, 0x1

    aput-object v5, v0, v2

    const/4 v10, 0x2

    aput-object v6, v0, v10

    const/4 v10, 0x3

    aput-object v7, v0, v10

    const/4 v10, 0x4

    aput-object v8, v0, v10

    const/4 v10, 0x5

    aput-object v9, v0, v10

    .line 81
    check-cast v0, [Ljava/lang/Object;

    .line 80
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 436
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    .line 87
    array-length v10, v10

    if-nez v10, :cond_0

    const/4 v10, 0x1

    goto :goto_1

    :cond_0
    const/4 v10, 0x0

    :goto_1
    if-nez v10, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "PEM material must not be empty"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 88
    :cond_2
    new-instance v0, Lcom/shilapi/xcertplay/transport/LockdownPairRecord;

    const/4 v10, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v10}, Lcom/shilapi/xcertplay/transport/LockdownPairRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[B[B[B[BLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 79
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "wifiMacAddress must not be blank"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 78
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "systemBuid must not be blank"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "hostId must not be blank"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
