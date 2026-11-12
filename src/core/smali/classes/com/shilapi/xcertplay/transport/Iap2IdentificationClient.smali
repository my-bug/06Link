.class public final Lcom/shilapi/xcertplay/transport/Iap2IdentificationClient;
.super Ljava/lang/Object;
.source "Iap2IdentificationClient.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/transport/Iap2IdentificationClient$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIap2IdentificationClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Iap2IdentificationClient.kt\ncom/shilapi/xcertplay/transport/Iap2IdentificationClient\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,313:1\n1634#2,3:314\n*S KotlinDebug\n*F\n+ 1 Iap2IdentificationClient.kt\ncom/shilapi/xcertplay/transport/Iap2IdentificationClient\n*L\n147#1:314,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\u0018\u0000 \u000c2\u00020\u0001:\u0001\u000cB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/Iap2IdentificationClient;",
        "",
        "session",
        "Lcom/shilapi/xcertplay/iap2/session/Iap2Session;",
        "<init>",
        "(Lcom/shilapi/xcertplay/iap2/session/Iap2Session;)V",
        "identify",
        "",
        "config",
        "Lcom/shilapi/xcertplay/transport/Iap2IdentificationConfig;",
        "timeoutMillis",
        "",
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
.field private static final ACCESSORY_WIFI_CONFIGURATION_INFORMATION:I = 0x5703

.field private static final CARPLAY_AVAILABILITY:I = 0x4300

.field private static final CARPLAY_START_SESSION:I = 0x4301

.field public static final Companion:Lcom/shilapi/xcertplay/transport/Iap2IdentificationClient$Companion;

.field private static final DEFAULT_TIMEOUT_MILLIS:J = 0x2710L

.field public static final IDENTIFICATION_ACCEPTED:I = 0x1d02

.field public static final IDENTIFICATION_INFORMATION:I = 0x1d01

.field public static final IDENTIFICATION_REJECTED:I = 0x1d03

.field private static final LOCATION_INFORMATION:I = 0xfffb

.field private static final MAXIMUM_TIMEOUT_MILLIS:J = 0x493e0L

