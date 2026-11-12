.class public final synthetic Lcom/shilapi/xcertplay/HeadUnitFixes$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method public synthetic constructor <init>(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/HeadUnitFixes$$ExternalSyntheticLambda0;->f$0:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitFixes$$ExternalSyntheticLambda0;->f$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Lcom/shilapi/xcertplay/HeadUnitFixes;->$r8$lambda$pWVJ0DqL9QJAs4XZmzMJjMZoHjA(Landroid/bluetooth/BluetoothAdapter;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
