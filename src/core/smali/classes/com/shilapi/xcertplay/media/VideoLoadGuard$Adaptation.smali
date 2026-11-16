.class public final Lcom/shilapi/xcertplay/media/VideoLoadGuard$Adaptation;
.super Ljava/lang/Object;
.source "VideoLoadGuard.kt"
# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/media/VideoLoadGuard;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Adaptation"
.end annotation
# instance fields
.field private final toH264:Z
.field private final why:Ljava/lang/String;
# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-boolean p1, p0, Lcom/shilapi/xcertplay/media/VideoLoadGuard$Adaptation;->toH264:Z
    iput-object p2, p0, Lcom/shilapi/xcertplay/media/VideoLoadGuard$Adaptation;->why:Ljava/lang/String;
    return-void
.end method
# virtual methods
.method public final getToH264()Z
    .locals 1
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/media/VideoLoadGuard$Adaptation;->toH264:Z
    return v0
.end method
.method public final getWhy()Ljava/lang/String;
    .locals 1
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/VideoLoadGuard$Adaptation;->why:Ljava/lang/String;
    return-object v0
.end method
