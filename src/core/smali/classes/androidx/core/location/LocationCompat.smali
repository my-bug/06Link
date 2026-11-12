.class public final Landroidx/core/location/LocationCompat;
.super Ljava/lang/Object;
.source "LocationCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/location/LocationCompat$Api17Impl;,
        Landroidx/core/location/LocationCompat$Api26Impl;,
        Landroidx/core/location/LocationCompat$Api33Impl;,
        Landroidx/core/location/LocationCompat$Api29Impl;,
        Landroidx/core/location/LocationCompat$Api28Impl;,
        Landroidx/core/location/LocationCompat$Api34Impl;,
        Landroidx/core/location/LocationCompat$Api18Impl;
    }
.end annotation


# static fields
.field public static final EXTRA_BEARING_ACCURACY:Ljava/lang/String; = "bearingAccuracy"

.field public static final EXTRA_IS_MOCK:Ljava/lang/String; = "mockLocation"

.field public static final EXTRA_MSL_ALTITUDE:Ljava/lang/String; = "androidx.core.location.extra.MSL_ALTITUDE"

.field public static final EXTRA_MSL_ALTITUDE_ACCURACY:Ljava/lang/String; = "androidx.core.location.extra.MSL_ALTITUDE_ACCURACY"

.field public static final EXTRA_SPEED_ACCURACY:Ljava/lang/String; = "speedAccuracy"

.field public static final EXTRA_VERTICAL_ACCURACY:Ljava/lang/String; = "verticalAccuracy"

.field private static sFieldsMaskField:Ljava/lang/reflect/Field;

.field private static sHasBearingAccuracyMask:Ljava/lang/Integer;

.field private static sHasSpeedAccuracyMask:Ljava/lang/Integer;

.field private static sHasVerticalAccuracyMask:Ljava/lang/Integer;

