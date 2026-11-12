.class public final Lcom/shilapi/xcertplay/usbbt/HciCommands;
.super Ljava/lang/Object;
.source "HciCommands.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHciCommands.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HciCommands.kt\ncom/shilapi/xcertplay/usbbt/HciCommands\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,204:1\n1#2:205\n1803#3,3:206\n*S KotlinDebug\n*F\n+ 1 HciCommands.kt\ncom/shilapi/xcertplay/usbbt/HciCommands\n*L\n181#1:206,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008P\n\u0002\u0010\u0012\n\u0002\u0008\u000b\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0010 \n\u0002\u0008\u0014\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005J\u0018\u0010U\u001a\u00020V2\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010W\u001a\u00020VJ\u000e\u0010X\u001a\u00020\u00052\u0006\u0010Y\u001a\u00020VJ\u0006\u0010Z\u001a\u00020VJ\u0006\u0010[\u001a\u00020VJ\u0006\u0010\\\u001a\u00020VJ\u0006\u0010]\u001a\u00020VJ\u0006\u0010^\u001a\u00020VJ\u0006\u0010_\u001a\u00020VJ\u000e\u0010`\u001a\u00020V2\u0006\u0010a\u001a\u00020bJ\u000e\u0010c\u001a\u00020V2\u0006\u0010d\u001a\u00020eJ\u000e\u0010f\u001a\u00020V2\u0006\u0010g\u001a\u00020\u0005J\u000e\u0010h\u001a\u00020V2\u0006\u0010i\u001a\u00020\u0005J\u000e\u0010j\u001a\u00020V2\u0006\u0010k\u001a\u00020lJ\u000e\u0010m\u001a\u00020V2\u0006\u0010n\u001a\u00020\u0005J\u000e\u0010o\u001a\u00020V2\u0006\u0010p\u001a\u00020lJ\u000e\u0010q\u001a\u00020V2\u0006\u0010p\u001a\u00020lJ\u000e\u0010r\u001a\u00020V2\u0006\u0010s\u001a\u00020\u0005J\u000e\u0010t\u001a\u00020V2\u0006\u0010u\u001a\u00020VJ\u0018\u0010v\u001a\u00020V2\u0006\u0010w\u001a\u00020x2\u0008\u0008\u0002\u0010y\u001a\u00020\u0005J\u0018\u0010z\u001a\u00020V2\u0006\u0010w\u001a\u00020x2\u0008\u0008\u0002\u0010{\u001a\u00020\u0005J\u0016\u0010|\u001a\u00020V2\u0006\u0010w\u001a\u00020x2\u0006\u0010}\u001a\u00020VJ\u000e\u0010~\u001a\u00020V2\u0006\u0010w\u001a\u00020xJ\u000e\u0010\u007f\u001a\u00020V2\u0006\u0010w\u001a\u00020xJ,\u0010\u0080\u0001\u001a\u00020V2\u0006\u0010w\u001a\u00020x2\u0007\u0010\u0081\u0001\u001a\u00020\u00052\u0007\u0010\u0082\u0001\u001a\u00020\u00052\t\u0008\u0002\u0010\u0083\u0001\u001a\u00020lJ\u0017\u0010\u0084\u0001\u001a\u00020V2\u0006\u0010w\u001a\u00020x2\u0006\u0010{\u001a\u00020\u0005J\u000f\u0010\u0085\u0001\u001a\u00020V2\u0006\u0010w\u001a\u00020xJ\u000f\u0010\u0086\u0001\u001a\u00020V2\u0006\u0010w\u001a\u00020xJ\u000f\u0010\u0087\u0001\u001a\u00020V2\u0006\u0010w\u001a\u00020xJ\u000f\u0010\u0088\u0001\u001a\u00020V2\u0006\u0010w\u001a\u00020xJ\u0010\u0010\u0089\u0001\u001a\u00020V2\u0007\u0010\u008a\u0001\u001a\u00020\u0005J\u0018\u0010\u008b\u0001\u001a\u00020V2\u0007\u0010\u008a\u0001\u001a\u00020\u00052\u0006\u0010k\u001a\u00020lJ\u001a\u0010\u008c\u0001\u001a\u00020V2\u0007\u0010\u008a\u0001\u001a\u00020\u00052\u0008\u0008\u0002\u0010{\u001a\u00020\u0005J\u000f\u0010\u008d\u0001\u001a\u00020V2\u0006\u0010w\u001a\u00020xJ\u0019\u0010\u0092\u0001\u001a\u00020b2\u0010\u0008\u0002\u0010\u0093\u0001\u001a\t\u0012\u0004\u0012\u00020\u00050\u008f\u0001J\u0018\u0010\u0094\u0001\u001a\u00020V2\u0007\u0010\u0095\u0001\u001a\u00020\u0005H\u0000\u00a2\u0006\u0003\u0008\u0096\u0001J\u0018\u0010\u0097\u0001\u001a\u00020V2\u0007\u0010\u0095\u0001\u001a\u00020\u0005H\u0000\u00a2\u0006\u0003\u0008\u0098\u0001J\u0018\u0010\u0099\u0001\u001a\u00020V2\u0007\u0010\u0095\u0001\u001a\u00020bH\u0000\u00a2\u0006\u0003\u0008\u009a\u0001J!\u0010\u009b\u0001\u001a\u00020V2\u0007\u0010\u009c\u0001\u001a\u00020V2\u0007\u0010\u009d\u0001\u001a\u00020\u0005H\u0000\u00a2\u0006\u0003\u0008\u009e\u0001J!\u0010\u009f\u0001\u001a\u00020V2\u0007\u0010\u00a0\u0001\u001a\u00020e2\u0007\u0010\u00a1\u0001\u001a\u00020\u0005H\u0000\u00a2\u0006\u0003\u0008\u00a2\u0001R\u0011\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u000b\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\nR\u0011\u0010\r\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\nR\u0011\u0010\u000f\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\nR\u0011\u0010\u0011\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\nR\u0011\u0010\u0013\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\nR\u0011\u0010\u0015\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\nR\u0011\u0010\u0017\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\nR\u0011\u0010\u0019\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\nR\u0011\u0010\u001b\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\nR\u0011\u0010\u001d\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\nR\u0011\u0010\u001f\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\nR\u0011\u0010!\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010\nR\u0011\u0010#\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010\nR\u0011\u0010%\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\nR\u0011\u0010\'\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010\nR\u0011\u0010)\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010\nR\u0011\u0010+\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010\nR\u0011\u0010-\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008.\u0010\nR\u0011\u0010/\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00080\u0010\nR\u0011\u00101\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u0010\nR\u0011\u00103\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00084\u0010\nR\u0011\u00105\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00086\u0010\nR\u0011\u00107\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00088\u0010\nR\u0011\u00109\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008:\u0010\nR\u0011\u0010;\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008<\u0010\nR\u0011\u0010=\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008>\u0010\nR\u0011\u0010?\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008@\u0010\nR\u0011\u0010A\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008B\u0010\nR\u0011\u0010C\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008D\u0010\nR\u0011\u0010E\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008F\u0010\nR\u000e\u0010G\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010H\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010I\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010J\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010K\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010L\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010M\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010N\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010O\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010P\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010Q\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010R\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010S\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010T\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u008e\u0001\u001a\t\u0012\u0004\u0012\u00020\u00050\u008f\u0001\u00a2\u0006\n\n\u0000\u001a\u0006\u0008\u0090\u0001\u0010\u0091\u0001\u00a8\u0006\u00a3\u0001"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/usbbt/HciCommands;",
        "",
        "<init>",
        "()V",
        "opcode",
        "",
        "ogf",
        "ocf",
        "CREATE_CONNECTION",
        "getCREATE_CONNECTION",
        "()I",
        "DISCONNECT",
        "getDISCONNECT",
        "AUTHENTICATION_REQUESTED",
        "getAUTHENTICATION_REQUESTED",
        "SET_CONNECTION_ENCRYPTION",
        "getSET_CONNECTION_ENCRYPTION",
        "ACCEPT_CONNECTION_REQUEST",
        "getACCEPT_CONNECTION_REQUEST",
        "REJECT_CONNECTION_REQUEST",
        "getREJECT_CONNECTION_REQUEST",
        "LINK_KEY_REQUEST_REPLY",
        "getLINK_KEY_REQUEST_REPLY",
        "LINK_KEY_REQUEST_NEGATIVE_REPLY",
        "getLINK_KEY_REQUEST_NEGATIVE_REPLY",
        "PIN_CODE_REQUEST_NEGATIVE_REPLY",
        "getPIN_CODE_REQUEST_NEGATIVE_REPLY",
        "REMOTE_NAME_REQUEST",
        "getREMOTE_NAME_REQUEST",
        "IO_CAPABILITY_REQUEST_REPLY",
        "getIO_CAPABILITY_REQUEST_REPLY",
        "USER_CONFIRMATION_REQUEST_REPLY",
        "getUSER_CONFIRMATION_REQUEST_REPLY",
        "USER_CONFIRMATION_REQUEST_NEGATIVE_REPLY",
        "getUSER_CONFIRMATION_REQUEST_NEGATIVE_REPLY",
        "USER_PASSKEY_REQUEST_NEGATIVE_REPLY",
        "getUSER_PASSKEY_REQUEST_NEGATIVE_REPLY",
        "IO_CAPABILITY_REQUEST_NEGATIVE_REPLY",
        "getIO_CAPABILITY_REQUEST_NEGATIVE_REPLY",
        "WRITE_DEFAULT_LINK_POLICY_SETTINGS",
        "getWRITE_DEFAULT_LINK_POLICY_SETTINGS",
        "SET_EVENT_MASK",
        "getSET_EVENT_MASK",
        "RESET",
        "getRESET",
        "WRITE_LOCAL_NAME",
        "getWRITE_LOCAL_NAME",
        "WRITE_SCAN_ENABLE",
        "getWRITE_SCAN_ENABLE",
        "WRITE_CLASS_OF_DEVICE",
        "getWRITE_CLASS_OF_DEVICE",
        "WRITE_INQUIRY_SCAN_TYPE",
        "getWRITE_INQUIRY_SCAN_TYPE",
        "WRITE_INQUIRY_MODE",
        "getWRITE_INQUIRY_MODE",
        "WRITE_PAGE_SCAN_TYPE",
        "getWRITE_PAGE_SCAN_TYPE",
        "WRITE_EXTENDED_INQUIRY_RESPONSE",
        "getWRITE_EXTENDED_INQUIRY_RESPONSE",
        "WRITE_SIMPLE_PAIRING_MODE",
        "getWRITE_SIMPLE_PAIRING_MODE",
        "READ_INQUIRY_RESPONSE_TX_POWER",
        "getREAD_INQUIRY_RESPONSE_TX_POWER",
        "READ_LOCAL_VERSION_INFORMATION",
        "getREAD_LOCAL_VERSION_INFORMATION",
        "READ_LOCAL_SUPPORTED_FEATURES",
        "getREAD_LOCAL_SUPPORTED_FEATURES",
        "READ_BUFFER_SIZE",
        "getREAD_BUFFER_SIZE",
        "READ_BD_ADDR",
        "getREAD_BD_ADDR",
        "LOCAL_NAME_LENGTH",
        "EIR_LENGTH",
        "SCAN_NONE",
        "SCAN_INQUIRY_AND_PAGE",
        "IO_DISPLAY_ONLY",
        "IO_DISPLAY_YES_NO",
        "IO_KEYBOARD_ONLY",
        "IO_NO_INPUT_NO_OUTPUT",
        "AUTH_MITM_GENERAL_BONDING",
        "ROLE_REMAIN_PERIPHERAL",
        "REASON_REMOTE_USER_TERMINATED",
        "REASON_LIMITED_RESOURCES",
        "REASON_UNACCEPTABLE_BD_ADDR",
        "LINK_POLICY_ROLE_SWITCH_AND_SNIFF",
        "command",
        "",
        "params",
        "opcodeOfPacket",
        "packet",
        "reset",
        "readInquiryResponseTxPower",
        "readLocalVersion",
        "readLocalFeatures",
        "readBufferSize",
        "readBdAddr",
        "setEventMask",
        "mask",
        "",
        "writeLocalName",
        "name",
        "",
        "writeClassOfDevice",
        "classOfDevice",
        "writeScanEnable",
        "scan",
        "writeSimplePairingMode",
        "enabled",
        "",
        "writeInquiryMode",
        "mode",
        "writeInquiryScanType",
        "interlaced",
        "writePageScanType",
        "writeDefaultLinkPolicy",
        "settings",
        "writeExtendedInquiryResponse",
        "eir",
        "acceptConnection",
        "addr",
        "Lcom/shilapi/xcertplay/usbbt/BdAddr;",
        "role",
        "rejectConnection",
        "reason",
        "linkKeyRequestReply",
        "key",
        "linkKeyRequestNegativeReply",
        "pinCodeRequestNegativeReply",
        "ioCapabilityRequestReply",
        "ioCapability",
        "authRequirements",
        "oobPresent",
        "ioCapabilityRequestNegativeReply",
        "userConfirmationReply",
        "userConfirmationNegativeReply",
        "userPasskeyNegativeReply",
        "createConnection",
        "authenticationRequested",
        "handle",
        "setConnectionEncryption",
        "disconnect",
        "remoteNameRequest",
        "EVENT_CODES_ENABLED",
        "",
        "getEVENT_CODES_ENABLED",
        "()Ljava/util/List;",
        "eventMask",
        "codes",
        "le16",
        "v",
        "le16$shared_release",
        "le24",
        "le24$shared_release",
        "le64",
        "le64$shared_release",
        "padded",
        "bytes",
        "size",
        "padded$shared_release",
        "utf8Prefix",
        "text",
        "max",
        "utf8Prefix$shared_release",
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
.field private static final ACCEPT_CONNECTION_REQUEST:I

