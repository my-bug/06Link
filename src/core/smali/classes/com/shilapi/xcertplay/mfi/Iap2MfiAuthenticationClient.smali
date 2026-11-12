.class public final Lcom/shilapi/xcertplay/mfi/Iap2MfiAuthenticationClient;
.super Ljava/lang/Object;
.source "Iap2MfiAuthenticationClient.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/mfi/Iap2MfiAuthenticationClient$Companion;,
        Lcom/shilapi/xcertplay/mfi/Iap2MfiAuthenticationClient$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0004\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J.\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0014\u0008\u0002\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\t0\u000fJ \u0010\u0011\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\rH\u0002J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J\u0010\u0010\u0017\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\rH\u0002J\u0010\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\rH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/mfi/Iap2MfiAuthenticationClient;",
        "",
        "authentication",
        "Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;",
        "maximumCertificateLength",
        "",
        "<init>",
        "(Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;I)V",
        "run",
        "",
        "session",
        "Lcom/shilapi/xcertplay/iap2/session/Iap2Session;",
        "timeoutMillis",
        "",
        "onProgress",
        "Lkotlin/Function1;",
        "",
        "send",
        "frame",
        "Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;",
        "deadlineNanos",
        "requireParameterZero",
        "",
        "deadlineAfter",
        "remainingMillis",
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
.field private static final AUTHENTICATION_FAILED:I = 0xaa04

.field private static final AUTHENTICATION_SUCCEEDED:I = 0xaa05

.field private static final CERTIFICATE:I = 0xaa01

.field public static final Companion:Lcom/shilapi/xcertplay/mfi/Iap2MfiAuthenticationClient$Companion;

.field private static final DEFAULT_TIMEOUT_MILLIS:J = 0x7530L

.field private static final MAXIMUM_CHALLENGE_BYTES:I = 0x80

.field private static final MAX_CSM_CERTIFICATE_BYTES:I = 0xfff5

.field private static final MAX_TIMEOUT_MILLIS:J = 0x493e0L

.field private static final NANOS_PER_MILLISECOND:J = 0xf4240L

.field private static final REQUEST_CERTIFICATE:I = 0xaa00

.field private static final REQUEST_CHALLENGE:I = 0xaa02

.field private static final RESPONSE:I = 0xaa03


# instance fields
.field private final authentication:Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;

.field private final maximumCertificateLength:I


