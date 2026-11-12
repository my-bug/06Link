.class final Lcom/shilapi/xcertplay/E01TouchQueue$Snapshot;
.super Ljava/lang/Object;
.source "E01TouchQueue.java"

# interfaces
.implements Lcom/shilapi/xcertplay/E01TouchDispatch$Item;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/E01TouchQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Snapshot"
.end annotation


# instance fields
.field final contacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shilapi/xcertplay/airplay/AirPlayContact;",
            ">;"
        }
    .end annotation
.end field

.field final session:Lcom/shilapi/xcertplay/airplay/AirPlaySession;

.field final shape:[I


# direct methods
.method constructor <init>(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/util/ArrayList;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/airplay/AirPlaySession;",
            "Ljava/util/ArrayList<",
            "Lcom/shilapi/xcertplay/airplay/AirPlayContact;",
            ">;[I)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/E01TouchQueue$Snapshot;->session:Lcom/shilapi/xcertplay/airplay/AirPlaySession;

    iput-object p2, p0, Lcom/shilapi/xcertplay/E01TouchQueue$Snapshot;->contacts:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/shilapi/xcertplay/E01TouchQueue$Snapshot;->shape:[I

    return-void
.end method


# virtual methods
.method public send()V
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/shilapi/xcertplay/E01TouchQueue$Snapshot;->session:Lcom/shilapi/xcertplay/airplay/AirPlaySession;

    iget-object v1, p0, Lcom/shilapi/xcertplay/E01TouchQueue$Snapshot;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->sendTouch(Ljava/util/List;)Z

    return-void
.end method

.method public session()Ljava/lang/Object;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/shilapi/xcertplay/E01TouchQueue$Snapshot;->session:Lcom/shilapi/xcertplay/airplay/AirPlaySession;

    return-object v0
.end method

.method public shape()[I
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/shilapi/xcertplay/E01TouchQueue$Snapshot;->shape:[I

    return-object v0
.end method
