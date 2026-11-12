.class Lcom/shilapi/xcertplay/ExportGuard$1;
.super Ljava/lang/Object;
.source "ExportGuard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/ExportGuard;->watch(Lcom/shilapi/xcertplay/DiPlayActivity;J)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Lcom/shilapi/xcertplay/DiPlayActivity;


# direct methods
.method constructor <init>(Lcom/shilapi/xcertplay/DiPlayActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    iput-object p1, p0, Lcom/shilapi/xcertplay/ExportGuard$1;->val$activity:Lcom/shilapi/xcertplay/DiPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/shilapi/xcertplay/ExportGuard$1;->val$activity:Lcom/shilapi/xcertplay/DiPlayActivity;

    const-string v1, "\u4e4b\u524d\u7684\u4fdd\u5b58\u4efb\u52a1\u5c1a\u672a\u9000\u51fa\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5\u6216\u91cd\u65b0\u6253\u5f00\u5e94\u7528\u3002"

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/DiPlayActivity;->diagnosticExportTimeout(Ljava/lang/String;)V

    .line 24
    return-void
.end method
