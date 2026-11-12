.class public final Lcom/shilapi/xcertplay/HeadUnitCheckText;
.super Ljava/lang/Object;
.source "HeadUnitCheckText.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0008\u0004\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\u0005J\u001a\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\r2\u0006\u0010\u0006\u001a\u00020\u0005R\u0017\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00050\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u001a\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/HeadUnitCheckText;",
        "",
        "<init>",
        "()V",
        "of",
        "",
        "language",
        "english",
        "LANGUAGES",
        "",
        "getLANGUAGES",
        "()Ljava/util/List;",
        "table",
        "",
        "SPANISH",
        "RUSSIAN",
        "ARABIC",
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
.field private static final ARABIC:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Lcom/shilapi/xcertplay/HeadUnitCheckText;

.field private static final LANGUAGES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final RUSSIAN:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SPANISH:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 25

    new-instance v0, Lcom/shilapi/xcertplay/HeadUnitCheckText;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/HeadUnitCheckText;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/HeadUnitCheckText;->INSTANCE:Lcom/shilapi/xcertplay/HeadUnitCheckText;

    const/4 v0, 0x3

    .line 20
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "es"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    const-string v4, "ru"

    aput-object v4, v1, v3

    const/4 v4, 0x2

    const-string v5, "ar"

    aput-object v5, v1, v4

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/shilapi/xcertplay/HeadUnitCheckText;->LANGUAGES:Ljava/util/List;

    const/16 v1, 0x31

    .line 31
    new-array v5, v1, [Lkotlin/Pair;

    const-string v6, "CarPlay inal\u00e1mbrico"

    const-string v7, "Wireless CarPlay"

    invoke-static {v7, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    aput-object v6, v5, v2

    .line 32
    const-string v6, "CarPlay con cable"

    const-string v8, "Wired CarPlay"

    invoke-static {v8, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    aput-object v6, v5, v3

    .line 33
    const-string v6, "Decodificaci\u00f3n de v\u00eddeo"

    const-string v9, "Video decoding"

    invoke-static {v9, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    aput-object v6, v5, v4

    .line 35
    const-string v6, "No: Android no tiene un Bluetooth utilizable; el Bluetooth de la unidad principal probablemente es un m\u00f3dulo manos libres aparte"

    .line 34
    const-string v10, "No: Android has no usable Bluetooth; the head unit\'s Bluetooth is probably a separate hands-free module"

    invoke-static {v10, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    aput-object v6, v5, v0

    .line 38
    const-string v6, "No: el Bluetooth de esta unidad es una implementaci\u00f3n del fabricante, as\u00ed que el Bluetooth de Android nunca puede funcionar. Conecta el iPhone con un cable USB y usa CarPlay con cable"

    .line 37
    const-string v11, "No: this unit\'s Bluetooth is a vendor implementation, so Android\'s Bluetooth can never work. Connect the iPhone with a USB cable and use wired CarPlay"

    invoke-static {v11, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/4 v12, 0x4

    aput-object v6, v5, v12

    .line 39
    const-string v6, "Por confirmar: activa el Bluetooth y vuelve a comprobar"

    const-string v13, "Unknown: turn Bluetooth on and check again"

    invoke-static {v13, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/4 v14, 0x5

    aput-object v6, v5, v14

    .line 40
    const-string v6, "No: las apps no pueden abrir un socket Bluetooth RFCOMM"

    const-string v15, "No: apps cannot open a Bluetooth RFCOMM socket"

    invoke-static {v15, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v16, 0x6

    aput-object v6, v5, v16

    .line 41
    const-string v6, "No: no hay punto de acceso Wi\u2011Fi ni Wi\u2011Fi Direct"

    const/16 v17, 0x3

    const-string v0, "No: no Wi-Fi hotspot and no Wi-Fi Direct"

    invoke-static {v0, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v18, 0x7

    aput-object v6, v5, v18

    .line 42
    const-string v6, "S\u00ed, formas de conexi\u00f3n: "

    const/16 v19, 0x0

    const-string v2, "Yes, connection setups: "

    invoke-static {v2, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v20, 0x8

    aput-object v6, v5, v20

    .line 43
    const-string v6, " (solo 2,4 GHz, puede entrecortarse)"

    const/16 v21, 0x1

    const-string v3, " (2.4 GHz only, may stutter)"

    invoke-static {v3, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v22, 0x9

    aput-object v6, v5, v22

    .line 44
    const-string v6, "A car hotspot"

    const/16 v23, 0x2

    const-string v4, "A punto de acceso del coche"

    invoke-static {v6, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/16 v6, 0xa

    aput-object v4, v5, v6

    .line 45
    const-string v4, "B automatic hotspot"

    const-string v6, "B punto de acceso autom\u00e1tico"

    invoke-static {v4, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/16 v6, 0xb

    aput-object v4, v5, v6

    .line 46
    const-string v4, "No: no USB host port"

    const-string v6, "No: no hay puerto USB host"

    invoke-static {v4, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/16 v6, 0xc

    aput-object v4, v5, v6

    .line 47
    const-string v4, "Unknown: no USB host feature but usbfs exists; try plugging in the iPhone"

    .line 48
    const-string v6, "Por confirmar: el sistema no declara USB host, pero existe usbfs; prueba a conectar el iPhone"

    .line 47
    invoke-static {v4, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/16 v6, 0xd

    aput-object v4, v5, v6

    .line 49
    const-string v4, "Yes"

    const-string v6, "S\u00ed"

    invoke-static {v4, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/16 v6, 0xe

    aput-object v4, v5, v6

    .line 50
    const-string v4, " (Android 4.x asks for VPN consent once after every full reboot)"

    .line 51
    const-string v6, " (Android 4.x pide una vez el permiso de VPN tras cada reinicio completo)"

    .line 50
    invoke-static {v4, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/16 v6, 0xf

    aput-object v4, v5, v6

    .line 52
    const-string v4, "FFmpeg software, %d cores"

    const-string v6, "FFmpeg por software, %d n\u00facleos"

    invoke-static {v4, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/16 v6, 0x10

    aput-object v4, v5, v6

    .line 53
    const-string v4, ", no NEON, likely too slow"

    const-string v6, ", sin NEON, probablemente demasiado lento"

    invoke-static {v4, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/16 v6, 0x11

    aput-object v4, v5, v6

    .line 54
    const-string v4, ", may not be smooth"

    const-string v6, ", puede no ser fluido"

    invoke-static {v4, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/16 v6, 0x12

    aput-object v4, v5, v6

    .line 55
    const-string v4, "Hardware H.264: "

    const-string v6, "H.264 por hardware: "

    invoke-static {v4, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/16 v6, 0x13

    aput-object v4, v5, v6

    .line 56
    const-string v4, "Software H.264 decoder only; may stutter"

    const-string v6, "Solo decodificador H.264 por software; puede entrecortarse"

    invoke-static {v4, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/16 v6, 0x14

    aput-object v4, v5, v6

    .line 57
    const-string v4, "No H.264 decoder"

    const-string v6, "No hay decodificador H.264"

    invoke-static {v4, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/16 v6, 0x15

    aput-object v4, v5, v6

    .line 58
    const-string v4, "head unit ADB (root)"

    const-string v6, "ADB de la unidad principal (root)"

    invoke-static {v4, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/16 v6, 0x16

    aput-object v4, v5, v6

    .line 59
    const-string v4, "head unit ADB + su"

    const-string v6, "ADB de la unidad principal + su"

    invoke-static {v4, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/16 v6, 0x17

    aput-object v4, v5, v6

    .line 60
    const-string v4, "head unit ADB (system service)"

    const-string v6, "ADB de la unidad principal (servicio del sistema)"

    invoke-static {v4, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/16 v6, 0x18

    aput-object v4, v5, v6

    .line 62
    const-string v4, "System"

    const-string v6, "Sistema"

    invoke-static {v4, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/16 v6, 0x19

    aput-object v4, v5, v6

    .line 63
    const-string v4, "Bluetooth"

    invoke-static {v4, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v24, 0x1a

    aput-object v6, v5, v24

    .line 64
    const-string v6, "IPv6 (optional method, not used by default)"

    const/16 v24, 0x4

    const-string v12, "IPv6 (m\u00e9todo opcional, no usado por defecto)"

    invoke-static {v6, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v12, 0x1b

    aput-object v6, v5, v12

    .line 65
    const-string v6, "Root and privileges"

    const-string v12, "Root y privilegios"

    invoke-static {v6, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v12, 0x1c

    aput-object v6, v5, v12

    .line 66
    const-string v6, "USB and wired"

    const-string v12, "USB y con cable"

    invoke-static {v6, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v12, 0x1d

    aput-object v6, v5, v12

    .line 67
    const-string v6, "Media"

    const-string v12, "Multimedia"

    invoke-static {v6, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v12, 0x1e

    aput-object v6, v5, v12

    .line 68
    const-string v6, "Display"

    const-string v12, "Pantalla"

    invoke-static {v6, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v12, 0x1f

    aput-object v6, v5, v12

    .line 70
    const-string v6, "Head unit check"

    const-string v12, "Comprobaci\u00f3n de la unidad principal"

    invoke-static {v6, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v12, 0x20

    aput-object v6, v5, v12

    .line 71
    const-string v6, "Check again"

    const-string v12, "Comprobar de nuevo"

    invoke-static {v6, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v12, 0x21

    aput-object v6, v5, v12

    .line 72
    const-string v6, "Back"

    const-string v12, "Atr\u00e1s"

    invoke-static {v6, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v12, 0x22

    aput-object v6, v5, v12

    .line 73
    const-string v6, "Getting ready\u2026"

    const-string v12, "Preparando\u2026"

    invoke-static {v6, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v12, 0x23

    aput-object v6, v5, v12

    .line 74
    const-string v6, "Allow 06Link to modify system settings so it can turn the hotspot on; the check continues when you return"

    .line 75
    const-string v12, "Permite que 06Link modifique los ajustes del sistema para poder activar el punto de acceso; la comprobaci\u00f3n contin\u00faa al volver"

    .line 74
    invoke-static {v6, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v12, 0x24

    aput-object v6, v5, v12

    .line 76
    const-string v6, "Checking\u2026"

    const-string v12, "Comprobando\u2026"

    invoke-static {v6, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v12, 0x25

    aput-object v6, v5, v12

    .line 77
    const-string v6, "Turning Bluetooth on\u2026"

    const-string v12, "Activando el Bluetooth\u2026"

    invoke-static {v6, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v12, 0x26

    aput-object v6, v5, v12

    .line 78
    const-string v6, "Bluetooth did not turn on"

    const-string v12, "El Bluetooth no se activ\u00f3"

    invoke-static {v6, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v12, 0x27

    aput-object v6, v5, v12

    .line 79
    const-string v6, "Turning Wi-Fi on\u2026"

    const-string v12, "Activando el Wi\u2011Fi\u2026"

    invoke-static {v6, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v12, 0x28

    aput-object v6, v5, v12

    .line 80
    const-string v6, "Wi-Fi did not turn on"

    const-string v12, "El Wi\u2011Fi no se activ\u00f3"

    invoke-static {v6, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v12, 0x29

    aput-object v6, v5, v12

    .line 81
    const-string v6, "This head unit has no Wi-Fi, so Wi-Fi and the hotspot are not switched on (wireless CarPlay needs Wi-Fi)"

    .line 82
    const-string v12, "Esta unidad principal no tiene Wi\u2011Fi, as\u00ed que no se activan el Wi\u2011Fi ni el punto de acceso (CarPlay inal\u00e1mbrico necesita Wi\u2011Fi)"

    .line 81
    invoke-static {v6, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v12, 0x2a

    aput-object v6, v5, v12

    .line 83
    const-string v6, "Turning the hotspot on\u2026"

    const-string v12, "Activando el punto de acceso\u2026"

    invoke-static {v6, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v12, 0x2b

    aput-object v6, v5, v12

    .line 84
    const-string v6, "hotspot"

    const-string v12, "punto de acceso"

    invoke-static {v6, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v12, 0x2c

    aput-object v6, v5, v12

    .line 85
    const-string v6, "The hotspot stayed off: no permission to modify system settings"

    .line 86
    const-string v12, "El punto de acceso sigui\u00f3 apagado: falta el permiso para modificar los ajustes del sistema"

    .line 85
    invoke-static {v6, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v12, 0x2d

    aput-object v6, v5, v12

    .line 87
    const-string v6, "The hotspot did not turn on (refused or timed out; MIUI and similar also need the Turn on Wi-Fi permission)"

    .line 88
    const-string v12, "El punto de acceso no se activ\u00f3 (rechazado o tiempo agotado; MIUI y similares tambi\u00e9n necesitan el permiso \u00abActivar Wi\u2011Fi\u00bb)"

    .line 87
    invoke-static {v6, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v12, 0x2e

    aput-object v6, v5, v12

    .line 89
    const-string v6, "Switched on for the check: "

    const-string v12, "Activado para la comprobaci\u00f3n: "

    invoke-static {v6, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v12, 0x2f

    aput-object v6, v5, v12

    .line 90
    const-string v6, "Report saved: "

    const-string v12, "Informe guardado: "

    invoke-static {v6, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v12, 0x30

    aput-object v6, v5, v12

    .line 29
    invoke-static {v5}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v5

    sput-object v5, Lcom/shilapi/xcertplay/HeadUnitCheckText;->SPANISH:Ljava/util/Map;

    .line 94
    new-array v5, v1, [Lkotlin/Pair;

    const-string/jumbo v6, "\u0411\u0435\u0441\u043f\u0440\u043e\u0432\u043e\u0434\u043d\u043e\u0439 CarPlay"

    invoke-static {v7, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    aput-object v6, v5, v19

    .line 95
    const-string v6, "CarPlay \u043f\u043e \u043a\u0430\u0431\u0435\u043b\u044e"

    invoke-static {v8, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    aput-object v6, v5, v21

    .line 96
    const-string/jumbo v6, "\u0414\u0435\u043a\u043e\u0434\u0438\u0440\u043e\u0432\u0430\u043d\u0438\u0435 \u0432\u0438\u0434\u0435\u043e"

    invoke-static {v9, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    aput-object v6, v5, v23

    .line 98
    const-string/jumbo v6, "\u041d\u0435\u0442: \u0432 Android \u043d\u0435\u0442 \u0434\u043e\u0441\u0442\u0443\u043f\u043d\u043e\u0433\u043e Bluetooth; Bluetooth \u043c\u0430\u0433\u043d\u0438\u0442\u043e\u043b\u044b, \u0432\u0435\u0440\u043e\u044f\u0442\u043d\u043e, \u043e\u0442\u0434\u0435\u043b\u044c\u043d\u044b\u0439 \u043c\u043e\u0434\u0443\u043b\u044c \u0433\u0440\u043e\u043c\u043a\u043e\u0439 \u0441\u0432\u044f\u0437\u0438"

    .line 97
    invoke-static {v10, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    aput-object v6, v5, v17

    .line 101
    const-string/jumbo v6, "\u041d\u0435\u0442: Bluetooth \u044d\u0442\u043e\u0439 \u043c\u0430\u0433\u043d\u0438\u0442\u043e\u043b\u044b \u2014 \u0440\u0435\u0430\u043b\u0438\u0437\u0430\u0446\u0438\u044f \u043f\u0440\u043e\u0438\u0437\u0432\u043e\u0434\u0438\u0442\u0435\u043b\u044f, \u043f\u043e\u044d\u0442\u043e\u043c\u0443 Bluetooth \u0432 Android \u0437\u0434\u0435\u0441\u044c \u043d\u0438\u043a\u043e\u0433\u0434\u0430 \u043d\u0435 \u0437\u0430\u0440\u0430\u0431\u043e\u0442\u0430\u0435\u0442. \u041f\u043e\u0434\u043a\u043b\u044e\u0447\u0438\u0442\u0435 iPhone \u043a\u0430\u0431\u0435\u043b\u0435\u043c USB \u0438 \u0438\u0441\u043f\u043e\u043b\u044c\u0437\u0443\u0439\u0442\u0435 CarPlay \u043f\u043e \u043a\u0430\u0431\u0435\u043b\u044e"

    .line 100
    invoke-static {v11, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    aput-object v6, v5, v24

    .line 102
    const-string/jumbo v6, "\u041d\u0435 \u043e\u043f\u0440\u0435\u0434\u0435\u043b\u0435\u043d\u043e: \u0432\u043a\u043b\u044e\u0447\u0438\u0442\u0435 Bluetooth \u0438 \u043f\u0440\u043e\u0432\u0435\u0440\u044c\u0442\u0435 \u0441\u043d\u043e\u0432\u0430"

    invoke-static {v13, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    aput-object v6, v5, v14

    .line 103
    const-string/jumbo v6, "\u041d\u0435\u0442: \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f \u043d\u0435 \u043c\u043e\u0433\u0443\u0442 \u043e\u0442\u043a\u0440\u044b\u0442\u044c Bluetooth-\u0441\u043e\u043a\u0435\u0442 RFCOMM"

    invoke-static {v15, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    aput-object v6, v5, v16

    .line 104
    const-string/jumbo v6, "\u041d\u0435\u0442: \u043d\u0435\u0442 \u043d\u0438 \u0442\u043e\u0447\u043a\u0438 \u0434\u043e\u0441\u0442\u0443\u043f\u0430 Wi\u2011Fi, \u043d\u0438 Wi\u2011Fi Direct"

    invoke-static {v0, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    aput-object v6, v5, v18

    .line 105
    const-string/jumbo v6, "\u0414\u0430, \u0441\u043f\u043e\u0441\u043e\u0431\u044b \u043f\u043e\u0434\u043a\u043b\u044e\u0447\u0435\u043d\u0438\u044f: "

    invoke-static {v2, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    aput-object v6, v5, v20

    .line 106
    const-string v6, " (\u0442\u043e\u043b\u044c\u043a\u043e 2,4 \u0413\u0413\u0446, \u0432\u043e\u0437\u043c\u043e\u0436\u043d\u044b \u0440\u044b\u0432\u043a\u0438)"

    invoke-static {v3, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    aput-object v6, v5, v22

    .line 107
    const-string v6, "A car hotspot"

    const-string v12, "A \u0442\u043e\u0447\u043a\u0430 \u0434\u043e\u0441\u0442\u0443\u043f\u0430 \u0430\u0432\u0442\u043e\u043c\u043e\u0431\u0438\u043b\u044f"

    invoke-static {v6, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v12, 0xa

    aput-object v6, v5, v12

    .line 108
    const-string v6, "B automatic hotspot"

    const-string v12, "B \u0430\u0432\u0442\u043e\u043c\u0430\u0442\u0438\u0447\u0435\u0441\u043a\u0430\u044f \u0442\u043e\u0447\u043a\u0430 \u0434\u043e\u0441\u0442\u0443\u043f\u0430"

    invoke-static {v6, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v12, 0xb

    aput-object v6, v5, v12

    .line 109
    const-string v6, "No: no USB host port"

    const-string/jumbo v12, "\u041d\u0435\u0442: \u043d\u0435\u0442 \u043f\u043e\u0440\u0442\u0430 USB-\u0445\u043e\u0441\u0442\u0430"

    invoke-static {v6, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v12, 0xc

    aput-object v6, v5, v12

    .line 110
    const-string v6, "Unknown: no USB host feature but usbfs exists; try plugging in the iPhone"

    .line 111
    const-string/jumbo v12, "\u041d\u0435 \u043e\u043f\u0440\u0435\u0434\u0435\u043b\u0435\u043d\u043e: \u0441\u0438\u0441\u0442\u0435\u043c\u0430 \u043d\u0435 \u0437\u0430\u044f\u0432\u043b\u044f\u0435\u0442 USB-\u0445\u043e\u0441\u0442, \u043d\u043e usbfs \u0435\u0441\u0442\u044c; \u043f\u043e\u043f\u0440\u043e\u0431\u0443\u0439\u0442\u0435 \u043f\u043e\u0434\u043a\u043b\u044e\u0447\u0438\u0442\u044c iPhone"

    .line 110
    invoke-static {v6, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v12, 0xd

    aput-object v6, v5, v12

    .line 112
    const-string v6, "Yes"

    const-string/jumbo v12, "\u0414\u0430"

    invoke-static {v6, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v12, 0xe

    aput-object v6, v5, v12

    .line 113
    const-string v6, " (Android 4.x asks for VPN consent once after every full reboot)"

    .line 114
    const-string v12, " (Android 4.x \u043e\u0434\u0438\u043d \u0440\u0430\u0437 \u043f\u0440\u043e\u0441\u0438\u0442 \u0440\u0430\u0437\u0440\u0435\u0448\u0435\u043d\u0438\u0435 VPN \u043f\u043e\u0441\u043b\u0435 \u043a\u0430\u0436\u0434\u043e\u0439 \u043f\u043e\u043b\u043d\u043e\u0439 \u043f\u0435\u0440\u0435\u0437\u0430\u0433\u0440\u0443\u0437\u043a\u0438)"

    .line 113
    invoke-static {v6, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v12, 0xf

    aput-object v6, v5, v12

    .line 115
    const-string v6, "FFmpeg software, %d cores"

    const-string/jumbo v12, "\u041f\u0440\u043e\u0433\u0440\u0430\u043c\u043c\u043d\u044b\u0439 FFmpeg, \u044f\u0434\u0435\u0440: %d"

    invoke-static {v6, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v12, 0x10

    aput-object v6, v5, v12

    .line 116
    const-string v6, ", no NEON, likely too slow"

    const-string v12, ", \u0431\u0435\u0437 NEON, \u0441\u043a\u043e\u0440\u0435\u0435 \u0432\u0441\u0435\u0433\u043e \u0441\u043b\u0438\u0448\u043a\u043e\u043c \u043c\u0435\u0434\u043b\u0435\u043d\u043d\u043e"

    invoke-static {v6, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v12, 0x11

    aput-object v6, v5, v12

    .line 117
    const-string v6, ", may not be smooth"

    const-string v12, ", \u0438\u0437\u043e\u0431\u0440\u0430\u0436\u0435\u043d\u0438\u0435 \u043c\u043e\u0436\u0435\u0442 \u0431\u044b\u0442\u044c \u043d\u0435 \u043f\u043b\u0430\u0432\u043d\u044b\u043c"

    invoke-static {v6, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v12, 0x12

    aput-object v6, v5, v12

    .line 118
    const-string v6, "Hardware H.264: "

    const-string/jumbo v12, "\u0410\u043f\u043f\u0430\u0440\u0430\u0442\u043d\u044b\u0439 H.264: "

    invoke-static {v6, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v12, 0x13

    aput-object v6, v5, v12

    .line 119
    const-string v6, "Software H.264 decoder only; may stutter"

    const-string/jumbo v12, "\u0422\u043e\u043b\u044c\u043a\u043e \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u043c\u043d\u044b\u0439 \u0434\u0435\u043a\u043e\u0434\u0435\u0440 H.264; \u0432\u043e\u0437\u043c\u043e\u0436\u043d\u044b \u0440\u044b\u0432\u043a\u0438"

    invoke-static {v6, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v12, 0x14

    aput-object v6, v5, v12

    .line 120
    const-string v6, "No H.264 decoder"

    const-string/jumbo v12, "\u041d\u0435\u0442 \u0434\u0435\u043a\u043e\u0434\u0435\u0440\u0430 H.264"

    invoke-static {v6, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v12, 0x15

    aput-object v6, v5, v12

    .line 121
    const-string v6, "head unit ADB (root)"

    const-string v12, "ADB \u043c\u0430\u0433\u043d\u0438\u0442\u043e\u043b\u044b (root)"

    invoke-static {v6, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v12, 0x16

    aput-object v6, v5, v12

    .line 122
    const-string v6, "head unit ADB + su"

    const-string v12, "ADB \u043c\u0430\u0433\u043d\u0438\u0442\u043e\u043b\u044b + su"

    invoke-static {v6, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v12, 0x17

    aput-object v6, v5, v12

    .line 123
    const-string v6, "head unit ADB (system service)"

    const-string v12, "ADB \u043c\u0430\u0433\u043d\u0438\u0442\u043e\u043b\u044b (\u0441\u0438\u0441\u0442\u0435\u043c\u043d\u0430\u044f \u0441\u043b\u0443\u0436\u0431\u0430)"

    invoke-static {v6, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v12, 0x18

    aput-object v6, v5, v12

    .line 124
    const-string v6, "System"

    const-string/jumbo v12, "\u0421\u0438\u0441\u0442\u0435\u043c\u0430"

    invoke-static {v6, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v12, 0x19

    aput-object v6, v5, v12

    const/16 v6, 0x1a

    .line 125
    invoke-static {v4, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v12

    aput-object v12, v5, v6

    .line 126
    const-string v6, "IPv6 (optional method, not used by default)"

    const-string v12, "IPv6 (\u043d\u0435\u043e\u0431\u044f\u0437\u0430\u0442\u0435\u043b\u044c\u043d\u044b\u0439 \u0441\u043f\u043e\u0441\u043e\u0431, \u043f\u043e \u0443\u043c\u043e\u043b\u0447\u0430\u043d\u0438\u044e \u043d\u0435 \u0438\u0441\u043f\u043e\u043b\u044c\u0437\u0443\u0435\u0442\u0441\u044f)"

    invoke-static {v6, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v12, 0x1b

    aput-object v6, v5, v12

    .line 127
    const-string v6, "Root and privileges"

    const-string v12, "Root \u0438 \u043f\u0440\u0438\u0432\u0438\u043b\u0435\u0433\u0438\u0438"

    invoke-static {v6, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v12, 0x1c

    aput-object v6, v5, v12

    .line 128
    const-string v6, "USB and wired"

    const-string v12, "USB \u0438 \u043a\u0430\u0431\u0435\u043b\u044c"

    invoke-static {v6, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v12, 0x1d

    aput-object v6, v5, v12

    .line 129
    const-string v6, "Media"

    const-string/jumbo v12, "\u041c\u0435\u0434\u0438\u0430"

    invoke-static {v6, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v12, 0x1e

    aput-object v6, v5, v12

    .line 130
    const-string v6, "Display"

    const-string/jumbo v12, "\u042d\u043a\u0440\u0430\u043d"

    invoke-static {v6, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v12, 0x1f

    aput-object v6, v5, v12

    .line 131
    const-string v6, "Head unit check"

    const-string/jumbo v12, "\u041f\u0440\u043e\u0432\u0435\u0440\u043a\u0430 \u043c\u0430\u0433\u043d\u0438\u0442\u043e\u043b\u044b"

    invoke-static {v6, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v12, 0x20

    aput-object v6, v5, v12

    .line 132
    const-string v6, "Check again"

    const-string/jumbo v12, "\u041f\u0440\u043e\u0432\u0435\u0440\u0438\u0442\u044c \u0441\u043d\u043e\u0432\u0430"

    invoke-static {v6, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v12, 0x21

    aput-object v6, v5, v12

    .line 133
    const-string v6, "Back"

    const-string/jumbo v12, "\u041d\u0430\u0437\u0430\u0434"

    invoke-static {v6, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v12, 0x22

    aput-object v6, v5, v12

    .line 134
    const-string v6, "Getting ready\u2026"

    const-string/jumbo v12, "\u041f\u043e\u0434\u0433\u043e\u0442\u043e\u0432\u043a\u0430\u2026"

    invoke-static {v6, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v12, 0x23

    aput-object v6, v5, v12

    .line 135
    const-string v6, "Allow 06Link to modify system settings so it can turn the hotspot on; the check continues when you return"

    .line 136
    const-string/jumbo v12, "\u0420\u0430\u0437\u0440\u0435\u0448\u0438\u0442\u0435 06Link \u0438\u0437\u043c\u0435\u043d\u044f\u0442\u044c \u0441\u0438\u0441\u0442\u0435\u043c\u043d\u044b\u0435 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438, \u0447\u0442\u043e\u0431\u044b \u0432\u043a\u043b\u044e\u0447\u0438\u0442\u044c \u0442\u043e\u0447\u043a\u0443 \u0434\u043e\u0441\u0442\u0443\u043f\u0430; \u043f\u0440\u043e\u0432\u0435\u0440\u043a\u0430 \u043f\u0440\u043e\u0434\u043e\u043b\u0436\u0438\u0442\u0441\u044f, \u043a\u043e\u0433\u0434\u0430 \u0432\u044b \u0432\u0435\u0440\u043d\u0451\u0442\u0435\u0441\u044c"

    .line 135
    invoke-static {v6, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v12, 0x24

    aput-object v6, v5, v12

    .line 137
    const-string v6, "Checking\u2026"

    const-string/jumbo v12, "\u041f\u0440\u043e\u0432\u0435\u0440\u043a\u0430\u2026"

    invoke-static {v6, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v12, 0x25

    aput-object v6, v5, v12

    .line 138
    const-string v6, "Turning Bluetooth on\u2026"

    const-string/jumbo v12, "\u0412\u043a\u043b\u044e\u0447\u0435\u043d\u0438\u0435 Bluetooth\u2026"

    invoke-static {v6, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v12, 0x26

    aput-object v6, v5, v12

    .line 139
    const-string v6, "Bluetooth did not turn on"

    const-string v12, "Bluetooth \u043d\u0435 \u0432\u043a\u043b\u044e\u0447\u0438\u043b\u0441\u044f"

    invoke-static {v6, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v12, 0x27

    aput-object v6, v5, v12

    .line 140
    const-string v6, "Turning Wi-Fi on\u2026"

    const-string/jumbo v12, "\u0412\u043a\u043b\u044e\u0447\u0435\u043d\u0438\u0435 Wi\u2011Fi\u2026"

    invoke-static {v6, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v12, 0x28

    aput-object v6, v5, v12

    .line 141
    const-string v6, "Wi-Fi did not turn on"

    const-string v12, "Wi\u2011Fi \u043d\u0435 \u0432\u043a\u043b\u044e\u0447\u0438\u043b\u0441\u044f"

    invoke-static {v6, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v12, 0x29

    aput-object v6, v5, v12

    .line 142
    const-string v6, "This head unit has no Wi-Fi, so Wi-Fi and the hotspot are not switched on (wireless CarPlay needs Wi-Fi)"

    .line 143
    const-string/jumbo v12, "\u0412 \u044d\u0442\u043e\u043c \u0433\u043e\u043b\u043e\u0432\u043d\u043e\u043c \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u0435 \u043d\u0435\u0442 Wi\u2011Fi, \u043f\u043e\u044d\u0442\u043e\u043c\u0443 Wi\u2011Fi \u0438 \u0442\u043e\u0447\u043a\u0430 \u0434\u043e\u0441\u0442\u0443\u043f\u0430 \u043d\u0435 \u0432\u043a\u043b\u044e\u0447\u0430\u044e\u0442\u0441\u044f (\u0431\u0435\u0441\u043f\u0440\u043e\u0432\u043e\u0434\u043d\u043e\u043c\u0443 CarPlay \u043d\u0443\u0436\u0435\u043d Wi\u2011Fi)"

    .line 142
    invoke-static {v6, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v12, 0x2a

    aput-object v6, v5, v12

    .line 144
    const-string v6, "Turning the hotspot on\u2026"

    const-string/jumbo v12, "\u0412\u043a\u043b\u044e\u0447\u0435\u043d\u0438\u0435 \u0442\u043e\u0447\u043a\u0438 \u0434\u043e\u0441\u0442\u0443\u043f\u0430\u2026"

    invoke-static {v6, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v12, 0x2b

    aput-object v6, v5, v12

    .line 145
    const-string v6, "hotspot"

    const-string/jumbo v12, "\u0442\u043e\u0447\u043a\u0430 \u0434\u043e\u0441\u0442\u0443\u043f\u0430"

    invoke-static {v6, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v12, 0x2c

    aput-object v6, v5, v12

    .line 146
    const-string v6, "The hotspot stayed off: no permission to modify system settings"

    .line 147
    const-string/jumbo v12, "\u0422\u043e\u0447\u043a\u0430 \u0434\u043e\u0441\u0442\u0443\u043f\u0430 \u043d\u0435 \u0432\u043a\u043b\u044e\u0447\u0438\u043b\u0430\u0441\u044c: \u043d\u0435\u0442 \u0440\u0430\u0437\u0440\u0435\u0448\u0435\u043d\u0438\u044f \u043d\u0430 \u0438\u0437\u043c\u0435\u043d\u0435\u043d\u0438\u0435 \u0441\u0438\u0441\u0442\u0435\u043c\u043d\u044b\u0445 \u043d\u0430\u0441\u0442\u0440\u043e\u0435\u043a"

    .line 146
    invoke-static {v6, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v12, 0x2d

    aput-object v6, v5, v12

    .line 148
    const-string v6, "The hotspot did not turn on (refused or timed out; MIUI and similar also need the Turn on Wi-Fi permission)"

    .line 149
    const-string/jumbo v12, "\u0422\u043e\u0447\u043a\u0430 \u0434\u043e\u0441\u0442\u0443\u043f\u0430 \u043d\u0435 \u0432\u043a\u043b\u044e\u0447\u0438\u043b\u0430\u0441\u044c (\u043e\u0442\u043a\u0430\u0437 \u0438\u043b\u0438 \u0442\u0430\u0439\u043c-\u0430\u0443\u0442; MIUI \u0438 \u043f\u043e\u0434\u043e\u0431\u043d\u044b\u043c \u0441\u0438\u0441\u0442\u0435\u043c\u0430\u043c \u0442\u0430\u043a\u0436\u0435 \u043d\u0443\u0436\u043d\u043e \u0440\u0430\u0437\u0440\u0435\u0448\u0435\u043d\u0438\u0435 \u00ab\u0412\u043a\u043b\u044e\u0447\u0435\u043d\u0438\u0435 Wi\u2011Fi\u00bb)"

    .line 148
    invoke-static {v6, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v12, 0x2e

    aput-object v6, v5, v12

    .line 150
    const-string v6, "Switched on for the check: "

    const-string/jumbo v12, "\u0412\u043a\u043b\u044e\u0447\u0435\u043d\u043e \u0434\u043b\u044f \u043f\u0440\u043e\u0432\u0435\u0440\u043a\u0438: "

    invoke-static {v6, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v12, 0x2f

    aput-object v6, v5, v12

    .line 151
    const-string v6, "Report saved: "

    const-string/jumbo v12, "\u041e\u0442\u0447\u0451\u0442 \u0441\u043e\u0445\u0440\u0430\u043d\u0451\u043d: "

    invoke-static {v6, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v12, 0x30

    aput-object v6, v5, v12

    .line 93
    invoke-static {v5}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v5

    sput-object v5, Lcom/shilapi/xcertplay/HeadUnitCheckText;->RUSSIAN:Ljava/util/Map;

    .line 155
    new-array v1, v1, [Lkotlin/Pair;

    const-string v5, "CarPlay \u0627\u0644\u0644\u0627\u0633\u0644\u0643\u064a"

    invoke-static {v7, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    aput-object v5, v1, v19

    .line 156
    const-string v5, "CarPlay \u0627\u0644\u0633\u0644\u0643\u064a"

    invoke-static {v8, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    aput-object v5, v1, v21

    .line 157
    const-string/jumbo v5, "\u0641\u0643 \u062a\u0631\u0645\u064a\u0632 \u0627\u0644\u0641\u064a\u062f\u064a\u0648"

    invoke-static {v9, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    aput-object v5, v1, v23

    .line 159
    const-string/jumbo v5, "\u0644\u0627: \u0644\u0627 \u064a\u062a\u0648\u0641\u0631 \u0641\u064a Android \u0628\u0644\u0648\u062a\u0648\u062b \u0642\u0627\u0628\u0644 \u0644\u0644\u0627\u0633\u062a\u062e\u062f\u0627\u0645\u061b \u0639\u0644\u0649 \u0627\u0644\u0623\u0631\u062c\u062d \u0623\u0646 \u0628\u0644\u0648\u062a\u0648\u062b \u0648\u062d\u062f\u0629 \u0627\u0644\u0631\u0623\u0633 \u0648\u062d\u062f\u0629 \u0645\u0646\u0641\u0635\u0644\u0629 \u0644\u0644\u0645\u0643\u0627\u0644\u0645\u0627\u062a \u0628\u062f\u0648\u0646 \u0627\u0633\u062a\u062e\u062f\u0627\u0645 \u0627\u0644\u064a\u062f\u064a\u0646"

    .line 158
    invoke-static {v10, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    aput-object v5, v1, v17

    .line 162
    const-string/jumbo v5, "\u0644\u0627: \u0628\u0644\u0648\u062a\u0648\u062b \u0647\u0630\u0647 \u0627\u0644\u0648\u062d\u062f\u0629 \u0645\u0646 \u062a\u0646\u0641\u064a\u0630 \u0627\u0644\u0634\u0631\u0643\u0629 \u0627\u0644\u0645\u0635\u0646\u0651\u0639\u0629\u060c \u0644\u0630\u0627 \u0644\u0627 \u064a\u0645\u0643\u0646 \u0623\u0646 \u064a\u0639\u0645\u0644 \u0628\u0644\u0648\u062a\u0648\u062b Android \u0647\u0646\u0627 \u0623\u0628\u062f\u064b\u0627. \u0648\u0635\u0651\u0644 \u0627\u0644\u0622\u064a\u0641\u0648\u0646 \u0628\u0643\u0627\u0628\u0644 USB \u0648\u0627\u0633\u062a\u062e\u062f\u0645 CarPlay \u0627\u0644\u0633\u0644\u0643\u064a"

    .line 161
    invoke-static {v11, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    aput-object v5, v1, v24

    .line 163
    const-string/jumbo v5, "\u063a\u064a\u0631 \u0645\u0639\u0631\u0648\u0641: \u0634\u063a\u0651\u0644 \u0627\u0644\u0628\u0644\u0648\u062a\u0648\u062b \u0648\u0623\u0639\u062f \u0627\u0644\u0641\u062d\u0635"

    invoke-static {v13, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    aput-object v5, v1, v14

    .line 164
    const-string/jumbo v5, "\u0644\u0627: \u0644\u0627 \u062a\u0633\u062a\u0637\u064a\u0639 \u0627\u0644\u062a\u0637\u0628\u064a\u0642\u0627\u062a \u0641\u062a\u062d \u0645\u0642\u0628\u0633 \u0628\u0644\u0648\u062a\u0648\u062b RFCOMM"

    invoke-static {v15, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    aput-object v5, v1, v16

    .line 165
    const-string/jumbo v5, "\u0644\u0627: \u0644\u0627 \u062a\u0648\u062c\u062f \u0646\u0642\u0637\u0629 \u0627\u062a\u0635\u0627\u0644 Wi\u2011Fi \u0648\u0644\u0627 Wi\u2011Fi Direct"

    invoke-static {v0, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v1, v18

    .line 166
    const-string/jumbo v0, "\u0646\u0639\u0645\u060c \u0637\u0631\u0642 \u0627\u0644\u0627\u062a\u0635\u0627\u0644: "

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v1, v20

    .line 167
    const-string v0, " (2.4 \u063a\u064a\u063a\u0627\u0647\u0631\u062a\u0632 \u0641\u0642\u0637\u060c \u0642\u062f \u064a\u062a\u0642\u0637\u0639)"

    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v1, v22

    .line 168
    const-string v0, "A car hotspot"

    const-string v2, "A \u0646\u0642\u0637\u0629 \u0627\u062a\u0635\u0627\u0644 \u0627\u0644\u0633\u064a\u0627\u0631\u0629"

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v2, 0xa

    aput-object v0, v1, v2

    .line 169
    const-string v0, "B automatic hotspot"

    const-string v2, "B \u0646\u0642\u0637\u0629 \u0627\u062a\u0635\u0627\u0644 \u062a\u0644\u0642\u0627\u0626\u064a\u0629"

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v2, 0xb

    aput-object v0, v1, v2

    .line 170
    const-string v0, "No: no USB host port"

    const-string/jumbo v2, "\u0644\u0627: \u0644\u0627 \u064a\u0648\u062c\u062f \u0645\u0646\u0641\u0630 USB \u0645\u0636\u064a\u0641"

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v2, 0xc

    aput-object v0, v1, v2

    .line 171
    const-string v0, "Unknown: no USB host feature but usbfs exists; try plugging in the iPhone"

    .line 172
    const-string/jumbo v2, "\u063a\u064a\u0631 \u0645\u0639\u0631\u0648\u0641: \u0644\u0627 \u064a\u0639\u0644\u0646 \u0627\u0644\u0646\u0638\u0627\u0645 \u0639\u0646 USB \u0645\u0636\u064a\u0641 \u0644\u0643\u0646 usbfs \u0645\u0648\u062c\u0648\u062f\u061b \u062c\u0631\u0651\u0628 \u062a\u0648\u0635\u064a\u0644 iPhone"

    .line 171
    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v2, 0xd

    aput-object v0, v1, v2

    .line 173
    const-string v0, "Yes"

    const-string/jumbo v2, "\u0646\u0639\u0645"

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v2, 0xe

    aput-object v0, v1, v2

    .line 174
    const-string v0, " (Android 4.x asks for VPN consent once after every full reboot)"

    .line 175
    const-string v2, " (\u064a\u0637\u0644\u0628 Android 4.x \u0627\u0644\u0645\u0648\u0627\u0641\u0642\u0629 \u0639\u0644\u0649 VPN \u0645\u0631\u0629 \u0648\u0627\u062d\u062f\u0629 \u0628\u0639\u062f \u0643\u0644 \u0625\u0639\u0627\u062f\u0629 \u062a\u0634\u063a\u064a\u0644 \u0643\u0627\u0645\u0644\u0629)"

    .line 174
    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v2, 0xf

    aput-object v0, v1, v2

    .line 176
    const-string v0, "FFmpeg software, %d cores"

    const-string v2, "FFmpeg \u0628\u0631\u0645\u062c\u064a\u060c \u0639\u062f\u062f \u0627\u0644\u0623\u0646\u0648\u064a\u0629: %d"

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v2, 0x10

    aput-object v0, v1, v2

    .line 177
    const-string v0, ", no NEON, likely too slow"

    const-string/jumbo v2, "\u060c \u0628\u062f\u0648\u0646 NEON\u060c \u0648\u063a\u0627\u0644\u0628\u064b\u0627 \u0628\u0637\u064a\u0621 \u062c\u062f\u064b\u0627"

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v2, 0x11

    aput-object v0, v1, v2

    .line 178
    const-string v0, ", may not be smooth"

    const-string/jumbo v2, "\u060c \u0648\u0642\u062f \u0644\u0627 \u062a\u0643\u0648\u0646 \u0627\u0644\u0635\u0648\u0631\u0629 \u0633\u0644\u0633\u0629"

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v2, 0x12

    aput-object v0, v1, v2

    .line 179
    const-string v0, "Hardware H.264: "

    const-string v2, "H.264 \u0628\u0627\u0644\u0639\u062a\u0627\u062f: "

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v2, 0x13

    aput-object v0, v1, v2

    .line 180
    const-string v0, "Software H.264 decoder only; may stutter"

    const-string/jumbo v2, "\u0645\u0641\u0643\u0643 \u062a\u0631\u0645\u064a\u0632 H.264 \u0628\u0631\u0645\u062c\u064a \u0641\u0642\u0637\u061b \u0642\u062f \u064a\u062a\u0642\u0637\u0639"

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v2, 0x14

    aput-object v0, v1, v2

    .line 181
    const-string v0, "No H.264 decoder"

    const-string/jumbo v2, "\u0644\u0627 \u064a\u0648\u062c\u062f \u0645\u0641\u0643\u0643 \u062a\u0631\u0645\u064a\u0632 H.264"

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v2, 0x15

    aput-object v0, v1, v2

    .line 182
    const-string v0, "head unit ADB (root)"

    const-string v2, "ADB \u0648\u062d\u062f\u0629 \u0627\u0644\u0631\u0623\u0633 (root)"

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v2, 0x16

    aput-object v0, v1, v2

    .line 183
    const-string v0, "head unit ADB + su"

    const-string v2, "ADB \u0648\u062d\u062f\u0629 \u0627\u0644\u0631\u0623\u0633 + su"

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v2, 0x17

    aput-object v0, v1, v2

    .line 184
    const-string v0, "head unit ADB (system service)"

    const-string v2, "ADB \u0648\u062d\u062f\u0629 \u0627\u0644\u0631\u0623\u0633 (\u062e\u062f\u0645\u0629 \u0627\u0644\u0646\u0638\u0627\u0645)"

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v2, 0x18

    aput-object v0, v1, v2

    .line 185
    const-string v0, "System"

    const-string/jumbo v2, "\u0627\u0644\u0646\u0638\u0627\u0645"

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v2, 0x19

    aput-object v0, v1, v2

    .line 186
    const-string/jumbo v0, "\u0627\u0644\u0628\u0644\u0648\u062a\u0648\u062b"

    invoke-static {v4, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v2, 0x1a

    aput-object v0, v1, v2

    .line 187
    const-string v0, "IPv6 (optional method, not used by default)"

    const-string v2, "IPv6 (\u0637\u0631\u064a\u0642\u0629 \u0627\u062e\u062a\u064a\u0627\u0631\u064a\u0629\u060c \u063a\u064a\u0631 \u0645\u0633\u062a\u062e\u062f\u0645\u0629 \u0627\u0641\u062a\u0631\u0627\u0636\u064a\u064b\u0627)"

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v2, 0x1b

    aput-object v0, v1, v2

    .line 188
    const-string v0, "Root and privileges"

    const-string v2, "Root \u0648\u0627\u0644\u0635\u0644\u0627\u062d\u064a\u0627\u062a"

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v2, 0x1c

    aput-object v0, v1, v2

    .line 189
    const-string v0, "USB and wired"

    const-string v2, "USB \u0648\u0627\u0644\u0627\u062a\u0635\u0627\u0644 \u0627\u0644\u0633\u0644\u0643\u064a"

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v2, 0x1d

    aput-object v0, v1, v2

    .line 190
    const-string v0, "Media"

    const-string/jumbo v2, "\u0627\u0644\u0648\u0633\u0627\u0626\u0637"

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v2, 0x1e

    aput-object v0, v1, v2

    .line 191
    const-string v0, "Display"

    const-string/jumbo v2, "\u0627\u0644\u0634\u0627\u0634\u0629"

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v2, 0x1f

    aput-object v0, v1, v2

    .line 192
    const-string v0, "Head unit check"

    const-string/jumbo v2, "\u0641\u062d\u0635 \u0648\u062d\u062f\u0629 \u0627\u0644\u0631\u0623\u0633"

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v2, 0x20

    aput-object v0, v1, v2

    .line 193
    const-string v0, "Check again"

    const-string/jumbo v2, "\u0625\u0639\u0627\u062f\u0629 \u0627\u0644\u0641\u062d\u0635"

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v2, 0x21

    aput-object v0, v1, v2

    .line 194
    const-string v0, "Back"

    const-string/jumbo v2, "\u0631\u062c\u0648\u0639"

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v2, 0x22

    aput-object v0, v1, v2

    .line 195
    const-string v0, "Getting ready\u2026"

    const-string/jumbo v2, "\u062c\u0627\u0631\u064d \u0627\u0644\u062a\u062d\u0636\u064a\u0631\u2026"

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v2, 0x23

    aput-object v0, v1, v2

    .line 196
    const-string v0, "Allow 06Link to modify system settings so it can turn the hotspot on; the check continues when you return"

    .line 197
    const-string/jumbo v2, "\u0627\u0633\u0645\u062d \u0644\u0640 06Link \u0628\u062a\u0639\u062f\u064a\u0644 \u0625\u0639\u062f\u0627\u062f\u0627\u062a \u0627\u0644\u0646\u0638\u0627\u0645 \u062d\u062a\u0649 \u064a\u062a\u0645\u0643\u0646 \u0645\u0646 \u062a\u0634\u063a\u064a\u0644 \u0646\u0642\u0637\u0629 \u0627\u0644\u0627\u062a\u0635\u0627\u0644\u061b \u064a\u0633\u062a\u0645\u0631 \u0627\u0644\u0641\u062d\u0635 \u0639\u0646\u062f \u0639\u0648\u062f\u062a\u0643"

    .line 196
    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v2, 0x24

    aput-object v0, v1, v2

    .line 198
    const-string v0, "Checking\u2026"

    const-string/jumbo v2, "\u062c\u0627\u0631\u064d \u0627\u0644\u0641\u062d\u0635\u2026"

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v2, 0x25

    aput-object v0, v1, v2

    .line 199
    const-string v0, "Turning Bluetooth on\u2026"

    const-string/jumbo v2, "\u062c\u0627\u0631\u064d \u062a\u0634\u063a\u064a\u0644 \u0627\u0644\u0628\u0644\u0648\u062a\u0648\u062b\u2026"

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v2, 0x26

    aput-object v0, v1, v2

    .line 200
    const-string v0, "Bluetooth did not turn on"

    const-string/jumbo v2, "\u0644\u0645 \u064a\u062a\u0645 \u062a\u0634\u063a\u064a\u0644 \u0627\u0644\u0628\u0644\u0648\u062a\u0648\u062b"

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v2, 0x27

    aput-object v0, v1, v2

    .line 201
    const-string v0, "Turning Wi-Fi on\u2026"

    const-string/jumbo v2, "\u062c\u0627\u0631\u064d \u062a\u0634\u063a\u064a\u0644 Wi\u2011Fi\u2026"

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v2, 0x28

    aput-object v0, v1, v2

    .line 202
    const-string v0, "Wi-Fi did not turn on"

    const-string/jumbo v2, "\u0644\u0645 \u064a\u062a\u0645 \u062a\u0634\u063a\u064a\u0644 Wi\u2011Fi"

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v2, 0x29

    aput-object v0, v1, v2

    .line 203
    const-string v0, "This head unit has no Wi-Fi, so Wi-Fi and the hotspot are not switched on (wireless CarPlay needs Wi-Fi)"

    .line 204
    const-string/jumbo v2, "\u0644\u0627 \u064a\u062d\u062a\u0648\u064a \u0647\u0630\u0627 \u0627\u0644\u062c\u0647\u0627\u0632 \u0639\u0644\u0649 Wi\u2011Fi\u060c \u0644\u0630\u0644\u0643 \u0644\u0627 \u064a\u062a\u0645 \u062a\u0634\u063a\u064a\u0644 Wi\u2011Fi \u0648\u0644\u0627 \u0646\u0642\u0637\u0629 \u0627\u0644\u0627\u062a\u0635\u0627\u0644 (\u064a\u062d\u062a\u0627\u062c CarPlay \u0627\u0644\u0644\u0627\u0633\u0644\u0643\u064a \u0625\u0644\u0649 Wi\u2011Fi)"

    .line 203
    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v2, 0x2a

    aput-object v0, v1, v2

    .line 205
    const-string v0, "Turning the hotspot on\u2026"

    const-string/jumbo v2, "\u062c\u0627\u0631\u064d \u062a\u0634\u063a\u064a\u0644 \u0646\u0642\u0637\u0629 \u0627\u0644\u0627\u062a\u0635\u0627\u0644\u2026"

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v2, 0x2b

    aput-object v0, v1, v2

    .line 206
    const-string v0, "hotspot"

    const-string/jumbo v2, "\u0646\u0642\u0637\u0629 \u0627\u0644\u0627\u062a\u0635\u0627\u0644"

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v2, 0x2c

    aput-object v0, v1, v2

    .line 207
    const-string v0, "The hotspot stayed off: no permission to modify system settings"

    .line 208
    const-string/jumbo v2, "\u0628\u0642\u064a\u062a \u0646\u0642\u0637\u0629 \u0627\u0644\u0627\u062a\u0635\u0627\u0644 \u0645\u0637\u0641\u0623\u0629: \u0644\u0627 \u064a\u0648\u062c\u062f \u0625\u0630\u0646 \u0628\u062a\u0639\u062f\u064a\u0644 \u0625\u0639\u062f\u0627\u062f\u0627\u062a \u0627\u0644\u0646\u0638\u0627\u0645"

    .line 207
    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v2, 0x2d

    aput-object v0, v1, v2

    .line 209
    const-string v0, "The hotspot did not turn on (refused or timed out; MIUI and similar also need the Turn on Wi-Fi permission)"

    .line 210
    const-string/jumbo v2, "\u0644\u0645 \u064a\u062a\u0645 \u062a\u0634\u063a\u064a\u0644 \u0646\u0642\u0637\u0629 \u0627\u0644\u0627\u062a\u0635\u0627\u0644 (\u0631\u064f\u0641\u0636 \u0627\u0644\u0637\u0644\u0628 \u0623\u0648 \u0627\u0646\u062a\u0647\u062a \u0627\u0644\u0645\u0647\u0644\u0629\u061b \u062a\u062d\u062a\u0627\u062c MIUI \u0648\u0627\u0644\u0623\u0646\u0638\u0645\u0629 \u0627\u0644\u0645\u0634\u0627\u0628\u0647\u0629 \u0623\u064a\u0636\u064b\u0627 \u0625\u0644\u0649 \u0625\u0630\u0646 \u00ab\u062a\u0634\u063a\u064a\u0644 Wi\u2011Fi\u00bb)"

    .line 209
    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v2, 0x2e

    aput-object v0, v1, v2

    .line 211
    const-string v0, "Switched on for the check: "

    const-string/jumbo v2, "\u062a\u0645 \u062a\u0634\u063a\u064a\u0644\u0647 \u0645\u0646 \u0623\u062c\u0644 \u0627\u0644\u0641\u062d\u0635: "

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v2, 0x2f

    aput-object v0, v1, v2

    .line 212
    const-string v0, "Report saved: "

    const-string/jumbo v2, "\u062a\u0645 \u062d\u0641\u0638 \u0627\u0644\u062a\u0642\u0631\u064a\u0631: "

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v2, 0x30

    aput-object v0, v1, v2

    .line 154
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/HeadUnitCheckText;->ARABIC:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLANGUAGES()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 20
    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCheckText;->LANGUAGES:Ljava/util/List;

    return-object v0
.end method

.method public final of(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "english"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_5

    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0xc31

    if-eq v0, v1, :cond_3

    const/16 v1, 0xcae

    if-eq v0, v1, :cond_2

    const/16 v1, 0xe43

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ru"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 14
    :cond_1
    sget-object p1, Lcom/shilapi/xcertplay/HeadUnitCheckText;->RUSSIAN:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 12
    :cond_2
    const-string v0, "es"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 13
    sget-object p1, Lcom/shilapi/xcertplay/HeadUnitCheckText;->SPANISH:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 12
    :cond_3
    const-string v0, "ar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    .line 15
    :cond_4
    sget-object p1, Lcom/shilapi/xcertplay/HeadUnitCheckText;->ARABIC:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_5
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final table(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "language"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0xc31

    if-eq v0, v1, :cond_3

    const/16 v1, 0xcae

    if-eq v0, v1, :cond_2

    const/16 v1, 0xe43

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ru"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 24
    :cond_1
    sget-object p1, Lcom/shilapi/xcertplay/HeadUnitCheckText;->RUSSIAN:Ljava/util/Map;

    return-object p1

    .line 22
    :cond_2
    const-string v0, "es"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 23
    sget-object p1, Lcom/shilapi/xcertplay/HeadUnitCheckText;->SPANISH:Ljava/util/Map;

    return-object p1

    .line 22
    :cond_3
    const-string v0, "ar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 26
    :cond_4
    :goto_0
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 25
    :cond_5
    sget-object p1, Lcom/shilapi/xcertplay/HeadUnitCheckText;->ARABIC:Ljava/util/Map;

    return-object p1
.end method