# direct methods
.method public static synthetic $r8$lambda$k-61FgHQyJoTR51YZWOP3hZ6U08(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/mfi/Iap2MfiAuthenticationClient;->run$lambda$1(Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/mfi/Iap2MfiAuthenticationClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/mfi/Iap2MfiAuthenticationClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/mfi/Iap2MfiAuthenticationClient;->Companion:Lcom/shilapi/xcertplay/mfi/Iap2MfiAuthenticationClient$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;I)V
    .locals 1

    const-string v0, "authentication"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/shilapi/xcertplay/mfi/Iap2MfiAuthenticationClient;->authentication:Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;

    .line 10
    iput p2, p0, Lcom/shilapi/xcertplay/mfi/Iap2MfiAuthenticationClient;->maximumCertificateLength:I

    const/4 p1, 0x1

    if-gt p1, p2, :cond_0

    const p1, 0xfff6

    if-ge p2, p1, :cond_0

    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maximumCertificateLength must be in 1..65525"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const p2, 0xfff5

    .line 8
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/mfi/Iap2MfiAuthenticationClient;-><init>(Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;I)V

    return-void
.end method

.method private final deadlineAfter(J)J
    .locals 7

    .line 91
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long p1, p1, v2

    const-wide v2, 0x7fffffffffffffffL

    sub-long v4, v2, v0

    cmp-long v6, v4, p1

    if-gez v6, :cond_0

    return-wide v2

    :cond_0
    add-long/2addr v0, p1

    return-wide v0
.end method

.method private final remainingMillis(J)J
    .locals 3

    .line 97
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    return-wide v0

    :cond_0
    const-wide/32 v0, 0xf423f

    add-long/2addr p1, v0

    const-wide/32 v0, 0xf4240

    .line 99
    div-long/2addr p1, v0

    const-wide/32 v0, 0x493e0

    .line 100
    invoke-static {p1, p2, v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtMost(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method private final requireParameterZero(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)[B
    .locals 2

    .line 84
    :try_start_0
    sget-object v0, Lcom/shilapi/xcertplay/iap2/message/Iap2AuthenticationMessages;->INSTANCE:Lcom/shilapi/xcertplay/iap2/message/Iap2AuthenticationMessages;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/iap2/message/Iap2AuthenticationMessages;->challenge(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 86
    new-instance v0, Lcom/shilapi/xcertplay/mfi/Iap2MfiAuthenticationException;

    const-string v1, "iAP2 MFi challenge is missing parameter 0"

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v0, v1, p1}, Lcom/shilapi/xcertplay/mfi/Iap2MfiAuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static synthetic run$default(Lcom/shilapi/xcertplay/mfi/Iap2MfiAuthenticationClient;Lcom/shilapi/xcertplay/iap2/session/Iap2Session;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const-wide/16 p2, 0x7530

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    .line 22
    new-instance p4, Lcom/shilapi/xcertplay/mfi/Iap2MfiAuthenticationClient$$ExternalSyntheticLambda0;

    invoke-direct {p4}, Lcom/shilapi/xcertplay/mfi/Iap2MfiAuthenticationClient$$ExternalSyntheticLambda0;-><init>()V

    .line 19
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/mfi/Iap2MfiAuthenticationClient;->run(Lcom/shilapi/xcertplay/iap2/session/Iap2Session;JLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final run$lambda$1(Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final send(Lcom/shilapi/xcertplay/iap2/session/Iap2Session;Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;J)V
    .locals 3

    .line 77
    invoke-direct {p0, p3, p4}, Lcom/shilapi/xcertplay/mfi/Iap2MfiAuthenticationClient;->remainingMillis(J)J

    move-result-wide p3

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-eqz v2, :cond_0

    .line 79
    invoke-virtual {p1, p2, p3, p4}, Lcom/shilapi/xcertplay/iap2/session/Iap2Session;->send(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;J)V

    return-void

    .line 78
    :cond_0
    new-instance p1, Lcom/shilapi/xcertplay/mfi/Iap2MfiAuthenticationException;

    const-string p2, "Timed out sending iAP2 MFi authentication reply"

    const/4 p3, 0x2

    const/4 p4, 0x0

    invoke-direct {p1, p2, p4, p3, p4}, Lcom/shilapi/xcertplay/mfi/Iap2MfiAuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1
.end method


# virtual methods
.method public final run(Lcom/shilapi/xcertplay/iap2/session/Iap2Session;JLkotlin/jvm/functions/Function1;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/iap2/session/Iap2Session;",
            "J",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onProgress"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x1

    cmp-long v2, v0, p2

    if-gtz v2, :cond_5

    const-wide/32 v0, 0x493e1

    cmp-long v2, p2, v0

    if-gez v2, :cond_5

    .line 27
    invoke-direct {p0, p2, p3}, Lcom/shilapi/xcertplay/mfi/Iap2MfiAuthenticationClient;->deadlineAfter(J)J

    move-result-wide p2

    .line 28
    iget-object v0, p0, Lcom/shilapi/xcertplay/mfi/Iap2MfiAuthenticationClient;->authentication:Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;

    iget v1, p0, Lcom/shilapi/xcertplay/mfi/Iap2MfiAuthenticationClient;->maximumCertificateLength:I

    invoke-interface {v0, v1}, Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;->readCertificate(I)[B

    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/shilapi/xcertplay/mfi/Iap2MfiAuthenticationClient;->authentication:Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;

    invoke-interface {v1}, Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;->getCertificateType()Lcom/shilapi/xcertplay/mfi/MfiCertificateType;

    move-result-object v1

    sget-object v2, Lcom/shilapi/xcertplay/mfi/Iap2MfiAuthenticationClient$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/mfi/MfiCertificateType;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v1, v2, :cond_1

    if-ne v1, v3, :cond_0

    .line 31
    sget-object v1, Lcom/shilapi/xcertplay/iap2/message/Iap2AuthenticationMessages;->INSTANCE:Lcom/shilapi/xcertplay/iap2/message/Iap2AuthenticationMessages;

    invoke-virtual {v1, v0}, Lcom/shilapi/xcertplay/iap2/message/Iap2AuthenticationMessages;->accessoryCertificateBody([B)Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;

    move-result-object v1

    goto :goto_0

    .line 29
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 30
    :cond_1
    sget-object v1, Lcom/shilapi/xcertplay/iap2/message/Iap2AuthenticationMessages;->INSTANCE:Lcom/shilapi/xcertplay/iap2/message/Iap2AuthenticationMessages;

    invoke-virtual {v1, v0}, Lcom/shilapi/xcertplay/iap2/message/Iap2AuthenticationMessages;->accessoryCertificate([B)Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;

    move-result-object v1

    .line 33
    :goto_0
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;->getPayload()[B

    move-result-object v4

    array-length v4, v4

    .line 35
    iget-object v5, p0, Lcom/shilapi/xcertplay/mfi/Iap2MfiAuthenticationClient;->authentication:Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;

    invoke-interface {v5}, Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;->getCertificateType()Lcom/shilapi/xcertplay/mfi/MfiCertificateType;

    move-result-object v5

    .line 36
    array-length v0, v0

    .line 37
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mfi type="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " certificate loaded bytes="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " payload bytes="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-interface {p4, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :goto_1
    invoke-direct {p0, p2, p3}, Lcom/shilapi/xcertplay/mfi/Iap2MfiAuthenticationClient;->remainingMillis(J)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    .line 41
    const-string v0, "Timed out waiting for iAP2 MFi authentication"

    const/4 v9, 0x0

    cmp-long v10, v5, v7

    if-eqz v10, :cond_4

    .line 42
    invoke-virtual {p1, v5, v6}, Lcom/shilapi/xcertplay/iap2/session/Iap2Session;->recv(J)Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 44
    invoke-virtual {v5}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;->getMessageId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 65
    :pswitch_0
    new-instance p1, Lcom/shilapi/xcertplay/mfi/Iap2MfiAuthenticationException;

    .line 66
    invoke-virtual {v5}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;->getMessageId()I

    move-result p2

    const/16 p3, 0x10

    invoke-static {p3}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "toString(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x4

    const/16 p4, 0x30

    invoke-static {p2, p3, p4}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Unexpected iAP2 MFi message 0x"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 65
    invoke-direct {p1, p2, v9, v3, v9}, Lcom/shilapi/xcertplay/mfi/Iap2MfiAuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1

    .line 61
    :pswitch_1
    const-string p1, "iap2 mfi rx=0xaa05 authentication-succeeded"

    invoke-interface {p4, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 64
    :pswitch_2
    new-instance p1, Lcom/shilapi/xcertplay/mfi/Iap2MfiAuthenticationException;

    const-string p2, "iPhone sent AuthenticationFailed"

    invoke-direct {p1, p2, v9, v3, v9}, Lcom/shilapi/xcertplay/mfi/Iap2MfiAuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1

    .line 51
    :pswitch_3
    invoke-direct {p0, v5}, Lcom/shilapi/xcertplay/mfi/Iap2MfiAuthenticationClient;->requireParameterZero(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)[B

    move-result-object v0

    .line 52
    array-length v5, v0

    if-gt v2, v5, :cond_2

    const/16 v6, 0x81

    if-ge v5, v6, :cond_2

    .line 55
    array-length v5, v0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "iap2 mfi rx=0xaa02 challenge bytes="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p4, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v5, p0, Lcom/shilapi/xcertplay/mfi/Iap2MfiAuthenticationClient;->authentication:Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;

    invoke-interface {v5, v0}, Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;->signChallenge([B)[B

    move-result-object v0

    .line 57
    sget-object v5, Lcom/shilapi/xcertplay/iap2/message/Iap2AuthenticationMessages;->INSTANCE:Lcom/shilapi/xcertplay/iap2/message/Iap2AuthenticationMessages;

    invoke-virtual {v5, v0}, Lcom/shilapi/xcertplay/iap2/message/Iap2AuthenticationMessages;->response([B)Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;

    move-result-object v5

    invoke-direct {p0, p1, v5, p2, p3}, Lcom/shilapi/xcertplay/mfi/Iap2MfiAuthenticationClient;->send(Lcom/shilapi/xcertplay/iap2/session/Iap2Session;Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;J)V

    .line 58
    array-length v0, v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "iap2 mfi tx=0xaa03 signature bytes="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 53
    :cond_2
    new-instance p1, Lcom/shilapi/xcertplay/mfi/Iap2MfiAuthenticationException;

    array-length p2, v0

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Invalid iAP2 MFi challenge length "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v9, v3, v9}, Lcom/shilapi/xcertplay/mfi/Iap2MfiAuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1

    .line 46
    :pswitch_4
    const-string v0, "iap2 mfi rx=0xaa00 request-certificate"

    invoke-interface {p4, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-direct {p0, p1, v1, p2, p3}, Lcom/shilapi/xcertplay/mfi/Iap2MfiAuthenticationClient;->send(Lcom/shilapi/xcertplay/iap2/session/Iap2Session;Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;J)V

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "iap2 mfi tx=0xaa01 certificate bytes="

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 43
    :cond_3
    new-instance p1, Lcom/shilapi/xcertplay/mfi/Iap2MfiAuthenticationException;

    invoke-direct {p1, v0, v9, v3, v9}, Lcom/shilapi/xcertplay/mfi/Iap2MfiAuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1

    .line 41
    :cond_4
    new-instance p1, Lcom/shilapi/xcertplay/mfi/Iap2MfiAuthenticationException;

    invoke-direct {p1, v0, v9, v3, v9}, Lcom/shilapi/xcertplay/mfi/Iap2MfiAuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1

    .line 24
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "timeoutMillis must be in 1..300000"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0xaa00
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
