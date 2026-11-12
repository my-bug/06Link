.class public final synthetic Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;

.field public final synthetic f$1:Ljava/net/Socket;


# direct methods
.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;Ljava/net/Socket;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server$$ExternalSyntheticLambda1;->f$0:Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;

    iput-object p2, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server$$ExternalSyntheticLambda1;->f$1:Ljava/net/Socket;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server$$ExternalSyntheticLambda1;->f$0:Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;

    iget-object v1, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server$$ExternalSyntheticLambda1;->f$1:Ljava/net/Socket;

    invoke-static {v0, v1}, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;->$r8$lambda$BiVSwIg8kBk5LsD30nfMKh6T4po(Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;Ljava/net/Socket;)V

    return-void
.end method
