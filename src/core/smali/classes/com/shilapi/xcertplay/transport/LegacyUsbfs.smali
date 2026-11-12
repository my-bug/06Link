.class public final Lcom/shilapi/xcertplay/transport/LegacyUsbfs;
.super Ljava/lang/Object;
.source "LegacyUsbfs.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0005H\u0087 J!\u0010\n\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u0005H\u0087 J!\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0008\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0005H\u0087 J!\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0005H\u0087 J\u0019\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0008\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u000eH\u0087 J\u0011\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0012\u001a\u00020\u000eH\u0087 R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/LegacyUsbfs;",
        "",
        "<init>",
        "()V",
        "ETIMEDOUT",
        "",
        "EINVAL",
        "setConfiguration",
        "fd",
        "value",
        "setInterface",
        "interfaceNumber",
        "alternateSetting",
        "submitRead",
        "",
        "endpoint",
        "length",
        "awaitRead",
        "handle",
        "target",
        "",
        "timeoutMillis",
        "discardRead",
        "",
        "freeRead",
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


# static fields
.field public static final EINVAL:I = 0x16

.field public static final ETIMEDOUT:I = 0x6e

.field public static final INSTANCE:Lcom/shilapi/xcertplay/transport/LegacyUsbfs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/transport/LegacyUsbfs;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/transport/LegacyUsbfs;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/transport/LegacyUsbfs;->INSTANCE:Lcom/shilapi/xcertplay/transport/LegacyUsbfs;

    .line 17
    const-string v0, "legacy_compat"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final native awaitRead(J[BI)I
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method public static final native discardRead(IJ)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method public static final native freeRead(J)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method public static final native setConfiguration(II)I
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method public static final native setInterface(III)I
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method public static final native submitRead(III)J
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method
