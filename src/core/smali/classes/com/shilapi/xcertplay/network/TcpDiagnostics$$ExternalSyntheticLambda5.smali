.class public final synthetic Lcom/shilapi/xcertplay/network/TcpDiagnostics$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/util/Map;

.field public final synthetic f$1:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/network/TcpDiagnostics$$ExternalSyntheticLambda5;->f$0:Ljava/util/Map;

    iput-object p2, p0, Lcom/shilapi/xcertplay/network/TcpDiagnostics$$ExternalSyntheticLambda5;->f$1:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/TcpDiagnostics$$ExternalSyntheticLambda5;->f$0:Ljava/util/Map;

    iget-object v1, p0, Lcom/shilapi/xcertplay/network/TcpDiagnostics$$ExternalSyntheticLambda5;->f$1:Ljava/util/Map;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/shilapi/xcertplay/network/TcpDiagnostics;->$r8$lambda$Hft3LHZFz5H7cPrHvy2PNePJxB8(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