.field private static final MESSAGES_RECEIVED_FROM_PHONE:[I

.field private static final MESSAGES_SENT_BY_ACCESSORY:[I

.field private static final NANOS_PER_MILLISECOND:J = 0xf4240L

.field private static final POWER_SOURCE_UPDATE:I = 0xae03

.field public static final START_IDENTIFICATION:I = 0x1d00

.field private static final START_LOCATION_INFORMATION:I = 0xfffa

.field private static final STOP_LOCATION_INFORMATION:I = 0xfffc

.field private static final WIRELESS_PHONE_MESSAGES:[I


# instance fields
.field private final session:Lcom/shilapi/xcertplay/iap2/session/Iap2Session;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/shilapi/xcertplay/transport/Iap2IdentificationClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/transport/Iap2IdentificationClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/transport/Iap2IdentificationClient;->Companion:Lcom/shilapi/xcertplay/transport/Iap2IdentificationClient$Companion;

    const/16 v0, 0xe

    .line 286
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 272
    sput-object v0, Lcom/shilapi/xcertplay/transport/Iap2IdentificationClient;->MESSAGES_SENT_BY_ACCESSORY:[I

    const/16 v0, 0xd

    .line 301
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    .line 288
    sput-object v0, Lcom/shilapi/xcertplay/transport/Iap2IdentificationClient;->MESSAGES_RECEIVED_FROM_PHONE:[I

    const/16 v0, 0x4e0e    # 2.8001E-41f

    const/16 v1, 0x5702

    const/16 v2, 0x4e0d    # 2.8E-41f

    .line 310
    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/transport/Iap2IdentificationClient;->WIRELESS_PHONE_MESSAGES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0xaa01
        0xaa03
        0x5000
        0x5002
        0x5200
        0x5203
        0xae00
        0xae02
        0x4157
        0x4159
        0x4154
        0x4156
        0xae03
        0x4301
    .end array-data

    :array_1
    .array-data 4
        0xaa00
        0xaa02
        0xaa04
        0xaa05
        0xea00
        0xea01
        0x5001
        0x5201
        0x5202
        0xae01
        0x4158
        0x4155
        0x4300
    .end array-data
.end method

.method public constructor <init>(Lcom/shilapi/xcertplay/iap2/session/Iap2Session;)V
    .locals 1

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2IdentificationClient;->session:Lcom/shilapi/xcertplay/iap2/session/Iap2Session;

    return-void
.end method

.method public static final synthetic access$getMESSAGES_RECEIVED_FROM_PHONE$cp()[I
    .locals 1

    .line 128
    sget-object v0, Lcom/shilapi/xcertplay/transport/Iap2IdentificationClient;->MESSAGES_RECEIVED_FROM_PHONE:[I

    return-object v0
.end method

.method public static final synthetic access$getMESSAGES_SENT_BY_ACCESSORY$cp()[I
    .locals 1

    .line 128
    sget-object v0, Lcom/shilapi/xcertplay/transport/Iap2IdentificationClient;->MESSAGES_SENT_BY_ACCESSORY:[I

    return-object v0
.end method

.method public static final synthetic access$getWIRELESS_PHONE_MESSAGES$cp()[I
    .locals 1

    .line 128
    sget-object v0, Lcom/shilapi/xcertplay/transport/Iap2IdentificationClient;->WIRELESS_PHONE_MESSAGES:[I

    return-object v0
.end method

.method public static synthetic identify$default(Lcom/shilapi/xcertplay/transport/Iap2IdentificationClient;Lcom/shilapi/xcertplay/transport/Iap2IdentificationConfig;JILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shilapi/xcertplay/transport/IphoneUsbException;,
            Lcom/shilapi/xcertplay/transport/Iap2IdentificationException;
        }
    .end annotation

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide/16 p2, 0x2710

    .line 130
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/transport/Iap2IdentificationClient;->identify(Lcom/shilapi/xcertplay/transport/Iap2IdentificationConfig;J)V

    return-void
.end method


# virtual methods
.method public final identify(Lcom/shilapi/xcertplay/transport/Iap2IdentificationConfig;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shilapi/xcertplay/transport/IphoneUsbException;,
            Lcom/shilapi/xcertplay/transport/Iap2IdentificationException;
        }
    .end annotation

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x1

    cmp-long v2, v0, p2

    if-gtz v2, :cond_6

    const-wide/32 v0, 0x493e1

    cmp-long v2, p2, v0

    if-gez v2, :cond_6

    .line 135
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long p2, p2, v2

    add-long/2addr v0, p2

    .line 136
    iget-object p2, p0, Lcom/shilapi/xcertplay/transport/Iap2IdentificationClient;->session:Lcom/shilapi/xcertplay/iap2/session/Iap2Session;

    sget-object p3, Lcom/shilapi/xcertplay/transport/Iap2IdentificationClient;->Companion:Lcom/shilapi/xcertplay/transport/Iap2IdentificationClient$Companion;

    # invokes: Lcom/shilapi/xcertplay/transport/Iap2IdentificationClient$Companion;->remainingMillis(J)J
    invoke-static {p3, v0, v1}, Lcom/shilapi/xcertplay/transport/Iap2IdentificationClient$Companion;->access$remainingMillis(Lcom/shilapi/xcertplay/transport/Iap2IdentificationClient$Companion;J)J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/shilapi/xcertplay/iap2/session/Iap2Session;->awaitReady(J)Z

    move-result p2

    const/4 p3, 0x2

    const/4 v2, 0x0

    if-eqz p2, :cond_5

    .line 141
    :goto_0
    iget-object p2, p0, Lcom/shilapi/xcertplay/transport/Iap2IdentificationClient;->session:Lcom/shilapi/xcertplay/iap2/session/Iap2Session;

    sget-object v3, Lcom/shilapi/xcertplay/transport/Iap2IdentificationClient;->Companion:Lcom/shilapi/xcertplay/transport/Iap2IdentificationClient$Companion;

    # invokes: Lcom/shilapi/xcertplay/transport/Iap2IdentificationClient$Companion;->remainingMillis(J)J
    invoke-static {v3, v0, v1}, Lcom/shilapi/xcertplay/transport/Iap2IdentificationClient$Companion;->access$remainingMillis(Lcom/shilapi/xcertplay/transport/Iap2IdentificationClient$Companion;J)J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/shilapi/xcertplay/iap2/session/Iap2Session;->recv(J)Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 143
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;->getMessageId()I

    move-result v4

    const/16 v5, 0x1d00

    if-eq v4, v5, :cond_3

    const/16 p1, 0x1d02

    if-eq v4, p1, :cond_2

    const/16 p1, 0x1d03

    if-ne v4, p1, :cond_1

    .line 147
    sget-object p1, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->Companion:Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader$Companion;

    invoke-virtual {p1, p2}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader$Companion;->of(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->list()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast p2, Ljava/util/Collection;

    .line 314
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 315
    check-cast p3, Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;

    .line 147
    invoke-virtual {p3}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;->getId()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 315
    invoke-interface {p2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 147
    :cond_0
    check-cast p2, Ljava/util/LinkedHashSet;

    .line 148
    new-instance p1, Lcom/shilapi/xcertplay/transport/Iap2IdentificationException$Rejected;

    check-cast p2, Ljava/util/Set;

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/transport/Iap2IdentificationException$Rejected;-><init>(Ljava/util/Set;)V

    throw p1

    .line 150
    :cond_1
    new-instance p1, Lcom/shilapi/xcertplay/transport/Iap2IdentificationException$UnexpectedMessage;

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;->getMessageId()I

    move-result p2

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/transport/Iap2IdentificationException$UnexpectedMessage;-><init>(I)V

    throw p1

    :cond_2
    return-void

    .line 144
    :cond_3
    iget-object p2, p0, Lcom/shilapi/xcertplay/transport/Iap2IdentificationClient;->session:Lcom/shilapi/xcertplay/iap2/session/Iap2Session;

    invoke-virtual {v3, p1}, Lcom/shilapi/xcertplay/transport/Iap2IdentificationClient$Companion;->identificationInformation(Lcom/shilapi/xcertplay/transport/Iap2IdentificationConfig;)Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;

    move-result-object v4

    # invokes: Lcom/shilapi/xcertplay/transport/Iap2IdentificationClient$Companion;->remainingMillis(J)J
    invoke-static {v3, v0, v1}, Lcom/shilapi/xcertplay/transport/Iap2IdentificationClient$Companion;->access$remainingMillis(Lcom/shilapi/xcertplay/transport/Iap2IdentificationClient$Companion;J)J

    move-result-wide v5

    invoke-virtual {p2, v4, v5, v6}, Lcom/shilapi/xcertplay/iap2/session/Iap2Session;->send(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;J)V

    goto :goto_0

    .line 142
    :cond_4
    new-instance p1, Lcom/shilapi/xcertplay/transport/IphoneUsbException$TimedOut;

    const-string p2, "Timed out waiting for iAP2 identification"

    invoke-direct {p1, p2, v2, p3, v2}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$TimedOut;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1

    .line 137
    :cond_5
    new-instance p1, Lcom/shilapi/xcertplay/transport/IphoneUsbException$TimedOut;

    const-string p2, "Timed out waiting for iAP2 control session readiness"

    invoke-direct {p1, p2, v2, p3, v2}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$TimedOut;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1

    .line 132
    :cond_6
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
.end method