.field private static final AUTHENTICATION_REQUESTED:I

.field public static final AUTH_MITM_GENERAL_BONDING:I = 0x5

.field private static final CREATE_CONNECTION:I

.field private static final DISCONNECT:I

.field public static final EIR_LENGTH:I = 0xf0

.field private static final EVENT_CODES_ENABLED:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Lcom/shilapi/xcertplay/usbbt/HciCommands;

.field private static final IO_CAPABILITY_REQUEST_NEGATIVE_REPLY:I

.field private static final IO_CAPABILITY_REQUEST_REPLY:I

.field public static final IO_DISPLAY_ONLY:I = 0x0

.field public static final IO_DISPLAY_YES_NO:I = 0x1

.field public static final IO_KEYBOARD_ONLY:I = 0x2

.field public static final IO_NO_INPUT_NO_OUTPUT:I = 0x3

.field private static final LINK_KEY_REQUEST_NEGATIVE_REPLY:I

.field private static final LINK_KEY_REQUEST_REPLY:I

.field public static final LINK_POLICY_ROLE_SWITCH_AND_SNIFF:I = 0x5

.field public static final LOCAL_NAME_LENGTH:I = 0xf8

.field private static final PIN_CODE_REQUEST_NEGATIVE_REPLY:I

.field private static final READ_BD_ADDR:I

