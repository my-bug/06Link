.class public final synthetic Ljavax/jmdns/impl/JmmDNSImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljavax/jmdns/NetworkTopologyListener;

.field public final synthetic f$1:Ljavax/jmdns/NetworkTopologyEvent;


# direct methods
.method public synthetic constructor <init>(Ljavax/jmdns/NetworkTopologyListener;Ljavax/jmdns/NetworkTopologyEvent;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljavax/jmdns/impl/JmmDNSImpl$$ExternalSyntheticLambda2;->f$0:Ljavax/jmdns/NetworkTopologyListener;

    iput-object p2, p0, Ljavax/jmdns/impl/JmmDNSImpl$$ExternalSyntheticLambda2;->f$1:Ljavax/jmdns/NetworkTopologyEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Ljavax/jmdns/impl/JmmDNSImpl$$ExternalSyntheticLambda2;->f$0:Ljavax/jmdns/NetworkTopologyListener;

    iget-object v1, p0, Ljavax/jmdns/impl/JmmDNSImpl$$ExternalSyntheticLambda2;->f$1:Ljavax/jmdns/NetworkTopologyEvent;

    invoke-static {v0, v1}, Ljavax/jmdns/impl/JmmDNSImpl;->lambda$inetAddressRemoved$5(Ljavax/jmdns/NetworkTopologyListener;Ljavax/jmdns/NetworkTopologyEvent;)V

    return-void
.end method
