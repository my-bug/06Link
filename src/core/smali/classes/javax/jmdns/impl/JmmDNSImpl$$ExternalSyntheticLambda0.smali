.class public final synthetic Ljavax/jmdns/impl/JmmDNSImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Ljavax/jmdns/JmDNS;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Z

.field public final synthetic f$4:J


# direct methods
.method public synthetic constructor <init>(Ljavax/jmdns/JmDNS;Ljava/lang/String;Ljava/lang/String;ZJ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljavax/jmdns/impl/JmmDNSImpl$$ExternalSyntheticLambda0;->f$0:Ljavax/jmdns/JmDNS;

    iput-object p2, p0, Ljavax/jmdns/impl/JmmDNSImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Ljavax/jmdns/impl/JmmDNSImpl$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-boolean p4, p0, Ljavax/jmdns/impl/JmmDNSImpl$$ExternalSyntheticLambda0;->f$3:Z

    iput-wide p5, p0, Ljavax/jmdns/impl/JmmDNSImpl$$ExternalSyntheticLambda0;->f$4:J

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    .line 0
    iget-object v0, p0, Ljavax/jmdns/impl/JmmDNSImpl$$ExternalSyntheticLambda0;->f$0:Ljavax/jmdns/JmDNS;

    iget-object v1, p0, Ljavax/jmdns/impl/JmmDNSImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Ljavax/jmdns/impl/JmmDNSImpl$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-boolean v3, p0, Ljavax/jmdns/impl/JmmDNSImpl$$ExternalSyntheticLambda0;->f$3:Z

    iget-wide v4, p0, Ljavax/jmdns/impl/JmmDNSImpl$$ExternalSyntheticLambda0;->f$4:J

    invoke-static/range {v0 .. v5}, Ljavax/jmdns/impl/JmmDNSImpl;->lambda$getServiceInfos$0(Ljavax/jmdns/JmDNS;Ljava/lang/String;Ljava/lang/String;ZJ)Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    return-object v0
.end method
