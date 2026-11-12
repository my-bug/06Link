.class final Lcom/shilapi/xcertplay/transport/LockdownTlsEngineFactory$FixedIdentityKeyManager;
.super Ljavax/net/ssl/X509ExtendedKeyManager;
.source "LockdownTlsEngineFactory.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/transport/LockdownTlsEngineFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FixedIdentityKeyManager"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u0002\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ;\u0010\u000c\u001a\u00020\u00032\u0010\u0010\r\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u0003\u0018\u00010\u00072\u0010\u0010\u000e\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u000f\u0018\u00010\u00072\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016\u00a2\u0006\u0002\u0010\u0012J;\u0010\u0013\u001a\u00020\u00032\u0010\u0010\r\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u0003\u0018\u00010\u00072\u0010\u0010\u000e\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u000f\u0018\u00010\u00072\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016\u00a2\u0006\u0002\u0010\u0016J3\u0010\u0017\u001a\u00020\u00032\u0008\u0010\r\u001a\u0004\u0018\u00010\u00032\u0010\u0010\u000e\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u000f\u0018\u00010\u00072\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016\u00a2\u0006\u0002\u0010\u0018J3\u0010\u0019\u001a\u00020\u00032\u0008\u0010\r\u001a\u0004\u0018\u00010\u00032\u0010\u0010\u000e\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u000f\u0018\u00010\u00072\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016\u00a2\u0006\u0002\u0010\u001aJ/\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00072\u0008\u0010\r\u001a\u0004\u0018\u00010\u00032\u0010\u0010\u000e\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u000f\u0018\u00010\u0007H\u0016\u00a2\u0006\u0002\u0010\u001cJ/\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00072\u0008\u0010\r\u001a\u0004\u0018\u00010\u00032\u0010\u0010\u000e\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u000f\u0018\u00010\u0007H\u0016\u00a2\u0006\u0002\u0010\u001cJ\u001d\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u0016\u00a2\u0006\u0002\u0010\u001fJ\u0012\u0010 \u001a\u00020\u00052\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000b\u00a8\u0006!"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/LockdownTlsEngineFactory$FixedIdentityKeyManager;",
        "Ljavax/net/ssl/X509ExtendedKeyManager;",
        "alias",
        "",
        "key",
        "Ljava/security/PrivateKey;",
        "chain",
        "",
        "Ljava/security/cert/X509Certificate;",
        "<init>",
        "(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V",
        "[Ljava/security/cert/X509Certificate;",
        "chooseClientAlias",
        "keyType",
        "issuers",
        "Ljava/security/Principal;",
        "socket",
        "Ljava/net/Socket;",
        "([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;",
        "chooseEngineClientAlias",
        "engine",
        "Ljavax/net/ssl/SSLEngine;",
        "([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;",
        "chooseServerAlias",
        "(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;",
        "chooseEngineServerAlias",
        "(Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;",
        "getClientAliases",
        "(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;",
        "getServerAliases",
        "getCertificateChain",
        "(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;",
        "getPrivateKey",
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


# instance fields
.field private final alias:Ljava/lang/String;

.field private final chain:[Ljava/security/cert/X509Certificate;

.field private final key:Ljava/security/PrivateKey;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V
    .locals 1

    const-string v0, "alias"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chain"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedKeyManager;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/LockdownTlsEngineFactory$FixedIdentityKeyManager;->alias:Ljava/lang/String;

    .line 116
    iput-object p2, p0, Lcom/shilapi/xcertplay/transport/LockdownTlsEngineFactory$FixedIdentityKeyManager;->key:Ljava/security/PrivateKey;

    .line 117
    iput-object p3, p0, Lcom/shilapi/xcertplay/transport/LockdownTlsEngineFactory$FixedIdentityKeyManager;->chain:[Ljava/security/cert/X509Certificate;

    return-void
.end method


# virtual methods
.method public chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 0

    .line 120
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/LockdownTlsEngineFactory$FixedIdentityKeyManager;->alias:Ljava/lang/String;

    return-object p1
.end method

.method public chooseEngineClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 0

    .line 122
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/LockdownTlsEngineFactory$FixedIdentityKeyManager;->alias:Ljava/lang/String;

    return-object p1
.end method

.method public chooseEngineServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 0

    .line 126
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/LockdownTlsEngineFactory$FixedIdentityKeyManager;->alias:Ljava/lang/String;

    return-object p1
.end method

.method public chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 0

    .line 124
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/LockdownTlsEngineFactory$FixedIdentityKeyManager;->alias:Ljava/lang/String;

    return-object p1
.end method

.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 0

    .line 129
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/LockdownTlsEngineFactory$FixedIdentityKeyManager;->chain:[Ljava/security/cert/X509Certificate;

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/security/cert/X509Certificate;

    return-object p1
.end method

.method public getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 1

    .line 127
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/LockdownTlsEngineFactory$FixedIdentityKeyManager;->alias:Ljava/lang/String;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    return-object p2
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 0

    .line 130
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/LockdownTlsEngineFactory$FixedIdentityKeyManager;->key:Ljava/security/PrivateKey;

    return-object p1
.end method

.method public getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 1

    .line 128
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/LockdownTlsEngineFactory$FixedIdentityKeyManager;->alias:Ljava/lang/String;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    return-object p2
.end method
