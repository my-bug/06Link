.class public final synthetic Lcom/shilapi/xcertplay/update/ApkInstaller$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Ljava/io/File;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/io/File;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/update/ApkInstaller$$ExternalSyntheticLambda13;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/shilapi/xcertplay/update/ApkInstaller$$ExternalSyntheticLambda13;->f$1:Ljava/io/File;

    iput-object p3, p0, Lcom/shilapi/xcertplay/update/ApkInstaller$$ExternalSyntheticLambda13;->f$2:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/update/ApkInstaller$$ExternalSyntheticLambda13;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/shilapi/xcertplay/update/ApkInstaller$$ExternalSyntheticLambda13;->f$1:Ljava/io/File;

    iget-object v2, p0, Lcom/shilapi/xcertplay/update/ApkInstaller$$ExternalSyntheticLambda13;->f$2:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, v2}, Lcom/shilapi/xcertplay/update/ApkInstaller;->$r8$lambda$D9RoWbBLF78YZ2f8umsDSWK3doU(Landroid/content/Context;Ljava/io/File;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method
