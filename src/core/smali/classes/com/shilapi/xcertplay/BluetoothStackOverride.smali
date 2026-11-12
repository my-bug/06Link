.class public final Lcom/shilapi/xcertplay/BluetoothStackOverride;
.super Ljava/lang/Object;
.source "BluetoothStackOverride.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/BluetoothStackOverride;",
        "",
        "<init>",
        "()V",
        "forced",
        "Lcom/shilapi/xcertplay/compat/BluetoothStack;",
        "common_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/shilapi/xcertplay/BluetoothStackOverride;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/BluetoothStackOverride;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/BluetoothStackOverride;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/BluetoothStackOverride;->INSTANCE:Lcom/shilapi/xcertplay/BluetoothStackOverride;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final forced()Lcom/shilapi/xcertplay/compat/BluetoothStack;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
