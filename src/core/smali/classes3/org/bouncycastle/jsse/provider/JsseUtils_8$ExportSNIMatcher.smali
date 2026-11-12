.class Lorg/bouncycastle/jsse/provider/JsseUtils_8$ExportSNIMatcher;
.super Ljavax/net/ssl/SNIMatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jsse/provider/JsseUtils_8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExportSNIMatcher"
.end annotation


# instance fields
.field private final matcher:Lorg/bouncycastle/jsse/BCSNIMatcher;


# direct methods
.method constructor <init>(Lorg/bouncycastle/jsse/BCSNIMatcher;)V
    .locals 1

    invoke-virtual {p1}, Lorg/bouncycastle/jsse/BCSNIMatcher;->getType()I

    move-result v0

    invoke-direct {p0, v0}, Ljavax/net/ssl/SNIMatcher;-><init>(I)V

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/JsseUtils_8$ExportSNIMatcher;->matcher:Lorg/bouncycastle/jsse/BCSNIMatcher;

    return-void
.end method


# virtual methods
.method public matches(Ljavax/net/ssl/SNIServerName;)Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/JsseUtils_8$ExportSNIMatcher;->matcher:Lorg/bouncycastle/jsse/BCSNIMatcher;

    invoke-static {p1}, Lorg/bouncycastle/jsse/provider/JsseUtils_8;->importSNIServerName(Ljavax/net/ssl/SNIServerName;)Lorg/bouncycastle/jsse/BCSNIServerName;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jsse/BCSNIMatcher;->matches(Lorg/bouncycastle/jsse/BCSNIServerName;)Z

    move-result p1

    return p1
.end method

.method unwrap()Lorg/bouncycastle/jsse/BCSNIMatcher;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/JsseUtils_8$ExportSNIMatcher;->matcher:Lorg/bouncycastle/jsse/BCSNIMatcher;

    return-object v0
.end method
