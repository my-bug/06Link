.class public final Lcom/shilapi/xcertplay/update/UpdateManifest;
.super Ljava/lang/Object;
.source "UpdateManifest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/update/UpdateManifest$Companion;,
        Lcom/shilapi/xcertplay/update/UpdateManifest$MalformedException;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u0000 \u001c2\u00020\u0001:\u0002\u001b\u001cB7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0003J\u000e\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0010R\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0010R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\n\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0010\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/update/UpdateManifest;",
        "",
        "versionCode",
        "",
        "versionName",
        "",
        "apk",
        "sha256",
        "size",
        "",
        "notes",
        "<init>",
        "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V",
        "getVersionCode",
        "()I",
        "getVersionName",
        "()Ljava/lang/String;",
        "getApk",
        "getSha256",
        "getSize",
        "()J",
        "getNotes",
        "isNewerThan",
        "",
        "installedVersionCode",
        "apkUrl",
        "baseUrl",
        "MalformedException",
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
.field private static final APK_NAME:Lkotlin/text/Regex;

.field public static final Companion:Lcom/shilapi/xcertplay/update/UpdateManifest$Companion;

.field public static final FILE_NAME:Ljava/lang/String; = "manifest.json"

.field private static final SHA256:Lkotlin/text/Regex;


# instance fields
.field private final apk:Ljava/lang/String;

.field private final notes:Ljava/lang/String;

.field private final sha256:Ljava/lang/String;

.field private final size:J

.field private final versionCode:I

.field private final versionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/update/UpdateManifest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/update/UpdateManifest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/update/UpdateManifest;->Companion:Lcom/shilapi/xcertplay/update/UpdateManifest$Companion;

    .line 37
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "[A-Za-z0-9_][A-Za-z0-9_.-]*\\.apk"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shilapi/xcertplay/update/UpdateManifest;->APK_NAME:Lkotlin/text/Regex;

    .line 38
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "[0-9a-f]{64}"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shilapi/xcertplay/update/UpdateManifest;->SHA256:Lkotlin/text/Regex;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "versionName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apk"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sha256"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notes"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/shilapi/xcertplay/update/UpdateManifest;->versionCode:I

    .line 17
    iput-object p2, p0, Lcom/shilapi/xcertplay/update/UpdateManifest;->versionName:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/shilapi/xcertplay/update/UpdateManifest;->apk:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lcom/shilapi/xcertplay/update/UpdateManifest;->sha256:Ljava/lang/String;

    .line 22
    iput-wide p5, p0, Lcom/shilapi/xcertplay/update/UpdateManifest;->size:J

    .line 23
    iput-object p7, p0, Lcom/shilapi/xcertplay/update/UpdateManifest;->notes:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getAPK_NAME$cp()Lkotlin/text/Regex;
    .locals 1

    .line 15
    sget-object v0, Lcom/shilapi/xcertplay/update/UpdateManifest;->APK_NAME:Lkotlin/text/Regex;

    return-object v0
.end method

.method public static final synthetic access$getSHA256$cp()Lkotlin/text/Regex;
    .locals 1

    .line 15
    sget-object v0, Lcom/shilapi/xcertplay/update/UpdateManifest;->SHA256:Lkotlin/text/Regex;

    return-object v0
.end method


# virtual methods
.method public final apkUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "baseUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget-object v0, Lcom/shilapi/xcertplay/update/UpdateManifest;->Companion:Lcom/shilapi/xcertplay/update/UpdateManifest$Companion;

    iget-object v1, p0, Lcom/shilapi/xcertplay/update/UpdateManifest;->apk:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/shilapi/xcertplay/update/UpdateManifest$Companion;->resolve$shared_release(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getApk()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/shilapi/xcertplay/update/UpdateManifest;->apk:Ljava/lang/String;

    return-object v0
.end method

.method public final getNotes()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/shilapi/xcertplay/update/UpdateManifest;->notes:Ljava/lang/String;

    return-object v0
.end method

.method public final getSha256()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/shilapi/xcertplay/update/UpdateManifest;->sha256:Ljava/lang/String;

    return-object v0
.end method

.method public final getSize()J
    .locals 2

    .line 22
    iget-wide v0, p0, Lcom/shilapi/xcertplay/update/UpdateManifest;->size:J

    return-wide v0
.end method

.method public final getVersionCode()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/shilapi/xcertplay/update/UpdateManifest;->versionCode:I

    return v0
.end method

.method public final getVersionName()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/shilapi/xcertplay/update/UpdateManifest;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public final isNewerThan(I)Z
    .locals 1

    .line 26
    iget v0, p0, Lcom/shilapi/xcertplay/update/UpdateManifest;->versionCode:I

    if-le v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
