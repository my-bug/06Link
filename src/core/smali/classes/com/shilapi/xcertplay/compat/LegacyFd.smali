.class public final Lcom/shilapi/xcertplay/compat/LegacyFd;
.super Ljava/lang/Object;
.source "LegacyFd.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0011\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0087 \u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/compat/LegacyFd;",
        "",
        "<init>",
        "()V",
        "setBlocking",
        "",
        "fd",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/compat/LegacyFd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/compat/LegacyFd;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/compat/LegacyFd;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/compat/LegacyFd;->INSTANCE:Lcom/shilapi/xcertplay/compat/LegacyFd;

    .line 6
    const-string v0, "legacy_compat"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final native setBlocking(I)I
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method
