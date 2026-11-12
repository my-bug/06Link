.class public final Lcom/shilapi/xcertplay/update/UpdateManifest$Companion;
.super Ljava/lang/Object;
.source "UpdateManifest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/update/UpdateManifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUpdateManifest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UpdateManifest.kt\ncom/shilapi/xcertplay/update/UpdateManifest$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,88:1\n1#2:89\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0005J\u001d\u0010\u000b\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u0005H\u0000\u00a2\u0006\u0002\u0008\rJ\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0005J \u0010\u0011\u001a\u00020\u00122\u000e\u0010\u0013\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00142\u0006\u0010\u0015\u001a\u00020\u0005H\u0002J \u0010\u0016\u001a\u00020\u00172\u000e\u0010\u0013\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00142\u0006\u0010\u0015\u001a\u00020\u0005H\u0002J \u0010\u0018\u001a\u00020\u00052\u000e\u0010\u0013\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00142\u0006\u0010\u0015\u001a\u00020\u0005H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/update/UpdateManifest$Companion;",
        "",
        "<init>",
        "()V",
        "FILE_NAME",
        "",
        "APK_NAME",
        "Lkotlin/text/Regex;",
        "SHA256",
        "manifestUrl",
        "baseUrl",
        "resolve",
        "name",
        "resolve$shared_release",
        "parse",
        "Lcom/shilapi/xcertplay/update/UpdateManifest;",
        "json",
        "intOf",
        "",
        "root",
        "",
        "key",
        "longOf",
        "",
        "stringOf",
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

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/update/UpdateManifest$Companion;-><init>()V

    return-void
.end method

