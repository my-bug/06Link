.class Lorg/bouncycastle/jsse/provider/JsseUtils_8$ImportSNIMatcher;
.super Lorg/bouncycastle/jsse/BCSNIMatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jsse/provider/JsseUtils_8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImportSNIMatcher"
.end annotation


# instance fields
.field private final matcher:Ljavax/net/ssl/SNIMatcher;


# direct methods
.method constructor <init>(Ljavax/net/ssl/SNIMatcher;)V
    .locals 1

    invoke-static {p1}, Lorg/bouncycastle/jsse/provider/JsseUtils_7$$ExternalSyntheticApiModelOutline0;->m(Ljavax/net/ssl/SNIMatcher;)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/jsse/BCSNIMatcher;-><init>(I)V

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/JsseUtils_8$ImportSNIMatcher;->matcher:Ljavax/net/ssl/SNIMatcher;

    return-void
.end method


# virtual methods
.method public matches(Lorg/bouncycastle/jsse/BCSNIServerName;)Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/JsseUtils_8$ImportSNIMatcher;->matcher:Ljavax/net/ssl/SNIMatcher;

    invoke-static {p1}, Lorg/bouncycastle/jsse/provider/JsseUtils_8;->exportSNIServerName(Lorg/bouncycastle/jsse/BCSNIServerName;)Ljavax/net/ssl/SNIServerName;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/bouncycastle/jsse/provider/JsseUtils_7$$ExternalSyntheticApiModelOutline0;->m(Ljavax/net/ssl/SNIMatcher;Ljavax/net/ssl/SNIServerName;)Z

    move-result p1

    return p1
.end method

.method unwrap()Ljavax/net/ssl/SNIMatcher;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/JsseUtils_8$ImportSNIMatcher;->matcher:Ljavax/net/ssl/SNIMatcher;

    return-object v0
.end method
