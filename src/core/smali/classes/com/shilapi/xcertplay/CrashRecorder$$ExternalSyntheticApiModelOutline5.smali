.class public final synthetic Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static bridge synthetic m(Landroid/widget/TextView;)F
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLetterSpacing()F

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/app/AppOpsManager;Ljava/lang/String;ILjava/lang/String;)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/app/usage/UsageEvents$Event;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/media/AudioAttributes;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->hashCode()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/media/AudioDeviceInfo;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/media/AudioRecord;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/media/AudioRecord;[BIII)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/media/AudioRecord;->read([BIII)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/media/AudioTrack;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getBufferSizeInFrames()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/media/AudioTrack;F)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->setVolume(F)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/media/AudioTrack;[BIII)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/media/AudioTrack;->write([BIII)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/net/wifi/WifiInfo;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/view/Window;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/view/Window;->getNavigationBarColor()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/widget/Button;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/widget/Button;->getMinHeight()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Lcom/shilapi/xcertplay/DiPlayActivity;Ljava/lang/String;)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Lcom/shilapi/xcertplay/DiPlaySessionService;Ljava/lang/String;)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/DiPlaySessionService;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Ljava/net/NetworkInterface;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Ljava/net/NetworkInterface;->getIndex()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/app/ApplicationExitInfo;)J
    .locals 2

    .line 0
    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic m(Landroid/app/usage/UsageEvents$Event;)J
    .locals 2

    .line 0
    invoke-virtual {p0}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic m(Landroid/content/pm/PackageInfo;)J
    .locals 2

    .line 0
    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic m(Landroid/location/Location;)J
    .locals 2

    .line 0
    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic m(Landroid/os/StatFs;)J
    .locals 2

    .line 0
    invoke-virtual {p0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic m(Landroid/app/usage/UsageStatsManager;JJ)Landroid/app/usage/UsageEvents;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/usage/UsageStatsManager;->queryEvents(JJ)Landroid/app/usage/UsageEvents;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Landroid/app/usage/UsageStatsManager;
    .locals 0

    .line 0
    check-cast p0, Landroid/app/usage/UsageStatsManager;

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/bluetooth/BluetoothManager;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Landroid/bluetooth/BluetoothManager;
    .locals 0

    .line 0
    check-cast p0, Landroid/bluetooth/BluetoothManager;

    return-object p0
.end method

.method public static bridge synthetic m(Lcom/shilapi/xcertplay/GenericClusterPresentation;)Landroid/content/Context;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/GenericClusterPresentation;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/widget/AbsSeekBar;)Landroid/content/res/ColorStateList;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getThumbTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/widget/ProgressBar;)Landroid/content/res/ColorStateList;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgressTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/widget/Switch;)Landroid/content/res/ColorStateList;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/widget/Switch;->getTrackTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/widget/AbsSeekBar;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/widget/Switch;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/widget/Switch;->getTrackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/AudioTrack;)Landroid/media/AudioAttributes;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/AudioRecord;)Landroid/media/AudioDeviceInfo;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/media/AudioRecord;->getRoutedDevice()Landroid/media/AudioDeviceInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/AudioTrack;)Landroid/media/AudioDeviceInfo;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getRoutedDevice()Landroid/media/AudioDeviceInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Landroid/media/AudioDeviceInfo;
    .locals 0

    .line 0
    check-cast p0, Landroid/media/AudioDeviceInfo;

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/AudioRecord$Builder;I)Landroid/media/AudioRecord$Builder;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/media/AudioRecord$Builder;->setAudioSource(I)Landroid/media/AudioRecord$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/AudioRecord$Builder;Landroid/media/AudioFormat;)Landroid/media/AudioRecord$Builder;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/media/AudioRecord$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioRecord$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/AudioRecord$Builder;)Landroid/media/AudioRecord;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/media/AudioRecord$Builder;->build()Landroid/media/AudioRecord;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Landroid/media/MediaCodecInfo$VideoCapabilities;
    .locals 0

    .line 0
    check-cast p0, Landroid/media/MediaCodecInfo$VideoCapabilities;

    return-object p0
.end method