.field private static final READ_BUFFER_SIZE:I

.field private static final READ_INQUIRY_RESPONSE_TX_POWER:I

.field private static final READ_LOCAL_SUPPORTED_FEATURES:I

.field private static final READ_LOCAL_VERSION_INFORMATION:I

.field public static final REASON_LIMITED_RESOURCES:I = 0xd

.field public static final REASON_REMOTE_USER_TERMINATED:I = 0x13

.field public static final REASON_UNACCEPTABLE_BD_ADDR:I = 0xf

.field private static final REJECT_CONNECTION_REQUEST:I

.field private static final REMOTE_NAME_REQUEST:I

.field private static final RESET:I

.field public static final ROLE_REMAIN_PERIPHERAL:I = 0x1

.field public static final SCAN_INQUIRY_AND_PAGE:I = 0x3

.field public static final SCAN_NONE:I

.field private static final SET_CONNECTION_ENCRYPTION:I

.field private static final SET_EVENT_MASK:I

.field private static final USER_CONFIRMATION_REQUEST_NEGATIVE_REPLY:I

.field private static final USER_CONFIRMATION_REQUEST_REPLY:I

.field private static final USER_PASSKEY_REQUEST_NEGATIVE_REPLY:I

.field private static final WRITE_CLASS_OF_DEVICE:I

.field private static final WRITE_DEFAULT_LINK_POLICY_SETTINGS:I

.field private static final WRITE_EXTENDED_INQUIRY_RESPONSE:I

.field private static final WRITE_INQUIRY_MODE:I

.field private static final WRITE_INQUIRY_SCAN_TYPE:I

.field private static final WRITE_LOCAL_NAME:I

.field private static final WRITE_PAGE_SCAN_TYPE:I

.field private static final WRITE_SCAN_ENABLE:I

.field private static final WRITE_SIMPLE_PAIRING_MODE:I


