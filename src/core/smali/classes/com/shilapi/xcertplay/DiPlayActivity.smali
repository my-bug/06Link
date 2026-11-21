.class public final Lcom/shilapi/xcertplay/DiPlayActivity;
.super Landroidx/activity/ComponentActivity;
.source "DiPlayActivity.kt"


# static fields
.field public static final ACTION_RAIL:Ljava/lang/String; = "action-rail"

.field private static final AUTO_START_WAIT_MS:J = 0x7530L

.field private static final BOTTOM_BAND_MIN_DP:I = 0xc

.field public static final Companion:Lcom/shilapi/xcertplay/DiPlayActivity$Companion;

.field public static final EXTRA_AUTO_START:Ljava/lang/String; = "com.sixlink.car.extra.AUTO_START"

.field public static final EXTRA_IPHONE_AFTER_CANCEL:Ljava/lang/String; = "com.sixlink.car.extra.IPHONE_AFTER_CANCEL"

.field private static final FOCUS_GRACE_MILLIS:J = 0x5dcL

.field public static final HOME_STEPS_SCROLL:Ljava/lang/String; = "home-steps-scroll"

.field private static final KEY_STARTUP_PERMISSIONS_ASKED:Ljava/lang/String; = "startup_permissions_asked"

.field public static final MINI_CARD:Ljava/lang/String; = "mini-card"

.field public static final PAGE_STEPS_WIRED:Ljava/lang/String; = "steps-wd"

.field public static final PAGE_STEPS_WIRELESS:Ljava/lang/String; = "steps-wl"

.field private static final PORTRAIT_ACTION_DP:I = 0x60

.field private static final RAIL_CHIP_GAP_DP:I = 0xc

.field private static final RAIL_GAP_DP:I = 0x10

.field private static final RAIL_MAX_DP:I = 0xb4

.field private static final RAIL_MIN_DP:I = 0x64

.field public static final ROTATION_TRIAL_SECONDS:I = 0xa

.field private static final STATUS_BAND_MIN_DP:I = 0x1c

.field public static final TILE_ACTION:Ljava/lang/String; = "tile-action"



.field private static volatile resumedScreen:Ljava/lang/ref/WeakReference;


.field private static volatile waitingOnHome:Z

.field private static writeSettingsMissingForTest:Ljava/lang/Boolean;


# instance fields
.field private adbCheckGeneration:I

.field private adbStatus:Landroid/widget/TextView;

.field private final appliedEnabled:Ljava/util/WeakHashMap;

.field private autoReturnLabel:Landroid/widget/TextView;

.field private autoReturnState:Lcom/shilapi/xcertplay/AutoReturnToCarPlay$State;

.field private autoStartWaiting:Z

.field private backPressSeen:Z

.field private final backStack:Ljava/util/ArrayList;

.field private behindWaits:I

.field private final bluetoothPermission:Landroidx/activity/result/ActivityResultLauncher;

.field private bondWatcher:Landroid/content/BroadcastReceiver;

.field private final brandLogoPicker:Landroidx/activity/result/ActivityResultLauncher;

.field private final carPlayAttention:Lkotlin/jvm/functions/Function1;

.field private carWifiPasswordShown:Z

.field private carWifiQrShown:Z


.field private connectAfterWriteSettings:Z

.field private connectButton:Landroid/widget/TextView;

.field private diagnosticConfirmDialog:Landroid/app/AlertDialog;

.field private final enableBluetooth:Landroidx/activity/result/ActivityResultLauncher;

.field private final export:Landroidx/activity/result/ActivityResultLauncher;

.field private exportButton:Landroid/widget/Button;

.field private exportInProgress:Z

.field private firstRunNoticeDialog:Landroid/app/Dialog;

.field private final handler:Landroid/os/Handler;

.field private homeStepsScroll:Landroid/widget/ScrollView;

.field private hostConsentDone:Lkotlin/jvm/functions/Function2;

.field private final hostPermissions:Landroidx/activity/result/ActivityResultLauncher;

.field private final hostSheet:Landroidx/activity/result/ActivityResultLauncher;



.field private initialLaunch:Z


.field private languagePreferenceAtCreate:Ljava/lang/String;

.field private lastPairedAddress:Ljava/lang/String;

.field private lastPairedAt:J

.field private lastUi:Lcom/shilapi/xcertplay/ConnectionUi$Ui;

.field private leftByUser:Z

.field private final locationPermission:Landroidx/activity/result/ActivityResultLauncher;

.field private navigationStreamType:I

.field private newWifiPasswordDialog:Landroid/app/AlertDialog;

.field private final notificationPermission:Landroidx/activity/result/ActivityResultLauncher;

.field private notificationTransport:Z

.field private page:Ljava/lang/String;

.field private pairing:Lcom/shilapi/xcertplay/IphonePairing;

.field private pendingAutoConnect:Ljava/lang/Boolean;

.field private pendingAutoConnectAtBoot:Z

.field private pendingCarHotspotSetup:Z

.field private pendingReconnectReason:Ljava/lang/String;

.field private pendingWireless:Z

.field private quickSwitchConnect:Z

.field private railWidthPx:I

.field private receiverHelpDialog:Landroid/app/AlertDialog;

.field private reconnectOffer:Landroid/app/Dialog;

.field private renderedDark:Ljava/lang/Boolean;

.field private restoredFromState:Z

.field private resumedAt:J

.field private final returnResume:Lcom/shilapi/xcertplay/orchestration/ReturnResume;

.field private rotationDialog:Landroid/app/AlertDialog;

.field private scrollKey:Ljava/lang/String;

.field private scrollY:I

.field private scrolled:Landroid/widget/ScrollView;

.field private sectionSink:Ljava/util/List;

.field private settingsNavScroll:I

.field private settingsTab:I

.field private setupError:Ljava/lang/String;

.field private startingOwnActivity:Z

.field private startupHeldByNotice:Z

.field private startupPermissionStep:I

.field private final startupPermissions:Landroidx/activity/result/ActivityResultLauncher;

.field private status:Landroid/widget/TextView;

.field private stepsFocus:Landroid/view/View;

.field private stepsList:Landroid/widget/LinearLayout;

.field private stepsListInline:Z

.field private stepsShown:Lkotlin/Pair;

.field private switchDialog:Landroid/app/AlertDialog;

.field private switchIphoneDialog:Landroid/app/AlertDialog;

.field private switchingHotspotOn:Z

.field private systemShortcutsOpen:Z


.field private final tick:Lcom/shilapi/xcertplay/DiPlayActivity$tick$1;





.field private usbBtAtRender:Z

.field private usbBtDiscoverableButton:Landroid/widget/Button;

.field private final usbBtDiscoverableListener:Lkotlin/jvm/functions/Function1;

.field private usbBtDiscoverableStatus:Landroid/widget/TextView;

.field private usbSelfTestButton:Landroid/view/View;

.field private vendorAtRender:Z

.field private vendorBluetoothDialog:Landroid/app/AlertDialog;


.field private wifiCardPasswordShown:Z

.field private wiredButton:Landroid/widget/TextView;

.field private wiredStatus:Landroid/widget/TextView;

.field private writeSettingsHint:Z


