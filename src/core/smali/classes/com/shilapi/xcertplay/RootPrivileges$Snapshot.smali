.class public final Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;
.super Ljava/lang/Object;
.source "RootPrivileges.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/RootPrivileges;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Snapshot"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/RootPrivileges$Snapshot$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0019\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0099\u0001\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\u0006\u0010\u0013\u001a\u00020\u0014\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0016\u0010\u0017R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0019R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u0015\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\n\n\u0002\u0010\u001f\u001a\u0004\u0008\u001d\u0010\u001eR\u0013\u0010\t\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u0019R\u0013\u0010\n\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u0019R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010\u0019R\u0013\u0010\u000c\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010\u0019R\u0015\u0010\r\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\n\n\u0002\u0010\u001f\u001a\u0004\u0008$\u0010\u001eR\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010\u0019R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\u0019R\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010\u0019R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010)R\u0011\u0010\u0013\u001a\u00020\u0014\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010+R\u0013\u0010\u0015\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010\u0019R\u0017\u0010-\u001a\u0008\u0012\u0004\u0012\u00020/0.8F\u00a2\u0006\u0006\u001a\u0004\u00080\u00101R\u0011\u00102\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u00083\u00104R\u0011\u00105\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u00086\u0010\u0019\u00a8\u00067"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;",
        "",
        "suPath",
        "",
        "rootTool",
        "grant",
        "Lcom/shilapi/xcertplay/RootPrivileges$Grant;",
        "rootIp",
        "",
        "buildType",
        "buildTags",
        "debuggable",
        "secure",
        "adbSetting",
        "adbdState",
        "usbConfig",
        "tcpPort",
        "adbAccess",
        "Lcom/shilapi/xcertplay/adb/LocalAdb$Access;",
        "adb",
        "Lcom/shilapi/xcertplay/RootPrivileges$Adb;",
        "selinux",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/RootPrivileges$Grant;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/adb/LocalAdb$Access;Lcom/shilapi/xcertplay/RootPrivileges$Adb;Ljava/lang/String;)V",
        "getSuPath",
        "()Ljava/lang/String;",
        "getRootTool",
        "getGrant",
        "()Lcom/shilapi/xcertplay/RootPrivileges$Grant;",
        "getRootIp",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "getBuildType",
        "getBuildTags",
        "getDebuggable",
        "getSecure",
        "getAdbSetting",
        "getAdbdState",
        "getUsbConfig",
        "getTcpPort",
        "getAdbAccess",
        "()Lcom/shilapi/xcertplay/adb/LocalAdb$Access;",
        "getAdb",
        "()Lcom/shilapi/xcertplay/RootPrivileges$Adb;",
        "getSelinux",
        "repairPaths",
        "",
        "Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;",
        "getRepairPaths",
        "()Ljava/util/List;",
        "debugFirmware",
        "getDebugFirmware",
        "()Z",
        "caps",
        "getCaps",
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


# instance fields
.field private final adb:Lcom/shilapi/xcertplay/RootPrivileges$Adb;

.field private final adbAccess:Lcom/shilapi/xcertplay/adb/LocalAdb$Access;

.field private final adbSetting:Ljava/lang/Boolean;

.field private final adbdState:Ljava/lang/String;

.field private final buildTags:Ljava/lang/String;

.field private final buildType:Ljava/lang/String;

.field private final debuggable:Ljava/lang/String;

.field private final grant:Lcom/shilapi/xcertplay/RootPrivileges$Grant;

.field private final rootIp:Ljava/lang/Boolean;

.field private final rootTool:Ljava/lang/String;

.field private final secure:Ljava/lang/String;

.field private final selinux:Ljava/lang/String;

.field private final suPath:Ljava/lang/String;

.field private final tcpPort:Ljava/lang/String;

.field private final usbConfig:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/RootPrivileges$Grant;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/adb/LocalAdb$Access;Lcom/shilapi/xcertplay/RootPrivileges$Adb;Ljava/lang/String;)V
    .locals 2

    move-object/from16 v0, p14

    const-string v1, "grant"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adb"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->suPath:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->rootTool:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->grant:Lcom/shilapi/xcertplay/RootPrivileges$Grant;

    .line 34
    iput-object p4, p0, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->rootIp:Ljava/lang/Boolean;

    .line 35
    iput-object p5, p0, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->buildType:Ljava/lang/String;

    .line 36
    iput-object p6, p0, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->buildTags:Ljava/lang/String;

    .line 37
    iput-object p7, p0, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->debuggable:Ljava/lang/String;

    .line 38
    iput-object p8, p0, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->secure:Ljava/lang/String;

    .line 39
    iput-object p9, p0, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->adbSetting:Ljava/lang/Boolean;

    .line 40
    iput-object p10, p0, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->adbdState:Ljava/lang/String;

    .line 41
    iput-object p11, p0, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->usbConfig:Ljava/lang/String;

    .line 42
    iput-object p12, p0, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->tcpPort:Ljava/lang/String;

    .line 43
    iput-object p13, p0, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->adbAccess:Lcom/shilapi/xcertplay/adb/LocalAdb$Access;

    .line 44
    iput-object v0, p0, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->adb:Lcom/shilapi/xcertplay/RootPrivileges$Adb;

    move-object/from16 p1, p15

    .line 45
    iput-object p1, p0, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->selinux:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAdb()Lcom/shilapi/xcertplay/RootPrivileges$Adb;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->adb:Lcom/shilapi/xcertplay/RootPrivileges$Adb;

    return-object v0
