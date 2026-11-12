.class public final Lcom/shilapi/xcertplay/transport/LockdownPairRecordGenerator;
.super Ljava/lang/Object;
.source "LockdownPairRecord.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLockdownPairRecord.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockdownPairRecord.kt\ncom/shilapi/xcertplay/transport/LockdownPairRecordGenerator\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,434:1\n1#2:435\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J&\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/LockdownPairRecordGenerator;",
        "",
        "<init>",
        "()V",
        "generate",
        "Lcom/shilapi/xcertplay/transport/LockdownPairRecord;",
        "devicePublicKeyPkcs1Pem",
        "",
        "wifiAddress",
        "",
        "hostId",
        "systemBuid",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/transport/LockdownPairRecordGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/transport/LockdownPairRecordGenerator;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/transport/LockdownPairRecordGenerator;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/transport/LockdownPairRecordGenerator;->INSTANCE:Lcom/shilapi/xcertplay/transport/LockdownPairRecordGenerator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final generate([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/shilapi/xcertplay/transport/LockdownPairRecord;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "devicePublicKeyPkcs1Pem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "wifiAddress"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hostId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "systemBuid"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    array-length v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_4

    .line 131
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 132
    move-object v0, p3

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 133
    move-object v0, p4

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    const-string p1, "copyOf(...)"

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    sget-object p1, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->INSTANCE:Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;

    invoke-virtual {p1, v5}, Lcom/shilapi/xcertplay/transport/CertificateMaterialGenerator;->generate([B)Lcom/shilapi/xcertplay/transport/CertificateMaterial;

    move-result-object v6

    .line 137
    sget-object v1, Lcom/shilapi/xcertplay/transport/LockdownPairRecord;->Companion:Lcom/shilapi/xcertplay/transport/LockdownPairRecord$Companion;

    move-object v4, p2

    move-object v2, p3

    move-object v3, p4

    invoke-virtual/range {v1 .. v6}, Lcom/shilapi/xcertplay/transport/LockdownPairRecord$Companion;->create$shared_release(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLcom/shilapi/xcertplay/transport/CertificateMaterial;)Lcom/shilapi/xcertplay/transport/LockdownPairRecord;

    move-result-object p1

    return-object p1

    .line 133
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "systemBuid must not be blank"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 132
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "hostId must not be blank"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 131
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "wifiAddress must not be blank"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 130
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "devicePublicKeyPkcs1Pem must not be empty"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
