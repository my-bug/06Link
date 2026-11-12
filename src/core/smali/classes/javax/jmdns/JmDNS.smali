.class public abstract Ljavax/jmdns/JmDNS;
.super Ljava/lang/Object;
.source "JmDNS.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/jmdns/JmDNS$Delegate;
    }
.end annotation


# static fields
.field public static VERSION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 57
    :try_start_0
    const-class v0, Ljavax/jmdns/JmDNS;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string/jumbo v1, "version.properties"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :try_start_1
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 59
    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 60
    const-string v2, "jmdns.version"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Ljavax/jmdns/JmDNS;->VERSION:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 61
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 57
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    .line 61
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-static {v1, v0}, Landroidx/core/app/PendingIntentCompat$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 63
    :catch_0
    const-string v0, "VERSION MISSING"

    sput-object v0, Ljavax/jmdns/JmDNS;->VERSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Ljavax/jmdns/JmDNS;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    new-instance v0, Ljavax/jmdns/impl/JmDNSImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Ljavax/jmdns/impl/JmDNSImpl;-><init>(Ljava/net/InetAddress;Ljava/lang/String;)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;)Ljavax/jmdns/JmDNS;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    new-instance v0, Ljavax/jmdns/impl/JmDNSImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Ljavax/jmdns/impl/JmDNSImpl;-><init>(Ljava/net/InetAddress;Ljava/lang/String;)V

    return-object v0
.end method

.method public static create(Ljava/net/InetAddress;)Ljavax/jmdns/JmDNS;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    new-instance v0, Ljavax/jmdns/impl/JmDNSImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljavax/jmdns/impl/JmDNSImpl;-><init>(Ljava/net/InetAddress;Ljava/lang/String;)V

    return-object v0
.end method

.method public static create(Ljava/net/InetAddress;Ljava/lang/String;)Ljavax/jmdns/JmDNS;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    new-instance v0, Ljavax/jmdns/impl/JmDNSImpl;

    const-wide/16 v1, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Ljavax/jmdns/impl/JmDNSImpl;-><init>(Ljava/net/InetAddress;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static create(Ljava/net/InetAddress;Ljava/lang/String;J)Ljavax/jmdns/JmDNS;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    new-instance v0, Ljavax/jmdns/impl/JmDNSImpl;

    invoke-direct {v0, p0, p1, p2, p3}, Ljavax/jmdns/impl/JmDNSImpl;-><init>(Ljava/net/InetAddress;Ljava/lang/String;J)V

    return-object v0
.end method


# virtual methods
.method public abstract addServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;)V
.end method

.method public abstract addServiceTypeListener(Ljavax/jmdns/ServiceTypeListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getDelegate()Ljavax/jmdns/JmDNS$Delegate;
.end method

.method public abstract getHostName()Ljava/lang/String;
.end method

.method public abstract getInetAddress()Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getInterface()Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getServiceInfo(Ljava/lang/String;Ljava/lang/String;)Ljavax/jmdns/ServiceInfo;
.end method

.method public abstract getServiceInfo(Ljava/lang/String;Ljava/lang/String;J)Ljavax/jmdns/ServiceInfo;
.end method

.method public abstract getServiceInfo(Ljava/lang/String;Ljava/lang/String;Z)Ljavax/jmdns/ServiceInfo;
.end method

.method public abstract getServiceInfo(Ljava/lang/String;Ljava/lang/String;ZJ)Ljavax/jmdns/ServiceInfo;
.end method

.method public abstract list(Ljava/lang/String;)[Ljavax/jmdns/ServiceInfo;
.end method

.method public abstract list(Ljava/lang/String;J)[Ljavax/jmdns/ServiceInfo;
.end method

.method public abstract listBySubtype(Ljava/lang/String;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljavax/jmdns/ServiceInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract listBySubtype(Ljava/lang/String;J)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljavax/jmdns/ServiceInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract printServices()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract registerService(Ljavax/jmdns/ServiceInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract registerServiceType(Ljava/lang/String;)Z
.end method

.method public abstract removeServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;)V
.end method

.method public abstract removeServiceTypeListener(Ljavax/jmdns/ServiceTypeListener;)V
.end method

.method public abstract requestServiceInfo(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract requestServiceInfo(Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method public abstract requestServiceInfo(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract requestServiceInfo(Ljava/lang/String;Ljava/lang/String;ZJ)V
.end method

.method public abstract setDelegate(Ljavax/jmdns/JmDNS$Delegate;)Ljavax/jmdns/JmDNS$Delegate;
.end method

.method public abstract unregisterAllServices()V
.end method

.method public abstract unregisterService(Ljavax/jmdns/ServiceInfo;)V
.end method