.end method

.method public final getAdbAccess()Lcom/shilapi/xcertplay/adb/LocalAdb$Access;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->adbAccess:Lcom/shilapi/xcertplay/adb/LocalAdb$Access;

    return-object v0
.end method

.method public final getAdbSetting()Ljava/lang/Boolean;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->adbSetting:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getAdbdState()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->adbdState:Ljava/lang/String;

    return-object v0
.end method

.method public final getBuildTags()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->buildTags:Ljava/lang/String;

    return-object v0
.end method

.method public final getBuildType()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->buildType:Ljava/lang/String;

    return-object v0
.end method

.method public final getCaps()Ljava/lang/String;
    .locals 6

    .line 63
    iget-object v0, p0, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->grant:Lcom/shilapi/xcertplay/RootPrivileges$Grant;

    sget-object v1, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/RootPrivileges$Grant;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 67
    const-string v0, "none"

    goto :goto_0

    .line 63
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 66
    :cond_1
    const-string/jumbo v0, "su:unprobed"

    goto :goto_0

    .line 65
    :cond_2
    const-string/jumbo v0, "su:denied"

    goto :goto_0

    .line 64
    :cond_3
    const-string/jumbo v0, "su:granted"

    .line 68
    :goto_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->adb:Lcom/shilapi/xcertplay/RootPrivileges$Adb;

    sget-object v2, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/RootPrivileges$Adb;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 74
    :pswitch_0
    const-string/jumbo v1, "tls"

    goto :goto_1

    .line 73
    :pswitch_1
    const-string v1, "off"

    goto :goto_1

    .line 72
    :pswitch_2
    const-string v1, "notapproved"

    goto :goto_1

    .line 71
    :pswitch_3
    const-string/jumbo v1, "shell"

    goto :goto_1

    .line 70
    :pswitch_4
    const-string/jumbo v1, "su"

    goto :goto_1

    .line 69
    :pswitch_5
    const-string v1, "root"

    .line 75
    :goto_1
    iget-object v2, p0, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->buildType:Ljava/lang/String;

    const-string v3, "?"

    if-nez v2, :cond_4

    move-object v2, v3

    :cond_4
    iget-object v4, p0, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->selinux:Ljava/lang/String;

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    move-object v3, v4

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "root="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " adb="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " build="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " selinux="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getDebugFirmware()Z
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->buildType:Ljava/lang/String;

    const-string/jumbo v1, "userdebug"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->buildType:Ljava/lang/String;

    const-string v1, "eng"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->debuggable:Ljava/lang/String;

    const-string v1, "1"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final getDebuggable()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->debuggable:Ljava/lang/String;

    return-object v0
.end method

.method public final getGrant()Lcom/shilapi/xcertplay/RootPrivileges$Grant;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->grant:Lcom/shilapi/xcertplay/RootPrivileges$Grant;

    return-object v0
.end method

.method public final getRepairPaths()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;",
            ">;"
        }
    .end annotation

    .line 49
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->suPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->grant:Lcom/shilapi/xcertplay/RootPrivileges$Grant;

    sget-object v2, Lcom/shilapi/xcertplay/RootPrivileges$Grant;->DENIED:Lcom/shilapi/xcertplay/RootPrivileges$Grant;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->grant:Lcom/shilapi/xcertplay/RootPrivileges$Grant;

    sget-object v2, Lcom/shilapi/xcertplay/RootPrivileges$Grant;->NO_SU:Lcom/shilapi/xcertplay/RootPrivileges$Grant;

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;->SU:Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->adb:Lcom/shilapi/xcertplay/RootPrivileges$Adb;

    sget-object v2, Lcom/shilapi/xcertplay/RootPrivileges$Adb;->ROOT:Lcom/shilapi/xcertplay/RootPrivileges$Adb;

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;->ADB_ROOT:Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_1
    iget-object v1, p0, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->adb:Lcom/shilapi/xcertplay/RootPrivileges$Adb;

    sget-object v2, Lcom/shilapi/xcertplay/RootPrivileges$Adb;->SU:Lcom/shilapi/xcertplay/RootPrivileges$Adb;

    if-ne v1, v2, :cond_2

    sget-object v1, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;->ADB_SU:Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_2
    iget-object v1, p0, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->adb:Lcom/shilapi/xcertplay/RootPrivileges$Adb;

    sget-object v2, Lcom/shilapi/xcertplay/RootPrivileges$Adb;->SHELL:Lcom/shilapi/xcertplay/RootPrivileges$Adb;

    if-ne v1, v2, :cond_3

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-gt v2, v1, :cond_3

    const/16 v2, 0x1d

    if-ge v1, v2, :cond_3

    sget-object v1, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;->ADB_NMS:Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_3
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getRootIp()Ljava/lang/Boolean;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->rootIp:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getRootTool()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->rootTool:Ljava/lang/String;

    return-object v0
.end method

.method public final getSecure()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->secure:Ljava/lang/String;

    return-object v0
.end method

.method public final getSelinux()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->selinux:Ljava/lang/String;

    return-object v0
.end method

.method public final getSuPath()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->suPath:Ljava/lang/String;

    return-object v0
.end method

.method public final getTcpPort()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->tcpPort:Ljava/lang/String;

    return-object v0
.end method

.method public final getUsbConfig()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->usbConfig:Ljava/lang/String;

    return-object v0
.end method