.method private final intOf(Ljava/util/Map;Ljava/lang/String;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 71
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "\""

    if-eqz p1, :cond_7

    .line 72
    instance-of v1, p1, Ljava/lang/Long;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Ljava/lang/Long;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_3

    :cond_1
    instance-of v1, p1, Ljava/lang/Double;

    if-eqz v1, :cond_2

    check-cast p1, Ljava/lang/Double;

    goto :goto_1

    :cond_2
    move-object p1, v2

    :goto_1
    if-eqz p1, :cond_4

    move-object v1, p1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    cmpg-double v1, v3, v5

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    move-object p1, v2

    :goto_2
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    double-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :cond_4
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_3
    const-wide/32 v3, -0x80000000

    cmp-long p1, v1, v3

    if-ltz p1, :cond_5

    const-wide/32 v3, 0x7fffffff

    cmp-long p1, v1, v3

    if-gtz p1, :cond_5

    long-to-int p1, v1

    return p1

    .line 74
    :cond_5
    new-instance p1, Lcom/shilapi/xcertplay/update/UpdateManifest$MalformedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\" out of range"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/update/UpdateManifest$MalformedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_6
    new-instance p1, Lcom/shilapi/xcertplay/update/UpdateManifest$MalformedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\" must be an integer"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/update/UpdateManifest$MalformedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :cond_7
    new-instance p1, Lcom/shilapi/xcertplay/update/UpdateManifest$MalformedException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "missing \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/update/UpdateManifest$MalformedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final longOf(Ljava/util/Map;Ljava/lang/String;)J
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .line 79
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "\""

    if-eqz p1, :cond_6

    .line 80
    instance-of v1, p1, Ljava/lang/Long;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Ljava/lang/Long;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1

    :cond_1
    instance-of v1, p1, Ljava/lang/Double;

    if-eqz v1, :cond_2

    check-cast p1, Ljava/lang/Double;

    goto :goto_1

    :cond_2
    move-object p1, v2

    :goto_1
    if-eqz p1, :cond_4

    move-object v1, p1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    cmpg-double v1, v3, v5

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    move-object p1, v2

    :goto_2
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    double-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1

    .line 81
    :cond_5
    new-instance p1, Lcom/shilapi/xcertplay/update/UpdateManifest$MalformedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\" must be an integer"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/update/UpdateManifest$MalformedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :cond_6
    new-instance p1, Lcom/shilapi/xcertplay/update/UpdateManifest$MalformedException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "missing \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/update/UpdateManifest$MalformedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final stringOf(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 85
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    new-instance p1, Lcom/shilapi/xcertplay/update/UpdateManifest$MalformedException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "missing or non-string \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/update/UpdateManifest$MalformedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final manifestUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "baseUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    const-string v0, "manifest.json"

    invoke-virtual {p0, p1, v0}, Lcom/shilapi/xcertplay/update/UpdateManifest$Companion;->resolve$shared_release(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final parse(Ljava/lang/String;)Lcom/shilapi/xcertplay/update/UpdateManifest;
    .locals 10

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    sget-object v0, Lcom/shilapi/xcertplay/update/MiniJson;->INSTANCE:Lcom/shilapi/xcertplay/update/MiniJson;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/update/MiniJson;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_8

    .line 54
    const-string/jumbo v0, "versionCode"

    invoke-direct {p0, p1, v0}, Lcom/shilapi/xcertplay/update/UpdateManifest$Companion;->intOf(Ljava/util/Map;Ljava/lang/String;)I

    move-result v3

    .line 55
    const-string/jumbo v0, "size"

    invoke-direct {p0, p1, v0}, Lcom/shilapi/xcertplay/update/UpdateManifest$Companion;->longOf(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v7

    .line 56
    const-string/jumbo v0, "versionName"

    invoke-direct {p0, p1, v0}, Lcom/shilapi/xcertplay/update/UpdateManifest$Companion;->stringOf(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 57
    const-string v0, "apk"

    invoke-direct {p0, p1, v0}, Lcom/shilapi/xcertplay/update/UpdateManifest$Companion;->stringOf(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 58
    const-string/jumbo v0, "sha256"

    invoke-direct {p0, p1, v0}, Lcom/shilapi/xcertplay/update/UpdateManifest$Companion;->stringOf(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v0, "toLowerCase(...)"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    const-string v0, "notes"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    :cond_1
    if-nez v1, :cond_2

    const-string v1, ""

    :cond_2
    move-object v9, v1

    if-lez v3, :cond_7

    const-wide/16 v0, 0x0

    cmp-long p1, v7, v0

    if-lez p1, :cond_6

    .line 62
    move-object p1, v4

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 65
    # getter for: Lcom/shilapi/xcertplay/update/UpdateManifest;->APK_NAME:Lkotlin/text/Regex;
    invoke-static {}, Lcom/shilapi/xcertplay/update/UpdateManifest;->access$getAPK_NAME$cp()Lkotlin/text/Regex;

    move-result-object p1

    move-object v0, v5

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 66
    # getter for: Lcom/shilapi/xcertplay/update/UpdateManifest;->SHA256:Lkotlin/text/Regex;
    invoke-static {}, Lcom/shilapi/xcertplay/update/UpdateManifest;->access$getSHA256$cp()Lkotlin/text/Regex;

    move-result-object p1

    move-object v0, v6

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 67
    new-instance v2, Lcom/shilapi/xcertplay/update/UpdateManifest;

    invoke-direct/range {v2 .. v9}, Lcom/shilapi/xcertplay/update/UpdateManifest;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-object v2

    .line 66
    :cond_3
    new-instance p1, Lcom/shilapi/xcertplay/update/UpdateManifest$MalformedException;

    const-string/jumbo v0, "sha256 must be 64 lower-case hex digits"

    invoke-direct {p1, v0}, Lcom/shilapi/xcertplay/update/UpdateManifest$MalformedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :cond_4
    new-instance p1, Lcom/shilapi/xcertplay/update/UpdateManifest$MalformedException;

    const-string v0, "apk must be a plain .apk file name"

    invoke-direct {p1, v0}, Lcom/shilapi/xcertplay/update/UpdateManifest$MalformedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_5
    new-instance p1, Lcom/shilapi/xcertplay/update/UpdateManifest$MalformedException;

    const-string/jumbo v0, "versionName must not be blank"

    invoke-direct {p1, v0}, Lcom/shilapi/xcertplay/update/UpdateManifest$MalformedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_6
    new-instance p1, Lcom/shilapi/xcertplay/update/UpdateManifest$MalformedException;

    const-string/jumbo v0, "size must be a positive integer"

    invoke-direct {p1, v0}, Lcom/shilapi/xcertplay/update/UpdateManifest$MalformedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_7
    new-instance p1, Lcom/shilapi/xcertplay/update/UpdateManifest$MalformedException;

    const-string/jumbo v0, "versionCode must be a positive integer"

    invoke-direct {p1, v0}, Lcom/shilapi/xcertplay/update/UpdateManifest$MalformedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 53
    :cond_8
    new-instance p1, Lcom/shilapi/xcertplay/update/UpdateManifest$MalformedException;

    const-string v0, "manifest is not a JSON object"

    invoke-direct {p1, v0}, Lcom/shilapi/xcertplay/update/UpdateManifest$MalformedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final resolve$shared_release(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "baseUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 46
    const-string v2, "/"

    const/4 v3, 0x0

    invoke-static {p1, v2, v3, v0, v1}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 47
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
