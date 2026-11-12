.class public final synthetic Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;

.field public final synthetic f$1:Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;

.field public final synthetic f$2:J

.field public final synthetic f$3:Z

.field public final synthetic f$4:Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Credentials;

.field public final synthetic f$5:Lcom/shilapi/xcertplay/network/P2pConfigurationMemory$Record;

.field public final synthetic f$6:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field public final synthetic f$7:J


# direct methods
.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;JZLcom/shilapi/xcertplay/network/WifiP2pGroupManager$Credentials;Lcom/shilapi/xcertplay/network/P2pConfigurationMemory$Record;Landroid/net/wifi/p2p/WifiP2pManager$Channel;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda13;->f$0:Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;

    iput-object p2, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda13;->f$1:Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;

    iput-wide p3, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda13;->f$2:J

    iput-boolean p5, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda13;->f$3:Z

    iput-object p6, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda13;->f$4:Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Credentials;

    iput-object p7, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda13;->f$5:Lcom/shilapi/xcertplay/network/P2pConfigurationMemory$Record;

    iput-object p8, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda13;->f$6:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iput-wide p9, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda13;->f$7:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda13;->f$0:Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;

    iget-object v1, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda13;->f$1:Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;

    iget-wide v2, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda13;->f$2:J

    iget-boolean v4, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda13;->f$3:Z

    iget-object v5, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda13;->f$4:Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Credentials;

    iget-object v6, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda13;->f$5:Lcom/shilapi/xcertplay/network/P2pConfigurationMemory$Record;

    iget-object v7, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda13;->f$6:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget-wide v8, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda13;->f$7:J

    move-object v10, p1

    check-cast v10, Lcom/shilapi/xcertplay/network/P2pCreationRequest;

    invoke-static/range {v0 .. v10}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->$r8$lambda$SGOhyNz-ZNzoprYTkqMPRirccx4(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;JZLcom/shilapi/xcertplay/network/WifiP2pGroupManager$Credentials;Lcom/shilapi/xcertplay/network/P2pConfigurationMemory$Record;Landroid/net/wifi/p2p/WifiP2pManager$Channel;JLcom/shilapi/xcertplay/network/P2pCreationRequest;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
