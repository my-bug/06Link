.class public final Landroidx/core/content/ContentResolverCompat;
.super Ljava/lang/Object;
.source "ContentResolverCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/ContentResolverCompat$Api16Impl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroidx/core/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 7

    .line 80
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    if-eqz p6, :cond_0

    .line 85
    :try_start_0
    invoke-virtual {p6}, Landroidx/core/os/CancellationSignal;->getCancellationSignalObject()Ljava/lang/Object;

    move-result-object p6

    goto :goto_0

    :cond_0
    const/4 p6, 0x0

    .line 86
    :goto_0
    invoke-static {p6}, Landroidx/core/app/NavUtils$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/os/CancellationSignal;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 87
    invoke-static/range {v0 .. v6}, Landroidx/core/content/ContentResolverCompat$Api16Impl;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 90
    invoke-static {p0}, Landroidx/core/app/NavUtils$$ExternalSyntheticApiModelOutline0;->m$1(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 93
    new-instance p0, Landroidx/core/os/OperationCanceledException;

    invoke-direct {p0}, Landroidx/core/os/OperationCanceledException;-><init>()V

    throw p0

    .line 96
    :cond_1
    throw p0

    :cond_2
    move-object v5, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    if-eqz p6, :cond_3

    .line 103
    invoke-virtual {p6}, Landroidx/core/os/CancellationSignal;->throwIfCanceled()V

    :cond_3
    move-object p6, v5

    .line 105
    invoke-virtual/range {p1 .. p6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method