# direct methods
.method public static synthetic $r8$lambda$-TVsZjLC9wkGq8pU2t384qvkCtY(Lcom/shilapi/xcertplay/DiPlayActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/DiPlayActivity;->offerReconnect$lambda$551(Lcom/shilapi/xcertplay/DiPlayActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method




















.method public static synthetic $r8$lambda$4KQDtw7cBgYxtut8ZZbLddk_u2g(Lcom/shilapi/xcertplay/DiPlayActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/DiPlayActivity;->confirmWirelessReset$lambda$660(Lcom/shilapi/xcertplay/DiPlayActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method












.method public static synthetic $r8$lambda$6SLUPXj1QxhMV_76jJXcuEIuZzE(Lcom/shilapi/xcertplay/DiPlayActivity;Landroid/net/Uri;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->export$lambda$4(Lcom/shilapi/xcertplay/DiPlayActivity;Landroid/net/Uri;)V

    return-void
.end method










.method public static synthetic $r8$lambda$7pCOKsretg7cYLk22jDLv2LgPDg(Lcom/shilapi/xcertplay/DiPlayActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->brandLogoPicker$lambda$19(Lcom/shilapi/xcertplay/DiPlayActivity;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method





.method public static synthetic $r8$lambda$8uaLGOXPBUlopM39wkj8-BeiG-o(Lcom/shilapi/xcertplay/DiPlayActivity;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->stopCarPlaySession$lambda$555(Lcom/shilapi/xcertplay/DiPlayActivity;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method







.method public static synthetic $r8$lambda$AXfAz6tdNSzlJGboNLQOJ520WYQ(Lcom/shilapi/xcertplay/DiPlayActivity;Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$SwitchOn;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->connect$lambda$586$lambda$585(Lcom/shilapi/xcertplay/DiPlayActivity;Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$SwitchOn;)V

    return-void
.end method


.method public static synthetic $r8$lambda$AsmTrSVcCennQN1Lb3reMZ_n-H4(Lcom/shilapi/xcertplay/DiPlayActivity;Landroid/widget/LinearLayout;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->about$lambda$398(Lcom/shilapi/xcertplay/DiPlayActivity;Landroid/widget/LinearLayout;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$AsqExYBRotQQMDaDh1j9BFRKZm8(Lcom/shilapi/xcertplay/DiPlayActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->notificationPermission$lambda$0(Lcom/shilapi/xcertplay/DiPlayActivity;Ljava/lang/Boolean;)V

    return-void
.end method













.method public static synthetic $r8$lambda$E0saz82sWZ8KukjHp1D9unzffJI(Lcom/shilapi/xcertplay/DiPlayActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->enableBluetooth$lambda$16(Lcom/shilapi/xcertplay/DiPlayActivity;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EC7nn81nE2ssAQx4PkUI2TQvz9E(ZLcom/shilapi/xcertplay/DiPlayActivity;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/DiPlayActivity;->connect$lambda$598(ZLcom/shilapi/xcertplay/DiPlayActivity;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method





.method public static synthetic $r8$lambda$FXWkj5NN2lqT-PXRt-rSdafzfjc(Lcom/shilapi/xcertplay/DiPlayActivity;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->usbBtDiscoverableListener$lambda$60(Lcom/shilapi/xcertplay/DiPlayActivity;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method






.method public static synthetic $r8$lambda$GmHSudfjuty-SgQmWhtR0MH0PFc(Lcom/shilapi/xcertplay/DiPlayActivity;Landroid/bluetooth/BluetoothDevice;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->onCreate$lambda$31$lambda$30(Lcom/shilapi/xcertplay/DiPlayActivity;Landroid/bluetooth/BluetoothDevice;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Gxww9rk_mclEgFQy3PMT8T8U6BU(Lcom/shilapi/xcertplay/DiPlayActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->offerReconnect$lambda$552(Lcom/shilapi/xcertplay/DiPlayActivity;Landroid/content/DialogInterface;)V

    return-void
.end method

















.method public static synthetic $r8$lambda$JTRWggTB8m2ceAakYio92e6PbDM(Lcom/shilapi/xcertplay/DiPlayActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/DiPlayActivity;->carHotspotOffDialog$lambda$455(Lcom/shilapi/xcertplay/DiPlayActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method














.method public static synthetic $r8$lambda$MAEtC1h0OQJEaWm613YnG5zjao4(Lcom/shilapi/xcertplay/DiPlayActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->onResume$lambda$40(Lcom/shilapi/xcertplay/DiPlayActivity;)V

    return-void
.end method


.method public static synthetic $r8$lambda$MkWwviIR9ySYxki5h4EIveTRZVI(Lcom/shilapi/xcertplay/DiPlayActivity;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->runPendingAutoConnect$lambda$26(Lcom/shilapi/xcertplay/DiPlayActivity;Z)V

    return-void
.end method


.method public static synthetic $r8$lambda$N6fG65bdsgRoWVYQSPqjuaq5fxM(Lcom/shilapi/xcertplay/DiPlayActivity;Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->onResume$lambda$43$lambda$42(Lcom/shilapi/xcertplay/DiPlayActivity;Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NE6cZ3ZiN9Z8iHRwSgRfu1mdvvs(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Lcom/shilapi/xcertplay/DiPlayActivity;Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/DiPlayActivity;->resetWirelessGroup$lambda$661(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Lcom/shilapi/xcertplay/DiPlayActivity;Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pGroup;)V

    return-void
.end method





.method public static synthetic $r8$lambda$NvIoPnQaZgWKxRHCFtWhVJnxalI(Lcom/shilapi/xcertplay/DiPlayActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->handleBluetoothRecovery$lambda$658$lambda$657$lambda$656(Lcom/shilapi/xcertplay/DiPlayActivity;)V

    return-void
.end method




.method public static synthetic $r8$lambda$PwMp4ewvE3aEsa1z-GJI9wIm6og(Lcom/shilapi/xcertplay/DiPlayActivity;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->diagnosticsRows$lambda$313(Lcom/shilapi/xcertplay/DiPlayActivity;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method



.method public static synthetic $r8$lambda$QARgZVRmn3JFQi8uT8LFVzI29ng(Lcom/shilapi/xcertplay/DiPlayActivity;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->confirmWirelessReset$lambda$660$lambda$659(Lcom/shilapi/xcertplay/DiPlayActivity;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$QLhyusECSEFY31xwoDN8kTuPxes(Lcom/shilapi/xcertplay/DiPlayActivity;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->startupPermissions$lambda$14(Lcom/shilapi/xcertplay/DiPlayActivity;Ljava/util/Map;)V

    return-void
.end method






.method public static synthetic $r8$lambda$SpdUdu0XqaMH5DbB87flS3hlFXo(Ljava/util/Map$Entry;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->startupPermissions$lambda$14$lambda$13(Ljava/util/Map$Entry;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method





.method public static synthetic $r8$lambda$TsaK8b_j8qRVQn2s4-RYpwgh2j8(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->connect$lambda$599(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method



.method public static synthetic $r8$lambda$U7emLUqnfpoPZMQDoIPdc3ibqfY(Lcom/shilapi/xcertplay/DiPlayActivity;Lcom/shilapi/xcertplay/airplay/CarPlayAttention$Reason;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->carPlayAttention$lambda$80$lambda$79(Lcom/shilapi/xcertplay/DiPlayActivity;Lcom/shilapi/xcertplay/airplay/CarPlayAttention$Reason;)V

    return-void
.end method
















.method public static synthetic $r8$lambda$XUkKVZsKj82BqZ2XkFu0CCPSdv8(Lcom/shilapi/xcertplay/DiPlayActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->connect$lambda$586(Lcom/shilapi/xcertplay/DiPlayActivity;)V

    return-void
.end method



.method public static synthetic $r8$lambda$XvVrdBHjdkoJCH9WYiGKRX6sRRc(Lcom/shilapi/xcertplay/DiPlayActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->onResume$lambda$41(Lcom/shilapi/xcertplay/DiPlayActivity;)V

    return-void
.end method




.method public static synthetic $r8$lambda$YPY-RAbEsU46mFJwOH0Dew8OxbE(Lcom/shilapi/xcertplay/DiPlayActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->onCreate$lambda$29(Lcom/shilapi/xcertplay/DiPlayActivity;)V

    return-void
.end method


.method public static synthetic $r8$lambda$Yope-OkRZjwTExbDuG8MDonaAlo(Lcom/shilapi/xcertplay/DiPlayActivity;Landroid/widget/LinearLayout;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->about$lambda$397(Lcom/shilapi/xcertplay/DiPlayActivity;Landroid/widget/LinearLayout;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method


















.method public static synthetic $r8$lambda$cTDjtQ7Ahi-RXHRb2a3gIMRA7EI(Lcom/shilapi/xcertplay/DiPlayActivity;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->locationPermission$lambda$2(Lcom/shilapi/xcertplay/DiPlayActivity;Ljava/util/Map;)V

    return-void
.end method














.method public static synthetic $r8$lambda$fTzND_h4r9XofuB5JvhPE9Oq-zo(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->askForCarPlay$lambda$11(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method





.method public static synthetic $r8$lambda$gOJGbBfMTYOseLiyp5JednESrbE(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->valueRow$lambda$745$lambda$744(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V

    return-void
.end method










.method public static synthetic $r8$lambda$igi-v__wObPcnM9NT_g7l74nQzU(Lcom/shilapi/xcertplay/DiPlayActivity;Lcom/shilapi/xcertplay/airplay/CarPlayAttention$Reason;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->carPlayAttention$lambda$80(Lcom/shilapi/xcertplay/DiPlayActivity;Lcom/shilapi/xcertplay/airplay/CarPlayAttention$Reason;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method





.method public static synthetic $r8$lambda$kC-UPPxkEjjSvDJ6ChZfFNwPlY8(Lcom/shilapi/xcertplay/DiPlayActivity;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->iphonePaired$lambda$649(Lcom/shilapi/xcertplay/DiPlayActivity;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method









.method public static synthetic $r8$lambda$m2dLL-FTHrghiOM4uHX8sWuB0Ns(Lcom/shilapi/xcertplay/DiPlayActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/DiPlayActivity;->carHotspotOffDialog$lambda$454(Lcom/shilapi/xcertplay/DiPlayActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method





.method public static synthetic $r8$lambda$o5txRIue6d-RaP9iPxXqu2Z4fgw(Lcom/shilapi/xcertplay/DiPlayActivity;ZJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/DiPlayActivity;->connectWhenRadiosReady$lambda$583(Lcom/shilapi/xcertplay/DiPlayActivity;ZJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$o6J9EoZONLUMUulkmpyrotznDaI(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->stopCarPlaySession$lambda$555$lambda$554(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method



.method public static synthetic $r8$lambda$oR7pxODIGl6YnUuFw6W_MTTc06c(Ljava/lang/String;Lcom/shilapi/xcertplay/DiPlayActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/DiPlayActivity;->offerReconnect$lambda$550(Ljava/lang/String;Lcom/shilapi/xcertplay/DiPlayActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method



.method public static synthetic $r8$lambda$p-IrawHoOCdO79grUHlA3jL7G0w(Lcom/shilapi/xcertplay/DiPlayActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->bluetoothPermission$lambda$1(Lcom/shilapi/xcertplay/DiPlayActivity;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pQkyev_vVi7zqru3E-3ctBdQcI8(Lcom/shilapi/xcertplay/DiPlayActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->handleBluetoothRecovery$lambda$658(Lcom/shilapi/xcertplay/DiPlayActivity;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method







.method public static synthetic $r8$lambda$qU-OQOBwkfVmbwSCqlSI_aMBO9U(Lcom/shilapi/xcertplay/DiPlayActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->openProjection$lambda$601(Lcom/shilapi/xcertplay/DiPlayActivity;)V

    return-void
.end method















.method public static synthetic $r8$lambda$u0u1L4PBjMnMOBUEGi7JiuTfAcQ(Lcom/shilapi/xcertplay/DiPlayActivity;Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/DiPlayActivity;->permissionHelp$lambda$709(Lcom/shilapi/xcertplay/DiPlayActivity;Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;Landroid/content/DialogInterface;I)V

    return-void
.end method




.method public static synthetic $r8$lambda$uQ-t9uBRfOq4f7Kxyd970PXZ8xE(Lcom/shilapi/xcertplay/DiPlayActivity;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->usbBtDiscoverableListener$lambda$60$lambda$59(Lcom/shilapi/xcertplay/DiPlayActivity;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;)V

    return-void
.end method



.method public static synthetic $r8$lambda$usiEiQU6Z0XgUB3mH6G6qBLWeMY(Lcom/shilapi/xcertplay/DiPlayActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->hostSheet$lambda$9(Lcom/shilapi/xcertplay/DiPlayActivity;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method










.method public static synthetic $r8$lambda$wo5Xm5QMxgawkdMS7vZfHwwS_Os(Lcom/shilapi/xcertplay/DiPlayActivity;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->hostPermissions$lambda$7(Lcom/shilapi/xcertplay/DiPlayActivity;Ljava/util/Map;)V

    return-void
.end method




.method public static synthetic $r8$lambda$xawiXeeWXo5Xsx-b_R94QirJJbk(Ljava/lang/String;Lcom/shilapi/xcertplay/DiPlayActivity;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->onRowAction$lambda$169(Ljava/lang/String;Lcom/shilapi/xcertplay/DiPlayActivity;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xbkqNdX2fPjqFqoWI4S0GrLSPUk(Lcom/shilapi/xcertplay/DiPlayActivity;ZZ)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/DiPlayActivity;->connect$lambda$598$lambda$597(Lcom/shilapi/xcertplay/DiPlayActivity;ZZ)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method


















.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/DiPlayActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/DiPlayActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/DiPlayActivity;->Companion:Lcom/shilapi/xcertplay/DiPlayActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 63
    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->handler:Landroid/os/Handler;

    .line 65
    const-string v0, "home"

    iput-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->page:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->backStack:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->initialLaunch:Z

    .line 83
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->notificationTransport:Z

    const/16 v0, 0xe

    .line 85
    iput v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->navigationStreamType:I

    .line 91
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;-><init>()V

    check-cast v0, Landroidx/activity/result/contract/ActivityResultContract;

    new-instance v1, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda109;

    invoke-direct {v1, p0}, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda109;-><init>(Lcom/shilapi/xcertplay/DiPlayActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/shilapi/xcertplay/DiPlayActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    const-string v1, "registerForActivityResult(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->notificationPermission:Landroidx/activity/result/ActivityResultLauncher;

    .line 94
    new-instance v0, Lcom/shilapi/xcertplay/DiPlayActivity$tick$1;

    invoke-direct {v0, p0}, Lcom/shilapi/xcertplay/DiPlayActivity$tick$1;-><init>(Lcom/shilapi/xcertplay/DiPlayActivity;)V

    iput-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->tick:Lcom/shilapi/xcertplay/DiPlayActivity$tick$1;

    .line 104
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;-><init>()V

    check-cast v0, Landroidx/activity/result/contract/ActivityResultContract;

    new-instance v2, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda114;

    invoke-direct {v2, p0}, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda114;-><init>(Lcom/shilapi/xcertplay/DiPlayActivity;)V

    invoke-virtual {p0, v0, v2}, Lcom/shilapi/xcertplay/DiPlayActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->bluetoothPermission:Landroidx/activity/result/ActivityResultLauncher;

    .line 108
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;-><init>()V

    check-cast v0, Landroidx/activity/result/contract/ActivityResultContract;

    new-instance v2, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda115;

    invoke-direct {v2, p0}, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda115;-><init>(Lcom/shilapi/xcertplay/DiPlayActivity;)V

    invoke-virtual {p0, v0, v2}, Lcom/shilapi/xcertplay/DiPlayActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->locationPermission:Landroidx/activity/result/ActivityResultLauncher;

    .line 122
    new-instance v0, Lcom/shilapi/xcertplay/orchestration/ReturnResume;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/orchestration/ReturnResume;-><init>()V

    iput-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->returnResume:Lcom/shilapi/xcertplay/orchestration/ReturnResume;

    .line 157
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$CreateDocument;

    const-string/jumbo v2, "text/plain"

    invoke-direct {v0, v2}, Landroidx/activity/result/contract/ActivityResultContracts$CreateDocument;-><init>(Ljava/lang/String;)V

    check-cast v0, Landroidx/activity/result/contract/ActivityResultContract;

    new-instance v2, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda116;

    invoke-direct {v2, p0}, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda116;-><init>(Lcom/shilapi/xcertplay/DiPlayActivity;)V

    invoke-virtual {p0, v0, v2}, Lcom/shilapi/xcertplay/DiPlayActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->export:Landroidx/activity/result/ActivityResultLauncher;

    .line 173
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;-><init>()V

    check-cast v0, Landroidx/activity/result/contract/ActivityResultContract;

    new-instance v2, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda117;

    invoke-direct {v2, p0}, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda117;-><init>(Lcom/shilapi/xcertplay/DiPlayActivity;)V

    invoke-virtual {p0, v0, v2}, Lcom/shilapi/xcertplay/DiPlayActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->hostPermissions:Landroidx/activity/result/ActivityResultLauncher;

    .line 176
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    check-cast v0, Landroidx/activity/result/contract/ActivityResultContract;

    new-instance v2, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda118;

    invoke-direct {v2, p0}, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda118;-><init>(Lcom/shilapi/xcertplay/DiPlayActivity;)V

    invoke-virtual {p0, v0, v2}, Lcom/shilapi/xcertplay/DiPlayActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->hostSheet:Landroidx/activity/result/ActivityResultLauncher;

    .line 212
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;-><init>()V

    check-cast v0, Landroidx/activity/result/contract/ActivityResultContract;

    new-instance v2, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda119;

    invoke-direct {v2, p0}, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda119;-><init>(Lcom/shilapi/xcertplay/DiPlayActivity;)V

    invoke-virtual {p0, v0, v2}, Lcom/shilapi/xcertplay/DiPlayActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->startupPermissions:Landroidx/activity/result/ActivityResultLauncher;

    .line 217
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    check-cast v0, Landroidx/activity/result/contract/ActivityResultContract;

    new-instance v2, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda120;

    invoke-direct {v2, p0}, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda120;-><init>(Lcom/shilapi/xcertplay/DiPlayActivity;)V

    invoke-virtual {p0, v0, v2}, Lcom/shilapi/xcertplay/DiPlayActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->enableBluetooth:Landroidx/activity/result/ActivityResultLauncher;


    .line 240
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    check-cast v0, Landroidx/activity/result/contract/ActivityResultContract;

    new-instance v2, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda110;

    invoke-direct {v2, p0}, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda110;-><init>(Lcom/shilapi/xcertplay/DiPlayActivity;)V

    invoke-virtual {p0, v0, v2}, Lcom/shilapi/xcertplay/DiPlayActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->brandLogoPicker:Landroidx/activity/result/ActivityResultLauncher;

    .line 347
    const-string/jumbo v0, "system"

    iput-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->languagePreferenceAtCreate:Ljava/lang/String;

    .line 697
    new-instance v0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda111;

    invoke-direct {v0, p0}, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda111;-><init>(Lcom/shilapi/xcertplay/DiPlayActivity;)V

    iput-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->usbBtDiscoverableListener:Lkotlin/jvm/functions/Function1;

    .line 882
    sget-object v0, Lcom/shilapi/xcertplay/AutoReturnToCarPlay$State$Off;->INSTANCE:Lcom/shilapi/xcertplay/AutoReturnToCarPlay$State$Off;

    check-cast v0, Lcom/shilapi/xcertplay/AutoReturnToCarPlay$State;

    iput-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->autoReturnState:Lcom/shilapi/xcertplay/AutoReturnToCarPlay$State;

    .line 895
    new-instance v0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda112;

    invoke-direct {v0, p0}, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda112;-><init>(Lcom/shilapi/xcertplay/DiPlayActivity;)V

    iput-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->carPlayAttention:Lkotlin/jvm/functions/Function1;

    .line 1027
    const-string v0, ""

    iput-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->scrollKey:Ljava/lang/String;

    .line 4485
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->appliedEnabled:Ljava/util/WeakHashMap;

    return-void
.end method

.method private final about(Landroid/widget/LinearLayout;)V
    .locals 10

    .line 2630
    sget v0, Lcom/shilapi/xcertplay/host/R$string;->carplay_at_home_in_your_car:I

    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/DiPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "getString(...)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/shilapi/xcertplay/DiPlayActivity;->Companion:Lcom/shilapi/xcertplay/DiPlayActivity$Companion;

    # invokes: Lcom/shilapi/xcertplay/DiPlayActivity$Companion;->getMUTED()I
    invoke-static {v1}, Lcom/shilapi/xcertplay/DiPlayActivity$Companion;->access$getMUTED(Lcom/shilapi/xcertplay/DiPlayActivity$Companion;)I

    move-result v4

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/16 v3, 0x11

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/shilapi/xcertplay/DiPlayActivity;->label$default(Lcom/shilapi/xcertplay/DiPlayActivity;Ljava/lang/String;IIZILjava/lang/Object;)Landroid/widget/TextView;

    move-result-object v2

    move-object v3, v1

    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lcom/shilapi/xcertplay/DiPlayActivity;->dp(I)I

    move-result v1

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v4, v4, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    check-cast v2, Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2631
    sget v1, Lcom/shilapi/xcertplay/host/R$string;->about_public_preview_prefix:I

    invoke-virtual {p0, v1}, Lcom/shilapi/xcertplay/DiPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->shownVersion()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda236;

    invoke-direct {v7, p0}, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda236;-><init>(Lcom/shilapi/xcertplay/DiPlayActivity;)V

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v4, p1

    invoke-static/range {v3 .. v9}, Lcom/shilapi/xcertplay/DiPlayActivity;->section$default(Lcom/shilapi/xcertplay/DiPlayActivity;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Integer;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 2634
    sget p1, Lcom/shilapi/xcertplay/host/R$string;->made_possible_by_open_source:I

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda237;

    invoke-direct {v7, p0}, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda237;-><init>(Lcom/shilapi/xcertplay/DiPlayActivity;)V

    invoke-static/range {v3 .. v9}, Lcom/shilapi/xcertplay/DiPlayActivity;->section$default(Lcom/shilapi/xcertplay/DiPlayActivity;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Integer;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method private static final about$lambda$397(Lcom/shilapi/xcertplay/DiPlayActivity;Landroid/widget/LinearLayout;)Lkotlin/Unit;
    .locals 8

    const-string v0, "card"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2632
    sget v0, Lcom/shilapi/xcertplay/host/R$string;->an_independent_carplay_receiver_for_android_head_units_wir:I

    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/DiPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "getString(...)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/shilapi/xcertplay/DiPlayActivity;->Companion:Lcom/shilapi/xcertplay/DiPlayActivity$Companion;

    # invokes: Lcom/shilapi/xcertplay/DiPlayActivity$Companion;->getTEXT()I
    invoke-static {v0}, Lcom/shilapi/xcertplay/DiPlayActivity$Companion;->access$getTEXT(Lcom/shilapi/xcertplay/DiPlayActivity$Companion;)I

    move-result v4

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/16 v3, 0x11

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/shilapi/xcertplay/DiPlayActivity;->label$default(Lcom/shilapi/xcertplay/DiPlayActivity;Ljava/lang/String;IIZILjava/lang/Object;)Landroid/widget/TextView;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2633
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final about$lambda$398(Lcom/shilapi/xcertplay/DiPlayActivity;Landroid/widget/LinearLayout;)Lkotlin/Unit;
    .locals 11

    const-string v0, "card"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2635
    sget v0, Lcom/shilapi/xcertplay/host/R$string;->receiver_based_on_xcertplay_licensed_under_gpl_3_0_diplay:I

    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->shownVersion()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {p0, v0, v2}, Lcom/shilapi/xcertplay/DiPlayActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "getString(...)"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/shilapi/xcertplay/DiPlayActivity;->Companion:Lcom/shilapi/xcertplay/DiPlayActivity$Companion;

    # invokes: Lcom/shilapi/xcertplay/DiPlayActivity$Companion;->getMUTED()I
    invoke-static {v0}, Lcom/shilapi/xcertplay/DiPlayActivity$Companion;->access$getMUTED(Lcom/shilapi/xcertplay/DiPlayActivity$Companion;)I

    move-result v7

    const/16 v9, 0x8

    const/4 v10, 0x0

    const/16 v6, 0x10

    const/4 v8, 0x0

    move-object v4, p0

    invoke-static/range {v4 .. v10}, Lcom/shilapi/xcertplay/DiPlayActivity;->label$default(Lcom/shilapi/xcertplay/DiPlayActivity;Ljava/lang/String;IIZILjava/lang/Object;)Landroid/widget/TextView;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2636
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final synthetic access$autoReturnTick(Lcom/shilapi/xcertplay/DiPlayActivity;)Z
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->autoReturnTick()Z

    move-result p0

    return p0
.end method


.method public static final synthetic access$getHandler$p(Lcom/shilapi/xcertplay/DiPlayActivity;)Landroid/os/Handler;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method


.method public static final synthetic access$getPage$p(Lcom/shilapi/xcertplay/DiPlayActivity;)Ljava/lang/String;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->page:Ljava/lang/String;

    return-object p0
.end method


.method public static final synthetic access$getRenderedDark$p(Lcom/shilapi/xcertplay/DiPlayActivity;)Ljava/lang/Boolean;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->renderedDark:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static final synthetic access$getResumedScreen$cp()Ljava/lang/ref/WeakReference;
    .locals 1

    .line 63
    sget-object v0, Lcom/shilapi/xcertplay/DiPlayActivity;->resumedScreen:Ljava/lang/ref/WeakReference;

    return-object v0
.end method


.method public static final synthetic access$getWaitingOnHome$cp()Z
    .locals 1

    .line 63
    sget-boolean v0, Lcom/shilapi/xcertplay/DiPlayActivity;->waitingOnHome:Z

    return v0
.end method


.method public static final synthetic access$goBack(Lcom/shilapi/xcertplay/DiPlayActivity;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->goBack()V

    return-void
.end method


.method public static final synthetic access$refreshStatus(Lcom/shilapi/xcertplay/DiPlayActivity;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->refreshStatus()V

    return-void
.end method

.method public static final synthetic access$render(Lcom/shilapi/xcertplay/DiPlayActivity;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->render()V

    return-void
.end method


.method public static final synthetic access$returnStepDone(Lcom/shilapi/xcertplay/DiPlayActivity;Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;)Z
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->returnStepDone(Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;)Z

    move-result p0

    return p0
.end method








.method public static final synthetic access$toast(Lcom/shilapi/xcertplay/DiPlayActivity;Ljava/lang/String;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->toast(Ljava/lang/String;)V

    return-void
.end method









.method private final appleDeviceOnUsb()Ljava/lang/Boolean;
    .locals 1

    invoke-static {p0}, Lcom/shilapi/xcertplay/E01WiredUi;->iphone(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method


.method private final applyAppearance()V
    .locals 5

    .line 800
    sget-object v0, Lcom/shilapi/xcertplay/Appearance;->INSTANCE:Lcom/shilapi/xcertplay/Appearance;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcom/shilapi/xcertplay/Appearance;->isDark$default(Lcom/shilapi/xcertplay/Appearance;Landroid/content/Context;Ljava/util/Calendar;ILjava/lang/Object;)Z

    move-result v0

    .line 801
    iget-object v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->renderedDark:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/shilapi/xcertplay/Appearance;->INSTANCE:Lcom/shilapi/xcertplay/Appearance;

    invoke-virtual {v1, v0}, Lcom/shilapi/xcertplay/Appearance;->activityTheme(Z)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/shilapi/xcertplay/DiPlayActivity;->setTheme(I)V

    .line 802
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->renderedDark:Ljava/lang/Boolean;

    .line 803
    sget-object v1, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v1, v0}, Lcom/shilapi/xcertplay/Glass;->use(Z)Lcom/shilapi/xcertplay/Glass$Palette;

    move-result-object v1

    .line 804
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/Glass$Palette;->getBase()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 805
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const-string v3, "getWindow(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/Glass$Palette;->getBase()I

    move-result v4

    invoke-static {v2, v4}, Lcom/shilapi/xcertplay/LegacyViewsKt;->setStatusBarColorCompat(Landroid/view/Window;I)V

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/Glass$Palette;->getBase()I

    move-result v1

    invoke-static {v2, v1}, Lcom/shilapi/xcertplay/LegacyViewsKt;->setNavigationBarColorCompat(Landroid/view/Window;I)V

    .line 806
    new-instance v1, Landroidx/core/view/WindowInsetsControllerCompat;

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroidx/core/view/WindowInsetsControllerCompat;-><init>(Landroid/view/Window;Landroid/view/View;)V

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroidx/core/view/WindowInsetsControllerCompat;->setAppearanceLightStatusBars(Z)V

    return-void
.end method
















.method private static final askForCarPlay$lambda$11(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/16 v2, 0x2e

    .line 187
    invoke-static {p0, v2, v0, v1, v0}, Lkotlin/text/StringsKt;->substringAfterLast$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method












.method private final autoReturnTick()Z
    .locals 11

    .line 843
    sget-object v0, Lcom/shilapi/xcertplay/AutoReturnToCarPlay;->Companion:Lcom/shilapi/xcertplay/AutoReturnToCarPlay$Companion;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/AutoReturnToCarPlay$Companion;->getShared()Lcom/shilapi/xcertplay/AutoReturnToCarPlay;

    move-result-object v0

    .line 845
    sget-boolean v1, Lcom/shilapi/xcertplay/CarPlayAutoJump;->enabled:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 846
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->autoReturnState:Lcom/shilapi/xcertplay/AutoReturnToCarPlay$State;

    sget-object v1, Lcom/shilapi/xcertplay/AutoReturnToCarPlay$State$Off;->INSTANCE:Lcom/shilapi/xcertplay/AutoReturnToCarPlay$State$Off;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/shilapi/xcertplay/AutoReturnToCarPlay$State$Off;->INSTANCE:Lcom/shilapi/xcertplay/AutoReturnToCarPlay$State$Off;

    check-cast v0, Lcom/shilapi/xcertplay/AutoReturnToCarPlay$State;

    iput-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->autoReturnState:Lcom/shilapi/xcertplay/AutoReturnToCarPlay$State;

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/DiPlayActivity;->showAutoReturn(Lcom/shilapi/xcertplay/AutoReturnToCarPlay$State;)V

    :cond_0
    return v2

    .line 849
    :cond_1
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/AutoReturnToCarPlay;->getArmed()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/shilapi/xcertplay/CarPlayBackgroundSession;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayBackgroundSession;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/CarPlayBackgroundSession;->hasSession()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->setupError:Ljava/lang/String;

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/AutoReturnToCarPlay;->disarm()V

    .line 850
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 851
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/EditText;

    .line 853
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->hasWindowFocus()Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_4

    iget-wide v7, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->resumedAt:J

    sub-long v7, v3, v7

    const-wide/16 v9, 0x5dc

    cmp-long v5, v7, v9

    if-lez v5, :cond_4

    const/4 v5, 0x1

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    .line 854
    :goto_0
    sget-object v7, Lcom/shilapi/xcertplay/AutoReturnToCarPlay;->Companion:Lcom/shilapi/xcertplay/AutoReturnToCarPlay$Companion;

    iget-object v8, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->page:Ljava/lang/String;

    invoke-virtual {v7, v8, v1, v5}, Lcom/shilapi/xcertplay/AutoReturnToCarPlay$Companion;->pauseFor(Ljava/lang/String;ZZ)Lcom/shilapi/xcertplay/AutoReturnToCarPlay$Pause;

    move-result-object v1

    invoke-virtual {v0, v3, v4, v1}, Lcom/shilapi/xcertplay/AutoReturnToCarPlay;->tick(JLcom/shilapi/xcertplay/AutoReturnToCarPlay$Pause;)Lcom/shilapi/xcertplay/AutoReturnToCarPlay$State;

    move-result-object v0

    .line 855
    sget-object v1, Lcom/shilapi/xcertplay/AutoReturnToCarPlay$State$ReturnNow;->INSTANCE:Lcom/shilapi/xcertplay/AutoReturnToCarPlay$State$ReturnNow;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 856
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->page:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "auto return: 30 s without a touch on "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; back to CarPlay"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "xcertplay-boot"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    sget-object v0, Lcom/shilapi/xcertplay/AutoReturnToCarPlay$State$Off;->INSTANCE:Lcom/shilapi/xcertplay/AutoReturnToCarPlay$State$Off;

    check-cast v0, Lcom/shilapi/xcertplay/AutoReturnToCarPlay$State;

    iput-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->autoReturnState:Lcom/shilapi/xcertplay/AutoReturnToCarPlay$State;

    const/4 v0, 0x0

    .line 858
    invoke-static {p0, v2, v6, v0}, Lcom/shilapi/xcertplay/DiPlayActivity;->openProjection$default(Lcom/shilapi/xcertplay/DiPlayActivity;ZILjava/lang/Object;)V

    return v6

    .line 861
    :cond_5
    iput-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->autoReturnState:Lcom/shilapi/xcertplay/AutoReturnToCarPlay$State;

    .line 862
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/DiPlayActivity;->showAutoReturn(Lcom/shilapi/xcertplay/AutoReturnToCarPlay$State;)V

    return v2
.end method

.method private final badge(III)Landroid/widget/FrameLayout;
    .locals 9

    .line 4880
    new-instance v0, Landroid/widget/FrameLayout;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 4881
    move-object v8, v0

    check-cast v8, Landroid/view/View;

    sget-object v1, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    sget-object v3, Lcom/shilapi/xcertplay/Glass$Kind;->BADGE:Lcom/shilapi/xcertplay/Glass$Kind;

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lcom/shilapi/xcertplay/Glass;->panel$default(Lcom/shilapi/xcertplay/Glass;Landroid/content/Context;Lcom/shilapi/xcertplay/Glass$Kind;FLcom/shilapi/xcertplay/Glass$Palette;ILjava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/shilapi/xcertplay/LegacyViewsKt;->setBackgroundCompat(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x2

    .line 4882
    invoke-static {v8, v1}, Lcom/shilapi/xcertplay/LegacyViewsKt;->setImportantForAccessibilityCompat(Landroid/view/View;I)V

    .line 4883
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 4884
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object p1, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/Glass;->getBADGE_ICON()I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/shilapi/xcertplay/LegacyViewsKt;->setImageTintCompat(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    .line 4883
    check-cast v1, Landroid/view/View;

    .line 4885
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0, p3}, Lcom/shilapi/xcertplay/DiPlayActivity;->dp(I)I

    move-result v2

    invoke-direct {p0, p3}, Lcom/shilapi/xcertplay/DiPlayActivity;->dp(I)I

    move-result p3

    const/16 v3, 0x11

    invoke-direct {p1, v2, p3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    check-cast p1, Landroid/view/ViewGroup$LayoutParams;

    .line 4883
    invoke-virtual {v0, v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4886
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, p2}, Lcom/shilapi/xcertplay/DiPlayActivity;->dp(I)I

    move-result p3

    invoke-direct {p0, p2}, Lcom/shilapi/xcertplay/DiPlayActivity;->dp(I)I

    move-result p2

    invoke-direct {p1, p3, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method



.method private static final bluetoothPermission$lambda$1(Lcom/shilapi/xcertplay/DiPlayActivity;Ljava/lang/Boolean;)V
    .locals 2

    .line 105
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->choosePhone()V

    return-void

    :cond_0
    sget p1, Lcom/shilapi/xcertplay/host/R$string;->nearby_devices:I

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    sget v1, Lcom/shilapi/xcertplay/host/R$string;->allow_nearby_devices_so_diplay_can_connect_to_your_paired:I

    invoke-virtual {p0, v1}, Lcom/shilapi/xcertplay/DiPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;->BLUETOOTH_PERMISSION:Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;

    .line 105
    invoke-direct {p0, p1, v1, v0}, Lcom/shilapi/xcertplay/DiPlayActivity;->permissionHelp(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;)V

    return-void
.end method



























.method private static final brandLogoPicker$lambda$19(Lcom/shilapi/xcertplay/DiPlayActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    .line 240
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->render()V

    return-void
.end method









.method private final carHotspotOff()Z
    .locals 4

    .line 3013
    sget-object v0, Lcom/shilapi/xcertplay/AirPlayPersistence;->INSTANCE:Lcom/shilapi/xcertplay/AirPlayPersistence;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/AirPlayPersistence;->loadWirelessHotspotAutoSelect(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 3014
    sget-object v0, Lcom/shilapi/xcertplay/AirPlayPersistence;->INSTANCE:Lcom/shilapi/xcertplay/AirPlayPersistence;

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/AirPlayPersistence;->loadWirelessHotspotMode(Landroid/content/Context;)Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    move-result-object v0

    sget-object v3, Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;->MANUAL:Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    if-ne v0, v3, :cond_0

    .line 3015
    sget-object v0, Lcom/shilapi/xcertplay/network/CarHotspotStatus;->INSTANCE:Lcom/shilapi/xcertplay/network/CarHotspotStatus;

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/network/CarHotspotStatus;->isEnabled(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method

.method private final carHotspotOffDialog()V
    .locals 6

    .line 3018
    sget-object v0, Lcom/shilapi/xcertplay/Appearance;->INSTANCE:Lcom/shilapi/xcertplay/Appearance;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/shilapi/xcertplay/Appearance;->dialog$default(Lcom/shilapi/xcertplay/Appearance;Landroid/content/Context;ZILjava/lang/Object;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v3, Lcom/shilapi/xcertplay/host/R$string;->car_hotspot_is_off:I

    invoke-virtual {p0, v3}, Lcom/shilapi/xcertplay/DiPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3019
    sget v3, Lcom/shilapi/xcertplay/host/R$string;->msg_car_hotspot_connect:I

    sget-object v5, Lcom/shilapi/xcertplay/AirPlayPersistence;->INSTANCE:Lcom/shilapi/xcertplay/AirPlayPersistence;

    invoke-virtual {v5, v1}, Lcom/shilapi/xcertplay/AirPlayPersistence;->loadManualHotspotSsid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v2

    invoke-virtual {p0, v3, v5}, Lcom/shilapi/xcertplay/DiPlayActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3020
    sget v1, Lcom/shilapi/xcertplay/host/R$string;->open_car_settings:I

    invoke-virtual {p0, v1}, Lcom/shilapi/xcertplay/DiPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    new-instance v2, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda128;

    invoke-direct {v2, p0}, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda128;-><init>(Lcom/shilapi/xcertplay/DiPlayActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3024
    sget v1, Lcom/shilapi/xcertplay/host/R$string;->connect:I

    invoke-virtual {p0, v1}, Lcom/shilapi/xcertplay/DiPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    new-instance v2, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda129;

    invoke-direct {v2, p0}, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda129;-><init>(Lcom/shilapi/xcertplay/DiPlayActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3025
    sget v1, Lcom/shilapi/xcertplay/host/R$string;->cancel:I

    invoke-virtual {p0, v1}, Lcom/shilapi/xcertplay/DiPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-static {v0}, Lcom/shilapi/xcertplay/E01Dialogs;->show(Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog;

    return-void
.end method

.method private static final carHotspotOffDialog$lambda$454(Lcom/shilapi/xcertplay/DiPlayActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 3021
    iget-object p1, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->returnResume:Lcom/shilapi/xcertplay/orchestration/ReturnResume;

    sget-object p2, Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;->HOTSPOT:Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;

    invoke-virtual {p1, p2}, Lcom/shilapi/xcertplay/orchestration/ReturnResume;->arm(Ljava/lang/Object;)V

    .line 3022
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->openCarWifiSettings()V

    return-void
.end method

.method private static final carHotspotOffDialog$lambda$455(Lcom/shilapi/xcertplay/DiPlayActivity;Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, 0x2

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3024
    invoke-static {p0, v0, v1, p1, p2}, Lcom/shilapi/xcertplay/DiPlayActivity;->connect$default(Lcom/shilapi/xcertplay/DiPlayActivity;ZZILjava/lang/Object;)V

    return-void
.end method


.method private static final carPlayAttention$lambda$80(Lcom/shilapi/xcertplay/DiPlayActivity;Lcom/shilapi/xcertplay/airplay/CarPlayAttention$Reason;)Lkotlin/Unit;
    .locals 2

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 896
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda149;

    invoke-direct {v1, p0, p1}, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda149;-><init>(Lcom/shilapi/xcertplay/DiPlayActivity;Lcom/shilapi/xcertplay/airplay/CarPlayAttention$Reason;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 907
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final carPlayAttention$lambda$80$lambda$79(Lcom/shilapi/xcertplay/DiPlayActivity;Lcom/shilapi/xcertplay/airplay/CarPlayAttention$Reason;)V
    .locals 4

    .line 897
    sget-object v0, Lcom/shilapi/xcertplay/DiPlayActivity;->resumedScreen:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shilapi/xcertplay/DiPlayActivity;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eq v0, p0, :cond_1

    goto :goto_1

    .line 898
    :cond_1
    sget-boolean v0, Lcom/shilapi/xcertplay/CarPlayAutoJump;->enabled:Z

    const-string/jumbo v2, "xcertplay-boot"

    if-nez v0, :cond_2

    .line 899
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "CarPlay asked for the screen ("

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "); staying in 06Link (automatic return off)"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 902
    :cond_2
    sget-object v0, Lcom/shilapi/xcertplay/AutoReturnToCarPlay;->Companion:Lcom/shilapi/xcertplay/AutoReturnToCarPlay$Companion;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/AutoReturnToCarPlay$Companion;->getShared()Lcom/shilapi/xcertplay/AutoReturnToCarPlay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/AutoReturnToCarPlay;->attention()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/shilapi/xcertplay/CarPlayBackgroundSession;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayBackgroundSession;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/CarPlayBackgroundSession;->hasSession()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 903
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "auto return: CarPlay needs the screen ("

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "); back to CarPlay"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 904
    invoke-static {p0, p1, v0, v1}, Lcom/shilapi/xcertplay/DiPlayActivity;->openProjection$default(Lcom/shilapi/xcertplay/DiPlayActivity;ZILjava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method










.method private final card()Landroid/widget/LinearLayout;
    .locals 9

    .line 5100
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->column()Landroid/widget/LinearLayout;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    sget-object v2, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    sget-object v4, Lcom/shilapi/xcertplay/Glass$Kind;->CARD:Lcom/shilapi/xcertplay/Glass$Kind;

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/high16 v5, 0x41d00000    # 26.0f

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lcom/shilapi/xcertplay/Glass;->panel$default(Lcom/shilapi/xcertplay/Glass;Landroid/content/Context;Lcom/shilapi/xcertplay/Glass$Kind;FLcom/shilapi/xcertplay/Glass$Palette;ILjava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/shilapi/xcertplay/LegacyViewsKt;->setBackgroundCompat(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    const/16 v1, 0x14

    invoke-direct {p0, v1}, Lcom/shilapi/xcertplay/DiPlayActivity;->dp(I)I

    move-result v2

    const/16 v3, 0x12

    invoke-direct {p0, v3}, Lcom/shilapi/xcertplay/DiPlayActivity;->dp(I)I

    move-result v4

    invoke-direct {p0, v1}, Lcom/shilapi/xcertplay/DiPlayActivity;->dp(I)I

    move-result v1

    invoke-direct {p0, v3}, Lcom/shilapi/xcertplay/DiPlayActivity;->dp(I)I

    move-result v3

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-object v0
.end method






















.method private final choosePhone()V
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/E01OemBluetooth;->choosePhone(Landroid/app/Activity;)V

    return-void
.end method
















.method private final column()Landroid/widget/LinearLayout;
    .locals 4

    .line 5101
    new-instance v0, Landroid/widget/LinearLayout;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method









.method private final confirmWirelessReset()V
    .locals 5

    .line 4405
    sget-object v0, Lcom/shilapi/xcertplay/Appearance;->INSTANCE:Lcom/shilapi/xcertplay/Appearance;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/shilapi/xcertplay/Appearance;->dialog$default(Lcom/shilapi/xcertplay/Appearance;Landroid/content/Context;ZILjava/lang/Object;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/shilapi/xcertplay/host/R$string;->reset_carplay_wi_fi_2:I

    invoke-virtual {p0, v1}, Lcom/shilapi/xcertplay/DiPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 4406
    sget v1, Lcom/shilapi/xcertplay/host/R$string;->this_ends_the_existing_wi_fi_direct_connection_including_o:I

    invoke-virtual {p0, v1}, Lcom/shilapi/xcertplay/DiPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 4407
    sget v1, Lcom/shilapi/xcertplay/host/R$string;->reset_and_connect:I

    invoke-virtual {p0, v1}, Lcom/shilapi/xcertplay/DiPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    new-instance v2, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda266;

    invoke-direct {v2, p0}, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda266;-><init>(Lcom/shilapi/xcertplay/DiPlayActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 4409
    sget v1, Lcom/shilapi/xcertplay/host/R$string;->cancel:I

    invoke-virtual {p0, v1}, Lcom/shilapi/xcertplay/DiPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-static {v0}, Lcom/shilapi/xcertplay/E01Dialogs;->show(Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog;

    return-void
.end method

.method private static final confirmWirelessReset$lambda$660(Lcom/shilapi/xcertplay/DiPlayActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 4408
    new-instance p1, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda137;

    invoke-direct {p1, p0}, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda137;-><init>(Lcom/shilapi/xcertplay/DiPlayActivity;)V

    const-string/jumbo p2, "the person confirmed resetting CarPlay Wi-Fi"

    invoke-direct {p0, p2, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->stopCarPlaySession(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final confirmWirelessReset$lambda$660$lambda$659(Lcom/shilapi/xcertplay/DiPlayActivity;)Lkotlin/Unit;
    .locals 0

    .line 4408
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->resetWirelessGroup()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final connect(ZZ)V
    .locals 16

    move-object/from16 v1, p0

    invoke-static {v1}, Lcom/shilapi/xcertplay/E01BuildVariant;->blockConnection(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0

    move/from16 v2, p1

    move/from16 v3, p2

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-boolean v4, v1, Lcom/shilapi/xcertplay/DiPlayActivity;->autoStartWaiting:Z

    iget-boolean v0, v1, Lcom/shilapi/xcertplay/DiPlayActivity;->quickSwitchConnect:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory;->clearOverride()V

    :cond_1
    iput-boolean v4, v1, Lcom/shilapi/xcertplay/DiPlayActivity;->quickSwitchConnect:Z

    sget-object v0, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory;->getOverrideForThisConnection()Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    move-result-object v0

    iget-object v6, v1, Lcom/shilapi/xcertplay/DiPlayActivity;->pendingReconnectReason:Ljava/lang/String;

    const/4 v7, 0x0

    iput-object v7, v1, Lcom/shilapi/xcertplay/DiPlayActivity;->pendingReconnectReason:Ljava/lang/String;

    const-string v8, "automatic connect(wireless="

    const-string/jumbo v9, "xcertplay-boot"

    if-eqz v3, :cond_2

    sget-object v10, Lcom/shilapi/xcertplay/CarPlayBackgroundSession;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayBackgroundSession;

    invoke-virtual {v10}, Lcom/shilapi/xcertplay/CarPlayBackgroundSession;->hasSession()Z

    move-result v10

    if-eqz v10, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ") skipped: a CarPlay session is running"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    if-eqz v3, :cond_3

    sget-object v10, Lcom/shilapi/xcertplay/HostLaunch;->INSTANCE:Lcom/shilapi/xcertplay/HostLaunch;

    invoke-virtual {v10}, Lcom/shilapi/xcertplay/HostLaunch;->getUserStopped()Z

    move-result v10

    if-eqz v10, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ") skipped: the person tapped disconnect"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    if-nez v3, :cond_4

    sget-object v8, Lcom/shilapi/xcertplay/HostLaunch;->INSTANCE:Lcom/shilapi/xcertplay/HostLaunch;

    invoke-static {v1, v2}, Lcom/shilapi/xcertplay/E01WiredUi;->beforeConnect(Landroid/content/Context;Z)V

    invoke-virtual {v8, v4}, Lcom/shilapi/xcertplay/HostLaunch;->setUserStopped(Z)V

    :cond_4
    if-eqz v3, :cond_5

    invoke-static {v1, v2}, Lcom/shilapi/xcertplay/E01NativeSettings;->beforeAutomaticConnect(Landroid/app/Activity;Z)Z

    move-result v8

    if-nez v8, :cond_5

    return-void

    :cond_5
    sget-object v8, Lcom/shilapi/xcertplay/HostLaunch;->INSTANCE:Lcom/shilapi/xcertplay/HostLaunch;

    sget-object v10, Lcom/shilapi/xcertplay/AutoReturnToCarPlay;->Companion:Lcom/shilapi/xcertplay/AutoReturnToCarPlay$Companion;

    invoke-virtual {v10}, Lcom/shilapi/xcertplay/AutoReturnToCarPlay$Companion;->getShared()Lcom/shilapi/xcertplay/AutoReturnToCarPlay;

    move-result-object v10

    invoke-virtual {v10}, Lcom/shilapi/xcertplay/AutoReturnToCarPlay;->getArmed()Z

    move-result v10

    invoke-virtual {v8, v3, v6, v10}, Lcom/shilapi/xcertplay/HostLaunch;->armOpenWhenPictureReady(ZLjava/lang/String;Z)V

    invoke-direct {v1}, Lcom/shilapi/xcertplay/DiPlayActivity;->firstRunNoticePending()Z

    move-result v8

    const-string v10, "connect(wireless="

    if-eqz v8, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", automatic="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ") held: first-run notice not acknowledged"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    const/4 v12, 0x1

    move v8, v2

    if-eqz v8, :cond_8

    invoke-static {v1}, Lcom/shilapi/xcertplay/E01OemBluetooth;->canConnect(Landroid/app/Activity;)Z

    move-result v13

    if-nez v13, :cond_8

    invoke-static {v1}, Lcom/shilapi/xcertplay/E01OemBluetooth;->hasPendingConnect(Landroid/app/Activity;)Z

    move-result v13

    if-nez v13, :cond_7

    invoke-direct {v1, v3}, Lcom/shilapi/xcertplay/DiPlayActivity;->offerVendorGuidance(Z)V

    :cond_7
    return-void

    :cond_8
    const-string v13, "getString(...)"

    sget-object v9, Lcom/shilapi/xcertplay/AirPlayPersistence;->INSTANCE:Lcom/shilapi/xcertplay/AirPlayPersistence;

    move-object v11, v1

    check-cast v11, Landroid/content/Context;

    invoke-virtual {v9, v11}, Lcom/shilapi/xcertplay/AirPlayPersistence;->loadWirelessHotspotAutoSelect(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_9

    if-nez v0, :cond_9

    const/4 v9, 0x1

    goto :goto_0

    :cond_9
    const/4 v9, 0x0

    :goto_0
    if-eqz v2, :cond_a

    if-eqz v9, :cond_a

    iput-boolean v4, v1, Lcom/shilapi/xcertplay/DiPlayActivity;->pendingCarHotspotSetup:Z

    sget-object v14, Lcom/shilapi/xcertplay/AirPlayPersistence;->INSTANCE:Lcom/shilapi/xcertplay/AirPlayPersistence;

    invoke-virtual {v14, v11}, Lcom/shilapi/xcertplay/AirPlayPersistence;->syncManualHotspotFromSystem(Landroid/content/Context;)Z

    :cond_a
    const-string v14, "connection"

    if-eqz v2, :cond_b

    iget-boolean v15, v1, Lcom/shilapi/xcertplay/DiPlayActivity;->pendingCarHotspotSetup:Z

    if-eqz v15, :cond_b

    sget v0, Lcom/shilapi/xcertplay/host/R$string;->save_your_hotspot_details_in_connection_setup_first:I

    invoke-virtual {v1, v0}, Lcom/shilapi/xcertplay/DiPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lcom/shilapi/xcertplay/DiPlayActivity;->toast(Ljava/lang/String;)V

    invoke-direct {v1, v14}, Lcom/shilapi/xcertplay/DiPlayActivity;->go(Ljava/lang/String;)V

    return-void

    :cond_b
    if-eqz v2, :cond_c

    iget-object v15, v1, Lcom/shilapi/xcertplay/DiPlayActivity;->setupError:Ljava/lang/String;

    if-eqz v15, :cond_c

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, v15}, Lcom/shilapi/xcertplay/DiPlayActivity;->toast(Ljava/lang/String;)V

    return-void

    :cond_c
    if-nez v0, :cond_d

    sget-object v15, Lcom/shilapi/xcertplay/AirPlayPersistence;->INSTANCE:Lcom/shilapi/xcertplay/AirPlayPersistence;

    invoke-virtual {v15, v11}, Lcom/shilapi/xcertplay/AirPlayPersistence;->loadWirelessHotspotMode(Landroid/content/Context;)Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    move-result-object v15

    goto :goto_1

    :cond_d
    move-object v15, v0

    :goto_1
    if-eqz v2, :cond_e

    sget-object v7, Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;->MANUAL:Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    if-ne v15, v7, :cond_e

    sget-object v7, Lcom/shilapi/xcertplay/AirPlayPersistence;->INSTANCE:Lcom/shilapi/xcertplay/AirPlayPersistence;

    invoke-virtual {v7, v11}, Lcom/shilapi/xcertplay/AirPlayPersistence;->syncManualHotspotFromSystem(Landroid/content/Context;)Z

    :cond_e
    if-eqz v2, :cond_f

    if-nez v9, :cond_f

    sget-object v7, Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;->MANUAL:Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    if-ne v15, v7, :cond_f

    invoke-direct {v1}, Lcom/shilapi/xcertplay/DiPlayActivity;->storedSsid()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1}, Lcom/shilapi/xcertplay/DiPlayActivity;->storedPassword()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v7, v4}, Lcom/shilapi/xcertplay/DiPlayActivity;->hotspotError(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_f

    iput-boolean v12, v1, Lcom/shilapi/xcertplay/DiPlayActivity;->pendingCarHotspotSetup:Z

    invoke-direct {v1, v14}, Lcom/shilapi/xcertplay/DiPlayActivity;->go(Ljava/lang/String;)V

    sget v0, Lcom/shilapi/xcertplay/host/R$string;->save_the_name_and_password_from_the_car_s_hotspot_settings:I

    invoke-virtual {v1, v0}, Lcom/shilapi/xcertplay/DiPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lcom/shilapi/xcertplay/DiPlayActivity;->toast(Ljava/lang/String;)V

    return-void

    :cond_f
    const/16 v4, 0x1a

    if-eqz v2, :cond_13

    if-nez v0, :cond_13

    invoke-direct {v1}, Lcom/shilapi/xcertplay/DiPlayActivity;->carHotspotOff()Z

    move-result v0

    if-eqz v0, :cond_13

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_10

    invoke-direct {v1}, Lcom/shilapi/xcertplay/DiPlayActivity;->carHotspotOffDialog()V

    return-void

    :cond_10
    iget-boolean v0, v1, Lcom/shilapi/xcertplay/DiPlayActivity;->switchingHotspotOn:Z

    if-eqz v0, :cond_11

    goto/16 :goto_2

    :cond_11
    invoke-direct {v1, v3, v12}, Lcom/shilapi/xcertplay/DiPlayActivity;->requestWriteSettingsIfNeeded(ZZ)Z

    move-result v0

    if-eqz v0, :cond_12

    goto/16 :goto_2

    :cond_12
    sget v0, Lcom/shilapi/xcertplay/host/R$string;->turning_on_hotspot:I

    invoke-virtual {v1, v0}, Lcom/shilapi/xcertplay/DiPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lcom/shilapi/xcertplay/DiPlayActivity;->toast(Ljava/lang/String;)V

    iput-boolean v12, v1, Lcom/shilapi/xcertplay/DiPlayActivity;->switchingHotspotOn:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda314;

    invoke-direct {v2, v1}, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda314;-><init>(Lcom/shilapi/xcertplay/DiPlayActivity;)V

    const-string v3, "car-hotspot-on"

    invoke-direct {v0, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_13
    if-eqz v2, :cond_14

    if-nez v9, :cond_14

    sget-object v0, Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;->LOCAL_ONLY_HOTSPOT:Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    if-ne v15, v0, :cond_14

    invoke-direct {v1, v3, v12}, Lcom/shilapi/xcertplay/DiPlayActivity;->requestWriteSettingsIfNeeded(ZZ)Z

    move-result v0

    if-eqz v0, :cond_14

    goto/16 :goto_2

    :cond_14
    if-eqz v2, :cond_15

    if-eqz v9, :cond_15

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-gt v7, v0, :cond_15

    if-ge v0, v4, :cond_15

    sget-object v0, Lcom/shilapi/xcertplay/network/CarHotspotStatus;->INSTANCE:Lcom/shilapi/xcertplay/network/CarHotspotStatus;

    invoke-virtual {v0, v11}, Lcom/shilapi/xcertplay/network/CarHotspotStatus;->isOnOrStarting(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-direct {v1, v3, v12}, Lcom/shilapi/xcertplay/DiPlayActivity;->requestWriteSettingsIfNeeded(ZZ)Z

    move-result v0

    if-eqz v0, :cond_15

    goto/16 :goto_2

    :cond_15
    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/shilapi/xcertplay/DiPlayActivity;->writeSettingsHint:Z

    move v4, v2

    const/4 v5, 0x0

    const-string v0, "diplay"

    invoke-virtual {v1, v0, v5}, Lcom/shilapi/xcertplay/DiPlayActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x21

    if-lt v2, v7, :cond_16

    const-string v2, "android.permission.POST_NOTIFICATIONS"

    invoke-static {v1, v2}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Lcom/shilapi/xcertplay/DiPlayActivity;Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_16

    const-string v7, "notification_asked"

    invoke-interface {v0, v7, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_16

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v7, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-boolean v4, v1, Lcom/shilapi/xcertplay/DiPlayActivity;->notificationTransport:Z

    iget-object v0, v1, Lcom/shilapi/xcertplay/DiPlayActivity;->notificationPermission:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v0, v2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void

    :cond_16
    new-instance v0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda318;

    invoke-direct {v0, v4, v1, v3}, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda318;-><init>(ZLcom/shilapi/xcertplay/DiPlayActivity;Z)V

    sget-object v2, Lcom/shilapi/xcertplay/CarPlayBackgroundSession;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayBackgroundSession;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/CarPlayBackgroundSession;->hasSession()Z

    move-result v2

    if-eqz v2, :cond_18

    if-nez v6, :cond_17

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ") tapped: start it again over this link"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_17
    new-instance v2, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda319;

    invoke-direct {v2, v0}, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda319;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-direct {v1, v6, v2}, Lcom/shilapi/xcertplay/DiPlayActivity;->stopCarPlaySession(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    :cond_18
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_2
    return-void
.end method

.method static synthetic connect$default(Lcom/shilapi/xcertplay/DiPlayActivity;ZZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 3810
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/DiPlayActivity;->connect(ZZ)V

    return-void
.end method

.method private static final connect$lambda$586(Lcom/shilapi/xcertplay/DiPlayActivity;)V
    .locals 7

    .line 3892
    sget-object v0, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->Companion:Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getApplicationContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-wide/16 v2, 0x4e20

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;->switchOnSystemHotspot$default(Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;Landroid/content/Context;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$SwitchOn;

    move-result-object v0

    .line 3893
    new-instance v1, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda31;

    invoke-direct {v1, p0, v0}, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda31;-><init>(Lcom/shilapi/xcertplay/DiPlayActivity;Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$SwitchOn;)V

    invoke-virtual {p0, v1}, Lcom/shilapi/xcertplay/DiPlayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final connect$lambda$586$lambda$585(Lcom/shilapi/xcertplay/DiPlayActivity;Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$SwitchOn;)V
    .locals 3

    const/4 v0, 0x0

    .line 3894
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->switchingHotspotOn:Z

    invoke-static {}, Lcom/shilapi/xcertplay/E01HotspotControl;->allowed()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3895
    :cond_0
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_4

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/shilapi/xcertplay/compat/Api19Kt;->isDestroyedCompat(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 3896
    :cond_1
    sget-object v1, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$SwitchOn;->SWITCHED_ON:Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$SwitchOn;

    if-eq p1, v1, :cond_3

    .line 3897
    sget-object v1, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$SwitchOn;->ALREADY_ON:Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion$SwitchOn;

    if-ne p1, v1, :cond_2

    goto :goto_0

    .line 3898
    :cond_2
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->carHotspotOffDialog()V

    return-void

    :cond_3
    :goto_0
    const/4 p1, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3897
    invoke-static {p0, v2, v0, p1, v1}, Lcom/shilapi/xcertplay/DiPlayActivity;->connect$default(Lcom/shilapi/xcertplay/DiPlayActivity;ZZILjava/lang/Object;)V

    :cond_4
    :goto_1
    return-void
.end method




.method private static final connect$lambda$598(ZLcom/shilapi/xcertplay/DiPlayActivity;Z)Lkotlin/Unit;
    .locals 3

    .line 3984
    sget-object v0, Lcom/shilapi/xcertplay/HostLaunch;->INSTANCE:Lcom/shilapi/xcertplay/HostLaunch;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "connect(wireless="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "): a new start replaces the waiting CarPlay screen"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda23;

    invoke-direct {v2, p1, p0, p2}, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda23;-><init>(Lcom/shilapi/xcertplay/DiPlayActivity;ZZ)V

    invoke-virtual {v0, v1, v2}, Lcom/shilapi/xcertplay/HostLaunch;->closeLive(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 3992
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final connect$lambda$598$lambda$597(Lcom/shilapi/xcertplay/DiPlayActivity;ZZ)Lkotlin/Unit;
    .locals 2

    .line 3985
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/shilapi/xcertplay/compat/Api19Kt;->isDestroyedCompat(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3986
    :cond_0
    sget-object v0, Lcom/shilapi/xcertplay/AirPlayPersistence;->INSTANCE:Lcom/shilapi/xcertplay/AirPlayPersistence;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/shilapi/xcertplay/AirPlayPersistence;->saveWirelessEnabled(Landroid/content/Context;Z)V

    .line 3987
    sget-object v0, Lcom/shilapi/xcertplay/ConnectionProgress;->INSTANCE:Lcom/shilapi/xcertplay/ConnectionProgress;

    invoke-virtual {v0, p1, p2}, Lcom/shilapi/xcertplay/ConnectionProgress;->begin(ZZ)V

    const/4 p1, 0x1

    .line 3991
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->openProjection(Z)V

    .line 3992
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 3985
    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final connect$lambda$599(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    .line 3994
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final connectWhenRadiosReady(ZJ)V
    .locals 8

    invoke-static {p0}, Lcom/shilapi/xcertplay/E01NativeSettings;->continueStartup(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3773
    :cond_0
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->firstRunNoticePending()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 3774
    iput-boolean v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->autoStartWaiting:Z

    .line 3775
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->pendingAutoConnect:Ljava/lang/Boolean;

    iput-boolean v2, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->pendingAutoConnectAtBoot:Z

    iput-boolean v2, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->startupHeldByNotice:Z

    return-void

    .line 3778
    :cond_1
    iput-boolean v2, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->autoStartWaiting:Z

    .line 3780
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, p2

    const-wide/16 v5, 0x1f4

    cmp-long v0, v3, v5

    if-gez v0, :cond_2

    sget-object v0, Lcom/shilapi/xcertplay/BluetoothPairingRestoreApply;->INSTANCE:Lcom/shilapi/xcertplay/BluetoothPairingRestoreApply;

    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/shilapi/xcertplay/BluetoothPairingRestoreApply;->run(Landroid/content/Context;)V

    :cond_2
    if-eqz p1, :cond_3

    .line 3785
    sget-object v0, Lcom/shilapi/xcertplay/DiPlayBluetooth;->INSTANCE:Lcom/shilapi/xcertplay/DiPlayBluetooth;

    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    invoke-static {v3}, Lcom/shilapi/xcertplay/compat/Api19Kt;->bluetoothAdapterCompat(Landroid/content/Context;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/shilapi/xcertplay/DiPlayBluetooth;->route(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;)Lcom/shilapi/xcertplay/BluetoothRoute;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 3786
    :goto_0
    sget-object v3, Lcom/shilapi/xcertplay/BluetoothRoute;->GUIDE_TO_USB:Lcom/shilapi/xcertplay/BluetoothRoute;

    if-ne v0, v3, :cond_4

    invoke-direct {p0, v2, v2}, Lcom/shilapi/xcertplay/DiPlayActivity;->connect(ZZ)V

    return-void

    :cond_4
    if-eqz v0, :cond_5

    .line 3787
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/BluetoothRoute;->getNothingToWaitFor()Z

    move-result v0

    goto :goto_1

    :cond_5
    const/4 v0, 0x1

    :goto_1
    if-eqz p1, :cond_6

    .line 3788
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->carHotspotOff()Z

    move-result v3

    if-nez v3, :cond_7

    :cond_6
    const/4 v1, 0x1

    .line 3789
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, p2

    if-eqz v0, :cond_8

    goto :goto_2

    :cond_8
    const-wide/16 v5, 0x7530

    cmp-long v7, v3, v5

    if-ltz v7, :cond_9

    .line 3792
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "auto-start connect wireless="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, " waitedMs="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " bluetooth="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, " hotspot="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3791
    const-string/jumbo p3, "xcertplay-boot"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3793
    invoke-direct {p0, p1, v2}, Lcom/shilapi/xcertplay/DiPlayActivity;->connect(ZZ)V

    return-void

    .line 3796
    :cond_9
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda295;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda295;-><init>(Lcom/shilapi/xcertplay/DiPlayActivity;ZJ)V

    const-wide/16 p1, 0x3e8

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic connectWhenRadiosReady$default(Lcom/shilapi/xcertplay/DiPlayActivity;ZJILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 3770
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p2

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/DiPlayActivity;->connectWhenRadiosReady(ZJ)V

    return-void
.end method

.method private static final connectWhenRadiosReady$lambda$583(Lcom/shilapi/xcertplay/DiPlayActivity;ZJ)V
    .locals 1

    .line 3797
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->autoStartWaiting:Z

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/shilapi/xcertplay/compat/Api19Kt;->isDestroyedCompat(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/shilapi/xcertplay/CarPlayBackgroundSession;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayBackgroundSession;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/CarPlayBackgroundSession;->hasSession()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3798
    invoke-direct {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/DiPlayActivity;->connectWhenRadiosReady(ZJ)V

    :cond_0
    return-void
.end method

.method private final connectionInput()Lcom/shilapi/xcertplay/ConnectionUi$Input;
    .locals 34

    move-object/from16 v0, p0

    .line 1381
    sget-object v1, Lcom/shilapi/xcertplay/CarPlayBackgroundSession;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayBackgroundSession;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/CarPlayBackgroundSession;->hasSession()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    sget-object v1, Lcom/shilapi/xcertplay/HostLaunch;->INSTANCE:Lcom/shilapi/xcertplay/HostLaunch;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/HostLaunch;->connecting()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v6, 0x1

    .line 1383
    :goto_1
    sget-object v1, Lcom/shilapi/xcertplay/ConnectionProgress;->INSTANCE:Lcom/shilapi/xcertplay/ConnectionProgress;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/ConnectionProgress;->getState()Lcom/shilapi/xcertplay/ConnectionProgress$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getIphoneAfterCancel()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {v0}, Lcom/shilapi/xcertplay/DiPlayActivity;->appleDeviceOnUsb()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/shilapi/xcertplay/ConnectionProgress;->INSTANCE:Lcom/shilapi/xcertplay/ConnectionProgress;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/ConnectionProgress;->clearIphoneAfterCancel()V

    .line 1384
    :cond_2
    sget-object v1, Lcom/shilapi/xcertplay/ConnectionProgress;->INSTANCE:Lcom/shilapi/xcertplay/ConnectionProgress;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/ConnectionProgress;->getState()Lcom/shilapi/xcertplay/ConnectionProgress$State;

    move-result-object v7

    .line 1387
    sget-object v1, Lcom/shilapi/xcertplay/AirPlayPersistence;->INSTANCE:Lcom/shilapi/xcertplay/AirPlayPersistence;

    move-object v4, v0

    check-cast v4, Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/shilapi/xcertplay/AirPlayPersistence;->loadWirelessEnabled(Landroid/content/Context;)Z

    move-result v9

    if-eqz v6, :cond_3

    .line 1388
    invoke-virtual {v7}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getPhase()Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    move-result-object v1

    sget-object v5, Lcom/shilapi/xcertplay/ConnectionProgress$Phase;->IDLE:Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    if-ne v1, v5, :cond_3

    const v31, 0xffffd

    const/16 v32, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-static/range {v7 .. v32}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->copy$default(Lcom/shilapi/xcertplay/ConnectionProgress$State;Lcom/shilapi/xcertplay/ConnectionProgress$Phase;ZIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZLcom/shilapi/xcertplay/ConnectionProgress$WaitReason;ZZZZLjava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/ConnectionProgress$Picture;ZILjava/lang/Object;)Lcom/shilapi/xcertplay/ConnectionProgress$State;

    move-result-object v7

    goto :goto_2

    :cond_3
    if-eqz v6, :cond_4

    .line 1389
    invoke-virtual {v7}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getWireless()Z

    move-result v1

    if-eq v1, v9, :cond_4

    new-instance v8, Lcom/shilapi/xcertplay/ConnectionProgress$State;

    const v32, 0xffffd

    const/16 v33, 0x0

    move v10, v9

    const/4 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    invoke-direct/range {v8 .. v33}, Lcom/shilapi/xcertplay/ConnectionProgress$State;-><init>(Lcom/shilapi/xcertplay/ConnectionProgress$Phase;ZIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZLcom/shilapi/xcertplay/ConnectionProgress$WaitReason;ZZZZLjava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/ConnectionProgress$Picture;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v5, v8

    goto :goto_3

    :cond_4
    :goto_2
    move-object v5, v7

    :goto_3
    if-eqz v6, :cond_5

    .line 1393
    sget-object v1, Lcom/shilapi/xcertplay/CarPlayBackgroundSession;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayBackgroundSession;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/CarPlayBackgroundSession;->getActive()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v7, 0x1

    goto :goto_4

    :cond_5
    const/4 v7, 0x0

    .line 1394
    :goto_4
    sget-object v1, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor;->getStatus()Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;

    move-result-object v8

    .line 1395
    iget-object v1, v0, Lcom/shilapi/xcertplay/DiPlayActivity;->setupError:Ljava/lang/String;

    if-eqz v1, :cond_6

    sget-object v1, Lcom/shilapi/xcertplay/ConnectionUi$WirelessReady;->OK:Lcom/shilapi/xcertplay/ConnectionUi$WirelessReady;

    goto :goto_5

    :cond_6
    invoke-direct {v0}, Lcom/shilapi/xcertplay/DiPlayActivity;->wirelessReady()Lcom/shilapi/xcertplay/ConnectionUi$WirelessReady;

    move-result-object v1

    :goto_5
    move-object v9, v1

    .line 1396
    invoke-direct {v0}, Lcom/shilapi/xcertplay/DiPlayActivity;->wirelessIdleHint()Ljava/lang/String;

    move-result-object v10

    .line 1397
    invoke-direct {v0}, Lcom/shilapi/xcertplay/DiPlayActivity;->appleDeviceOnUsb()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    .line 1398
    invoke-virtual {v5}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getWireless()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    iget-boolean v1, v0, Lcom/shilapi/xcertplay/DiPlayActivity;->vendorAtRender:Z

    if-nez v1, :cond_7

    sget-object v1, Lcom/shilapi/xcertplay/DiPlayPreferences;->INSTANCE:Lcom/shilapi/xcertplay/DiPlayPreferences;

    invoke-virtual {v1, v4}, Lcom/shilapi/xcertplay/DiPlayPreferences;->phoneName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/shilapi/xcertplay/DiPlayPreferences;->INSTANCE:Lcom/shilapi/xcertplay/DiPlayPreferences;

    invoke-virtual {v3, v4}, Lcom/shilapi/xcertplay/DiPlayPreferences;->phoneAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    move-object v12, v1

    goto :goto_6

    :cond_7
    move-object v12, v2

    .line 1399
    :goto_6
    sget-object v1, Lcom/shilapi/xcertplay/ConnectionProgress;->INSTANCE:Lcom/shilapi/xcertplay/ConnectionProgress;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/ConnectionProgress;->now()J

    move-result-wide v13

    .line 1390
    new-instance v4, Lcom/shilapi/xcertplay/ConnectionUi$Input;

    invoke-direct/range {v4 .. v14}, Lcom/shilapi/xcertplay/ConnectionUi$Input;-><init>(Lcom/shilapi/xcertplay/ConnectionProgress$State;ZZLcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;Lcom/shilapi/xcertplay/ConnectionUi$WirelessReady;Ljava/lang/String;ZLjava/lang/String;J)V

    return-object v4
.end method












.method private final continueAfterReturn(Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;)V
    .locals 3

    .line 133
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "toLowerCase(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "back from the system page with "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " done; carrying on by itself"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "xcertplay-boot"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    sget-object v0, Lcom/shilapi/xcertplay/DiPlayActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 142
    sget-object p1, Lcom/shilapi/xcertplay/AirPlayPersistence;->INSTANCE:Lcom/shilapi/xcertplay/AirPlayPersistence;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p1, v0, v2}, Lcom/shilapi/xcertplay/AirPlayPersistence;->saveLocationReportingEnabled(Landroid/content/Context;Z)V

    .line 143
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->render()V

    .line 144
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->reconnectForLocation()V

    return-void

    .line 134
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 139
    :cond_1
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->choosePhone()V

    return-void

    .line 136
    :cond_2
    sget-object p1, Lcom/shilapi/xcertplay/CarPlayBackgroundSession;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayBackgroundSession;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/CarPlayBackgroundSession;->hasSession()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 137
    const-string p1, "back from the system page: CarPlay is running, left alone"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 138
    invoke-static {p0, v2, p1, v0, v1}, Lcom/shilapi/xcertplay/DiPlayActivity;->connect$default(Lcom/shilapi/xcertplay/DiPlayActivity;ZZILjava/lang/Object;)V

    return-void
.end method





.method private final diagnosticsRows(Landroid/widget/LinearLayout;)V
    .locals 4

    sget v0, Lcom/shilapi/xcertplay/host/R$string;->system_settings_open:I

    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/DiPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    new-instance v2, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda92;

    invoke-direct {v2, p0}, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda92;-><init>(Lcom/shilapi/xcertplay/DiPlayActivity;)V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/shilapi/xcertplay/DiPlayActivity;->valueRow(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroid/widget/TextView;

    return-void
.end method








.method private static final diagnosticsRows$lambda$313(Lcom/shilapi/xcertplay/DiPlayActivity;)Lkotlin/Unit;
    .locals 1

    .line 2139
    sget-object v0, Lcom/shilapi/xcertplay/SystemSettingsShortcuts$Page;->SETTINGS:Lcom/shilapi/xcertplay/SystemSettingsShortcuts$Page;

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/DiPlayActivity;->openSettingsPage(Lcom/shilapi/xcertplay/SystemSettingsShortcuts$Page;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method










.method private final divider(Landroid/widget/LinearLayout;)V
    .locals 4

    .line 4891
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    .line 4892
    :cond_0
    new-instance v0, Landroid/view/View;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/Glass;->getDIVIDER()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method







.method private final dp(I)I
    .locals 1

    int-to-float p1, p1

    .line 5152
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1
.end method




.method private static final enableBluetooth$lambda$16(Lcom/shilapi/xcertplay/DiPlayActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 2

    const/4 p1, 0x0

    .line 218
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/shilapi/xcertplay/compat/Api19Kt;->bluetoothAdapterCompat(Landroid/content/Context;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    move-object p1, v0

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bluetooth on after request: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "xcertplay-boot"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->finishFirstLaunchSetup()V

    return-void
.end method




.method private static final export$lambda$4(Lcom/shilapi/xcertplay/DiPlayActivity;Landroid/net/Uri;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 158
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->exportDiagnostics(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method




.method private final exportDiagnostics(Landroid/net/Uri;)V
    .locals 0

    return-void
.end method













.method private final finishFirstLaunchSetup()V
    .locals 0

    .line 309
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->runPendingAutoConnect()V

    return-void
.end method

.method private final firstLaunchBluetoothStep()V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->finishFirstLaunchSetup()V

    return-void
.end method

.method private final firstRunNoticePending()Z
    .locals 2

    .line 329
    sget-object v0, Lcom/shilapi/xcertplay/FirstRunNotice;->INSTANCE:Lcom/shilapi/xcertplay/FirstRunNotice;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/FirstRunNotice;->pending(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 330
    :cond_0
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->showFirstRunNotice()V

    const/4 v0, 0x1

    return v0
.end method













.method private final go(Ljava/lang/String;)V
    .locals 2

    .line 4093
    const-string v0, "home"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->backStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 4094
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->page:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->backStack:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->here()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->backStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->backStack:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 4095
    :cond_1
    :goto_1
    iput-object p1, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->page:Ljava/lang/String;

    .line 4096
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->render()V

    return-void
.end method

.method private final goBack()V
    .locals 1

    invoke-static {p0}, Lcom/shilapi/xcertplay/E01NativeUi;->goBack(Landroid/app/Activity;)V

    return-void
.end method


.method private final handleBluetoothRecovery()V
    .locals 3

    .line 4374
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->page:Ljava/lang/String;

    const-string v1, "reconnect"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "pair-iphone"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "use-wired"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    return-void

    .line 4375
    :cond_2
    const-string v1, "home"

    invoke-direct {p0, v1}, Lcom/shilapi/xcertplay/DiPlayActivity;->go(Ljava/lang/String;)V

    .line 4376
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CarPlay screen asked for Bluetooth recovery: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda113;

    invoke-direct {v2, p0, v0}, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda113;-><init>(Lcom/shilapi/xcertplay/DiPlayActivity;Ljava/lang/String;)V

    invoke-direct {p0, v1, v2}, Lcom/shilapi/xcertplay/DiPlayActivity;->stopCarPlaySession(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final handleBluetoothRecovery$lambda$658(Lcom/shilapi/xcertplay/DiPlayActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 5

    .line 4378
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_b

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/shilapi/xcertplay/compat/Api19Kt;->isDestroyedCompat(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_7

    .line 4379
    :cond_0
    const-string v0, "reconnect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_a

    const-string/jumbo v1, "use-wired"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_6

    .line 4384
    :cond_1
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->vendorBluetoothOnly()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0, v2}, Lcom/shilapi/xcertplay/DiPlayActivity;->offerVendorGuidance(Z)V

    goto/16 :goto_7

    .line 4385
    :cond_2
    sget-object p1, Lcom/shilapi/xcertplay/DiPlayPreferences;->INSTANCE:Lcom/shilapi/xcertplay/DiPlayPreferences;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/shilapi/xcertplay/DiPlayPreferences;->phoneAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 4387
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/shilapi/xcertplay/compat/Api19Kt;->bluetoothAdapterCompat(Landroid/content/Context;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_5

    check-cast v1, Ljava/lang/Iterable;

    .line 5411
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 4387
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_4
    move-object v2, v3

    .line 5412
    :goto_0
    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    goto :goto_1

    :cond_5
    move-object v2, v3

    .line 4387
    :goto_1
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object p1, v3

    :cond_6
    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    goto :goto_3

    :cond_7
    move-object p1, v3

    :goto_3
    if-eqz p1, :cond_8

    .line 4390
    :try_start_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const-class v1, Landroid/bluetooth/BluetoothDevice;

    const-string v2, "removeBond"

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4391
    :cond_8
    :goto_4
    sget-object v1, Lcom/shilapi/xcertplay/DiPlayPreferences;->INSTANCE:Lcom/shilapi/xcertplay/DiPlayPreferences;

    invoke-virtual {v1, v0}, Lcom/shilapi/xcertplay/DiPlayPreferences;->clearPhone(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 4392
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->pendingWireless:Z

    .line 4393
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda4;-><init>(Lcom/shilapi/xcertplay/DiPlayActivity;)V

    if-eqz p1, :cond_9

    const-wide/16 p0, 0x5dc

    goto :goto_5

    :cond_9
    const-wide/16 p0, 0x0

    :goto_5
    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_7

    .line 4380
    :cond_a
    :goto_6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x2

    invoke-static {p0, p1, v2, v0, v3}, Lcom/shilapi/xcertplay/DiPlayActivity;->connect$default(Lcom/shilapi/xcertplay/DiPlayActivity;ZZILjava/lang/Object;)V

    .line 4395
    :cond_b
    :goto_7
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final handleBluetoothRecovery$lambda$658$lambda$657$lambda$656(Lcom/shilapi/xcertplay/DiPlayActivity;)V
    .locals 1

    .line 4393
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/shilapi/xcertplay/compat/Api19Kt;->isDestroyedCompat(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->choosePhone()V

    :cond_0
    return-void
.end method

.method private final handleWirelessRecovery()V
    .locals 2

    .line 4399
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->page:Ljava/lang/String;

    const-string/jumbo v1, "wireless-recovery"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4400
    :cond_0
    const-string v0, "home"

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/DiPlayActivity;->go(Ljava/lang/String;)V

    .line 4401
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->confirmWirelessReset()V

    return-void
.end method

.method private final hasPreciseLocation()Z
    .locals 2

    .line 3558
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Lcom/shilapi/xcertplay/compat/Api19Kt;->checkSelfPermissionCompat(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


.method private final here()Ljava/lang/String;
    .locals 3

    .line 4089
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->page:Ljava/lang/String;

    const-string/jumbo v1, "settings"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->settingsTab:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "settings#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->page:Ljava/lang/String;

    return-object v0
.end method

















.method private static final hostPermissions$lambda$7(Lcom/shilapi/xcertplay/DiPlayActivity;Ljava/util/Map;)V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->hostConsentDone:Lkotlin/jvm/functions/Function2;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->hostConsentDone:Lkotlin/jvm/functions/Function2;

    if-eqz v0, :cond_4

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 5380
    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5381
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p0, 0x0

    .line 174
    :goto_2
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method private static final hostSheet$lambda$9(Lcom/shilapi/xcertplay/DiPlayActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->hostConsentDone:Lkotlin/jvm/functions/Function2;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->hostConsentDone:Lkotlin/jvm/functions/Function2;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private final hotspotError(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 3299
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation;

    invoke-virtual {v0, p1, p2}, Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation;->error(Ljava/lang/String;Ljava/lang/String;)Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/shilapi/xcertplay/LocalizedOptionsKt;->messageResource(Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method





.method private final installStagedAtStart()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method






.method private final iphonePaired(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 9

    .line 4333
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_a

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/shilapi/xcertplay/compat/Api19Kt;->isDestroyedCompat(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 4334
    :cond_0
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->firstRunNoticePending()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 4336
    :cond_1
    sget-object v0, Lcom/shilapi/xcertplay/IphonePairing;->Companion:Lcom/shilapi/xcertplay/IphonePairing$Companion;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/IphonePairing$Companion;->kind(Landroid/bluetooth/BluetoothDevice;)Lcom/shilapi/xcertplay/IphonePairing$Kind;

    move-result-object v0

    sget-object v1, Lcom/shilapi/xcertplay/IphonePairing$Kind;->NOT_IPHONE:Lcom/shilapi/xcertplay/IphonePairing$Kind;

    const-string v2, "getString(...)"

    if-ne v0, v1, :cond_2

    sget p1, Lcom/shilapi/xcertplay/host/R$string;->pair_not_iphone:I

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->toast(Ljava/lang/String;)V

    return-void

    .line 4339
    :cond_2
    sget-object v0, Lcom/shilapi/xcertplay/DiPlayPreferences;->INSTANCE:Lcom/shilapi/xcertplay/DiPlayPreferences;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/DiPlayPreferences;->phoneAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_3

    if-eqz v0, :cond_3

    .line 4340
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    sget-object p2, Lcom/shilapi/xcertplay/CarPlayBackgroundSession;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayBackgroundSession;

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/CarPlayBackgroundSession;->getActive()Z

    move-result p2

    if-eqz p2, :cond_3

    goto/16 :goto_2

    .line 4344
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 4345
    iget-object p2, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->lastPairedAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-wide v5, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->lastPairedAt:J

    sub-long v5, v3, v5

    const-wide/16 v7, 0x7530

    cmp-long p2, v5, v7

    if-gez p2, :cond_4

    goto/16 :goto_2

    .line 4346
    :cond_4
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->lastPairedAddress:Ljava/lang/String;

    iput-wide v3, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->lastPairedAt:J

    .line 4347
    :try_start_0
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object p2, p0

    check-cast p2, Lcom/shilapi/xcertplay/DiPlayActivity;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :goto_0
    invoke-static {p2}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    move-object p2, v3

    :cond_5
    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_7

    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    move-object p2, v3

    :goto_1
    if-nez p2, :cond_8

    :cond_7
    const-string p2, "iPhone"

    .line 4348
    :cond_8
    sget-object v0, Lcom/shilapi/xcertplay/DiPlayPreferences;->INSTANCE:Lcom/shilapi/xcertplay/DiPlayPreferences;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    const-string v4, "getAddress(...)"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1, p2}, Lcom/shilapi/xcertplay/DiPlayPreferences;->savePhone(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 4349
    iput-boolean p1, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->pendingWireless:Z

    .line 4350
    sget-object v0, Lcom/shilapi/xcertplay/AirPlayPersistence;->INSTANCE:Lcom/shilapi/xcertplay/AirPlayPersistence;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Lcom/shilapi/xcertplay/AirPlayPersistence;->saveWirelessEnabled(Landroid/content/Context;Z)V

    .line 4351
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->render()V

    .line 4352
    sget v0, Lcom/shilapi/xcertplay/host/R$string;->pair_done_connecting:I

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/shilapi/xcertplay/DiPlayActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/shilapi/xcertplay/DiPlayActivity;->toast(Ljava/lang/String;)V

    .line 4353
    sget-object p2, Lcom/shilapi/xcertplay/CarPlayBackgroundSession;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayBackgroundSession;

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/CarPlayBackgroundSession;->hasSession()Z

    move-result p2

    if-eqz p2, :cond_9

    new-instance p1, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda16;

    invoke-direct {p1, p0}, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda16;-><init>(Lcom/shilapi/xcertplay/DiPlayActivity;)V

    const-string p2, "a new iPhone pairing finished: connect to it"

    invoke-direct {p0, p2, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->stopCarPlaySession(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    :cond_9
    const/4 p2, 0x2

    .line 4354
    invoke-static {p0, v4, p1, p2, v3}, Lcom/shilapi/xcertplay/DiPlayActivity;->connect$default(Lcom/shilapi/xcertplay/DiPlayActivity;ZZILjava/lang/Object;)V

    :cond_a
    :goto_2
    return-void
.end method

.method private static final iphonePaired$lambda$649(Lcom/shilapi/xcertplay/DiPlayActivity;)Lkotlin/Unit;
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4353
    invoke-static {p0, v2, v3, v0, v1}, Lcom/shilapi/xcertplay/DiPlayActivity;->connect$default(Lcom/shilapi/xcertplay/DiPlayActivity;ZZILjava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method



.method private final label(Ljava/lang/String;IIZ)Landroid/widget/TextView;
    .locals 6

    .line 5130
    new-instance v1, Landroid/widget/TextView;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/shilapi/xcertplay/DiPlayActivity;->styled(Landroid/widget/TextView;Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object p1

    return-object p1
.end method

.method static synthetic label$default(Lcom/shilapi/xcertplay/DiPlayActivity;Ljava/lang/String;IIZILjava/lang/Object;)Landroid/widget/TextView;
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 5130
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/DiPlayActivity;->label(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method private final landscapeOnPortraitPhone()V
    .locals 2

    .line 626
    sget-object v0, Lcom/shilapi/xcertplay/CarDisplay;->INSTANCE:Lcom/shilapi/xcertplay/CarDisplay;

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/CarDisplay;->landscapeOnPortraitPhone(Landroid/app/Activity;)V

    return-void
.end method

.method private static final locationPermission$lambda$2(Lcom/shilapi/xcertplay/DiPlayActivity;Ljava/util/Map;)V
    .locals 2

    .line 109
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->hasPreciseLocation()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->reconnectForLocation()V

    return-void

    .line 110
    :cond_0
    sget-object p1, Lcom/shilapi/xcertplay/AirPlayPersistence;->INSTANCE:Lcom/shilapi/xcertplay/AirPlayPersistence;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/shilapi/xcertplay/AirPlayPersistence;->saveLocationReportingEnabled(Landroid/content/Context;Z)V

    .line 111
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->render()V

    .line 112
    sget p1, Lcom/shilapi/xcertplay/host/R$string;->location:I

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/shilapi/xcertplay/host/R$string;->allow_precise_location_for_diplay_in_the_head_unit_s_app_p:I

    invoke-virtual {p0, v1}, Lcom/shilapi/xcertplay/DiPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    sget-object v0, Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;->LOCATION:Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;

    .line 112
    invoke-direct {p0, p1, v1, v0}, Lcom/shilapi/xcertplay/DiPlayActivity;->permissionHelp(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;)V

    return-void
.end method



















.method private final nextStartupPermission()V
    .locals 7

    .line 281
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->startupPermissionSteps()Ljava/util/List;

    move-result-object v0

    .line 282
    :cond_0
    iget v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->startupPermissionStep:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_3

    .line 283
    iget v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->startupPermissionStep:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->startupPermissionStep:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shilapi/xcertplay/DiPlayActivity$StartupPermission;

    .line 284
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/DiPlayActivity$StartupPermission;->getPermissions()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 5219
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .line 5220
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    .line 284
    move-object v6, p0

    check-cast v6, Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/shilapi/xcertplay/compat/Api19Kt;->checkSelfPermissionCompat(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    .line 5220
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5221
    :cond_2
    check-cast v3, Ljava/util/List;

    .line 285
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 286
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/DiPlayActivity$StartupPermission;->getReason()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/shilapi/xcertplay/DiPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/shilapi/xcertplay/DiPlayActivity;->toast(Ljava/lang/String;)V

    .line 287
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/DiPlayActivity;

    iget-object v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->startupPermissions:Landroidx/activity/result/ActivityResultLauncher;

    check-cast v3, Ljava/util/Collection;

    const/4 v2, 0x0

    .line 5225
    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .line 287
    invoke-virtual {v1, v2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_1
    invoke-static {v1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 289
    :cond_3
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->firstLaunchBluetoothStep()V

    return-void
.end method

.method private final noteWaitingOnHome()V
    .locals 2

    .line 1348
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->page:Ljava/lang/String;

    const-string v1, "home"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->page:Ljava/lang/String;

    const-string/jumbo v1, "steps-wl"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->page:Ljava/lang/String;

    const-string/jumbo v1, "steps-wd"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/shilapi/xcertplay/DiPlayActivity;->waitingOnHome:Z

    return-void
.end method

.method private static final notificationPermission$lambda$0(Lcom/shilapi/xcertplay/DiPlayActivity;Ljava/lang/Boolean;)V
    .locals 3

    .line 92
    iget-boolean p1, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->notificationTransport:Z

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/shilapi/xcertplay/DiPlayActivity;->connect$default(Lcom/shilapi/xcertplay/DiPlayActivity;ZZILjava/lang/Object;)V

    return-void
.end method

.method private final offerReconnect(Ljava/lang/String;)V
    .locals 5

    .line 3576
    sget-object v0, Lcom/shilapi/xcertplay/CarPlayBackgroundSession;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayBackgroundSession;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/CarPlayBackgroundSession;->hasSession()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3577
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->reconnectOffer:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return-void

    .line 3578
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setting changed during CarPlay ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "): asking before reconnecting"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "xcertplay-boot"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3579
    sget-object v0, Lcom/shilapi/xcertplay/Appearance;->INSTANCE:Lcom/shilapi/xcertplay/Appearance;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lcom/shilapi/xcertplay/Appearance;->dialog$default(Lcom/shilapi/xcertplay/Appearance;Landroid/content/Context;ZILjava/lang/Object;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3580
    sget v1, Lcom/shilapi/xcertplay/host/R$string;->setting_reconnect_title:I

    invoke-virtual {p0, v1}, Lcom/shilapi/xcertplay/DiPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3581
    sget v1, Lcom/shilapi/xcertplay/host/R$string;->setting_reconnect_body:I

    invoke-virtual {p0, v1}, Lcom/shilapi/xcertplay/DiPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3582
    sget v1, Lcom/shilapi/xcertplay/host/R$string;->setting_reconnect_now:I

    invoke-virtual {p0, v1}, Lcom/shilapi/xcertplay/DiPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    new-instance v2, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda292;

    invoke-direct {v2, p1, p0}, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda292;-><init>(Ljava/lang/String;Lcom/shilapi/xcertplay/DiPlayActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 3587
    sget v0, Lcom/shilapi/xcertplay/host/R$string;->setting_reconnect_later:I

    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/DiPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    new-instance v1, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda293;

    invoke-direct {v1, p0}, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda293;-><init>(Lcom/shilapi/xcertplay/DiPlayActivity;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 3588
    new-instance v0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda294;

    invoke-direct {v0, p0}, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda294;-><init>(Lcom/shilapi/xcertplay/DiPlayActivity;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 3589
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-static {p1}, Lcom/shilapi/xcertplay/E01Dialogs;->showDialog(Landroid/app/AlertDialog;)V

    sget-object v0, Lcom/shilapi/xcertplay/Appearance;->INSTANCE:Lcom/shilapi/xcertplay/Appearance;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/Appearance;->followAppDirection(Landroid/app/AlertDialog;)V

    check-cast p1, Landroid/app/Dialog;

    .line 3579
    iput-object p1, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->reconnectOffer:Landroid/app/Dialog;

    return-void
.end method

.method private static final offerReconnect$lambda$550(Ljava/lang/String;Lcom/shilapi/xcertplay/DiPlayActivity;Landroid/content/DialogInterface;I)V
    .locals 1

    .line 3583
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "reconnect for "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": the person chose to reconnect now"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "xcertplay-boot"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3584
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "apply setting: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/shilapi/xcertplay/DiPlayActivity;->pendingReconnectReason:Ljava/lang/String;

    .line 3585
    sget-object p0, Lcom/shilapi/xcertplay/AirPlayPersistence;->INSTANCE:Lcom/shilapi/xcertplay/AirPlayPersistence;

    move-object p2, p1

    check-cast p2, Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/shilapi/xcertplay/AirPlayPersistence;->loadWirelessEnabled(Landroid/content/Context;)Z

    move-result p0

    const/4 p2, 0x2

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-static {p1, p0, v0, p2, p3}, Lcom/shilapi/xcertplay/DiPlayActivity;->connect$default(Lcom/shilapi/xcertplay/DiPlayActivity;ZZILjava/lang/Object;)V

    return-void
.end method

.method private static final offerReconnect$lambda$551(Lcom/shilapi/xcertplay/DiPlayActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 3587
    sget p1, Lcom/shilapi/xcertplay/host/R$string;->setting_applies_next_connection:I

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "getString(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->toast(Ljava/lang/String;)V

    return-void
.end method

.method private static final offerReconnect$lambda$552(Lcom/shilapi/xcertplay/DiPlayActivity;Landroid/content/DialogInterface;)V
    .locals 1

    .line 3588
    sget p1, Lcom/shilapi/xcertplay/host/R$string;->setting_applies_next_connection:I

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->toast(Ljava/lang/String;)V

    return-void
.end method




.method private final offerVendorGuidance(Z)V
    .locals 1

    if-nez p1, :cond_0

    sget v0, Lcom/shilapi/xcertplay/host/R$string;->settings_bluetooth_title:I

    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/DiPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/DiPlayActivity;->openSettingsSection(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


.method private static final onCreate$lambda$29(Lcom/shilapi/xcertplay/DiPlayActivity;)V
    .locals 1

    .line 360
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lcom/shilapi/xcertplay/LogcatRecorder;->INSTANCE:Lcom/shilapi/xcertplay/LogcatRecorder;

    check-cast p0, Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/shilapi/xcertplay/LogcatRecorder;->start(Landroid/content/Context;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final onCreate$lambda$31$lambda$30(Lcom/shilapi/xcertplay/DiPlayActivity;Landroid/bluetooth/BluetoothDevice;)Lkotlin/Unit;
    .locals 2

    const-string v0, "device"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->pairing:Lcom/shilapi/xcertplay/IphonePairing;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/IphonePairing;->getActive()Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/shilapi/xcertplay/DiPlayActivity;->iphonePaired(Landroid/bluetooth/BluetoothDevice;Z)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onResume$lambda$40(Lcom/shilapi/xcertplay/DiPlayActivity;)V
    .locals 0

    .line 514
    return-void
.end method

.method private static final onResume$lambda$41(Lcom/shilapi/xcertplay/DiPlayActivity;)V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 521
    invoke-static {p0, v2, v3, v0, v1}, Lcom/shilapi/xcertplay/DiPlayActivity;->connect$default(Lcom/shilapi/xcertplay/DiPlayActivity;ZZILjava/lang/Object;)V

    return-void
.end method

.method private static final onResume$lambda$43$lambda$42(Lcom/shilapi/xcertplay/DiPlayActivity;Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;)V
    .locals 0

    .line 531
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->continueAfterReturn(Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;)V

    return-void
.end method

.method private final onRowAction(Lcom/shilapi/xcertplay/ConnectionUi$RowAction;)V
    .locals 6

    sget-object v0, Lcom/shilapi/xcertplay/ConnectionUi$RowAction;->ALL_STEPS:Lcom/shilapi/xcertplay/ConnectionUi$RowAction;

    if-ne p1, v0, :cond_0

    return-void

    .line 1424
    :cond_0
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->connectionInput()Lcom/shilapi/xcertplay/ConnectionUi$Input;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/ConnectionUi$Input;->getProgress()Lcom/shilapi/xcertplay/ConnectionProgress$State;

    move-result-object v0

    .line 1425
    iget-object v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->page:Ljava/lang/String;

    .line 1426
    const-string/jumbo v2, "steps-wl"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    .line 1427
    :cond_1
    const-string/jumbo v2, "steps-wd"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    .line 1428
    :cond_2
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getIphoneAfterCancel()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getWireless()Z

    move-result v0

    .line 1430
    :goto_1
    sget-object v1, Lcom/shilapi/xcertplay/DiPlayActivity$WhenMappings;->$EnumSwitchMapping$3:[I

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/ConnectionUi$RowAction;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    const/4 v5, 0x2

    packed-switch v1, :pswitch_data_0

    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 1461
    :pswitch_0
    sget-object p1, Lcom/shilapi/xcertplay/ConnectionProgress;->INSTANCE:Lcom/shilapi/xcertplay/ConnectionProgress;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/ConnectionProgress;->toggleWifiCard()V

    .line 1462
    iput-boolean v4, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->wifiCardPasswordShown:Z

    .line 1463
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->refreshStatus()V

    .line 1464
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->render()V

    return-void

    .line 1453
    :pswitch_1
    sget-object p1, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory;

    sget-object v0, Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;->WIFI_P2P:Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    invoke-virtual {p1, v0}, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory;->setOverride(Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;)V

    .line 1454
    const-string/jumbo p1, "xcertplay-boot"

    const-string v0, "quick switch: Wi-Fi Direct for this connection (setting unchanged)"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    sget-object p1, Lcom/shilapi/xcertplay/ConnectionProgress;->INSTANCE:Lcom/shilapi/xcertplay/ConnectionProgress;

    sget v0, Lcom/shilapi/xcertplay/host/R$string;->qs_handled_wifi_direct:I

    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/DiPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/shilapi/xcertplay/ConnectionProgress;->handled(Ljava/lang/String;)V

    .line 1456
    iput-boolean v3, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->quickSwitchConnect:Z

    .line 1457
    invoke-static {p0, v3, v4, v5, v2}, Lcom/shilapi/xcertplay/DiPlayActivity;->connect$default(Lcom/shilapi/xcertplay/DiPlayActivity;ZZILjava/lang/Object;)V

    return-void

    .line 1446
    :pswitch_2
    sget-object p1, Lcom/shilapi/xcertplay/ConnectionProgress;->INSTANCE:Lcom/shilapi/xcertplay/ConnectionProgress;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/ConnectionProgress;->clearIphoneAfterCancel()V

    .line 1447
    invoke-static {p0, v0, v4, v5, v2}, Lcom/shilapi/xcertplay/DiPlayActivity;->connect$default(Lcom/shilapi/xcertplay/DiPlayActivity;ZZILjava/lang/Object;)V

    return-void

    .line 1438
    .line 1439
    :pswitch_3
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory;->clearOverride()V

    .line 1440
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/ConnectionUi$RowAction;->name()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "US"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "toLowerCase(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "the person tapped "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1441
    sget-object v0, Lcom/shilapi/xcertplay/HostLaunch;->INSTANCE:Lcom/shilapi/xcertplay/HostLaunch;

    invoke-virtual {v0, v3}, Lcom/shilapi/xcertplay/HostLaunch;->setUserStopped(Z)V

    .line 1442
    sget-object v0, Lcom/shilapi/xcertplay/ConnectionProgress;->INSTANCE:Lcom/shilapi/xcertplay/ConnectionProgress;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/ConnectionProgress;->collapseSteps()V

    .line 1443
    new-instance v0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda283;

    invoke-direct {v0, p1, p0}, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda283;-><init>(Ljava/lang/String;Lcom/shilapi/xcertplay/DiPlayActivity;)V

    invoke-direct {p0, p1, v0}, Lcom/shilapi/xcertplay/DiPlayActivity;->stopCarPlaySession(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void

    .line 1433
    :pswitch_4
    sget-object p1, Lcom/shilapi/xcertplay/ConnectionProgress;->INSTANCE:Lcom/shilapi/xcertplay/ConnectionProgress;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/ConnectionProgress;->toggleStepsExpanded()V

    .line 1434
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->refreshStatus()V

    .line 1435
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->render()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final onRowAction$lambda$169(Ljava/lang/String;Lcom/shilapi/xcertplay/DiPlayActivity;)Lkotlin/Unit;
    .locals 1

    .line 1443
    sget-object v0, Lcom/shilapi/xcertplay/HostLaunch;->INSTANCE:Lcom/shilapi/xcertplay/HostLaunch;

    invoke-virtual {v0, p0}, Lcom/shilapi/xcertplay/HostLaunch;->personStopped(Ljava/lang/String;)V

    sget-object p0, Lcom/shilapi/xcertplay/ConnectionProgress;->INSTANCE:Lcom/shilapi/xcertplay/ConnectionProgress;

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/ConnectionProgress;->stopped()V

    invoke-direct {p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->refreshStatus()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method







.method private final openCarWifiSettings()V
    .locals 5

    .line 3032
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.WIFI_TETHER_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3033
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3034
    :goto_0
    const-string v3, "com.byd.carsettings"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3035
    :try_start_0
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v3, p0

    check-cast v3, Lcom/shilapi/xcertplay/DiPlayActivity;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/shilapi/xcertplay/DiPlayActivity;->startActivity(Landroid/content/Intent;)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v3}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 3037
    :try_start_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/DiPlayActivity;

    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/DiPlayActivity;->startActivity(Landroid/content/Intent;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_6

    .line 3043
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_5

    sget-object v0, Lcom/shilapi/xcertplay/SystemSettingsShortcuts;->INSTANCE:Lcom/shilapi/xcertplay/SystemSettingsShortcuts;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/SystemSettingsShortcuts;->tetherPageCrashes()Z

    move-result v0

    if-nez v0, :cond_5

    .line 3044
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v3, "com.android.settings.Settings$TetherSettingsActivity"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "setClassName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3045
    :try_start_2
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/DiPlayActivity;

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v1

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v1, v2

    :cond_4
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3046
    :try_start_3
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/DiPlayActivity;

    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/DiPlayActivity;->startActivity(Landroid/content/Intent;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_5
    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_6
    return-void

    .line 3050
    :cond_5
    sget v0, Lcom/shilapi/xcertplay/host/R$string;->open_personal_hotspot_in_settings:I

    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/DiPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/DiPlayActivity;->toast(Ljava/lang/String;)V

    .line 3051
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/DiPlayActivity;->openSystem(Landroid/content/Intent;)V

    return-void
.end method



.method private final openProjection(Z)V
    .locals 6

    const/4 p1, 0x0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->firstRunNoticePending()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/shilapi/xcertplay/HostLaunch;->INSTANCE:Lcom/shilapi/xcertplay/HostLaunch;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/HostLaunch;->getUserStopped()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/shilapi/xcertplay/CarPlayBackgroundSession;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayBackgroundSession;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/CarPlayBackgroundSession;->hasSession()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p1, Ljava/lang/Throwable;

    const-string v0, "open path"

    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "xcertplay-boot"

    const-string v1, "CarPlay not opened: the person tapped disconnect"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/shilapi/xcertplay/CarPlayHostActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "addFlags(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    if-lez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_4

    :cond_3
    const v1, 0x1020002

    invoke-virtual {p0, v1}, Lcom/shilapi/xcertplay/DiPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    :cond_4
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->getRequestedOrientation()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->getRequestedOrientation()I

    move-result v2

    const/4 v5, 0x6

    if-eq v2, v5, :cond_6

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->getRequestedOrientation()I

    move-result v2

    const/16 v5, 0x8

    if-eq v2, v5, :cond_6

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->getRequestedOrientation()I

    move-result v2

    const/16 v5, 0xb

    if-ne v2, v5, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v2, 0x1

    :goto_2
    if-eqz p1, :cond_7

    if-eqz v2, :cond_7

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    if-le v2, v5, :cond_7

    iget v2, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->behindWaits:I

    const/16 v5, 0xa

    if-ge v2, v5, :cond_7

    add-int/2addr v2, v3

    iput v2, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->behindWaits:I

    iget-object p1, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda284;

    invoke-direct {v0, p0}, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda284;-><init>(Lcom/shilapi/xcertplay/DiPlayActivity;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_7
    iput v4, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->behindWaits:I

    const-string v2, "com.sixlink.car.extra.BEHIND"

    if-eqz p1, :cond_8

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result p1

    if-lez p1, :cond_8

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result p1

    if-lez p1, :cond_8

    const/high16 p1, 0x10000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    const-string v3, "com.sixlink.car.extra.WIDTH"

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const-string v3, "com.sixlink.car.extra.HEIGHT"

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_8
    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/DiPlayActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p0, v4, v4}, Lcom/shilapi/xcertplay/DiPlayActivity;->overridePendingTransition(II)V

    return-void

    :cond_9
    sget p1, Lcom/shilapi/xcertplay/host/R$anim;->fa_fade_in:I

    sget v0, Lcom/shilapi/xcertplay/host/R$anim;->fa_fade_out:I

    invoke-virtual {p0, p1, v0}, Lcom/shilapi/xcertplay/DiPlayActivity;->overridePendingTransition(II)V

    return-void
.end method

.method static synthetic openProjection$default(Lcom/shilapi/xcertplay/DiPlayActivity;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 3998
    :cond_0
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->openProjection(Z)V

    return-void
.end method

.method private static final openProjection$lambda$601(Lcom/shilapi/xcertplay/DiPlayActivity;)V
    .locals 1

    .line 4022
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/shilapi/xcertplay/compat/Api19Kt;->isDestroyedCompat(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/DiPlayActivity;->openProjection(Z)V

    :cond_0
    return-void
.end method

.method private final openSettingsPage(Lcom/shilapi/xcertplay/SystemSettingsShortcuts$Page;)V
    .locals 10

    .line 4740
    sget-object v0, Lcom/shilapi/xcertplay/SystemSettingsShortcuts;->INSTANCE:Lcom/shilapi/xcertplay/SystemSettingsShortcuts;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/shilapi/xcertplay/SystemSettingsShortcuts;->resolve$default(Lcom/shilapi/xcertplay/SystemSettingsShortcuts;Landroid/content/Context;Lcom/shilapi/xcertplay/SystemSettingsShortcuts$Page;ZILjava/lang/Object;)Lcom/shilapi/xcertplay/SystemSettingsShortcuts$Target;

    move-result-object p1

    .line 4741
    const-string/jumbo v1, "system settings "

    const-string/jumbo v3, "xcertplay-boot"

    const-string v4, "getString(...)"

    if-nez p1, :cond_1

    .line 4742
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": nothing resolves"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4743
    sget-object p1, Lcom/shilapi/xcertplay/SystemSettingsShortcuts$Page;->SETTINGS:Lcom/shilapi/xcertplay/SystemSettingsShortcuts$Page;

    if-ne v2, p1, :cond_0

    sget p1, Lcom/shilapi/xcertplay/host/R$string;->system_settings_missing:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/shilapi/xcertplay/host/R$string;->open_this_setting_from_your_car_s_settings_app:I

    :goto_0
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->toast(Ljava/lang/String;)V

    return-void

    .line 4748
    :cond_1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/DiPlayActivity;

    sget-object v0, Lcom/shilapi/xcertplay/SystemPageActivity;->Companion:Lcom/shilapi/xcertplay/SystemPageActivity$Companion;

    move-object v5, p0

    check-cast v5, Landroid/content/Context;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/SystemSettingsShortcuts$Target;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/shilapi/xcertplay/SystemPageActivity$Companion;->wrap(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/DiPlayActivity;->startActivity(Landroid/content/Intent;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4749
    :goto_1
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/SystemSettingsShortcuts$Target;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v6

    .line 4750
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " ("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_3

    :cond_2
    const-string v7, ""

    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " opened="

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4749
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4751
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget p1, Lcom/shilapi/xcertplay/host/R$string;->open_this_setting_from_your_car_s_settings_app:I

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->toast(Ljava/lang/String;)V

    goto :goto_2

    .line 4753
    :cond_4
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/SystemSettingsShortcuts$Target;->getSubstitute()Z

    move-result p1

    if-eqz p1, :cond_5

    sget p1, Lcom/shilapi/xcertplay/host/R$string;->tether_page_crashes_wifi_instead:I

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->toast(Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private final openSettingsSection(Ljava/lang/String;)V
    .locals 4

    .line 4116
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->page:Ljava/lang/String;

    const-string/jumbo v1, "settings"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->backStack:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->here()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 4117
    :cond_0
    iput-object v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->page:Ljava/lang/String;

    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->render()V

    return-void
.end method

.method private final openSystem(Landroid/content/Intent;)V
    .locals 1

    .line 4677
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/DiPlayActivity;

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->startActivity(Landroid/content/Intent;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    sget p1, Lcom/shilapi/xcertplay/host/R$string;->open_this_setting_from_your_car_s_settings_app:I

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->toast(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final openSystemFor(Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;Landroid/content/Intent;)V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->returnResume:Lcom/shilapi/xcertplay/orchestration/ReturnResume;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/orchestration/ReturnResume;->arm(Ljava/lang/Object;)V

    .line 152
    :try_start_0
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object p1, p0

    check-cast p1, Lcom/shilapi/xcertplay/DiPlayActivity;

    invoke-virtual {p0, p2}, Lcom/shilapi/xcertplay/DiPlayActivity;->startActivity(Landroid/content/Intent;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 153
    iget-object p1, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->returnResume:Lcom/shilapi/xcertplay/orchestration/ReturnResume;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/orchestration/ReturnResume;->disarm()V

    .line 154
    sget p1, Lcom/shilapi/xcertplay/host/R$string;->open_this_setting_from_your_car_s_settings_app:I

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "getString(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->toast(Ljava/lang/String;)V

    :cond_0
    return-void
.end method







.method private final permissionHelp(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;)V
    .locals 5

    .line 4672
    sget-object v0, Lcom/shilapi/xcertplay/Appearance;->INSTANCE:Lcom/shilapi/xcertplay/Appearance;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/shilapi/xcertplay/Appearance;->dialog$default(Lcom/shilapi/xcertplay/Appearance;Landroid/content/Context;ZILjava/lang/Object;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lcom/shilapi/xcertplay/host/R$string;->app_settings:I

    invoke-virtual {p0, p2}, Lcom/shilapi/xcertplay/DiPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    new-instance v0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda299;

    invoke-direct {v0, p0, p3}, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda299;-><init>(Lcom/shilapi/xcertplay/DiPlayActivity;Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;)V

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 4675
    sget p2, Lcom/shilapi/xcertplay/host/R$string;->later:I

    invoke-virtual {p0, p2}, Lcom/shilapi/xcertplay/DiPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-static {p1}, Lcom/shilapi/xcertplay/E01Dialogs;->show(Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic permissionHelp$default(Lcom/shilapi/xcertplay/DiPlayActivity;Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 4671
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/DiPlayActivity;->permissionHelp(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;)V

    return-void
.end method

.method private static final permissionHelp$lambda$709(Lcom/shilapi/xcertplay/DiPlayActivity;Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;Landroid/content/DialogInterface;I)V
    .locals 2

    .line 4673
    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->getPackageName()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "package:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p2, v0, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    if-eqz p1, :cond_0

    .line 4674
    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/DiPlayActivity;->openSystemFor(Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;Landroid/content/Intent;)V

    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/shilapi/xcertplay/DiPlayActivity;->openSystem(Landroid/content/Intent;)V

    return-void
.end method








.method private final reconnectForLocation()V
    .locals 1

    .line 3564
    const-string v0, "location reporting"

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/DiPlayActivity;->offerReconnect(Ljava/lang/String;)V

    return-void
.end method

.method private final refreshStatus()V
    .locals 1

    invoke-static {p0}, Lcom/shilapi/xcertplay/E01NativeUi;->update(Landroid/app/Activity;)V

    return-void
.end method


.method private final rememberedWirelessIphone(Z)Z
    .locals 1

    invoke-static {p0}, Lcom/shilapi/xcertplay/E01OemBluetooth;->phoneReady(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method


.method private final render()V
    .locals 16

    move-object/from16 v0, p0

    .line 708
    invoke-direct {v0}, Lcom/shilapi/xcertplay/DiPlayActivity;->vendorBluetoothOnly()Z

    move-result v1

    iput-boolean v1, v0, Lcom/shilapi/xcertplay/DiPlayActivity;->vendorAtRender:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 709
    invoke-direct {v0}, Lcom/shilapi/xcertplay/DiPlayActivity;->usbBluetoothAdapterPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lcom/shilapi/xcertplay/DiPlayActivity;->usbBtAtRender:Z

    const/4 v1, 0x0

    .line 710
    iput-object v1, v0, Lcom/shilapi/xcertplay/DiPlayActivity;->usbSelfTestButton:Landroid/view/View;

    .line 711
    iput-object v1, v0, Lcom/shilapi/xcertplay/DiPlayActivity;->usbBtDiscoverableButton:Landroid/widget/Button;

    iput-object v1, v0, Lcom/shilapi/xcertplay/DiPlayActivity;->usbBtDiscoverableStatus:Landroid/widget/TextView;

    .line 712
    iget-object v4, v0, Lcom/shilapi/xcertplay/DiPlayActivity;->scrolled:Landroid/widget/ScrollView;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v4

    iput v4, v0, Lcom/shilapi/xcertplay/DiPlayActivity;->scrollY:I

    .line 713
    :cond_1
    iput-object v1, v0, Lcom/shilapi/xcertplay/DiPlayActivity;->status:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/shilapi/xcertplay/DiPlayActivity;->connectButton:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/shilapi/xcertplay/DiPlayActivity;->wiredStatus:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/shilapi/xcertplay/DiPlayActivity;->wiredButton:Landroid/widget/TextView;

    .line 714
    iput-object v1, v0, Lcom/shilapi/xcertplay/DiPlayActivity;->stepsList:Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/shilapi/xcertplay/DiPlayActivity;->lastUi:Lcom/shilapi/xcertplay/ConnectionUi$Ui;

    .line 715
    iput-object v1, v0, Lcom/shilapi/xcertplay/DiPlayActivity;->homeStepsScroll:Landroid/widget/ScrollView;

    .line 716
    invoke-direct {v0}, Lcom/shilapi/xcertplay/DiPlayActivity;->applyAppearance()V

    invoke-static/range {p0 .. p0}, Lcom/shilapi/xcertplay/E01NativeUi;->show(Landroid/app/Activity;)V

    invoke-direct {v0}, Lcom/shilapi/xcertplay/DiPlayActivity;->noteWaitingOnHome()V

    return-void
.end method






.method private final requestWriteSettingsIfNeeded(ZZ)Z
    .locals 4

    const-string v0, "package:"

    .line 3622
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->writeSettingsMissing()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 3624
    const-string/jumbo p1, "xcertplay-boot"

    const-string p2, "automatic connection waits for Modify system settings; hint on the home screen"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3625
    iput-boolean v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->writeSettingsHint:Z

    .line 3626
    const-string p1, "home"

    iput-object p1, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->page:Ljava/lang/String;

    iget-object p1, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->backStack:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 3627
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->render()V

    return v1

    .line 3630
    :cond_1
    iput-boolean p2, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->connectAfterWriteSettings:Z

    .line 3631
    sget p1, Lcom/shilapi/xcertplay/host/R$string;->allow_modify_system_settings:I

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "getString(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->toast(Ljava/lang/String;)V

    .line 3632
    :try_start_0
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object p1, p0

    check-cast p1, Lcom/shilapi/xcertplay/DiPlayActivity;

    .line 3633
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.action.MANAGE_WRITE_SETTINGS"

    .line 3634
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3633
    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->startActivity(Landroid/content/Intent;)V

    .line 3635
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 3632
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return v1
.end method


.method private final resetWirelessGroup()V
    .locals 9

    .line 4413
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const-class v1, Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-static {v0, v1}, Lcom/shilapi/xcertplay/compat/Api19Kt;->systemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 4414
    const-string v2, "getString(...)"

    if-nez v1, :cond_0

    sget v0, Lcom/shilapi/xcertplay/host/R$string;->this_head_unit_does_not_support_wi_fi_direct:I

    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/DiPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/DiPlayActivity;->toast(Ljava/lang/String;)V

    return-void

    .line 4415
    :cond_0
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v3, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    .line 4417
    :try_start_0
    new-instance v3, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda43;

    invoke-direct {v3, v0, p0, v1}, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda43;-><init>(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Lcom/shilapi/xcertplay/DiPlayActivity;Landroid/net/wifi/p2p/WifiP2pManager;)V

    invoke-virtual {v1, v0, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 4439
    :catch_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/shilapi/xcertplay/compat/Api19Kt;->closeCompat(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    sget v0, Lcom/shilapi/xcertplay/host/R$string;->wireless_permissions:I

    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/DiPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/shilapi/xcertplay/host/R$string;->allow_nearby_devices_and_on_older_android_versions_locatio:I

    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/DiPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lcom/shilapi/xcertplay/DiPlayActivity;->permissionHelp$default(Lcom/shilapi/xcertplay/DiPlayActivity;Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;ILjava/lang/Object;)V

    return-void
.end method

.method private static final resetWirelessGroup$lambda$661(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Lcom/shilapi/xcertplay/DiPlayActivity;Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 1

    if-nez p3, :cond_0

    .line 4418
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/shilapi/xcertplay/compat/Api19Kt;->closeCompat(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    const/4 p0, 0x2

    const/4 p2, 0x0

    const/4 p3, 0x1

    const/4 v0, 0x0

    invoke-static {p1, p3, v0, p0, p2}, Lcom/shilapi/xcertplay/DiPlayActivity;->connect$default(Lcom/shilapi/xcertplay/DiPlayActivity;ZZILjava/lang/Object;)V

    return-void

    .line 4419
    :cond_0
    new-instance p3, Lcom/shilapi/xcertplay/DiPlayActivity$resetWirelessGroup$1$1;

    invoke-direct {p3, p2, p0, p1}, Lcom/shilapi/xcertplay/DiPlayActivity$resetWirelessGroup$1$1;-><init>(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Lcom/shilapi/xcertplay/DiPlayActivity;)V

    check-cast p3, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    invoke-virtual {p2, p0, p3}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    return-void
.end method





.method private final returnStepDone(Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;)Z
    .locals 3

    .line 124
    sget-object v0, Lcom/shilapi/xcertplay/DiPlayActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 129
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->hasPreciseLocation()Z

    move-result p1

    return p1

    .line 124
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 127
    :cond_1
    return v1

    :cond_2
    invoke-direct {p0, v1}, Lcom/shilapi/xcertplay/DiPlayActivity;->rememberedWirelessIphone(Z)Z

    move-result p1

    return p1

    :cond_3
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->carHotspotOff()Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method





.method private final row()Landroid/widget/LinearLayout;
    .locals 4

    .line 5102
    new-instance v0, Landroid/widget/LinearLayout;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method




.method private final runPendingAutoConnect()V
    .locals 7

    invoke-static {p0}, Lcom/shilapi/xcertplay/E01NativeSettings;->defaultConnection(Landroid/app/Activity;)V

    .line 313
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->pendingAutoConnect:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v0, 0x0

    .line 314
    iput-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->pendingAutoConnect:Ljava/lang/Boolean;

    .line 315
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->pendingAutoConnectAtBoot:Z

    if-eqz v0, :cond_0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-wide/16 v3, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/shilapi/xcertplay/DiPlayActivity;->connectWhenRadiosReady$default(Lcom/shilapi/xcertplay/DiPlayActivity;ZJILjava/lang/Object;)V

    return-void

    :cond_0
    move-object v1, p0

    iget-object v0, v1, Lcom/shilapi/xcertplay/DiPlayActivity;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda171;

    invoke-direct {v3, p0, v2}, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda171;-><init>(Lcom/shilapi/xcertplay/DiPlayActivity;Z)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    move-object v1, p0

    return-void
.end method

.method private static final runPendingAutoConnect$lambda$26(Lcom/shilapi/xcertplay/DiPlayActivity;Z)V
    .locals 1

    invoke-static {p0}, Lcom/shilapi/xcertplay/E01NativeSettings;->continueStartup(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 315
    invoke-direct {p0, p1, v0}, Lcom/shilapi/xcertplay/DiPlayActivity;->connect(ZZ)V

    return-void
.end method





.method private final section(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Integer;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 4867
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->sectionSink:Ljava/util/List;

    if-eqz v0, :cond_0

    check-cast v0, Ljava/util/Collection;

    new-instance p1, Lcom/shilapi/xcertplay/DiPlayActivity$SectionSpec;

    invoke-direct {p1, p2, p3, p4}, Lcom/shilapi/xcertplay/DiPlayActivity$SectionSpec;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void

    .line 4868
    :cond_0
    sget v0, Lcom/shilapi/xcertplay/host/R$string;->system_settings_open:I

    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/DiPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->diagnosticsRows(Landroid/widget/LinearLayout;)V

    return-void

    :cond_1
    invoke-direct {p0, p2, p3, p4}, Lcom/shilapi/xcertplay/DiPlayActivity;->sectionCard(Ljava/lang/String;Ljava/lang/Integer;Lkotlin/jvm/functions/Function1;)Landroid/widget/LinearLayout;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p4, -0x1

    const/4 v0, -0x2

    invoke-direct {p3, p4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 p4, 0x12

    invoke-direct {p0, p4}, Lcom/shilapi/xcertplay/DiPlayActivity;->dp(I)I

    move-result p4

    iput p4, p3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sget-object p4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast p3, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic section$default(Lcom/shilapi/xcertplay/DiPlayActivity;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Integer;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p3, 0x0

    .line 4866
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/DiPlayActivity;->section(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Integer;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final sectionCard(Ljava/lang/String;Ljava/lang/Integer;Lkotlin/jvm/functions/Function1;)Landroid/widget/LinearLayout;
    .locals 6

    .line 4871
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 4872
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->row()Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v2, 0xe

    invoke-direct {p0, v2}, Lcom/shilapi/xcertplay/DiPlayActivity;->dp(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v3, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    if-eqz p2, :cond_0

    .line 4873
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/16 v2, 0x14

    const/16 v4, 0x24

    invoke-direct {p0, p2, v4, v2}, Lcom/shilapi/xcertplay/DiPlayActivity;->badge(III)Landroid/widget/FrameLayout;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v4}, Lcom/shilapi/xcertplay/DiPlayActivity;->dp(I)I

    move-result v5

    invoke-direct {p0, v4}, Lcom/shilapi/xcertplay/DiPlayActivity;->dp(I)I

    move-result v4

    invoke-direct {v2, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v4, v2

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 v5, 0xc

    invoke-direct {p0, v5}, Lcom/shilapi/xcertplay/DiPlayActivity;->dp(I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/shilapi/xcertplay/LegacyViewsKt;->setMarginEndCompat(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4874
    :cond_0
    sget-object p2, Lcom/shilapi/xcertplay/DiPlayActivity;->Companion:Lcom/shilapi/xcertplay/DiPlayActivity$Companion;

    # invokes: Lcom/shilapi/xcertplay/DiPlayActivity$Companion;->getTEXT()I
    invoke-static {p2}, Lcom/shilapi/xcertplay/DiPlayActivity$Companion;->access$getTEXT(Lcom/shilapi/xcertplay/DiPlayActivity$Companion;)I

    move-result p2

    const/4 v2, 0x1

    const/16 v4, 0x13

    invoke-direct {p0, p1, v4, p2, v2}, Lcom/shilapi/xcertplay/DiPlayActivity;->label(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {p2, v3, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    check-cast p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4875
    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4876
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

























































.method private final showAutoReturn(Lcom/shilapi/xcertplay/AutoReturnToCarPlay$State;)V
    .locals 4

    .line 867
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->autoReturnLabel:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_2

    .line 869
    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/AutoReturnToCarPlay$State$Counting;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    sget v1, Lcom/shilapi/xcertplay/host/R$string;->auto_return_countdown:I

    check-cast p1, Lcom/shilapi/xcertplay/AutoReturnToCarPlay$State$Counting;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/AutoReturnToCarPlay$State$Counting;->getSecondsLeft()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-virtual {p0, v1, v3}, Lcom/shilapi/xcertplay/DiPlayActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 870
    :cond_1
    instance-of v1, p1, Lcom/shilapi/xcertplay/AutoReturnToCarPlay$State$Paused;

    if-eqz v1, :cond_5

    check-cast p1, Lcom/shilapi/xcertplay/AutoReturnToCarPlay$State$Paused;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/AutoReturnToCarPlay$State$Paused;->getWhy()Lcom/shilapi/xcertplay/AutoReturnToCarPlay$Pause;

    move-result-object p1

    sget-object v1, Lcom/shilapi/xcertplay/DiPlayActivity$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/AutoReturnToCarPlay$Pause;->ordinal()I

    move-result p1

    aget p1, v1, p1

    if-eq p1, v3, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 873
    sget p1, Lcom/shilapi/xcertplay/host/R$string;->auto_return_paused_dialog:I

    goto :goto_0

    .line 870
    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 872
    :cond_3
    sget p1, Lcom/shilapi/xcertplay/host/R$string;->auto_return_paused_reading:I

    goto :goto_0

    .line 871
    :cond_4
    sget p1, Lcom/shilapi/xcertplay/host/R$string;->auto_return_paused_typing:I

    .line 870
    :goto_0
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_6

    const/16 v2, 0x8

    .line 877
    :cond_6
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p1, :cond_7

    .line 878
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_2
    return-void
.end method











.method private final showFirstRunNotice()V
    .locals 1

    invoke-static {p0}, Lcom/shilapi/xcertplay/E01NativeUi;->firstRun(Landroid/app/Activity;)V

    return-void
.end method

.method private static final showFirstRunNotice$lambda$27(Lcom/shilapi/xcertplay/DiPlayActivity;)Lkotlin/Unit;
    .locals 3

    const/4 v0, 0x0

    .line 338
    iput-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->firstRunNoticeDialog:Landroid/app/Dialog;

    .line 339
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->startupHeldByNotice:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "first-run notice acknowledged; start-up carries on (held="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "xcertplay-boot"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->startupHeldByNotice:Z

    if-nez v0, :cond_0

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 341
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->startupHeldByNotice:Z

    .line 343
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->startFirstLaunchSetupOnce()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->pendingAutoConnectAtBoot:Z

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->runPendingAutoConnect()V

    .line 344
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method








.method private final shownVersion()Ljava/lang/String;
    .locals 6

    .line 4865
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->version()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/16 v1, 0x2d

    const/16 v2, 0x2011

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u202a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\u202c"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method








.method private final startFirstLaunchSetupOnce()Z
    .locals 4

    .line 272
    const-string v0, "diplay"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/shilapi/xcertplay/DiPlayActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 273
    const-string/jumbo v2, "startup_permissions_asked"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    .line 274
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 275
    iput v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->startupPermissionStep:I

    .line 276
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->nextStartupPermission()V

    return v3
.end method




.method private final startupPermissionSteps()Ljava/util/List;
    .locals 5

    .line 248
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object v0

    .line 249
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_0

    .line 255
    new-instance v1, Lcom/shilapi/xcertplay/DiPlayActivity$StartupPermission;

    const-string v2, "android.permission.NEARBY_WIFI_DEVICES"

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sget v3, Lcom/shilapi/xcertplay/host/R$string;->permission_reason_nearby_wifi:I

    invoke-direct {v1, v2, v3}, Lcom/shilapi/xcertplay/DiPlayActivity$StartupPermission;-><init>(Ljava/util/List;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_0
    new-instance v1, Lcom/shilapi/xcertplay/DiPlayActivity$StartupPermission;

    const/4 v2, 0x2

    .line 258
    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 259
    sget v3, Lcom/shilapi/xcertplay/host/R$string;->permission_reason_location:I

    .line 257
    invoke-direct {v1, v2, v3}, Lcom/shilapi/xcertplay/DiPlayActivity$StartupPermission;-><init>(Ljava/util/List;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    new-instance v1, Lcom/shilapi/xcertplay/DiPlayActivity$StartupPermission;

    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sget v3, Lcom/shilapi/xcertplay/host/R$string;->permission_reason_microphone:I

    invoke-direct {v1, v2, v3}, Lcom/shilapi/xcertplay/DiPlayActivity$StartupPermission;-><init>(Ljava/util/List;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_1
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static final startupPermissions$lambda$14(Lcom/shilapi/xcertplay/DiPlayActivity;Ljava/util/Map;)V
    .locals 9

    .line 214
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    new-instance v6, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda46;

    invoke-direct {v6}, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda46;-><init>()V

    const/16 v7, 0x1f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v8}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startup permission "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 213
    const-string/jumbo v0, "xcertplay-boot"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->nextStartupPermission()V

    return-void
.end method

.method private static final startupPermissions$lambda$14$lambda$13(Ljava/util/Map$Entry;)Ljava/lang/CharSequence;
    .locals 4

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/16 v3, 0x2e

    invoke-static {v0, v3, v1, v2, v1}, Lkotlin/text/StringsKt;->substringAfterLast$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method









.method private final stopCarPlaySession(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 2

    .line 3610
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "stopping the running CarPlay session: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "xcertplay-boot"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3611
    sget-object p1, Lcom/shilapi/xcertplay/CarPlayBackgroundSession;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayBackgroundSession;

    new-instance v0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda32;

    invoke-direct {v0, p0, p2}, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda32;-><init>(Lcom/shilapi/xcertplay/DiPlayActivity;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p1, v0}, Lcom/shilapi/xcertplay/CarPlayBackgroundSession;->stop(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final stopCarPlaySession$lambda$555(Lcom/shilapi/xcertplay/DiPlayActivity;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 1

    .line 3611
    new-instance v0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda306;

    invoke-direct {v0, p1}, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda306;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/DiPlayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final stopCarPlaySession$lambda$555$lambda$554(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 3611
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private final storedPassword()Ljava/lang/String;
    .locals 2

    .line 3297
    sget-object v0, Lcom/shilapi/xcertplay/AirPlayPersistence;->INSTANCE:Lcom/shilapi/xcertplay/AirPlayPersistence;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/AirPlayPersistence;->loadManualHotspotPassphrase(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final storedSsid()Ljava/lang/String;
    .locals 2

    .line 3296
    sget-object v0, Lcom/shilapi/xcertplay/AirPlayPersistence;->INSTANCE:Lcom/shilapi/xcertplay/AirPlayPersistence;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/AirPlayPersistence;->loadManualHotspotSsid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final styled(Landroid/widget/TextView;Ljava/lang/String;IIZ)Landroid/widget/TextView;
    .locals 0

    .line 5137
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-float p2, p3

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p2, 0x10

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    const/4 p2, 0x0

    if-eqz p5, :cond_0

    .line 5138
    const-string p3, "sans-serif-medium"

    goto :goto_0

    :cond_0
    const-string p3, "sans-serif"

    :goto_0
    invoke-static {p3, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 p2, 0x3

    .line 5139
    invoke-direct {p0, p2}, Lcom/shilapi/xcertplay/DiPlayActivity;->dp(I)I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, p3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    return-object p1
.end method











.method private final toast(Ljava/lang/String;)V
    .locals 2

    .line 4772
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method







.method private final usbBluetoothAdapterPresent()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


.method private static final usbBtDiscoverableListener$lambda$60(Lcom/shilapi/xcertplay/DiPlayActivity;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;)Lkotlin/Unit;
    .locals 1

    const-string/jumbo v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 698
    new-instance v0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda187;

    invoke-direct {v0, p0, p1}, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda187;-><init>(Lcom/shilapi/xcertplay/DiPlayActivity;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;)V

    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/DiPlayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 702
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final usbBtDiscoverableListener$lambda$60$lambda$59(Lcom/shilapi/xcertplay/DiPlayActivity;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;)V
    .locals 3

    .line 699
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->usbBtDiscoverableStatus:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable;->INSTANCE:Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable;->describe(Landroid/content/Context;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 700
    :cond_0
    iget-object p1, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->usbBtDiscoverableButton:Landroid/widget/Button;

    if-eqz p1, :cond_2

    sget-object v0, Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable;->INSTANCE:Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/shilapi/xcertplay/host/R$string;->usb_bt_stop:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/shilapi/xcertplay/host/R$string;->usb_bt_discoverable:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/DiPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private final valueRow(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroid/widget/TextView;
    .locals 15

    move-object/from16 v1, p2

    .line 4910
    invoke-direct/range {p0 .. p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->divider(Landroid/widget/LinearLayout;)V

    .line 4911
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->row()Landroid/widget/LinearLayout;

    move-result-object v7

    const/16 v2, 0x10

    .line 4912
    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v2, 0x38

    .line 4913
    invoke-direct {p0, v2}, Lcom/shilapi/xcertplay/DiPlayActivity;->dp(I)I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    const/16 v8, 0xa

    .line 4914
    invoke-direct {p0, v8}, Lcom/shilapi/xcertplay/DiPlayActivity;->dp(I)I

    move-result v2

    invoke-direct {p0, v8}, Lcom/shilapi/xcertplay/DiPlayActivity;->dp(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v7, v4, v2, v4, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 4915
    move-object v9, v7

    check-cast v9, Landroid/view/View;

    sget-object v2, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/Glass;->getRIPPLE()I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    const-string/jumbo v3, "valueOf(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v3, Landroid/graphics/drawable/Drawable;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const/4 v6, -0x1

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v5, Landroid/graphics/drawable/Drawable;

    invoke-static {v2, v3, v5}, Lcom/shilapi/xcertplay/LegacyViewsKt;->rippleCompat(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v9, v2}, Lcom/shilapi/xcertplay/LegacyViewsKt;->setBackgroundCompat(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x1

    .line 4916
    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 4917
    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4918
    new-instance v3, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda296;

    move-object/from16 v5, p4

    invoke-direct {v3, v5}, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda296;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4920
    sget-object v10, Lcom/shilapi/xcertplay/DiPlayActivity;->Companion:Lcom/shilapi/xcertplay/DiPlayActivity$Companion;

    # invokes: Lcom/shilapi/xcertplay/DiPlayActivity$Companion;->getTEXT()I
    invoke-static {v10}, Lcom/shilapi/xcertplay/DiPlayActivity$Companion;->access$getTEXT(Lcom/shilapi/xcertplay/DiPlayActivity$Companion;)I

    move-result v3

    const/16 v5, 0x11

    invoke-direct {p0, v1, v5, v3, v2}, Lcom/shilapi/xcertplay/DiPlayActivity;->label(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v11

    .line 4921
    move-object v1, v11

    check-cast v1, Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v12, -0x2

    invoke-direct {v2, v4, v12, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v7, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4922
    # invokes: Lcom/shilapi/xcertplay/DiPlayActivity$Companion;->getACCENT()I
    invoke-static {v10}, Lcom/shilapi/xcertplay/DiPlayActivity$Companion;->access$getACCENT(Lcom/shilapi/xcertplay/DiPlayActivity$Companion;)I

    move-result v3

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/16 v2, 0xf

    move-object v0, p0

    move-object/from16 v1, p3

    invoke-static/range {v0 .. v6}, Lcom/shilapi/xcertplay/DiPlayActivity;->label$default(Lcom/shilapi/xcertplay/DiPlayActivity;Ljava/lang/String;IIZILjava/lang/Object;)Landroid/widget/TextView;

    move-result-object v13

    const v14, 0x800015

    .line 4923
    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v0, 0x2

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 4925
    # invokes: Lcom/shilapi/xcertplay/DiPlayActivity$Companion;->getMUTED()I
    invoke-static {v10}, Lcom/shilapi/xcertplay/DiPlayActivity$Companion;->access$getMUTED(Lcom/shilapi/xcertplay/DiPlayActivity$Companion;)I

    move-result v3

    const-string/jumbo v1, "\u203a"

    const/16 v2, 0x16

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/shilapi/xcertplay/DiPlayActivity;->label$default(Lcom/shilapi/xcertplay/DiPlayActivity;Ljava/lang/String;IIZILjava/lang/Object;)Landroid/widget/TextView;

    move-result-object v1

    .line 4928
    new-instance v2, Lcom/shilapi/xcertplay/DiPlayActivity$RowValueBox;

    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    invoke-direct {p0, v8}, Lcom/shilapi/xcertplay/DiPlayActivity;->dp(I)I

    move-result v4

    invoke-direct {v2, v3, v11, v1, v4}, Lcom/shilapi/xcertplay/DiPlayActivity$RowValueBox;-><init>(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/TextView;I)V

    .line 4929
    move-object v3, v13

    check-cast v3, Landroid/view/View;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v12, v12, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    check-cast v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v2, v3, v4}, Lcom/shilapi/xcertplay/DiPlayActivity$RowValueBox;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4931
    check-cast v2, Landroid/view/View;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v4, v3

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 v5, 0xc

    invoke-direct {p0, v5}, Lcom/shilapi/xcertplay/DiPlayActivity;->dp(I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/shilapi/xcertplay/LegacyViewsKt;->setMarginStartCompat(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v7, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4932
    check-cast v1, Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, v8}, Lcom/shilapi/xcertplay/DiPlayActivity;->dp(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/shilapi/xcertplay/LegacyViewsKt;->setMarginStartCompat(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v7, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v1, p1

    .line 4933
    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v13
.end method

.method private static final valueRow$lambda$745$lambda$744(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    .line 4918
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private final vendorBluetoothOnly()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method





.method private final version()Ljava/lang/String;
    .locals 3

    .line 4859
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "0.1.0-beta.1"

    :cond_0
    return-object v0
.end method
















.method private final wirelessIdleHint()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/shilapi/xcertplay/E01OemBluetooth;->summary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method











.method private final wirelessReady()Lcom/shilapi/xcertplay/ConnectionUi$WirelessReady;
    .locals 1

    invoke-static {p0}, Lcom/shilapi/xcertplay/E01OemBluetooth;->phoneReady(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/shilapi/xcertplay/ConnectionUi$WirelessReady;->OK:Lcom/shilapi/xcertplay/ConnectionUi$WirelessReady;

    return-object v0

    :cond_0
    sget-object v0, Lcom/shilapi/xcertplay/ConnectionUi$WirelessReady;->NOT_PAIRED:Lcom/shilapi/xcertplay/ConnectionUi$WirelessReady;

    return-object v0
.end method

.method private final writeSettingsMissing()Z
    .locals 2

    .line 3640
    sget-object v0, Lcom/shilapi/xcertplay/DiPlayActivity;->writeSettingsMissingForTest:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    sget-object v0, Lcom/shilapi/xcertplay/network/LegacySoftApManager;->Companion:Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/network/LegacySoftApManager$Companion;->canWriteSettings(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final askForCarPlay$common_release([Ljava/lang/String;Landroid/content/Intent;Lkotlin/jvm/functions/Function2;)Z
    .locals 10

    const-string v0, "done"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->isFinishing()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/shilapi/xcertplay/compat/Api19Kt;->isDestroyedCompat(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->hostConsentDone:Lkotlin/jvm/functions/Function2;

    if-nez v0, :cond_6

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    goto/16 :goto_4

    .line 181
    :cond_0
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->firstRunNoticePending()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    if-eqz p2, :cond_2

    .line 183
    const-string v0, "VPN consent"

    goto :goto_0

    :cond_2
    const-string v0, "runtime permission"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/DiPlayActivity;->bringToFrontForDialog$common_release(Ljava/lang/String;)V

    .line 184
    iput-object p3, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->hostConsentDone:Lkotlin/jvm/functions/Function2;

    .line 185
    :try_start_0
    sget-object p3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object p3, p0

    check-cast p3, Lcom/shilapi/xcertplay/DiPlayActivity;

    if-eqz p2, :cond_3

    iget-object p3, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->hostSheet:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {p3, p2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    iget-object p3, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->hostPermissions:Landroidx/activity/result/ActivityResultLauncher;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    :goto_1
    sget-object p3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p3, v0

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p3}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    :goto_2
    invoke-static {p3}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    const/4 v0, 0x0

    .line 186
    iput-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->hostConsentDone:Lkotlin/jvm/functions/Function2;

    :cond_4
    if-eqz p2, :cond_5

    .line 187
    const-string p1, "VPN sheet"

    goto :goto_3

    :cond_5
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v7, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda39;

    invoke-direct {v7}, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda39;-><init>()V

    const/16 v8, 0x1f

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v9}, Lkotlin/collections/ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "consent for the CarPlay screen asked on home: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " asked="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "xcertplay-boot"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p3

    :cond_6
    :goto_4
    return v1
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "newBase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    sget-object v0, Lcom/shilapi/xcertplay/CarDisplay;->INSTANCE:Lcom/shilapi/xcertplay/CarDisplay;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/CarDisplay;->wrap(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public final bringToFrontForDialog$common_release(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "why"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/shilapi/xcertplay/compat/Api19Kt;->isDestroyedCompat(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 197
    :cond_0
    sget-object v0, Lcom/shilapi/xcertplay/DiPlayActivity;->resumedScreen:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shilapi/xcertplay/DiPlayActivity;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ne v0, p0, :cond_2

    goto :goto_1

    .line 198
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": bringing 06Link home forward so the dialog can show"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "xcertplay-boot"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :try_start_0
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object p1, p0

    check-cast p1, Lcom/shilapi/xcertplay/DiPlayActivity;

    .line 201
    new-instance p1, Landroid/content/Intent;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const-class v1, Lcom/shilapi/xcertplay/DiPlayActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 202
    const-string v0, "com.sixlink.car.extra.STAY"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x20030000

    .line 203
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 200
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    .line 209
    invoke-virtual {p0, p1, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->overridePendingTransition(II)V

    .line 210
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 199
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    return-void
.end method

.method public final diagnosticExportTimeout(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->exportInProgress:Z

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->exportButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    sget v1, Lcom/shilapi/xcertplay/host/R$string;->save:I

    invoke-virtual {p0, v1}, Lcom/shilapi/xcertplay/DiPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->toast(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 481
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    .line 482
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 483
    iput-boolean v3, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->backPressSeen:Z

    goto :goto_0

    .line 484
    :cond_0
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->backPressSeen:Z

    if-nez v0, :cond_1

    return v3

    .line 485
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_2

    iput-boolean v2, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->backPressSeen:Z

    .line 487
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 488
    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    .line 489
    :goto_2
    sget-object v4, Lcom/shilapi/xcertplay/CarPlayBackgroundSession;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayBackgroundSession;

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/CarPlayBackgroundSession;->hasSession()Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayMediaKeys;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-virtual {v4, v5, v0, v1}, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->onWheelKey(IZZ)Z

    move-result v0

    if-eqz v0, :cond_5

    return v3

    .line 491
    :cond_5
    sget-object v0, Lcom/shilapi/xcertplay/CarPlayBackgroundSession;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayBackgroundSession;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/CarPlayBackgroundSession;->hasSession()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 492
    sget-object v0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaButton;->INSTANCE:Lcom/shilapi/xcertplay/airplay/CarPlayMediaButton;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaButton;->actionFor(I)Lcom/shilapi/xcertplay/airplay/WheelAction;

    move-result-object v0

    sget-object v4, Lcom/shilapi/xcertplay/airplay/WheelAction;->MODE:Lcom/shilapi/xcertplay/airplay/WheelAction;

    if-ne v0, v4, :cond_7

    if-eqz v1, :cond_6

    const/4 p1, 0x0

    .line 493
    invoke-static {p0, v2, v3, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->openProjection$default(Lcom/shilapi/xcertplay/DiPlayActivity;ZILjava/lang/Object;)V

    :cond_6
    return v3

    .line 496
    :cond_7
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method




.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 468
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    sget-object p1, Lcom/shilapi/xcertplay/CarDisplay;->INSTANCE:Lcom/shilapi/xcertplay/CarDisplay;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/shilapi/xcertplay/CarDisplay;->onConfigurationChanged(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->render()V

    .line 469
    iget-object p1, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->firstRunNoticeDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/shilapi/xcertplay/FirstRunNotice;->INSTANCE:Lcom/shilapi/xcertplay/FirstRunNotice;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/FirstRunNotice;->fit(Landroid/app/Dialog;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 355
    sget-object v0, Lcom/shilapi/xcertplay/Appearance;->INSTANCE:Lcom/shilapi/xcertplay/Appearance;

    sget-object v1, Lcom/shilapi/xcertplay/Appearance;->INSTANCE:Lcom/shilapi/xcertplay/Appearance;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3, v4}, Lcom/shilapi/xcertplay/Appearance;->isDark$default(Lcom/shilapi/xcertplay/Appearance;Landroid/content/Context;Ljava/util/Calendar;ILjava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/Appearance;->activityTheme(Z)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/DiPlayActivity;->setTheme(I)V

    .line 356
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 359
    sget-object v0, Lcom/shilapi/xcertplay/compat/LowMemoryGate;->INSTANCE:Lcom/shilapi/xcertplay/compat/LowMemoryGate;

    invoke-virtual {v0, v2}, Lcom/shilapi/xcertplay/compat/LowMemoryGate;->postponeHeavyStartup(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda145;

    invoke-direct {v1, p0}, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda145;-><init>(Lcom/shilapi/xcertplay/DiPlayActivity;)V

    const-wide/16 v5, 0x9c4

    invoke-virtual {v0, v1, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 362
    :cond_0
    sget-object v0, Lcom/shilapi/xcertplay/LogcatRecorder;->INSTANCE:Lcom/shilapi/xcertplay/LogcatRecorder;

    invoke-virtual {v0, v2}, Lcom/shilapi/xcertplay/LogcatRecorder;->start(Landroid/content/Context;)V

    .line 365
    :goto_0
    sget-object v0, Lcom/shilapi/xcertplay/HostLaunch;->INSTANCE:Lcom/shilapi/xcertplay/HostLaunch;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/HostLaunch;->setHome(Ljava/lang/ref/WeakReference;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 367
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v0, :cond_1

    goto :goto_1

    .line 368
    :cond_1
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v5, "com.sixlink.car.extra.AUTO_START"

    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-ne v3, v0, :cond_2

    :goto_1
    sget-object v3, Lcom/shilapi/xcertplay/HostLaunch;->INSTANCE:Lcom/shilapi/xcertplay/HostLaunch;

    invoke-virtual {v3, v1}, Lcom/shilapi/xcertplay/HostLaunch;->setUserStopped(Z)V

    .line 369
    :cond_2
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v5, "com.sixlink.car.extra.IPHONE_AFTER_CANCEL"

    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-ne v3, v0, :cond_3

    .line 370
    sget-object v3, Lcom/shilapi/xcertplay/ConnectionProgress;->INSTANCE:Lcom/shilapi/xcertplay/ConnectionProgress;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/ConnectionProgress;->noteIphonePluggedAfterCancel()V

    .line 374
    :cond_3
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->vendorBluetoothOnly()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v3, v4

    goto :goto_3

    :cond_4
    :try_start_0
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v3, p0

    check-cast v3, Lcom/shilapi/xcertplay/DiPlayActivity;

    .line 377
    sget-object v3, Lcom/shilapi/xcertplay/IphonePairing;->Companion:Lcom/shilapi/xcertplay/IphonePairing$Companion;

    move-object v5, p0

    check-cast v5, Landroid/app/Activity;

    new-instance v6, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda147;

    invoke-direct {v6, p0}, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda147;-><init>(Lcom/shilapi/xcertplay/DiPlayActivity;)V

    invoke-virtual {v3, v5, v6}, Lcom/shilapi/xcertplay/IphonePairing$Companion;->watchBonding(Landroid/app/Activity;Lkotlin/jvm/functions/Function1;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    .line 374
    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v3

    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v3}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 378
    :goto_2
    invoke-static {v3}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v3, v4

    :cond_5
    check-cast v3, Landroid/content/BroadcastReceiver;

    .line 374
    :goto_3
    iput-object v3, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->bondWatcher:Landroid/content/BroadcastReceiver;

    .line 379
    sget-object v3, Lcom/shilapi/xcertplay/AppLocale;->INSTANCE:Lcom/shilapi/xcertplay/AppLocale;

    invoke-virtual {v3, v2}, Lcom/shilapi/xcertplay/AppLocale;->preference(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->languagePreferenceAtCreate:Ljava/lang/String;

    .line 380
    sget-object v2, Lcom/shilapi/xcertplay/hud/BydNavigationOutputs;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydNavigationOutputs;

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "getApplicationContext(...)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/shilapi/xcertplay/hud/BydNavigationOutputs;->onAppOpened(Landroid/content/Context;)V

    .line 381
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v2, v0}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    .line 382
    sget-object v2, Lcom/shilapi/xcertplay/CarDisplay;->INSTANCE:Lcom/shilapi/xcertplay/CarDisplay;

    move-object v3, p0

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/shilapi/xcertplay/CarDisplay;->fullScreen(Landroid/app/Activity;)V

    .line 383
    new-instance v2, Landroidx/core/view/WindowInsetsControllerCompat;

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Landroidx/core/view/WindowInsetsControllerCompat;-><init>(Landroid/view/Window;Landroid/view/View;)V

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->statusBars()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/core/view/WindowInsetsControllerCompat;->hide(I)V

    .line 384
    :try_start_1
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v2, p0

    check-cast v2, Lcom/shilapi/xcertplay/DiPlayActivity;

    sget-object v2, Lcom/shilapi/xcertplay/DiPlayBootstrap;->INSTANCE:Lcom/shilapi/xcertplay/DiPlayBootstrap;

    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/shilapi/xcertplay/DiPlayBootstrap;->ensure(Landroid/content/Context;)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v2

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_4
    invoke-static {v2}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 385
    const-string v3, "DiPlaySetup"

    const-string v4, "CarPlay authentication could not be loaded"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 386
    sget v2, Lcom/shilapi/xcertplay/host/R$string;->setup_error_auth:I

    invoke-virtual {p0, v2}, Lcom/shilapi/xcertplay/DiPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 384
    :cond_6
    iput-object v4, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->setupError:Ljava/lang/String;

    if-eqz p1, :cond_7

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    .line 388
    :goto_5
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->restoredFromState:Z

    if-eqz p1, :cond_8

    .line 389
    const-string v0, "pending_car_hotspot"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_6

    :cond_8
    const/4 v0, 0x0

    :goto_6
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->pendingCarHotspotSetup:Z

    if-eqz p1, :cond_9

    .line 390
    const-string/jumbo v0, "startup_permission_step"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_7

    :cond_9
    const/4 v0, 0x0

    :goto_7
    iput v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->startupPermissionStep:I

    if-eqz p1, :cond_a

    .line 391
    const-string/jumbo v0, "settings_tab"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    :cond_a
    iput v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->settingsTab:I

    .line 392
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->landscapeOnPortraitPhone()V

    .line 393
    const-string v0, "page"

    if-eqz p1, :cond_b

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    :cond_b
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    const-string v1, "home"

    :cond_c
    iput-object v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->page:Ljava/lang/String;

    if-eqz p1, :cond_d

    .line 394
    const-string v0, "back_stack"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->backStack:Ljava/util/ArrayList;

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 395
    :cond_d
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->render()V

    invoke-static {p0}, Lcom/shilapi/xcertplay/BootReceiver;->homeCreated(Landroid/app/Activity;)V

    .line 397
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->firstRunNoticePending()Z

    move-result p1

    if-nez p1, :cond_e

    .line 398
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->handleWirelessRecovery()V

    .line 399
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->handleBluetoothRecovery()V

    .line 401
    :cond_e
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p1

    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    new-instance v1, Lcom/shilapi/xcertplay/DiPlayActivity$onCreate$6;

    invoke-direct {v1, p0}, Lcom/shilapi/xcertplay/DiPlayActivity$onCreate$6;-><init>(Lcom/shilapi/xcertplay/DiPlayActivity;)V

    check-cast v1, Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {p1, v0, v1}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 446
    sget-object v0, Lcom/shilapi/xcertplay/HostLaunch;->INSTANCE:Lcom/shilapi/xcertplay/HostLaunch;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/HostLaunch;->getHome()Ljava/lang/ref/WeakReference;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shilapi/xcertplay/DiPlayActivity;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-ne v0, p0, :cond_1

    sget-object v0, Lcom/shilapi/xcertplay/HostLaunch;->INSTANCE:Lcom/shilapi/xcertplay/HostLaunch;

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/HostLaunch;->setHome(Ljava/lang/ref/WeakReference;)V

    .line 447
    :cond_1
    iput-object v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->hostConsentDone:Lkotlin/jvm/functions/Function2;

    .line 449
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->firstRunNoticeDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 450
    :cond_2
    iput-object v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->firstRunNoticeDialog:Landroid/app/Dialog;

    .line 452
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->rotationDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->rotationDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_3
    sget-object v0, Lcom/shilapi/xcertplay/ScreenRotation;->INSTANCE:Lcom/shilapi/xcertplay/ScreenRotation;

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/ScreenRotation;->setTrial(Lcom/shilapi/xcertplay/ScreenRotation$Choice;)V

    .line 453
    :cond_4
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->pairing:Lcom/shilapi/xcertplay/IphonePairing;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/IphonePairing;->stop()V

    .line 454
    :cond_5
    iput-object v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->pairing:Lcom/shilapi/xcertplay/IphonePairing;

    .line 456
    sget-object v0, Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable;->INSTANCE:Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable;

    iget-object v2, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->usbBtDiscoverableListener:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v2}, Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable;->removeListener(Lkotlin/jvm/functions/Function1;)V

    .line 460
    sget-object v0, Lcom/shilapi/xcertplay/DiPlayActivity;->resumedScreen:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shilapi/xcertplay/DiPlayActivity;

    goto :goto_1

    :cond_6
    move-object v0, v1

    :goto_1
    if-ne v0, p0, :cond_7

    sput-object v1, Lcom/shilapi/xcertplay/DiPlayActivity;->resumedScreen:Ljava/lang/ref/WeakReference;

    .line 461
    :cond_7
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->bondWatcher:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_8

    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v2, p0

    check-cast v2, Lcom/shilapi/xcertplay/DiPlayActivity;

    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/DiPlayActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    .line 462
    :cond_8
    iput-object v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->bondWatcher:Landroid/content/BroadcastReceiver;

    .line 463
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 11

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 411
    const-string v0, "com.sixlink.car.extra.STAY"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void

    .line 412
    :cond_0
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->setIntent(Landroid/content/Intent;)V

    .line 414
    const-string v0, "com.sixlink.car.extra.IPHONE_AFTER_CANCEL"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "home"

    if-eqz v0, :cond_1

    .line 415
    sget-object v0, Lcom/shilapi/xcertplay/ConnectionProgress;->INSTANCE:Lcom/shilapi/xcertplay/ConnectionProgress;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/ConnectionProgress;->noteIphonePluggedAfterCancel()V

    .line 416
    iput-object v2, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->page:Ljava/lang/String;

    .line 417
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->render()V

    .line 421
    :cond_1
    iput-boolean v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->leftByUser:Z

    .line 425
    const-string v0, "page"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    if-nez v3, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v5, "android.intent.action.MAIN"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 426
    sget-object v3, Lcom/shilapi/xcertplay/CarPlayBackgroundSession;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayBackgroundSession;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/CarPlayBackgroundSession;->hasSession()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->setupError:Ljava/lang/String;

    if-nez v3, :cond_2

    const/4 p1, 0x0

    .line 427
    invoke-static {p0, v1, v4, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->openProjection$default(Lcom/shilapi/xcertplay/DiPlayActivity;ZILjava/lang/Object;)V

    return-void

    .line 430
    :cond_2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move-object v2, v0

    :goto_0
    iput-object v2, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->page:Ljava/lang/String;

    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->backStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->render()V

    .line 432
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->firstRunNoticePending()Z

    move-result v0

    if-nez v0, :cond_4

    .line 434
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->handleWirelessRecovery()V

    .line 435
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->handleBluetoothRecovery()V

    .line 438
    :cond_4
    const-string v2, "com.sixlink.car.extra.AUTO_START"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->setupError:Ljava/lang/String;

    if-nez p1, :cond_6

    .line 439
    sget-object p1, Lcom/shilapi/xcertplay/CarPlayBackgroundSession;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayBackgroundSession;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/CarPlayBackgroundSession;->hasSession()Z

    move-result p1

    if-nez p1, :cond_6

    sget-object p1, Lcom/shilapi/xcertplay/DiPlayPreferences;->INSTANCE:Lcom/shilapi/xcertplay/DiPlayPreferences;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/shilapi/xcertplay/DiPlayPreferences;->autoConnect(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {p0}, Lcom/shilapi/xcertplay/E01NativeSettings;->startupEligible(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_6

    if-eqz v0, :cond_5

    .line 441
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->pendingAutoConnect:Ljava/lang/Boolean;

    iput-boolean v4, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->pendingAutoConnectAtBoot:Z

    iput-boolean v4, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->startupHeldByNotice:Z

    return-void

    :cond_5
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->pendingAutoConnect:Ljava/lang/Boolean;

    iput-boolean v4, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->pendingAutoConnectAtBoot:Z

    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->runPendingAutoConnect()V

    :cond_6
    return-void
.end method

.method protected onPause()V
    .locals 3

    .line 581
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->tick:Lcom/shilapi/xcertplay/DiPlayActivity$tick$1;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/shilapi/xcertplay/DiPlayActivity;->waitingOnHome:Z

    .line 582
    sget-object v0, Lcom/shilapi/xcertplay/DiPlayActivity;->resumedScreen:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shilapi/xcertplay/DiPlayActivity;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-ne v0, p0, :cond_1

    sput-object v1, Lcom/shilapi/xcertplay/DiPlayActivity;->resumedScreen:Ljava/lang/ref/WeakReference;

    .line 583
    :cond_1
    sget-object v0, Lcom/shilapi/xcertplay/airplay/CarPlayAttention;->INSTANCE:Lcom/shilapi/xcertplay/airplay/CarPlayAttention;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/airplay/CarPlayAttention;->getListener()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    iget-object v2, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->carPlayAttention:Lkotlin/jvm/functions/Function1;

    if-ne v0, v2, :cond_2

    sget-object v0, Lcom/shilapi/xcertplay/airplay/CarPlayAttention;->INSTANCE:Lcom/shilapi/xcertplay/airplay/CarPlayAttention;

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/airplay/CarPlayAttention;->setListener(Lkotlin/jvm/functions/Function1;)V

    .line 584
    :cond_2
    sget-object v0, Lcom/shilapi/xcertplay/GenericClusterPlaceholder;->INSTANCE:Lcom/shilapi/xcertplay/GenericClusterPlaceholder;

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/GenericClusterPlaceholder;->dismissIfOwner(Landroid/app/Activity;)V

    .line 585
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 7

    .line 501
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onResume()V

    invoke-static {p0}, Lcom/shilapi/xcertplay/E01NativeSettings;->prepareStartup(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/shilapi/xcertplay/E01StartupHotspot;->arm(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 502
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->startingOwnActivity:Z

    .line 503
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-ge v1, v2, :cond_0

    sget-object v1, Lcom/shilapi/xcertplay/AppLocale;->INSTANCE:Lcom/shilapi/xcertplay/AppLocale;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/shilapi/xcertplay/AppLocale;->preference(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->languagePreferenceAtCreate:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 504
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->recreate()V

    return-void

    .line 507
    :cond_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/shilapi/xcertplay/DiPlayActivity;->resumedScreen:Ljava/lang/ref/WeakReference;

    .line 509
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->resumedAt:J

    .line 510
    sget-object v1, Lcom/shilapi/xcertplay/AutoReturnToCarPlay;->Companion:Lcom/shilapi/xcertplay/AutoReturnToCarPlay$Companion;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/AutoReturnToCarPlay$Companion;->getShared()Lcom/shilapi/xcertplay/AutoReturnToCarPlay;

    move-result-object v1

    iget-wide v2, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->resumedAt:J

    invoke-virtual {v1, v2, v3}, Lcom/shilapi/xcertplay/AutoReturnToCarPlay;->touched(J)V

    .line 511
    sget-object v1, Lcom/shilapi/xcertplay/airplay/CarPlayAttention;->INSTANCE:Lcom/shilapi/xcertplay/airplay/CarPlayAttention;

    iget-object v2, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->carPlayAttention:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v1, v2}, Lcom/shilapi/xcertplay/airplay/CarPlayAttention;->setListener(Lkotlin/jvm/functions/Function1;)V

    .line 512
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->noteWaitingOnHome()V

    .line 513


    .line 514
    iget-object v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda142;

    invoke-direct {v2, p0}, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda142;-><init>(Lcom/shilapi/xcertplay/DiPlayActivity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 515
    iget-object v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->tick:Lcom/shilapi/xcertplay/DiPlayActivity$tick$1;

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->tick:Lcom/shilapi/xcertplay/DiPlayActivity$tick$1;

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 517
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->connectAfterWriteSettings:Z

    const-string/jumbo v2, "xcertplay-boot"

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->initialLaunch:Z

    if-nez v1, :cond_2

    .line 518
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->connectAfterWriteSettings:Z

    .line 519
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->writeSettingsMissing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 520
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->writeSettingsHint:Z

    .line 521
    iget-object v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda143;

    invoke-direct {v4, p0}, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda143;-><init>(Lcom/shilapi/xcertplay/DiPlayActivity;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 525
    :cond_1
    const-string v1, "back from Modify system settings without it; hint on the home screen"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iput-boolean v3, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->writeSettingsHint:Z

    .line 531
    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->initialLaunch:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->returnResume:Lcom/shilapi/xcertplay/orchestration/ReturnResume;

    new-instance v4, Lcom/shilapi/xcertplay/DiPlayActivity$onResume$3;

    invoke-direct {v4, p0}, Lcom/shilapi/xcertplay/DiPlayActivity$onResume$3;-><init>(Ljava/lang/Object;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v1, v4}, Lcom/shilapi/xcertplay/orchestration/ReturnResume;->onReturn(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;

    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->handler:Landroid/os/Handler;

    new-instance v5, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda144;

    invoke-direct {v5, p0, v1}, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda144;-><init>(Lcom/shilapi/xcertplay/DiPlayActivity;Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 534
    :cond_3
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->initialLaunch:Z

    const/4 v4, 0x0

    const-string v5, "home"

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->leftByUser:Z

    if-eqz v1, :cond_4

    .line 535
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->leftByUser:Z

    .line 536
    iget-object v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->page:Ljava/lang/String;

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->setupError:Ljava/lang/String;

    if-nez v1, :cond_4

    sget-object v1, Lcom/shilapi/xcertplay/CarPlayBackgroundSession;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayBackgroundSession;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/CarPlayBackgroundSession;->hasSession()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 537
    invoke-static {p0, v0, v3, v4}, Lcom/shilapi/xcertplay/DiPlayActivity;->openProjection$default(Lcom/shilapi/xcertplay/DiPlayActivity;ZILjava/lang/Object;)V

    return-void

    .line 542
    :cond_4
    sget-object v1, Lcom/shilapi/xcertplay/GenericClusterPlaceholder;->INSTANCE:Lcom/shilapi/xcertplay/GenericClusterPlaceholder;

    move-object v6, p0

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v1, v6}, Lcom/shilapi/xcertplay/GenericClusterPlaceholder;->ensure(Landroid/app/Activity;)V

    .line 544
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->initialLaunch:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->page:Ljava/lang/String;

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->page:Ljava/lang/String;

    const-string/jumbo v5, "settings"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->page:Ljava/lang/String;

    const-string v5, "connection"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->render()V

    .line 545
    :cond_6
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->initialLaunch:Z

    if-nez v1, :cond_7


    .line 546
    :cond_7
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->initialLaunch:Z

    if-eqz v1, :cond_e

    .line 547
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->initialLaunch:Z

    .line 554
    iget-object v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->setupError:Ljava/lang/String;

    const-string v5, "page"

    if-nez v1, :cond_8

    sget-object v1, Lcom/shilapi/xcertplay/CarPlayBackgroundSession;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayBackgroundSession;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/CarPlayBackgroundSession;->hasSession()Z

    move-result v1

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->restoredFromState:Z

    if-nez v1, :cond_8

    .line 555
    sget-object v1, Lcom/shilapi/xcertplay/DiPlayPreferences;->INSTANCE:Lcom/shilapi/xcertplay/DiPlayPreferences;

    move-object v6, p0

    check-cast v6, Landroid/content/Context;

    invoke-virtual {v1, v6}, Lcom/shilapi/xcertplay/DiPlayPreferences;->autoConnect(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    .line 556
    invoke-static {p0}, Lcom/shilapi/xcertplay/E01NativeSettings;->startupEligible(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 557
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->pendingAutoConnect:Ljava/lang/Boolean;

    .line 558
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v6, "com.sixlink.car.extra.AUTO_START"

    invoke-virtual {v1, v6, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->pendingAutoConnectAtBoot:Z

    .line 562
    :cond_8
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->firstRunNoticePending()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 563
    iput-boolean v3, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->startupHeldByNotice:Z

    .line 564
    iget-object v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->pendingAutoConnect:Ljava/lang/Boolean;

    if-eqz v1, :cond_9

    const/4 v0, 0x1

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "start-up held by the first-run notice (auto-connect="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 568
    :cond_a
    iget-object v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->setupError:Ljava/lang/String;

    if-nez v1, :cond_b

    sget-object v1, Lcom/shilapi/xcertplay/CarPlayBackgroundSession;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayBackgroundSession;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/CarPlayBackgroundSession;->hasSession()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->restoredFromState:Z

    if-nez v1, :cond_b

    .line 569
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    .line 570
    invoke-static {p0, v0, v3, v4}, Lcom/shilapi/xcertplay/DiPlayActivity;->openProjection$default(Lcom/shilapi/xcertplay/DiPlayActivity;ZILjava/lang/Object;)V

    return-void

    .line 574
    :cond_b
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->installStagedAtStart()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_1

    .line 577
    :cond_c
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->startFirstLaunchSetupOnce()Z

    move-result v0

    if-eqz v0, :cond_d

    iput-boolean v3, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->pendingAutoConnectAtBoot:Z

    return-void

    :cond_d
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity;->runPendingAutoConnect()V

    :cond_e
    :goto_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 466
    const-string v0, "page"

    iget-object v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->page:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "back_stack"

    iget-object v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->backStack:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "pending_car_hotspot"

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->pendingCarHotspotSetup:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "startup_permission_step"

    iget v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->startupPermissionStep:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "settings_tab"

    iget v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->settingsTab:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onUserInteraction()V
    .locals 3

    .line 887
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onUserInteraction()V

    .line 888
    sget-object v0, Lcom/shilapi/xcertplay/AutoReturnToCarPlay;->Companion:Lcom/shilapi/xcertplay/AutoReturnToCarPlay$Companion;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/AutoReturnToCarPlay$Companion;->getShared()Lcom/shilapi/xcertplay/AutoReturnToCarPlay;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/shilapi/xcertplay/AutoReturnToCarPlay;->touched(J)V

    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 1

    .line 594
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onUserLeaveHint()V

    .line 595
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->startingOwnActivity:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->startingOwnActivity:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->leftByUser:Z

    return-void
.end method




.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 612
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->startingOwnActivity:Z

    .line 613
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 602
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity;->startingOwnActivity:Z

    .line 603
    invoke-super {p0, p1, p2, p3}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method
