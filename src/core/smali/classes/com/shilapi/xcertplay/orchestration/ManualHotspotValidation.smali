.class public final Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation;
.super Ljava/lang/Object;
.source "ManualHotspotValidation.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u000cB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u0018\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0007J\u0018\u0010\u000b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation;",
        "",
        "<init>",
        "()V",
        "securityFor",
        "Lcom/shilapi/xcertplay/orchestration/ManualHotspotSecurity;",
        "passphrase",
        "",
        "error",
        "Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;",
        "ssid",
        "validate",
        "Error",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final error(Ljava/lang/String;Ljava/lang/String;)Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;
    .locals 3

    const-string/jumbo v0, "ssid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "passphrase"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p1, Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;->EMPTY_NAME:Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;

    return-object p1

    .line 18
    :cond_0
    invoke-static {p1}, Lkotlin/text/StringsKt;->encodeToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    array-length p1, p1

    const/16 v1, 0x20

    if-le p1, v1, :cond_1

    sget-object p1, Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;->LONG_NAME:Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 19
    invoke-static {v0, p1, p1, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0, p1, p1, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 20
    :cond_2
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p2, 0x8

    if-gt p2, p1, :cond_3

    const/16 p2, 0x40

    if-ge p1, p2, :cond_3

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;->PASSWORD_LENGTH:Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;

    return-object p1

    :cond_4
    :goto_0
    return-object v2

    .line 19
    :cond_5
    :goto_1
    sget-object p1, Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;->INVALID_CHARACTER:Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;

    return-object p1
.end method

.method public final securityFor(Ljava/lang/String;)Lcom/shilapi/xcertplay/orchestration/ManualHotspotSecurity;
    .locals 1

    const-string v0, "passphrase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/shilapi/xcertplay/orchestration/ManualHotspotSecurity;->OPEN:Lcom/shilapi/xcertplay/orchestration/ManualHotspotSecurity;

    return-object p1

    :cond_0
    sget-object p1, Lcom/shilapi/xcertplay/orchestration/ManualHotspotSecurity;->WPA2:Lcom/shilapi/xcertplay/orchestration/ManualHotspotSecurity;

    return-object p1
.end method

.method public final validate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "ssid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "passphrase"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation;->error(Ljava/lang/String;Ljava/lang/String;)Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;->getMessage()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
