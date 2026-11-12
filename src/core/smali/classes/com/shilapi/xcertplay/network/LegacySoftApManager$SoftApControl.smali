.class public interface abstract Lcom/shilapi/xcertplay/network/LegacySoftApManager$SoftApControl;
.super Ljava/lang/Object;
.source "LegacySoftApManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/network/LegacySoftApManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SoftApControl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/network/LegacySoftApManager$SoftApControl$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008`\u0018\u00002\u00020\u0001J\u000f\u0010\u0002\u001a\u0004\u0018\u00010\u0003H&\u00a2\u0006\u0002\u0010\u0004J\n\u0010\u0005\u001a\u0004\u0018\u00010\u0006H&J\u001a\u0010\u0007\u001a\u00020\u00082\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\u0008H&J\u0008\u0010\n\u001a\u00020\u0008H&J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000cH\u0016\u00a8\u0006\u0010\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/LegacySoftApManager$SoftApControl;",
        "",
        "state",
        "",
        "()Ljava/lang/Integer;",
        "configuration",
        "Landroid/net/wifi/WifiConfiguration;",
        "setEnabled",
        "",
        "enabled",
        "canWriteSettings",
        "now",
        "",
        "sleep",
        "",
        "millis",
        "shared_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract canWriteSettings()Z
.end method

.method public abstract configuration()Landroid/net/wifi/WifiConfiguration;
.end method

.method public abstract now()J
.end method

.method public abstract setEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z
.end method

.method public abstract sleep(J)V
.end method

.method public abstract state()Ljava/lang/Integer;
.end method
