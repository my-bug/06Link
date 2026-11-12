.class public final Lcom/shilapi/xcertplay/mfi/LocalMfiProbe;
.super Ljava/lang/Object;
.source "LocalMfiProbe.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLocalMfiProbe.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocalMfiProbe.kt\ncom/shilapi/xcertplay/mfi/LocalMfiProbe\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,42:1\n1#2:43\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001b\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u0007\u00a2\u0006\u0002\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/mfi/LocalMfiProbe;",
        "",
        "<init>",
        "()V",
        "main",
        "",
        "arguments",
        "",
        "",
        "([Ljava/lang/String;)V",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/mfi/LocalMfiProbe;


# direct methods
.method public static synthetic $r8$lambda$-bOS86G_TWlCxBWYSUMJrzaoa5E(Lkotlin/jvm/internal/Ref$IntRef;I)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/mfi/LocalMfiProbe;->main$lambda$5$lambda$1(Lkotlin/jvm/internal/Ref$IntRef;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/mfi/LocalMfiProbe;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/mfi/LocalMfiProbe;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/mfi/LocalMfiProbe;->INSTANCE:Lcom/shilapi/xcertplay/mfi/LocalMfiProbe;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final main([Ljava/lang/String;)V
    .locals 16
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "arguments"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 15
    new-instance v1, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x2

    if-ge v4, v5, :cond_4

    .line 17
    sget-object v6, Lcom/shilapi/xcertplay/mfi/LocalMfiAuthenticationClient;->Companion:Lcom/shilapi/xcertplay/mfi/LocalMfiAuthenticationClient$Companion;

    new-instance v7, Ljava/io/File;

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->single([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v8, Lcom/shilapi/xcertplay/mfi/LocalMfiProbe$$ExternalSyntheticLambda0;

    invoke-direct {v8, v1}, Lcom/shilapi/xcertplay/mfi/LocalMfiProbe$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/internal/Ref$IntRef;)V

    invoke-virtual {v6, v7, v8}, Lcom/shilapi/xcertplay/mfi/LocalMfiAuthenticationClient$Companion;->load(Ljava/io/File;Lkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/mfi/LocalMfiAuthenticationClient;

    move-result-object v6

    .line 18
    const-string v7, "X.509"

    invoke-static {v7}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v7

    new-instance v8, Ljava/io/ByteArrayInputStream;

    .line 19
    move-object v9, v6

    check-cast v9, Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;

    const/4 v10, 0x0

    invoke-static {v9, v3, v2, v10}, Lcom/shilapi/xcertplay/mfi/MfiAuthenticator$-CC;->readCertificate$default(Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;IILjava/lang/Object;)[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    check-cast v8, Ljava/io/InputStream;

    invoke-virtual {v7, v8}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v7

    const-string v8, "generateCertificates(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Iterable;

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->single(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/cert/Certificate;

    const/4 v8, 0x0

    :goto_1
    const/4 v9, 0x3

    if-ge v8, v9, :cond_3

    const/16 v9, 0x20

    .line 21
    new-array v10, v9, [B

    new-instance v11, Ljava/security/SecureRandom;

    invoke-direct {v11}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v11, v10}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 22
    invoke-virtual {v6, v10}, Lcom/shilapi/xcertplay/mfi/LocalMfiAuthenticationClient;->signChallenge([B)[B

    move-result-object v11

    .line 23
    array-length v12, v11

    const/16 v13, 0x40

    if-ne v12, v13, :cond_2

    .line 24
    new-instance v12, Lorg/bouncycastle/asn1/DERSequence;

    .line 25
    new-array v14, v5, [Lorg/bouncycastle/asn1/ASN1Integer;

    new-instance v15, Lorg/bouncycastle/asn1/ASN1Integer;

    new-instance v5, Ljava/math/BigInteger;

    invoke-static {v11, v3, v9}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v13

    invoke-direct {v5, v2, v13}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v15, v5}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    aput-object v15, v14, v3

    .line 26
    new-instance v5, Lorg/bouncycastle/asn1/ASN1Integer;

    new-instance v13, Ljava/math/BigInteger;

    const/16 v15, 0x40

    invoke-static {v11, v9, v15}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v9

    invoke-direct {v13, v2, v9}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v5, v13}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    aput-object v5, v14, v2

    .line 25
    check-cast v14, [Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 24
    invoke-direct {v12, v14}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 27
    invoke-virtual {v12}, Lorg/bouncycastle/asn1/DERSequence;->getEncoded()[B

    move-result-object v5

    .line 28
    const-string v9, "NONEwithECDSA"

    invoke-static {v9}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v9

    .line 29
    invoke-virtual {v7}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 30
    invoke-virtual {v9, v10}, Ljava/security/Signature;->update([B)V

    .line 31
    invoke-virtual {v9, v5}, Ljava/security/Signature;->verify([B)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 32
    aget-byte v11, v10, v3

    xor-int/2addr v11, v2

    int-to-byte v11, v11

    aput-byte v11, v10, v3

    .line 33
    invoke-virtual {v7}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 34
    invoke-virtual {v9, v10}, Ljava/security/Signature;->update([B)V

    .line 35
    invoke-virtual {v9, v5}, Ljava/security/Signature;->verify([B)Z

    move-result v5

    if-nez v5, :cond_0

    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v8, v8, 0x1

    .line 36
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "offline-probe startup="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " trial="

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " signatureBytes=64 verifies=true changedChallengeRejected=true"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v9, v5}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    const/4 v5, 0x2

    goto/16 :goto_1

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Changed challenge was incorrectly accepted"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Signature verification failed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 39
    :cond_4
    iget v0, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "offline-probe PASS localSignatures="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " remoteRequests=0 (provider has no network operations)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void

    .line 14
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected private identity directory"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method private static final main$lambda$5$lambda$1(Lkotlin/jvm/internal/Ref$IntRef;I)Lkotlin/Unit;
    .locals 0

    .line 17
    iget p1, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