# direct methods
.method static constructor <clinit>()V
    .locals 57

    new-instance v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/usbbt/HciCommands;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/HciCommands;

    const/4 v1, 0x1

    const/4 v2, 0x5

    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->opcode(II)I

    move-result v3

    sput v3, Lcom/shilapi/xcertplay/usbbt/HciCommands;->CREATE_CONNECTION:I

    const/4 v3, 0x6

    .line 15
    invoke-virtual {v0, v1, v3}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->opcode(II)I

    move-result v4

    sput v4, Lcom/shilapi/xcertplay/usbbt/HciCommands;->DISCONNECT:I

    const/16 v4, 0x11

    .line 16
    invoke-virtual {v0, v1, v4}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->opcode(II)I

    move-result v5

    sput v5, Lcom/shilapi/xcertplay/usbbt/HciCommands;->AUTHENTICATION_REQUESTED:I

    const/16 v5, 0x13

    .line 17
    invoke-virtual {v0, v1, v5}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->opcode(II)I

    move-result v6

    sput v6, Lcom/shilapi/xcertplay/usbbt/HciCommands;->SET_CONNECTION_ENCRYPTION:I

    const/16 v6, 0x9

    .line 18
    invoke-virtual {v0, v1, v6}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->opcode(II)I

    move-result v7

    sput v7, Lcom/shilapi/xcertplay/usbbt/HciCommands;->ACCEPT_CONNECTION_REQUEST:I

    const/16 v7, 0xa

    .line 19
    invoke-virtual {v0, v1, v7}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->opcode(II)I

    move-result v8

    sput v8, Lcom/shilapi/xcertplay/usbbt/HciCommands;->REJECT_CONNECTION_REQUEST:I

    const/16 v8, 0xb

    .line 20
    invoke-virtual {v0, v1, v8}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->opcode(II)I

    move-result v9

    sput v9, Lcom/shilapi/xcertplay/usbbt/HciCommands;->LINK_KEY_REQUEST_REPLY:I

    const/16 v9, 0xc

    .line 21
    invoke-virtual {v0, v1, v9}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->opcode(II)I

    move-result v10

    sput v10, Lcom/shilapi/xcertplay/usbbt/HciCommands;->LINK_KEY_REQUEST_NEGATIVE_REPLY:I

    const/16 v10, 0xe

    .line 22
    invoke-virtual {v0, v1, v10}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->opcode(II)I

    move-result v11

    sput v11, Lcom/shilapi/xcertplay/usbbt/HciCommands;->PIN_CODE_REQUEST_NEGATIVE_REPLY:I

    const/16 v11, 0x19

    .line 23
    invoke-virtual {v0, v1, v11}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->opcode(II)I

    move-result v12

    sput v12, Lcom/shilapi/xcertplay/usbbt/HciCommands;->REMOTE_NAME_REQUEST:I

    const/16 v12, 0x2b

    .line 24
    invoke-virtual {v0, v1, v12}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->opcode(II)I

    move-result v12

    sput v12, Lcom/shilapi/xcertplay/usbbt/HciCommands;->IO_CAPABILITY_REQUEST_REPLY:I

    const/16 v12, 0x2c

    .line 25
    invoke-virtual {v0, v1, v12}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->opcode(II)I

    move-result v12

    sput v12, Lcom/shilapi/xcertplay/usbbt/HciCommands;->USER_CONFIRMATION_REQUEST_REPLY:I

    const/16 v12, 0x2d

    .line 26
    invoke-virtual {v0, v1, v12}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->opcode(II)I

    move-result v12

    sput v12, Lcom/shilapi/xcertplay/usbbt/HciCommands;->USER_CONFIRMATION_REQUEST_NEGATIVE_REPLY:I

    const/16 v12, 0x2f

    .line 27
    invoke-virtual {v0, v1, v12}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->opcode(II)I

    move-result v13

    sput v13, Lcom/shilapi/xcertplay/usbbt/HciCommands;->USER_PASSKEY_REQUEST_NEGATIVE_REPLY:I

    const/16 v13, 0x34

    .line 28
    invoke-virtual {v0, v1, v13}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->opcode(II)I

    move-result v14

    sput v14, Lcom/shilapi/xcertplay/usbbt/HciCommands;->IO_CAPABILITY_REQUEST_NEGATIVE_REPLY:I

    const/4 v14, 0x2

    const/16 v15, 0xf

    .line 31
    invoke-virtual {v0, v14, v15}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->opcode(II)I

    move-result v16

    sput v16, Lcom/shilapi/xcertplay/usbbt/HciCommands;->WRITE_DEFAULT_LINK_POLICY_SETTINGS:I

    const/16 v16, 0x6

    const/4 v3, 0x3

    .line 34
    invoke-virtual {v0, v3, v1}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->opcode(II)I

    move-result v17

    sput v17, Lcom/shilapi/xcertplay/usbbt/HciCommands;->SET_EVENT_MASK:I

    .line 35
    invoke-virtual {v0, v3, v3}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->opcode(II)I

    move-result v17

    sput v17, Lcom/shilapi/xcertplay/usbbt/HciCommands;->RESET:I

    .line 36
    invoke-virtual {v0, v3, v5}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->opcode(II)I

    move-result v17

    sput v17, Lcom/shilapi/xcertplay/usbbt/HciCommands;->WRITE_LOCAL_NAME:I

    const/16 v17, 0x11

    const/16 v4, 0x1a

    .line 37
    invoke-virtual {v0, v3, v4}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->opcode(II)I

    move-result v18

    sput v18, Lcom/shilapi/xcertplay/usbbt/HciCommands;->WRITE_SCAN_ENABLE:I

    const/16 v18, 0x1a

    const/16 v4, 0x24

    .line 38
    invoke-virtual {v0, v3, v4}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->opcode(II)I

    move-result v4

    sput v4, Lcom/shilapi/xcertplay/usbbt/HciCommands;->WRITE_CLASS_OF_DEVICE:I

    const/16 v4, 0x43

    .line 39
    invoke-virtual {v0, v3, v4}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->opcode(II)I

    move-result v4

    sput v4, Lcom/shilapi/xcertplay/usbbt/HciCommands;->WRITE_INQUIRY_SCAN_TYPE:I

    const/16 v4, 0x45

    .line 40
    invoke-virtual {v0, v3, v4}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->opcode(II)I

    move-result v4

    sput v4, Lcom/shilapi/xcertplay/usbbt/HciCommands;->WRITE_INQUIRY_MODE:I

    const/16 v4, 0x47

    .line 41
    invoke-virtual {v0, v3, v4}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->opcode(II)I

    move-result v4

    sput v4, Lcom/shilapi/xcertplay/usbbt/HciCommands;->WRITE_PAGE_SCAN_TYPE:I

    const/16 v4, 0x52

    .line 42
    invoke-virtual {v0, v3, v4}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->opcode(II)I

    move-result v4

    sput v4, Lcom/shilapi/xcertplay/usbbt/HciCommands;->WRITE_EXTENDED_INQUIRY_RESPONSE:I

    const/16 v4, 0x56

    .line 43
    invoke-virtual {v0, v3, v4}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->opcode(II)I

    move-result v4

    sput v4, Lcom/shilapi/xcertplay/usbbt/HciCommands;->WRITE_SIMPLE_PAIRING_MODE:I

    const/16 v4, 0x58

    .line 44
    invoke-virtual {v0, v3, v4}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->opcode(II)I

    move-result v4

    sput v4, Lcom/shilapi/xcertplay/usbbt/HciCommands;->READ_INQUIRY_RESPONSE_TX_POWER:I

    const/4 v4, 0x4

    .line 47
    invoke-virtual {v0, v4, v1}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->opcode(II)I

    move-result v19

    sput v19, Lcom/shilapi/xcertplay/usbbt/HciCommands;->READ_LOCAL_VERSION_INFORMATION:I

    .line 48
    invoke-virtual {v0, v4, v3}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->opcode(II)I

    move-result v19

    sput v19, Lcom/shilapi/xcertplay/usbbt/HciCommands;->READ_LOCAL_SUPPORTED_FEATURES:I

    .line 49
    invoke-virtual {v0, v4, v2}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->opcode(II)I

    move-result v19

    sput v19, Lcom/shilapi/xcertplay/usbbt/HciCommands;->READ_BUFFER_SIZE:I

    .line 50
    invoke-virtual {v0, v4, v6}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->opcode(II)I

    move-result v0

    sput v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->READ_BD_ADDR:I

    .line 168
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x7

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x8

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v32, 0x10

    .line 169
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    const/16 v34, 0x12

    .line 170
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    const/16 v36, 0x14

    .line 171
    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    const/16 v37, 0x15

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    const/16 v38, 0x16

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    const/16 v39, 0x17

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    const/16 v40, 0x18

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    .line 172
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    const/16 v42, 0x1b

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    const/16 v43, 0x1c

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    const/16 v44, 0x22

    .line 173
    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    const/16 v45, 0x23

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    .line 174
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v46, 0x30

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    const/16 v47, 0x31

    .line 175
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    const/16 v48, 0x32

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    const/16 v49, 0x33

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v49

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v50, 0x35

    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v50

    const/16 v51, 0x36

    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v51

    const/16 v52, 0x38

    .line 176
    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v52

    const/16 v53, 0x3b

    .line 177
    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v53

    const/16 v54, 0x3d

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    const/16 v55, 0x1

    const/16 v1, 0x23

    new-array v1, v1, [Ljava/lang/Integer;

    const/16 v56, 0x0

    aput-object v0, v1, v56

    aput-object v19, v1, v55

    aput-object v20, v1, v14

    aput-object v21, v1, v3

    aput-object v22, v1, v4

    aput-object v23, v1, v2

    aput-object v25, v1, v16

    aput-object v27, v1, v24

    aput-object v28, v1, v26

    aput-object v29, v1, v6

    aput-object v30, v1, v7

    aput-object v31, v1, v8

    aput-object v33, v1, v9

    const/16 v0, 0xd

    aput-object v35, v1, v0

    aput-object v36, v1, v10

    aput-object v37, v1, v15

    aput-object v38, v1, v32

    aput-object v39, v1, v17

    aput-object v40, v1, v34

    aput-object v41, v1, v5

    const/16 v0, 0x14

    aput-object v42, v1, v0

    const/16 v0, 0x15

    aput-object v43, v1, v0

    const/16 v0, 0x16

    aput-object v44, v1, v0

    const/16 v0, 0x17

    aput-object v45, v1, v0

    const/16 v0, 0x18

    aput-object v12, v1, v0

    aput-object v46, v1, v11

    aput-object v47, v1, v18

    const/16 v0, 0x1b

    aput-object v48, v1, v0

    const/16 v0, 0x1c

    aput-object v49, v1, v0

    const/16 v0, 0x1d

    aput-object v13, v1, v0

    const/16 v0, 0x1e

    aput-object v50, v1, v0

    const/16 v0, 0x1f

    aput-object v51, v1, v0

    const/16 v0, 0x20

    aput-object v52, v1, v0

    const/16 v0, 0x21

    aput-object v53, v1, v0

    const/16 v0, 0x22

    aput-object v54, v1, v0

    .line 167
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->EVENT_CODES_ENABLED:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic acceptConnection$default(Lcom/shilapi/xcertplay/usbbt/HciCommands;Lcom/shilapi/xcertplay/usbbt/BdAddr;IILjava/lang/Object;)[B
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 119
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->acceptConnection(Lcom/shilapi/xcertplay/usbbt/BdAddr;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic command$default(Lcom/shilapi/xcertplay/usbbt/HciCommands;I[BILjava/lang/Object;)[B
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 79
    new-array p2, p2, [B

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->command(I[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic disconnect$default(Lcom/shilapi/xcertplay/usbbt/HciCommands;IIILjava/lang/Object;)[B
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/16 p2, 0x13

    .line 156
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->disconnect(II)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic eventMask$default(Lcom/shilapi/xcertplay/usbbt/HciCommands;Ljava/util/List;ILjava/lang/Object;)J
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 180
    sget-object p1, Lcom/shilapi/xcertplay/usbbt/HciCommands;->EVENT_CODES_ENABLED:Ljava/util/List;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->eventMask(Ljava/util/List;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic ioCapabilityRequestReply$default(Lcom/shilapi/xcertplay/usbbt/HciCommands;Lcom/shilapi/xcertplay/usbbt/BdAddr;IIZILjava/lang/Object;)[B
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 133
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->ioCapabilityRequestReply(Lcom/shilapi/xcertplay/usbbt/BdAddr;IIZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic rejectConnection$default(Lcom/shilapi/xcertplay/usbbt/HciCommands;Lcom/shilapi/xcertplay/usbbt/BdAddr;IILjava/lang/Object;)[B
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/16 p2, 0xd

    .line 122
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->rejectConnection(Lcom/shilapi/xcertplay/usbbt/BdAddr;I)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final acceptConnection(Lcom/shilapi/xcertplay/usbbt/BdAddr;I)[B
    .locals 3

    const-string v0, "addr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    sget v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->ACCEPT_CONNECTION_REQUEST:I

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/BdAddr;->toLittleEndian()[B

    move-result-object p1

    int-to-byte p2, p2

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte p2, v1, v2

    invoke-static {p1, v1}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->command(I[B)[B

    move-result-object p1

    return-object p1
.end method

.method public final authenticationRequested(I)[B
    .locals 1

    .line 151
    sget v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->AUTHENTICATION_REQUESTED:I

    and-int/lit16 p1, p1, 0xfff

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->le16$shared_release(I)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->command(I[B)[B

    move-result-object p1

    return-object p1
.end method

.method public final command(I[B)[B
    .locals 4

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p1, :cond_1

    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_1

    .line 81
    array-length v0, p2

    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    ushr-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    .line 82
    array-length v1, p2

    int-to-byte v1, v1

    const/4 v2, 0x3

    new-array v2, v2, [B

    const/4 v3, 0x0

    aput-byte v0, v2, v3

    const/4 v0, 0x1

    aput-byte p1, v2, v0

    const/4 p1, 0x2

    aput-byte v1, v2, p1

    invoke-static {v2, p2}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p1

    return-object p1

    .line 81
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HCI command parameters are at most 255 bytes"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 80
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "opcode"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final createConnection(Lcom/shilapi/xcertplay/usbbt/BdAddr;)[B
    .locals 4

    const-string v0, "addr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    sget v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->CREATE_CONNECTION:I

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/BdAddr;->toLittleEndian()[B

    move-result-object p1

    const v1, 0xcc18

    invoke-virtual {p0, v1}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->le16$shared_release(I)[B

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-static {p1, v1}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->le16$shared_release(I)[B

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p1

    const/4 v2, 0x1

    new-array v3, v2, [B

    aput-byte v2, v3, v1

    invoke-static {p1, v3}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->command(I[B)[B

    move-result-object p1

    return-object p1

    nop

    :array_0
    .array-data 1
        0x1t
        0x0t
    .end array-data
.end method

.method public final disconnect(II)[B
    .locals 3

    .line 157
    sget v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->DISCONNECT:I

    and-int/lit16 p1, p1, 0xfff

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->le16$shared_release(I)[B

    move-result-object p1

    int-to-byte p2, p2

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte p2, v1, v2

    invoke-static {p1, v1}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->command(I[B)[B

    move-result-object p1

    return-object p1
.end method

.method public final eventMask(Ljava/util/List;)J
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)J"
        }
    .end annotation

    const-string v0, "codes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    check-cast p1, Ljava/lang/Iterable;

    .line 207
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-gt v3, v2, :cond_0

    const/16 v3, 0x41

    if-ge v2, v3, :cond_0

    add-int/lit8 v2, v2, -0x1

    const-wide/16 v3, 0x1

    shl-long v2, v3, v2

    or-long/2addr v0, v2

    goto :goto_0

    .line 181
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "event code"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-wide v0
.end method

.method public final getACCEPT_CONNECTION_REQUEST()I
    .locals 1

    .line 18
    sget v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->ACCEPT_CONNECTION_REQUEST:I

    return v0
.end method

.method public final getAUTHENTICATION_REQUESTED()I
    .locals 1

    .line 16
    sget v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->AUTHENTICATION_REQUESTED:I

    return v0
.end method

.method public final getCREATE_CONNECTION()I
    .locals 1

    .line 14
    sget v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->CREATE_CONNECTION:I

    return v0
.end method

.method public final getDISCONNECT()I
    .locals 1

    .line 15
    sget v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->DISCONNECT:I

    return v0
.end method

.method public final getEVENT_CODES_ENABLED()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 167
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->EVENT_CODES_ENABLED:Ljava/util/List;

    return-object v0
.end method

.method public final getIO_CAPABILITY_REQUEST_NEGATIVE_REPLY()I
    .locals 1

    .line 28
    sget v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->IO_CAPABILITY_REQUEST_NEGATIVE_REPLY:I

    return v0
.end method

.method public final getIO_CAPABILITY_REQUEST_REPLY()I
    .locals 1

    .line 24
    sget v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->IO_CAPABILITY_REQUEST_REPLY:I

    return v0
.end method

.method public final getLINK_KEY_REQUEST_NEGATIVE_REPLY()I
    .locals 1

    .line 21
    sget v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->LINK_KEY_REQUEST_NEGATIVE_REPLY:I

    return v0
.end method

.method public final getLINK_KEY_REQUEST_REPLY()I
    .locals 1

    .line 20
    sget v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->LINK_KEY_REQUEST_REPLY:I

    return v0
.end method

.method public final getPIN_CODE_REQUEST_NEGATIVE_REPLY()I
    .locals 1

    .line 22
    sget v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->PIN_CODE_REQUEST_NEGATIVE_REPLY:I

    return v0
.end method

.method public final getREAD_BD_ADDR()I
    .locals 1

    .line 50
    sget v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->READ_BD_ADDR:I

    return v0
.end method

.method public final getREAD_BUFFER_SIZE()I
    .locals 1

    .line 49
    sget v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->READ_BUFFER_SIZE:I

    return v0
.end method

.method public final getREAD_INQUIRY_RESPONSE_TX_POWER()I
    .locals 1

    .line 44
    sget v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->READ_INQUIRY_RESPONSE_TX_POWER:I

    return v0
.end method

.method public final getREAD_LOCAL_SUPPORTED_FEATURES()I
    .locals 1

    .line 48
    sget v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->READ_LOCAL_SUPPORTED_FEATURES:I

    return v0
.end method

.method public final getREAD_LOCAL_VERSION_INFORMATION()I
    .locals 1

    .line 47
    sget v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->READ_LOCAL_VERSION_INFORMATION:I

    return v0
.end method

.method public final getREJECT_CONNECTION_REQUEST()I
    .locals 1

    .line 19
    sget v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->REJECT_CONNECTION_REQUEST:I

    return v0
.end method

.method public final getREMOTE_NAME_REQUEST()I
    .locals 1

    .line 23
    sget v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->REMOTE_NAME_REQUEST:I

    return v0
.end method

.method public final getRESET()I
    .locals 1

    .line 35
    sget v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->RESET:I

    return v0
.end method

.method public final getSET_CONNECTION_ENCRYPTION()I
    .locals 1

    .line 17
    sget v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->SET_CONNECTION_ENCRYPTION:I

    return v0
.end method

.method public final getSET_EVENT_MASK()I
    .locals 1

    .line 34
    sget v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->SET_EVENT_MASK:I

    return v0
.end method

.method public final getUSER_CONFIRMATION_REQUEST_NEGATIVE_REPLY()I
    .locals 1

    .line 26
    sget v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->USER_CONFIRMATION_REQUEST_NEGATIVE_REPLY:I

    return v0
.end method

.method public final getUSER_CONFIRMATION_REQUEST_REPLY()I
    .locals 1

    .line 25
    sget v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->USER_CONFIRMATION_REQUEST_REPLY:I

    return v0
.end method

.method public final getUSER_PASSKEY_REQUEST_NEGATIVE_REPLY()I
    .locals 1

    .line 27
    sget v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->USER_PASSKEY_REQUEST_NEGATIVE_REPLY:I

    return v0
.end method

.method public final getWRITE_CLASS_OF_DEVICE()I
    .locals 1

    .line 38
    sget v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->WRITE_CLASS_OF_DEVICE:I

    return v0
.end method

.method public final getWRITE_DEFAULT_LINK_POLICY_SETTINGS()I
    .locals 1

    .line 31
    sget v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->WRITE_DEFAULT_LINK_POLICY_SETTINGS:I

    return v0
.end method

.method public final getWRITE_EXTENDED_INQUIRY_RESPONSE()I
    .locals 1

    .line 42
    sget v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->WRITE_EXTENDED_INQUIRY_RESPONSE:I

    return v0
.end method

.method public final getWRITE_INQUIRY_MODE()I
    .locals 1

    .line 40
    sget v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->WRITE_INQUIRY_MODE:I

    return v0
.end method

.method public final getWRITE_INQUIRY_SCAN_TYPE()I
    .locals 1

    .line 39
    sget v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->WRITE_INQUIRY_SCAN_TYPE:I

    return v0
.end method

.method public final getWRITE_LOCAL_NAME()I
    .locals 1

    .line 36
    sget v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->WRITE_LOCAL_NAME:I

    return v0
.end method

.method public final getWRITE_PAGE_SCAN_TYPE()I
    .locals 1

    .line 41
    sget v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->WRITE_PAGE_SCAN_TYPE:I

    return v0
.end method

.method public final getWRITE_SCAN_ENABLE()I
    .locals 1

    .line 37
    sget v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->WRITE_SCAN_ENABLE:I

    return v0
.end method

.method public final getWRITE_SIMPLE_PAIRING_MODE()I
    .locals 1

    .line 43
    sget v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->WRITE_SIMPLE_PAIRING_MODE:I

    return v0
.end method

.method public final ioCapabilityRequestNegativeReply(Lcom/shilapi/xcertplay/usbbt/BdAddr;I)[B
    .locals 3

    const-string v0, "addr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    sget v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->IO_CAPABILITY_REQUEST_NEGATIVE_REPLY:I

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/BdAddr;->toLittleEndian()[B

    move-result-object p1

    int-to-byte p2, p2

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte p2, v1, v2

    invoke-static {p1, v1}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->command(I[B)[B

    move-result-object p1

    return-object p1
.end method

.method public final ioCapabilityRequestReply(Lcom/shilapi/xcertplay/usbbt/BdAddr;IIZ)[B
    .locals 3

    const-string v0, "addr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    sget v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->IO_CAPABILITY_REQUEST_REPLY:I

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/BdAddr;->toLittleEndian()[B

    move-result-object p1

    int-to-byte p2, p2

    int-to-byte p4, p4

    int-to-byte p3, p3

    const/4 v1, 0x3

    .line 135
    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte p2, v1, v2

    const/4 p2, 0x1

    aput-byte p4, v1, p2

    const/4 p2, 0x2

    aput-byte p3, v1, p2

    .line 134
    invoke-static {p1, v1}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->command(I[B)[B

    move-result-object p1

    return-object p1
.end method

.method public final le16$shared_release(I)[B
    .locals 3

    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    ushr-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x2

    .line 185
    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    const/4 v0, 0x1

    aput-byte p1, v1, v0

    return-object v1
.end method

.method public final le24$shared_release(I)[B
    .locals 4

    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    ushr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    ushr-int/lit8 p1, p1, 0x10

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v2, 0x3

    .line 186
    new-array v2, v2, [B

    const/4 v3, 0x0

    aput-byte v0, v2, v3

    const/4 v0, 0x1

    aput-byte v1, v2, v0

    const/4 v0, 0x2

    aput-byte p1, v2, v0

    return-object v2
.end method

.method public final le64$shared_release(J)[B
    .locals 7

    const/16 v0, 0x8

    .line 187
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    mul-int/lit8 v3, v2, 0x8

    ushr-long v3, p1, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final linkKeyRequestNegativeReply(Lcom/shilapi/xcertplay/usbbt/BdAddr;)[B
    .locals 1

    const-string v0, "addr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    sget v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->LINK_KEY_REQUEST_NEGATIVE_REPLY:I

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/BdAddr;->toLittleEndian()[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->command(I[B)[B

    move-result-object p1

    return-object p1
.end method

.method public final linkKeyRequestReply(Lcom/shilapi/xcertplay/usbbt/BdAddr;[B)[B
    .locals 2

    const-string v0, "addr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    array-length v0, p2

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 127
    sget v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->LINK_KEY_REQUEST_REPLY:I

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/BdAddr;->toLittleEndian()[B

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->command(I[B)[B

    move-result-object p1

    return-object p1

    .line 126
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "link key is 16 bytes"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final opcode(II)I
    .locals 0

    shl-int/lit8 p1, p1, 0xa

    or-int/2addr p1, p2

    return p1
.end method

.method public final opcodeOfPacket([B)I
    .locals 2

    const-string v0, "packet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 86
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, v0

    return p1
.end method

.method public final padded$shared_release([BI)[B
    .locals 1

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    const-string p2, "copyOf(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final pinCodeRequestNegativeReply(Lcom/shilapi/xcertplay/usbbt/BdAddr;)[B
    .locals 1

    const-string v0, "addr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    sget v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->PIN_CODE_REQUEST_NEGATIVE_REPLY:I

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/BdAddr;->toLittleEndian()[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->command(I[B)[B

    move-result-object p1

    return-object p1
.end method

.method public final readBdAddr()[B
    .locals 3

    .line 93
    sget v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->READ_BD_ADDR:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->command$default(Lcom/shilapi/xcertplay/usbbt/HciCommands;I[BILjava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method

.method public final readBufferSize()[B
    .locals 3

    .line 92
    sget v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->READ_BUFFER_SIZE:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->command$default(Lcom/shilapi/xcertplay/usbbt/HciCommands;I[BILjava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method

.method public final readInquiryResponseTxPower()[B
    .locals 3

    .line 89
    sget v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->READ_INQUIRY_RESPONSE_TX_POWER:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->command$default(Lcom/shilapi/xcertplay/usbbt/HciCommands;I[BILjava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method

.method public final readLocalFeatures()[B
    .locals 3

    .line 91
    sget v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->READ_LOCAL_SUPPORTED_FEATURES:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->command$default(Lcom/shilapi/xcertplay/usbbt/HciCommands;I[BILjava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method

.method public final readLocalVersion()[B
    .locals 3

    .line 90
    sget v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->READ_LOCAL_VERSION_INFORMATION:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->command$default(Lcom/shilapi/xcertplay/usbbt/HciCommands;I[BILjava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method

.method public final rejectConnection(Lcom/shilapi/xcertplay/usbbt/BdAddr;I)[B
    .locals 3

    const-string v0, "addr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    sget v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->REJECT_CONNECTION_REQUEST:I

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/BdAddr;->toLittleEndian()[B

    move-result-object p1

    int-to-byte p2, p2

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte p2, v1, v2

    invoke-static {p1, v1}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->command(I[B)[B

    move-result-object p1

    return-object p1
.end method

.method public final remoteNameRequest(Lcom/shilapi/xcertplay/usbbt/BdAddr;)[B
    .locals 2

    const-string v0, "addr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    sget v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->REMOTE_NAME_REQUEST:I

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/BdAddr;->toLittleEndian()[B

    move-result-object p1

    const/4 v1, 0x4

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-static {p1, v1}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->command(I[B)[B

    move-result-object p1

    return-object p1

    :array_0
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public final reset()[B
    .locals 3

    .line 88
    sget v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->RESET:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->command$default(Lcom/shilapi/xcertplay/usbbt/HciCommands;I[BILjava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method

.method public final setConnectionEncryption(IZ)[B
    .locals 3

    .line 154
    sget v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->SET_CONNECTION_ENCRYPTION:I

    and-int/lit16 p1, p1, 0xfff

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->le16$shared_release(I)[B

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte p2, v1, v2

    invoke-static {p1, v1}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->command(I[B)[B

    move-result-object p1

    return-object p1
.end method

.method public final setEventMask(J)[B
    .locals 1

    .line 95
    sget v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->SET_EVENT_MASK:I

    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->le64$shared_release(J)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->command(I[B)[B

    move-result-object p1

    return-object p1
.end method

.method public final userConfirmationNegativeReply(Lcom/shilapi/xcertplay/usbbt/BdAddr;)[B
    .locals 1

    const-string v0, "addr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    sget v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->USER_CONFIRMATION_REQUEST_NEGATIVE_REPLY:I

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/BdAddr;->toLittleEndian()[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->command(I[B)[B

    move-result-object p1

    return-object p1
.end method

.method public final userConfirmationReply(Lcom/shilapi/xcertplay/usbbt/BdAddr;)[B
    .locals 1

    const-string v0, "addr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    sget v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->USER_CONFIRMATION_REQUEST_REPLY:I

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/BdAddr;->toLittleEndian()[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->command(I[B)[B

    move-result-object p1

    return-object p1
.end method

.method public final userPasskeyNegativeReply(Lcom/shilapi/xcertplay/usbbt/BdAddr;)[B
    .locals 1

    const-string v0, "addr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    sget v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->USER_PASSKEY_REQUEST_NEGATIVE_REPLY:I

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/BdAddr;->toLittleEndian()[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->command(I[B)[B

    move-result-object p1

    return-object p1
.end method

.method public final utf8Prefix$shared_release(Ljava/lang/String;I)[B
    .locals 6

    const-string/jumbo v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    .line 194
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 195
    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 196
    invoke-static {v2}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v3

    const-string/jumbo v4, "toChars(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([C)V

    sget-object v3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    const-string v4, "getBytes(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    array-length v5, v3

    add-int/2addr v4, v5

    if-gt v4, p2, :cond_0

    .line 198
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 199
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 201
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const-string/jumbo p2, "toByteArray(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final writeClassOfDevice(I)[B
    .locals 1

    .line 100
    sget v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->WRITE_CLASS_OF_DEVICE:I

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->le24$shared_release(I)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->command(I[B)[B

    move-result-object p1

    return-object p1
.end method

.method public final writeDefaultLinkPolicy(I)[B
    .locals 1

    .line 111
    sget v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->WRITE_DEFAULT_LINK_POLICY_SETTINGS:I

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->le16$shared_release(I)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->command(I[B)[B

    move-result-object p1

    return-object p1
.end method

.method public final writeExtendedInquiryResponse([B)[B
    .locals 5

    const-string v0, "eir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    array-length v0, p1

    const/16 v1, 0xf0

    if-gt v0, v1, :cond_0

    .line 116
    sget v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->WRITE_EXTENDED_INQUIRY_RESPONSE:I

    const/4 v2, 0x1

    new-array v3, v2, [B

    const/4 v4, 0x0

    aput-byte v2, v3, v4

    invoke-virtual {p0, p1, v1}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->padded$shared_release([BI)[B

    move-result-object p1

    invoke-static {v3, p1}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->command(I[B)[B

    move-result-object p1

    return-object p1

    .line 115
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "EIR is at most 240 bytes"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final writeInquiryMode(I)[B
    .locals 3

    .line 105
    sget v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->WRITE_INQUIRY_MODE:I

    int-to-byte p1, p1

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->command(I[B)[B

    move-result-object p1

    return-object p1
.end method

.method public final writeInquiryScanType(Z)[B
    .locals 3

    .line 108
    sget v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->WRITE_INQUIRY_SCAN_TYPE:I

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->command(I[B)[B

    move-result-object p1

    return-object p1
.end method

.method public final writeLocalName(Ljava/lang/String;)[B
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    sget v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->WRITE_LOCAL_NAME:I

    const/16 v1, 0xf7

    invoke-virtual {p0, p1, v1}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->utf8Prefix$shared_release(Ljava/lang/String;I)[B

    move-result-object p1

    const/16 v1, 0xf8

    invoke-virtual {p0, p1, v1}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->padded$shared_release([BI)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->command(I[B)[B

    move-result-object p1

    return-object p1
.end method

.method public final writePageScanType(Z)[B
    .locals 3

    .line 109
    sget v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->WRITE_PAGE_SCAN_TYPE:I

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->command(I[B)[B

    move-result-object p1

    return-object p1
.end method

.method public final writeScanEnable(I)[B
    .locals 3

    .line 101
    sget v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->WRITE_SCAN_ENABLE:I

    int-to-byte p1, p1

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->command(I[B)[B

    move-result-object p1

    return-object p1
.end method

.method public final writeSimplePairingMode(Z)[B
    .locals 3

    .line 102
    sget v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->WRITE_SIMPLE_PAIRING_MODE:I

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->command(I[B)[B

    move-result-object p1

    return-object p1
.end method
