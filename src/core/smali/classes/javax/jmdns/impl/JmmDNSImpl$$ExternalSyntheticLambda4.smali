.class public final synthetic Ljavax/jmdns/impl/JmmDNSImpl$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/Collection;

.field public final synthetic f$1:Ljavax/jmdns/JmDNS;

.field public final synthetic f$2:Ljava/util/Collection;

.field public final synthetic f$3:Ljava/util/Collection;

.field public final synthetic f$4:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Collection;Ljavax/jmdns/JmDNS;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Map;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljavax/jmdns/impl/JmmDNSImpl$$ExternalSyntheticLambda4;->f$0:Ljava/util/Collection;

    iput-object p2, p0, Ljavax/jmdns/impl/JmmDNSImpl$$ExternalSyntheticLambda4;->f$1:Ljavax/jmdns/JmDNS;

    iput-object p3, p0, Ljavax/jmdns/impl/JmmDNSImpl$$ExternalSyntheticLambda4;->f$2:Ljava/util/Collection;

    iput-object p4, p0, Ljavax/jmdns/impl/JmmDNSImpl$$ExternalSyntheticLambda4;->f$3:Ljava/util/Collection;

    iput-object p5, p0, Ljavax/jmdns/impl/JmmDNSImpl$$ExternalSyntheticLambda4;->f$4:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Ljavax/jmdns/impl/JmmDNSImpl$$ExternalSyntheticLambda4;->f$0:Ljava/util/Collection;

    iget-object v1, p0, Ljavax/jmdns/impl/JmmDNSImpl$$ExternalSyntheticLambda4;->f$1:Ljavax/jmdns/JmDNS;

    iget-object v2, p0, Ljavax/jmdns/impl/JmmDNSImpl$$ExternalSyntheticLambda4;->f$2:Ljava/util/Collection;

    iget-object v3, p0, Ljavax/jmdns/impl/JmmDNSImpl$$ExternalSyntheticLambda4;->f$3:Ljava/util/Collection;

    iget-object v4, p0, Ljavax/jmdns/impl/JmmDNSImpl$$ExternalSyntheticLambda4;->f$4:Ljava/util/Map;

    invoke-static {v0, v1, v2, v3, v4}, Ljavax/jmdns/impl/JmmDNSImpl;->lambda$inetAddressAdded$3(Ljava/util/Collection;Ljavax/jmdns/JmDNS;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Map;)V

    return-void
.end method
