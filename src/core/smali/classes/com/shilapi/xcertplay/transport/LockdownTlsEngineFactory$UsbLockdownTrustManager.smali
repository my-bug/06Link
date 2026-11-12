.class final Lcom/shilapi/xcertplay/transport/LockdownTlsEngineFactory$UsbLockdownTrustManager;
.super Ljava/lang/Object;
.source "LockdownTlsEngineFactory.kt"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/transport/LockdownTlsEngineFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UsbLockdownTrustManager"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u00c3\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J)\u0010\u0004\u001a\u00020\u00052\u0010\u0010\u0006\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u0008\u0018\u00010\u00072\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016\u00a2\u0006\u0002\u0010\u000bJ)\u0010\u000c\u001a\u00020\u00052\u0010\u0010\u0006\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u0008\u0018\u00010\u00072\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016\u00a2\u0006\u0002\u0010\u000bJ\u0013\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u0016\u00a2\u0006\u0002\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/LockdownTlsEngineFactory$UsbLockdownTrustManager;",
        "Ljavax/net/ssl/X509TrustManager;",
        "<init>",
        "()V",
        "checkClientTrusted",
        "",
        "chain",
        "",
        "Ljava/security/cert/X509Certificate;",
        "authType",
        "",
        "([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V",
        "checkServerTrusted",
        "getAcceptedIssuers",
        "()[Ljava/security/cert/X509Certificate;",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/transport/LockdownTlsEngineFactory$UsbLockdownTrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/transport/LockdownTlsEngineFactory$UsbLockdownTrustManager;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/transport/LockdownTlsEngineFactory$UsbLockdownTrustManager;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/transport/LockdownTlsEngineFactory$UsbLockdownTrustManager;->INSTANCE:Lcom/shilapi/xcertplay/transport/LockdownTlsEngineFactory$UsbLockdownTrustManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    const/4 v0, 0x0

    .line 139
    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    return-object v0
.end method