.field private static sSetIsFromMockProviderMethod:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static containsExtra(Landroid/location/Location;Ljava/lang/String;)Z
    .locals 0

    .line 1057
    invoke-virtual {p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1058
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getBearingAccuracyDegrees(Landroid/location/Location;)F
    .locals 2

    .line 309
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 310
    invoke-static {p0}, Landroidx/core/location/LocationCompat$Api26Impl;->getBearingAccuracyDegrees(Landroid/location/Location;)F

    move-result p0

    return p0

    .line 312
    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_1

    return v0

    .line 317
    :cond_1
    const-string v1, "bearingAccuracy"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public static getElapsedRealtimeMillis(Landroid/location/Location;)J
    .locals 6

    .line 127
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 128
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0}, Landroidx/core/location/LocationCompat$Api17Impl;->getElapsedRealtimeNanos(Landroid/location/Location;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0

    .line 130
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 131
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p0, v0, v4

    if-gez p0, :cond_1

    return-wide v2

    :cond_1
    cmp-long p0, v0, v2

    if-lez p0, :cond_2

    return-wide v4

    :cond_2
    sub-long/2addr v2, v0

    return-wide v2
.end method

.method public static getElapsedRealtimeNanos(Landroid/location/Location;)J
    .locals 3

    .line 114
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 115
    invoke-static {p0}, Landroidx/core/location/LocationCompat$Api17Impl;->getElapsedRealtimeNanos(Landroid/location/Location;)J

    move-result-wide v0

    return-wide v0

    .line 117
    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0}, Landroidx/core/location/LocationCompat;->getElapsedRealtimeMillis(Landroid/location/Location;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static getFieldsMaskField()Ljava/lang/reflect/Field;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 999
    sget-object v0, Landroidx/core/location/LocationCompat;->sFieldsMaskField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    .line 1000
    const-class v0, Landroid/location/Location;

    const-string v1, "mFieldsMask"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/core/location/LocationCompat;->sFieldsMaskField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    .line 1001
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1004
    :cond_0
    sget-object v0, Landroidx/core/location/LocationCompat;->sFieldsMaskField:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method static getHasBearingAccuracyMask()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1023
    sget-object v0, Landroidx/core/location/LocationCompat;->sHasBearingAccuracyMask:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 1024
    const-class v0, Landroid/location/Location;

    const-string v1, "HAS_BEARING_ACCURACY_MASK"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 1026
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v1, 0x0

    .line 1027
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Landroidx/core/location/LocationCompat;->sHasBearingAccuracyMask:Ljava/lang/Integer;

    .line 1030
    :cond_0
    sget-object v0, Landroidx/core/location/LocationCompat;->sHasBearingAccuracyMask:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static getHasSpeedAccuracyMask()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1010
    sget-object v0, Landroidx/core/location/LocationCompat;->sHasSpeedAccuracyMask:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 1011
    const-class v0, Landroid/location/Location;

    const-string v1, "HAS_SPEED_ACCURACY_MASK"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 1013
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v1, 0x0

    .line 1014
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Landroidx/core/location/LocationCompat;->sHasSpeedAccuracyMask:Ljava/lang/Integer;

    .line 1017
    :cond_0
    sget-object v0, Landroidx/core/location/LocationCompat;->sHasSpeedAccuracyMask:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static getHasVerticalAccuracyMask()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1036
    sget-object v0, Landroidx/core/location/LocationCompat;->sHasVerticalAccuracyMask:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 1037
    const-class v0, Landroid/location/Location;

    const-string v1, "HAS_VERTICAL_ACCURACY_MASK"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 1039
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v1, 0x0

    .line 1040
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Landroidx/core/location/LocationCompat;->sHasVerticalAccuracyMask:Ljava/lang/Integer;

    .line 1043
    :cond_0
    sget-object v0, Landroidx/core/location/LocationCompat;->sHasVerticalAccuracyMask:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getMslAltitudeAccuracyMeters(Landroid/location/Location;)F
    .locals 2

    .line 445
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    .line 446
    invoke-static {p0}, Landroidx/core/location/LocationCompat$Api34Impl;->getMslAltitudeAccuracyMeters(Landroid/location/Location;)F

    move-result p0

    return p0

    .line 448
    :cond_0
    invoke-static {p0}, Landroidx/core/location/LocationCompat;->hasMslAltitudeAccuracy(Landroid/location/Location;)Z

    move-result v0

    const-string v1, "The Mean Sea Level altitude accuracy of the location is not set."

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 450
    invoke-static {p0}, Landroidx/core/location/LocationCompat;->getOrCreateExtras(Landroid/location/Location;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "androidx.core.location.extra.MSL_ALTITUDE_ACCURACY"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public static getMslAltitudeMeters(Landroid/location/Location;)D
    .locals 2

    .line 368
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    .line 369
    invoke-static {p0}, Landroidx/core/location/LocationCompat$Api34Impl;->getMslAltitudeMeters(Landroid/location/Location;)D

    move-result-wide v0

    return-wide v0

    .line 371
    :cond_0
    invoke-static {p0}, Landroidx/core/location/LocationCompat;->hasMslAltitude(Landroid/location/Location;)Z

    move-result v0

    const-string v1, "The Mean Sea Level altitude of the location is not set."

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 373
    invoke-static {p0}, Landroidx/core/location/LocationCompat;->getOrCreateExtras(Landroid/location/Location;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "androidx.core.location.extra.MSL_ALTITUDE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method private static getOrCreateExtras(Landroid/location/Location;)Landroid/os/Bundle;
    .locals 1

    .line 1047
    invoke-virtual {p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1049
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 1050
    invoke-virtual {p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method private static getSetIsFromMockProviderMethod()Ljava/lang/reflect/Method;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 988
    sget-object v0, Landroidx/core/location/LocationCompat;->sSetIsFromMockProviderMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 989
    const-class v0, Landroid/location/Location;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "setIsFromMockProvider"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/location/LocationCompat;->sSetIsFromMockProviderMethod:Ljava/lang/reflect/Method;

    .line 991
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 994
    :cond_0
    sget-object v0, Landroidx/core/location/LocationCompat;->sSetIsFromMockProviderMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public static getSpeedAccuracyMetersPerSecond(Landroid/location/Location;)F
    .locals 2

    .line 238
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 239
    invoke-static {p0}, Landroidx/core/location/LocationCompat$Api26Impl;->getSpeedAccuracyMetersPerSecond(Landroid/location/Location;)F

    move-result p0

    return p0

    .line 241
    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_1

    return v0

    .line 246
    :cond_1
    const-string/jumbo v1, "speedAccuracy"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public static getVerticalAccuracyMeters(Landroid/location/Location;)F
    .locals 2

    .line 167
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 168
    invoke-static {p0}, Landroidx/core/location/LocationCompat$Api26Impl;->getVerticalAccuracyMeters(Landroid/location/Location;)F

    move-result p0

    return p0

    .line 170
    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_1

    return v0

    .line 175
    :cond_1
    const-string/jumbo v1, "verticalAccuracy"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public static hasBearingAccuracy(Landroid/location/Location;)Z
    .locals 2

    .line 292
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 293
    invoke-static {p0}, Landroidx/core/location/LocationCompat$Api26Impl;->hasBearingAccuracy(Landroid/location/Location;)Z

    move-result p0

    return p0

    .line 295
    :cond_0
    const-string v0, "bearingAccuracy"

    invoke-static {p0, v0}, Landroidx/core/location/LocationCompat;->containsExtra(Landroid/location/Location;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static hasMslAltitude(Landroid/location/Location;)Z
    .locals 2

    .line 405
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    .line 406
    invoke-static {p0}, Landroidx/core/location/LocationCompat$Api34Impl;->hasMslAltitude(Landroid/location/Location;)Z

    move-result p0

    return p0

    .line 408
    :cond_0
    const-string v0, "androidx.core.location.extra.MSL_ALTITUDE"

    invoke-static {p0, v0}, Landroidx/core/location/LocationCompat;->containsExtra(Landroid/location/Location;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static hasMslAltitudeAccuracy(Landroid/location/Location;)Z
    .locals 2

    .line 484
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    .line 485
    invoke-static {p0}, Landroidx/core/location/LocationCompat$Api34Impl;->hasMslAltitudeAccuracy(Landroid/location/Location;)Z

    move-result p0

    return p0

    .line 487
    :cond_0
    const-string v0, "androidx.core.location.extra.MSL_ALTITUDE_ACCURACY"

    invoke-static {p0, v0}, Landroidx/core/location/LocationCompat;->containsExtra(Landroid/location/Location;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static hasSpeedAccuracy(Landroid/location/Location;)Z
    .locals 2

    .line 221
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 222
    invoke-static {p0}, Landroidx/core/location/LocationCompat$Api26Impl;->hasSpeedAccuracy(Landroid/location/Location;)Z

    move-result p0

    return p0

    .line 224
    :cond_0
    const-string/jumbo v0, "speedAccuracy"

    invoke-static {p0, v0}, Landroidx/core/location/LocationCompat;->containsExtra(Landroid/location/Location;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static hasVerticalAccuracy(Landroid/location/Location;)Z
    .locals 2

    .line 150
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 151
    invoke-static {p0}, Landroidx/core/location/LocationCompat$Api26Impl;->hasVerticalAccuracy(Landroid/location/Location;)Z

    move-result p0

    return p0

    .line 153
    :cond_0
    const-string/jumbo v0, "verticalAccuracy"

    invoke-static {p0, v0}, Landroidx/core/location/LocationCompat;->containsExtra(Landroid/location/Location;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isMock(Landroid/location/Location;)Z
    .locals 2

    .line 520
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 521
    invoke-static {p0}, Landroidx/core/location/LocationCompat$Api18Impl;->isMock(Landroid/location/Location;)Z

    move-result p0

    return p0

    .line 523
    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_1

    return v0

    .line 528
    :cond_1
    const-string v1, "mockLocation"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static removeBearingAccuracy(Landroid/location/Location;)V
    .locals 2

    .line 344
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    .line 345
    invoke-static {p0}, Landroidx/core/location/LocationCompat$Api33Impl;->removeBearingAccuracy(Landroid/location/Location;)V

    return-void

    .line 346
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 347
    invoke-static {p0}, Landroidx/core/location/LocationCompat$Api29Impl;->removeBearingAccuracy(Landroid/location/Location;)V

    return-void

    .line 348
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_2

    .line 349
    invoke-static {p0}, Landroidx/core/location/LocationCompat$Api28Impl;->removeBearingAccuracy(Landroid/location/Location;)V

    return-void

    .line 350
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_3

    .line 351
    invoke-static {p0}, Landroidx/core/location/LocationCompat$Api26Impl;->removeBearingAccuracy(Landroid/location/Location;)V

    return-void

    .line 353
    :cond_3
    const-string v0, "bearingAccuracy"

    invoke-static {p0, v0}, Landroidx/core/location/LocationCompat;->removeExtra(Landroid/location/Location;Ljava/lang/String;)V

    return-void
.end method

.method private static removeExtra(Landroid/location/Location;Ljava/lang/String;)V
    .locals 1

    .line 1062
    invoke-virtual {p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1064
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1065
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1066
    invoke-virtual {p0, p1}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public static removeMslAltitude(Landroid/location/Location;)V
    .locals 2

    .line 421
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    .line 422
    invoke-static {p0}, Landroidx/core/location/LocationCompat$Api34Impl;->removeMslAltitude(Landroid/location/Location;)V

    return-void

    .line 424
    :cond_0
    const-string v0, "androidx.core.location.extra.MSL_ALTITUDE"

    invoke-static {p0, v0}, Landroidx/core/location/LocationCompat;->removeExtra(Landroid/location/Location;Ljava/lang/String;)V

    return-void
.end method

.method public static removeMslAltitudeAccuracy(Landroid/location/Location;)V
    .locals 2

    .line 500
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    .line 501
    invoke-static {p0}, Landroidx/core/location/LocationCompat$Api34Impl;->removeMslAltitudeAccuracy(Landroid/location/Location;)V

    return-void

    .line 503
    :cond_0
    const-string v0, "androidx.core.location.extra.MSL_ALTITUDE_ACCURACY"

    invoke-static {p0, v0}, Landroidx/core/location/LocationCompat;->removeExtra(Landroid/location/Location;Ljava/lang/String;)V

    return-void
.end method

.method public static removeSpeedAccuracy(Landroid/location/Location;)V
    .locals 2

    .line 273
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    .line 274
    invoke-static {p0}, Landroidx/core/location/LocationCompat$Api33Impl;->removeSpeedAccuracy(Landroid/location/Location;)V

    return-void

    .line 275
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 276
    invoke-static {p0}, Landroidx/core/location/LocationCompat$Api29Impl;->removeSpeedAccuracy(Landroid/location/Location;)V

    return-void

    .line 277
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_2

    .line 278
    invoke-static {p0}, Landroidx/core/location/LocationCompat$Api28Impl;->removeSpeedAccuracy(Landroid/location/Location;)V

    return-void

    .line 279
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_3

    .line 280
    invoke-static {p0}, Landroidx/core/location/LocationCompat$Api26Impl;->removeSpeedAccuracy(Landroid/location/Location;)V

    return-void

    .line 282
    :cond_3
    const-string/jumbo v0, "speedAccuracy"

    invoke-static {p0, v0}, Landroidx/core/location/LocationCompat;->removeExtra(Landroid/location/Location;Ljava/lang/String;)V

    return-void
.end method

.method public static removeVerticalAccuracy(Landroid/location/Location;)V
    .locals 2

    .line 202
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    .line 203
    invoke-static {p0}, Landroidx/core/location/LocationCompat$Api33Impl;->removeVerticalAccuracy(Landroid/location/Location;)V

    return-void

    .line 204
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 205
    invoke-static {p0}, Landroidx/core/location/LocationCompat$Api29Impl;->removeVerticalAccuracy(Landroid/location/Location;)V

    return-void

    .line 206
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_2

    .line 207
    invoke-static {p0}, Landroidx/core/location/LocationCompat$Api28Impl;->removeVerticalAccuracy(Landroid/location/Location;)V

    return-void

    .line 208
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_3

    .line 209
    invoke-static {p0}, Landroidx/core/location/LocationCompat$Api26Impl;->removeVerticalAccuracy(Landroid/location/Location;)V

    return-void

    .line 211
    :cond_3
    const-string/jumbo v0, "verticalAccuracy"

    invoke-static {p0, v0}, Landroidx/core/location/LocationCompat;->removeExtra(Landroid/location/Location;Ljava/lang/String;)V

    return-void
.end method

.method public static setBearingAccuracyDegrees(Landroid/location/Location;F)V
    .locals 2

    .line 333
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 334
    invoke-static {p0, p1}, Landroidx/core/location/LocationCompat$Api26Impl;->setBearingAccuracyDegrees(Landroid/location/Location;F)V

    return-void

    .line 336
    :cond_0
    invoke-static {p0}, Landroidx/core/location/LocationCompat;->getOrCreateExtras(Landroid/location/Location;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "bearingAccuracy"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public static setMock(Landroid/location/Location;Z)V
    .locals 3

    .line 541
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    .line 543
    :try_start_0
    invoke-static {}, Landroidx/core/location/LocationCompat;->getSetIsFromMockProviderMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 553
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 549
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-direct {p1}, Ljava/lang/IllegalAccessError;-><init>()V

    .line 550
    invoke-virtual {p1, p0}, Ljava/lang/Error;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 551
    throw p1

    :catch_2
    move-exception p0

    .line 545
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    .line 546
    invoke-virtual {p1, p0}, Ljava/lang/Error;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 547
    throw p1

    .line 556
    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 557
    const-string v1, "mockLocation"

    if-nez v0, :cond_1

    if-eqz p1, :cond_3

    .line 559
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 560
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 561
    invoke-virtual {p0, p1}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 565
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void

    .line 567
    :cond_2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 568
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 569
    invoke-virtual {p0, p1}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    :cond_3
    return-void
.end method

.method public static setMslAltitudeAccuracyMeters(Landroid/location/Location;F)V
    .locals 2

    .line 466
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    .line 467
    invoke-static {p0, p1}, Landroidx/core/location/LocationCompat$Api34Impl;->setMslAltitudeAccuracyMeters(Landroid/location/Location;F)V

    return-void

    .line 469
    :cond_0
    invoke-static {p0}, Landroidx/core/location/LocationCompat;->getOrCreateExtras(Landroid/location/Location;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "androidx.core.location.extra.MSL_ALTITUDE_ACCURACY"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public static setMslAltitudeMeters(Landroid/location/Location;D)V
    .locals 2

    .line 388
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    .line 389
    invoke-static {p0, p1, p2}, Landroidx/core/location/LocationCompat$Api34Impl;->setMslAltitudeMeters(Landroid/location/Location;D)V

    return-void

    .line 391
    :cond_0
    invoke-static {p0}, Landroidx/core/location/LocationCompat;->getOrCreateExtras(Landroid/location/Location;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "androidx.core.location.extra.MSL_ALTITUDE"

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    return-void
.end method

.method public static setSpeedAccuracyMetersPerSecond(Landroid/location/Location;F)V
    .locals 2

    .line 262
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 263
    invoke-static {p0, p1}, Landroidx/core/location/LocationCompat$Api26Impl;->setSpeedAccuracyMetersPerSecond(Landroid/location/Location;F)V

    return-void

    .line 265
    :cond_0
    invoke-static {p0}, Landroidx/core/location/LocationCompat;->getOrCreateExtras(Landroid/location/Location;)Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo v0, "speedAccuracy"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public static setVerticalAccuracyMeters(Landroid/location/Location;F)V
    .locals 2

    .line 191
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 192
    invoke-static {p0, p1}, Landroidx/core/location/LocationCompat$Api26Impl;->setVerticalAccuracyMeters(Landroid/location/Location;F)V

    return-void

    .line 194
    :cond_0
    invoke-static {p0}, Landroidx/core/location/LocationCompat;->getOrCreateExtras(Landroid/location/Location;)Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo v0, "verticalAccuracy"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-void
.end method