.method public static bridge synthetic m(I)Landroid/media/audiofx/AcousticEchoCanceler;
    .locals 0

    .line 0
    invoke-static {p0}, Landroid/media/audiofx/AcousticEchoCanceler;->create(I)Landroid/media/audiofx/AcousticEchoCanceler;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m()Landroid/net/Uri;
    .locals 1

    .line 0
    sget-object v0, Landroid/provider/MediaStore$Downloads;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public static bridge synthetic m(IF)Landroid/widget/GridLayout$Spec;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroid/widget/GridLayout;->spec(IF)Landroid/widget/GridLayout$Spec;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m()Ljava/lang/Class;
    .locals 1

    .line 0
    const-class v0, Landroid/app/usage/UsageEvents$Event;

    return-object v0
.end method

.method public static bridge synthetic m(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/app/ApplicationExitInfo;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getDescription()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/app/usage/UsageEvents$Event;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/app/usage/UsageEvents$Event;->getClassName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/hardware/usb/UsbDevice;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/MediaCodec;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/content/Intent;Landroid/content/ClipData;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/content/res/Configuration;I)V
    .locals 0

    .line 0
    iput p1, p0, Landroid/content/res/Configuration;->densityDpi:I

    return-void
.end method

.method public static bridge synthetic m(Landroid/media/MediaFormat;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/media/MediaFormat;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/media/MediaFormat;Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->close()V

    return-void
.end method

.method public static bridge synthetic m(Landroid/view/Display;Landroid/util/DisplayMetrics;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/view/View;Landroid/animation/StateListAnimator;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/widget/AbsSeekBar;Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/widget/AbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/widget/AbsSeekBar;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/widget/AbsSeekBar;->setSplitTrack(Z)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/widget/ProgressBar;Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/widget/Switch;Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setTrackTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/widget/Switch;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/widget/Switch;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setShowText(Z)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/widget/TextView;F)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/widget/TextView;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextDirection(I)V

    return-void
.end method

.method public static bridge synthetic m(Lcom/shilapi/xcertplay/DiPlaySessionService;ILandroid/app/Notification;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/DiPlaySessionService;->startForeground(ILandroid/app/Notification;I)V

    return-void
.end method

.method public static bridge synthetic m(Lcom/shilapi/xcertplay/GenericClusterPresentation;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/GenericClusterPresentation;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic m()Z
    .locals 1

    .line 0
    invoke-static {}, Landroid/media/audiofx/AcousticEchoCanceler;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic m(Landroid/app/Activity;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/app/usage/UsageEvents;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/app/usage/UsageEvents;->hasNextEvent()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/app/usage/UsageEvents;Landroid/app/usage/UsageEvents$Event;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/content/Context;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/graphics/Paint;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->hasGlyph(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/media/audiofx/NoiseSuppressor;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/media/audiofx/NoiseSuppressor;->getEnabled()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/net/wifi/WifiManager;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->is5GHzBandSupported()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/os/HandlerThread;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/os/PowerManager;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/widget/AbsSeekBar;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getSplitTrack()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/widget/Switch;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/widget/Switch;->getShowText()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Ljava/io/File;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Landroid/os/Environment;->isExternalStorageRemovable(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    instance-of p0, p0, Landroid/app/AppOpsManager;

    return p0
.end method

.method public static bridge synthetic m(Ljava/lang/Process;JLjava/util/concurrent/TimeUnit;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/Process;->waitFor(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/content/pm/SigningInfo;)[Landroid/content/pm/Signature;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/AudioManager;I)[Landroid/media/AudioDeviceInfo;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/bluetooth/BluetoothDevice;)[Landroid/os/ParcelUuid;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m()[Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic m$1(Landroid/media/AudioTrack;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getUnderrunCount()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m$1(Landroid/view/Window;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/view/Window;->getStatusBarColor()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m$1(Landroid/widget/Switch;)Landroid/content/res/ColorStateList;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/widget/Switch;->getThumbTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m$1(Landroid/widget/Switch;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/widget/Switch;->getThumbDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m$1(Landroid/media/AudioRecord$Builder;I)Landroid/media/AudioRecord$Builder;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/media/AudioRecord$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioRecord$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m$1(Landroid/app/usage/UsageEvents$Event;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m$1(Landroid/widget/Switch;Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public static bridge synthetic m$1(Landroid/widget/Switch;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static bridge synthetic m$1()Z
    .locals 1

    .line 0
    invoke-static {}, Landroid/media/audiofx/NoiseSuppressor;->isAvailable()Z

    move-result v0

    return v0
.end method
