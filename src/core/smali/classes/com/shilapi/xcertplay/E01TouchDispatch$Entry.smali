.class final Lcom/shilapi/xcertplay/E01TouchDispatch$Entry;
.super Ljava/lang/Object;
.source "E01TouchDispatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/E01TouchDispatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Entry"
.end annotation


# instance fields
.field final enqueued:J

.field final item:Lcom/shilapi/xcertplay/E01TouchDispatch$Item;

.field final movement:Z

.field final shape:[I


# direct methods
.method constructor <init>(Lcom/shilapi/xcertplay/E01TouchDispatch$Item;[IZ)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/E01TouchDispatch$Entry;->item:Lcom/shilapi/xcertplay/E01TouchDispatch$Item;

    iput-object p2, p0, Lcom/shilapi/xcertplay/E01TouchDispatch$Entry;->shape:[I

    iput-boolean p3, p0, Lcom/shilapi/xcertplay/E01TouchDispatch$Entry;->movement:Z

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/shilapi/xcertplay/E01TouchDispatch$Entry;->enqueued:J

    return-void
.end method
