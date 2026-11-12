.class public final Lcom/shilapi/xcertplay/airplay/AirPlayPeerDiagnostics;
.super Ljava/lang/Object;
.source "AirPlayPeerDiagnostics.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAirPlayPeerDiagnostics.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AirPlayPeerDiagnostics.kt\ncom/shilapi/xcertplay/airplay/AirPlayPeerDiagnostics\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,14:1\n1#2:15\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u0008R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/airplay/AirPlayPeerDiagnostics;",
        "",
        "<init>",
        "()V",
        "modelToken",
        "Lkotlin/text/Regex;",
        "versionToken",
        "summary",
        "",
        "model",
        "osVersion",
        "sourceVersion",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlayPeerDiagnostics;

.field private static final modelToken:Lkotlin/text/Regex;

.field private static final versionToken:Lkotlin/text/Regex;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/airplay/AirPlayPeerDiagnostics;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/airplay/AirPlayPeerDiagnostics;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/airplay/AirPlayPeerDiagnostics;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlayPeerDiagnostics;

    .line 5
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "(?:iPhone|iPad|iPod)[0-9]{1,3},[0-9]{1,3}"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shilapi/xcertplay/airplay/AirPlayPeerDiagnostics;->modelToken:Lkotlin/text/Regex;

    .line 6
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "[0-9][0-9A-Za-z._-]{0,39}"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shilapi/xcertplay/airplay/AirPlayPeerDiagnostics;->versionToken:Lkotlin/text/Regex;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final summary$version(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 9
    sget-object v0, Lcom/shilapi/xcertplay/airplay/AirPlayPeerDiagnostics;->versionToken:Lkotlin/text/Regex;

    move-object v1, p0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const-string p0, "not_reported"

    :cond_1
    return-object p0
.end method


# virtual methods
.method public final summary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "osVersion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sourceVersion"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object v0, Lcom/shilapi/xcertplay/airplay/AirPlayPeerDiagnostics;->modelToken:Lkotlin/text/Regex;

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const-string p1, "not_reported"

    .line 11
    :cond_1
    invoke-static {p2}, Lcom/shilapi/xcertplay/airplay/AirPlayPeerDiagnostics;->summary$version(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3}, Lcom/shilapi/xcertplay/airplay/AirPlayPeerDiagnostics;->summary$version(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Phone display peer model="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ios="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " airplay="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
