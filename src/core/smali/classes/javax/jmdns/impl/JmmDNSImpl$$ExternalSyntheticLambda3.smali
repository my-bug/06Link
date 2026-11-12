.class public final synthetic Ljavax/jmdns/impl/JmmDNSImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Ljavax/jmdns/JmDNS;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Ljavax/jmdns/JmDNS;Ljava/lang/String;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljavax/jmdns/impl/JmmDNSImpl$$ExternalSyntheticLambda3;->f$0:Ljavax/jmdns/JmDNS;

    iput-object p2, p0, Ljavax/jmdns/impl/JmmDNSImpl$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iput-wide p3, p0, Ljavax/jmdns/impl/JmmDNSImpl$$ExternalSyntheticLambda3;->f$2:J

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    .line 0
    iget-object v0, p0, Ljavax/jmdns/impl/JmmDNSImpl$$ExternalSyntheticLambda3;->f$0:Ljavax/jmdns/JmDNS;

    iget-object v1, p0, Ljavax/jmdns/impl/JmmDNSImpl$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iget-wide v2, p0, Ljavax/jmdns/impl/JmmDNSImpl$$ExternalSyntheticLambda3;->f$2:J

    invoke-static {v0, v1, v2, v3}, Ljavax/jmdns/impl/JmmDNSImpl;->lambda$list$2(Ljavax/jmdns/JmDNS;Ljava/lang/String;J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
