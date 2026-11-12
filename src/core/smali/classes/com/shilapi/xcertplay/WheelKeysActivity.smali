.class public final Lcom/shilapi/xcertplay/WheelKeysActivity;
.super Landroidx/activity/ComponentActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/shilapi/xcertplay/E01WheelSettings;->show(Landroid/app/Activity;)V

    return-void
.end method
