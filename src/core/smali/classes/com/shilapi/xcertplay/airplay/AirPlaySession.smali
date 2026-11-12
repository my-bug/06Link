.class public final Lcom/shilapi/xcertplay/airplay/AirPlaySession;
.super Ljava/lang/Object;
.source "AirPlaySession.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/airplay/AirPlaySession$Companion;,
        Lcom/shilapi/xcertplay/airplay/AirPlaySession$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAirPlaySession.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AirPlaySession.kt\ncom/shilapi/xcertplay/airplay/AirPlaySession\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,944:1\n1563#2:945\n1634#2,3:946\n1617#2,9:950\n1869#2:959\n1870#2:961\n1626#2:962\n1617#2,9:963\n1869#2:972\n1870#2:974\n1626#2:975\n1869#2,2:976\n1869#2,2:978\n1869#2,2:980\n1#3:949\n1#3:960\n1#3:973\n*S KotlinDebug\n*F\n+ 1 AirPlaySession.kt\ncom/shilapi/xcertplay/airplay/AirPlaySession\n*L\n259#1:945\n259#1:946,3\n687#1:950,9\n687#1:959\n687#1:961\n687#1:962\n690#1:963,9\n690#1:972\n690#1:974\n690#1:975\n711#1:976,2\n714#1:978,2\n779#1:980,2\n687#1:960\n690#1:973\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008a\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0012\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000f\n\u0002\u0010$\n\u0002\u0008\u0008\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00bb\u00012\u00020\u0001:\u0002\u00bb\u0001BA\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0006\u0010i\u001a\u00020jJ\u0015\u0010k\u001a\u00020l2\u0006\u0010m\u001a\u00020+H\u0000\u00a2\u0006\u0002\u0008nJ\r\u0010o\u001a\u00020lH\u0000\u00a2\u0006\u0002\u0008pJ\u0015\u0010q\u001a\u00020l2\u0006\u0010m\u001a\u00020+H\u0000\u00a2\u0006\u0002\u0008rJ\u0006\u0010s\u001a\u00020lJ\u0008\u0010t\u001a\u00020lH\u0002J\u0010\u0010u\u001a\u00020l2\u0006\u0010v\u001a\u00020DH\u0002J\u0008\u0010w\u001a\u00020lH\u0016J\u000e\u0010x\u001a\u00020D2\u0006\u0010y\u001a\u00020DJ\u001c\u0010z\u001a\u00020D2\u0014\u0010{\u001a\u0010\u0012\u0004\u0012\u00020+\u0012\u0006\u0012\u0004\u0018\u00010S0|J$\u0010}\u001a\u00020D2\u0006\u0010~\u001a\u00020^2\u0014\u0010m\u001a\u0010\u0012\u0004\u0012\u00020+\u0012\u0006\u0012\u0004\u0018\u00010S0|J\u000f\u0010\u007f\u001a\u00020D2\u0007\u0010\u0080\u0001\u001a\u00020DJ*\u0010\u0081\u0001\u001a\u00020D2\u0014\u0010{\u001a\u0010\u0012\u0004\u0012\u00020+\u0012\u0006\u0012\u0004\u0018\u00010S0|2\t\u0008\u0002\u0010\u0082\u0001\u001a\u00020+H\u0002J\u0018\u0010\u0083\u0001\u001a\u00020D2\u000f\u0010\u0084\u0001\u001a\n\u0012\u0005\u0012\u00030\u0086\u00010\u0085\u0001J\u001c\u0010\u0087\u0001\u001a\u00020l2\u0008\u0010\u0088\u0001\u001a\u00030\u0089\u00012\t\u0008\u0002\u0010\u008a\u0001\u001a\u00020DJ\u0010\u0010\u008b\u0001\u001a\u00020D2\u0007\u0010\u008c\u0001\u001a\u00020DJ\u0010\u0010\u008d\u0001\u001a\u00020l2\u0007\u0010\u008e\u0001\u001a\u000202J\u0010\u0010\u008f\u0001\u001a\u00020l2\u0007\u0010\u008e\u0001\u001a\u000202J\u0010\u0010\u0090\u0001\u001a\u00020l2\u0007\u0010\u008e\u0001\u001a\u000202J\u0010\u0010\u0091\u0001\u001a\u00020l2\u0007\u0010\u008c\u0001\u001a\u00020DJ\u0010\u0010\u0092\u0001\u001a\u00020l2\u0007\u0010\u0093\u0001\u001a\u00020+J\u0007\u0010\u0094\u0001\u001a\u00020lJ\u001b\u0010\u0095\u0001\u001a\u00020D2\u0007\u0010\u0096\u0001\u001a\u00020%2\t\u0008\u0002\u0010\u0097\u0001\u001a\u00020^J\u0010\u0010\u0098\u0001\u001a\u00020D2\u0007\u0010\u0099\u0001\u001a\u00020DJ\t\u0010\u009a\u0001\u001a\u00020DH\u0002J\u001b\u0010\u009b\u0001\u001a\u00020D2\u0007\u0010\u009c\u0001\u001a\u0002022\u0007\u0010\u009d\u0001\u001a\u00020%H\u0002J\t\u0010\u009e\u0001\u001a\u00020lH\u0002J\u0014\u0010\u009f\u0001\u001a\u00030\u00a0\u00012\u0008\u0010\u00a1\u0001\u001a\u00030\u00a2\u0001H\u0002J\t\u0010\u00a3\u0001\u001a\u00020lH\u0002J\u001c\u0010\u00a4\u0001\u001a\u00020l2\u0006\u0010m\u001a\u00020+2\t\u0008\u0002\u0010\u00a5\u0001\u001a\u00020DH\u0002J\u0011\u0010\u00a6\u0001\u001a\u00020l2\u0006\u0010m\u001a\u00020+H\u0002J\u0014\u0010\u00a7\u0001\u001a\u00030\u00a0\u00012\u0008\u0010\u00a1\u0001\u001a\u00030\u00a2\u0001H\u0002J \u0010\u00a8\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010S0\u0085\u00012\u000c\u0010\u00a9\u0001\u001a\u0007\u0012\u0002\u0008\u00030\u0085\u0001H\u0002J\u0014\u0010\u00aa\u0001\u001a\u00030\u00a0\u00012\u0008\u0010\u00a1\u0001\u001a\u00030\u00a2\u0001H\u0002J \u0010\u00ab\u0001\u001a\u00020+2\u0015\u0010\u00ac\u0001\u001a\u0010\u0012\u0004\u0012\u00020+\u0012\u0006\u0012\u0004\u0018\u00010S0|H\u0002J\u0014\u0010\u00ad\u0001\u001a\u00030\u00a0\u00012\u0008\u0010\u00a1\u0001\u001a\u00030\u00a2\u0001H\u0002J\u0012\u0010\u00ae\u0001\u001a\u0002022\u0007\u0010\u00af\u0001\u001a\u000202H\u0002J\t\u0010\u00b0\u0001\u001a\u000202H\u0002J\u0011\u0010\u00b1\u0001\u001a\u00020l2\u0006\u0010\u0002\u001a\u00020OH\u0002J\t\u0010\u00b2\u0001\u001a\u000202H\u0002J\t\u0010\u00b3\u0001\u001a\u00020lH\u0002J\u0012\u0010\u00b4\u0001\u001a\u00020l2\u0007\u0010\u00b5\u0001\u001a\u00020?H\u0002J\u0011\u0010\u00b6\u0001\u001a\u00020l2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\"\u0010\u00b7\u0001\u001a\u00020l2\u0007\u0010\u00b8\u0001\u001a\u00020+2\u000e\u0010\u00b9\u0001\u001a\t\u0012\u0004\u0012\u00020l0\u00ba\u0001H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u00020\u0013X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0016\u0010\u0016\u001a\u0004\u0018\u00010\u00178@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u001a\u001a\u00020\u001bX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\u001a\u0010$\u001a\u00020%X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R\u001a\u0010*\u001a\u00020+X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/R$\u00100\u001a\u0012\u0012\u0004\u0012\u00020201j\u0008\u0012\u0004\u0012\u000202`3X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00084\u00105R\u001e\u00107\u001a\u0002022\u0006\u00106\u001a\u000202@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00088\u00109R\u000e\u0010:\u001a\u000202X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010;\u001a\u00020<X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010=\u001a\u00020<X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010>\u001a\u0004\u0018\u00010?X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010@\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010A\u001a\u0004\u0018\u00010\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010B\u001a\u000202X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010C\u001a\u0004\u0018\u00010DX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010ER\u000e\u0010F\u001a\u00020<X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010G\u001a\u00020<X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010H\u001a\u00020IX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010J\u001a\u00020KX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010L\u001a\u00020MX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010N\u001a\u0004\u0018\u00010OX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010P\u001a\u0004\u0018\u00010QX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010R\u001a\u00020SX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010T\u001a\u0008\u0012\u0004\u0012\u00020Q0UX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010V\u001a\u00020+\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008W\u0010-R\u0013\u0010X\u001a\u0004\u0018\u00010Y\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008Z\u0010[R\u0010\u0010\\\u001a\u0004\u0018\u00010YX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010]\u001a\u00020^X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010_\u001a\u0004\u0018\u00010Y8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008`\u0010[R\u0013\u0010a\u001a\u0004\u0018\u00010+8F\u00a2\u0006\u0006\u001a\u0004\u0008b\u0010-R\u0013\u0010c\u001a\u0004\u0018\u00010%8F\u00a2\u0006\u0006\u001a\u0004\u0008d\u0010\'R\u0011\u0010e\u001a\u00020D8F\u00a2\u0006\u0006\u001a\u0004\u0008f\u0010gR\u000e\u0010h\u001a\u00020DX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u00bc\u0001"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/airplay/AirPlaySession;",
        "Ljava/io/Closeable;",
        "socket",
        "Ljava/net/Socket;",
        "config",
        "Lcom/shilapi/xcertplay/airplay/AirPlayConfig;",
        "identity",
        "Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;",
        "pairings",
        "Lcom/shilapi/xcertplay/airplay/PairingStore;",
        "mfi",
        "Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;",
        "listener",
        "Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;",
        "media",
        "Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;",
        "<init>",
        "(Ljava/net/Socket;Lcom/shilapi/xcertplay/airplay/AirPlayConfig;Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;Lcom/shilapi/xcertplay/airplay/PairingStore;Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;)V",
        "pairSetup",
        "Lcom/shilapi/xcertplay/airplay/PairSetup;",
        "getPairSetup$shared_release",
        "()Lcom/shilapi/xcertplay/airplay/PairSetup;",
        "clusterDisplay",
        "Lcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;",
        "getClusterDisplay$shared_release",
        "()Lcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;",
        "pairVerify",
        "Lcom/shilapi/xcertplay/airplay/PairVerify;",
        "getPairVerify$shared_release",
        "()Lcom/shilapi/xcertplay/airplay/PairVerify;",
        "cipher",
        "Lcom/shilapi/xcertplay/airplay/ControlCipher;",
        "getCipher$shared_release",
        "()Lcom/shilapi/xcertplay/airplay/ControlCipher;",
        "setCipher$shared_release",
        "(Lcom/shilapi/xcertplay/airplay/ControlCipher;)V",
        "encBuf",
        "",
        "getEncBuf$shared_release",
        "()[B",
        "setEncBuf$shared_release",
        "([B)V",
        "deviceBtMac",
        "",
        "getDeviceBtMac$shared_release",
        "()Ljava/lang/String;",
        "setDeviceBtMac$shared_release",
        "(Ljava/lang/String;)V",
        "activeStreams",
        "Ljava/util/LinkedHashSet;",
        "",
        "Lkotlin/collections/LinkedHashSet;",
        "getActiveStreams$shared_release",
        "()Ljava/util/LinkedHashSet;",
        "value",
        "clusterStream",
        "getClusterStream",
        "()I",
        "clusterStreamSetups",
        "closed",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "notified",
        "eventServer",
        "Ljava/net/ServerSocket;",
        "eventSocket",
        "eventCipher",
        "eventCseq",
        "pendingNightMode",
        "",
        "Ljava/lang/Boolean;",
        "firstTouchSendLogged",
        "touchSendFailureLogged",
        "touchSlots",
        "Lcom/shilapi/xcertplay/airplay/AirPlayTouchSlots;",
        "ntp",
        "Lcom/shilapi/xcertplay/airplay/NtpClock;",
        "heartbeat",
        "Lcom/shilapi/xcertplay/airplay/PeerHeartbeat;",
        "keepAliveSocket",
        "Ljava/net/DatagramSocket;",
        "keepAliveThread",
        "Ljava/lang/Thread;",
        "eventWriteLock",
        "",
        "eventThreads",
        "Ljava/util/concurrent/CopyOnWriteArrayList;",
        "host",
        "getHost",
        "localAddress",
        "Ljava/net/InetAddress;",
        "getLocalAddress",
        "()Ljava/net/InetAddress;",
        "peerAddress",
        "lastTimingLogMs",
        "",
        "remoteAddress",
        "getRemoteAddress$shared_release",
        "controllerId",
        "getControllerId",
        "sharedSecret",
        "getSharedSecret",
        "videoInCar",
        "getVideoInCar",
        "()Z",
        "videoPlaybackEnabled",
        "syncedNtp",
        "Ljava/math/BigInteger;",
        "logDebug",
        "",
        "message",
        "logDebug$shared_release",
        "videoFrameRendered",
        "videoFrameRendered$shared_release",
        "logTrace",
        "logTrace$shared_release",
        "start",
        "runHeartbeat",
        "notifyPeerStalled",
        "stalled",
        "close",
        "setClusterUiShown",
        "shown",
        "sendCommand",
        "command",
        "",
        "sendRemoteControlMessage",
        "streamId",
        "setVideoPlaybackAllowed",
        "allowed",
        "sendCommandLocked",
        "extraHeaders",
        "sendTouch",
        "contacts",
        "",
        "Lcom/shilapi/xcertplay/airplay/AirPlayContact;",
        "sendKnob",
        "state",
        "Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;",
        "momentary",
        "sendKnobSelect",
        "down",
        "sendMedia",
        "index",
        "sendMediaState",
        "sendTelephony",
        "siriButton",
        "requestUi",
        "url",
        "invokeSiri",
        "sendIapMessage",
        "data",
        "timeoutMillis",
        "setNightMode",
        "night",
        "sendPendingNightModeLocked",
        "sendHidReport",
        "uid",
        "report",
        "runControl",
        "handle",
        "Lcom/shilapi/xcertplay/airplay/RtspMessage$Response;",
        "request",
        "Lcom/shilapi/xcertplay/airplay/RtspMessage$Request;",
        "notifySetupResponseSent",
        "debugLog",
        "uiVisible",
        "trace",
        "handleSetup",
        "handleStreams",
        "streams",
        "handleCommand",
        "modesSummary",
        "params",
        "handleTeardown",
        "openTiming",
        "peerPort",
        "openKeepAlive",
        "runKeepAlive",
        "openEvent",
        "teardown",
        "acceptEvent",
        "server",
        "runEventRead",
        "spawnEvent",
        "name",
        "body",
        "Lkotlin/Function0;",
        "Companion",
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
.field private static final Companion:Lcom/shilapi/xcertplay/airplay/AirPlaySession$Companion;

.field public static final EVENT_READY_POLL_MILLIS:J = 0x19L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NANOS_PER_MILLISECOND:J = 0xf4240L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OCTET_CONTENT_TYPE:Ljava/lang/String; = "application/octet-stream"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PAIRING_CONTENT_TYPE:Ljava/lang/String; = "application/pairing+tlv8"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PLIST_CONTENT_TYPE:Ljava/lang/String; = "application/x-apple-binary-plist"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final READ_CHUNK_BYTES:I = 0x4000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STREAM_TYPE_ALT_AUDIO:I = 0x65
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STREAM_TYPE_ALT_SCREEN:I = 0x6f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STREAM_TYPE_DATA:I = 0x82
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STREAM_TYPE_MAIN_AUDIO:I = 0x64
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STREAM_TYPE_MAIN_HIGH_AUDIO:I = 0x66
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STREAM_TYPE_MAIN_SCREEN:I = 0x6e
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "xcertplay-usb"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TIMING_LOG_INTERVAL_MS:J = 0x2710L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final activeStreams:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private cipher:Lcom/shilapi/xcertplay/airplay/ControlCipher;

.field private final closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile clusterStream:I

.field private clusterStreamSetups:I

.field private final config:Lcom/shilapi/xcertplay/airplay/AirPlayConfig;

.field private deviceBtMac:Ljava/lang/String;

.field private encBuf:[B

.field private eventCipher:Lcom/shilapi/xcertplay/airplay/ControlCipher;

.field private eventCseq:I

.field private eventServer:Ljava/net/ServerSocket;

.field private eventSocket:Ljava/net/Socket;

.field private final eventThreads:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private final eventWriteLock:Ljava/lang/Object;

.field private final firstTouchSendLogged:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final heartbeat:Lcom/shilapi/xcertplay/airplay/PeerHeartbeat;

.field private final host:Ljava/lang/String;

.field private final identity:Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;

.field private keepAliveSocket:Ljava/net/DatagramSocket;

.field private keepAliveThread:Ljava/lang/Thread;

.field private volatile lastTimingLogMs:J

.field private final listener:Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

.field private final localAddress:Ljava/net/InetAddress;

.field private final media:Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;

.field private final mfi:Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;

.field private final notified:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final ntp:Lcom/shilapi/xcertplay/airplay/NtpClock;

.field private final pairSetup:Lcom/shilapi/xcertplay/airplay/PairSetup;

.field private final pairVerify:Lcom/shilapi/xcertplay/airplay/PairVerify;

.field private final pairings:Lcom/shilapi/xcertplay/airplay/PairingStore;

.field private final peerAddress:Ljava/net/InetAddress;

.field private pendingNightMode:Ljava/lang/Boolean;

.field private final socket:Ljava/net/Socket;

.field private final touchSendFailureLogged:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final touchSlots:Lcom/shilapi/xcertplay/airplay/AirPlayTouchSlots;

.field private volatile videoPlaybackEnabled:Z


# direct methods
.method public static synthetic $r8$lambda$5Jp1b6pJGy1lCuwv1pRMsbq16NA(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->openKeepAlive$lambda$26(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$CXklmBB3mHhoFR8N4qdw4n5uu90(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->runControl$lambda$11(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$EaEz6jcm0P3yBCbIMeHj1Sp2F4M(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->spawnEvent$lambda$37(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic $r8$lambda$I-1TZvISnz_smtEFkrzE5nRJ934(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/net/ServerSocket;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->openEvent$lambda$33(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/net/ServerSocket;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$KZWfuLkaYhfyM1geWb7cLolX518(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->start$lambda$1(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LALZ9rCMfjG_B856JWRX6SaYBi0(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->openEvent$lambda$32(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$NoKloJvqTuN1dafAnPE3SkN7NkI(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->runHeartbeat()V

    return-void
.end method

.method public static synthetic $r8$lambda$YBbiHRJuDx_2boo_3-vGm-cAGAg(Ljava/util/Map;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->modesSummary$lambda$19(Ljava/util/Map;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Yf9uU7H1o486nkujye7px7VmqRs(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->runControl()V

    return-void
.end method

.method public static synthetic $r8$lambda$YmFvAWPPu2MfaMFbxPevLEiGEUw(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/net/DatagramSocket;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->openKeepAlive$lambda$28(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/net/DatagramSocket;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aLIJkHhF8acdTUype-oJNqeAyNQ(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->openTiming$lambda$22(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jYwASf7pkLLb-CB2O8DxWs8OR6w(Ljava/util/Map;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->modesSummary$lambda$16(Ljava/util/Map;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$nn4K6xwgT5W4EXdd22MdMXl88J0()J
    .locals 2

    invoke-static {}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->heartbeat$lambda$0()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic $r8$lambda$pVJto2HaURn-Ms2SVS83StfGcV8(Ljava/net/DatagramSocket;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->openKeepAlive$lambda$27(Ljava/net/DatagramSocket;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/airplay/AirPlaySession$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->Companion:Lcom/shilapi/xcertplay/airplay/AirPlaySession$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/net/Socket;Lcom/shilapi/xcertplay/airplay/AirPlayConfig;Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;Lcom/shilapi/xcertplay/airplay/PairingStore;Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;)V
    .locals 8

    const-string/jumbo v0, "socket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "identity"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pairings"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "media"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->socket:Ljava/net/Socket;

    .line 73
    iput-object p2, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->config:Lcom/shilapi/xcertplay/airplay/AirPlayConfig;

    .line 74
    iput-object p3, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->identity:Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;

    .line 75
    iput-object p4, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->pairings:Lcom/shilapi/xcertplay/airplay/PairingStore;

    .line 76
    iput-object p5, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->mfi:Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;

    .line 77
    iput-object p6, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->listener:Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    .line 78
    iput-object p7, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->media:Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;

    .line 80
    new-instance p2, Lcom/shilapi/xcertplay/airplay/PairSetup;

    invoke-direct {p2, p3, p4}, Lcom/shilapi/xcertplay/airplay/PairSetup;-><init>(Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;Lcom/shilapi/xcertplay/airplay/PairingStore;)V

    iput-object p2, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->pairSetup:Lcom/shilapi/xcertplay/airplay/PairSetup;

    .line 83
    new-instance p2, Lcom/shilapi/xcertplay/airplay/PairVerify;

    invoke-direct {p2, p3, p4}, Lcom/shilapi/xcertplay/airplay/PairVerify;-><init>(Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;Lcom/shilapi/xcertplay/airplay/PairingStore;)V

    iput-object p2, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->pairVerify:Lcom/shilapi/xcertplay/airplay/PairVerify;

    const/4 p2, 0x0

    .line 85
    new-array p3, p2, [B

    iput-object p3, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->encBuf:[B

    .line 86
    const-string p3, ""

    iput-object p3, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->deviceBtMac:Ljava/lang/String;

    .line 87
    new-instance p4, Ljava/util/LinkedHashSet;

    invoke-direct {p4}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p4, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->activeStreams:Ljava/util/LinkedHashSet;

    .line 94
    new-instance p4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p4, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p4, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 95
    new-instance p4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p4, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p4, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->notified:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 101
    new-instance p4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p4, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p4, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->firstTouchSendLogged:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 102
    new-instance p4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p4, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p4, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->touchSendFailureLogged:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 103
    new-instance p4, Lcom/shilapi/xcertplay/airplay/AirPlayTouchSlots;

    const/4 p5, 0x1

    const/4 p6, 0x0

    invoke-direct {p4, p2, p5, p6}, Lcom/shilapi/xcertplay/airplay/AirPlayTouchSlots;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p4, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->touchSlots:Lcom/shilapi/xcertplay/airplay/AirPlayTouchSlots;

    .line 104
    new-instance p2, Lcom/shilapi/xcertplay/airplay/NtpClock;

    invoke-direct {p2}, Lcom/shilapi/xcertplay/airplay/NtpClock;-><init>()V

    iput-object p2, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->ntp:Lcom/shilapi/xcertplay/airplay/NtpClock;

    .line 106
    new-instance v0, Lcom/shilapi/xcertplay/airplay/PeerHeartbeat;

    new-instance v5, Lcom/shilapi/xcertplay/airplay/AirPlaySession$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/shilapi/xcertplay/airplay/AirPlaySession$$ExternalSyntheticLambda0;-><init>()V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/shilapi/xcertplay/airplay/PeerHeartbeat;-><init>(JJLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->heartbeat:Lcom/shilapi/xcertplay/airplay/PeerHeartbeat;

    .line 109
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->eventWriteLock:Ljava/lang/Object;

    .line 110
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->eventThreads:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 112
    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p3, p2

    :cond_1
    :goto_0
    iput-object p3, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->host:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object p2

    iput-object p2, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->localAddress:Ljava/net/InetAddress;

    .line 114
    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object p1

    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->peerAddress:Ljava/net/InetAddress;

    return-void
.end method

.method private final acceptEvent(Ljava/net/ServerSocket;)V
    .locals 6

    const-string v0, "airplay event connection accepted from "

    .line 785
    :try_start_0
    invoke-virtual {p1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 786
    invoke-virtual {p1, v1, v2}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 787
    invoke-virtual {p1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v3, 0x0

    invoke-static {p0, v0, v2, v1, v3}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->debugLog$default(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 788
    invoke-static {p1}, Lcom/shilapi/xcertplay/E01Realtime;->controlSocket(Ljava/net/Socket;)V

    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->eventSocket:Ljava/net/Socket;

    .line 789
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->pairVerify:Lcom/shilapi/xcertplay/airplay/PairVerify;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/airplay/PairVerify;->getShared()[B

    move-result-object v0

    if-nez v0, :cond_0

    .line 791
    const-string/jumbo v0, "xcertplay-usb"

    const-string v1, "airplay event rejected: pair-verify shared secret unavailable"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    check-cast p1, Ljava/io/Closeable;

    invoke-static {p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->safeClose(Ljava/io/Closeable;)V

    .line 793
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->close()V

    return-void

    .line 796
    :cond_0
    sget-object v1, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;

    .line 798
    const-string v2, "Events-Salt"

    invoke-static {v2}, Lcom/shilapi/xcertplay/airplay/BytesKt;->asciiBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 799
    const-string v3, "Events-Write-Encryption-Key"

    invoke-static {v3}, Lcom/shilapi/xcertplay/airplay/BytesKt;->asciiBytes(Ljava/lang/String;)[B

    move-result-object v3

    const/16 v4, 0x20

    .line 796
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->hkdfSha512([B[B[BI)[B

    move-result-object v1

    .line 802
    sget-object v2, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;

    .line 804
    const-string v3, "Events-Salt"

    invoke-static {v3}, Lcom/shilapi/xcertplay/airplay/BytesKt;->asciiBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 805
    const-string v5, "Events-Read-Encryption-Key"

    invoke-static {v5}, Lcom/shilapi/xcertplay/airplay/BytesKt;->asciiBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 802
    invoke-virtual {v2, v0, v3, v5, v4}, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->hkdfSha512([B[B[BI)[B

    move-result-object v0

    .line 808
    new-instance v2, Lcom/shilapi/xcertplay/airplay/ControlCipher;

    invoke-direct {v2, v0, v1}, Lcom/shilapi/xcertplay/airplay/ControlCipher;-><init>([B[B)V

    iput-object v2, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->eventCipher:Lcom/shilapi/xcertplay/airplay/ControlCipher;

    .line 809
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->eventWriteLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 810
    :try_start_1
    invoke-direct {p0}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->sendPendingNightModeLocked()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 809
    :try_start_2
    monitor-exit v0

    .line 812
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->runEventRead(Ljava/net/Socket;)V

    return-void

    :catchall_0
    move-exception p1

    .line 809
    monitor-exit v0

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 814
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 815
    const-string/jumbo v0, "xcertplay-usb"

    const-string v1, "airplay event accept failed"

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 816
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->close()V

    :cond_1
    return-void
.end method

.method private final debugLog(Ljava/lang/String;Z)V
    .locals 2

    .line 542
    sget-object v0, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;->INSTANCE:Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;->mask(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "xcertplay-usb"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    return-void

    .line 545
    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->listener:Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    invoke-interface {p2, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;->onDebugLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 547
    const-string p2, "debug log callback failed"

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v1, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method static synthetic debugLog$default(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 541
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->debugLog(Ljava/lang/String;Z)V

    return-void
.end method

.method private final handle(Lcom/shilapi/xcertplay/airplay/RtspMessage$Request;)Lcom/shilapi/xcertplay/airplay/RtspMessage$Response;
    .locals 23

    move-object/from16 v0, p0

    .line 466
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Request;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x70269faf

    const/16 v4, 0xc8

    .line 470
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    if-eq v2, v3, :cond_3

    const v3, -0x3480a9fc    # -1.67337E7f

    if-eq v2, v3, :cond_1

    const v3, 0x4b2425d

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 466
    :cond_0
    const-string v2, "SETUP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 467
    invoke-direct/range {p0 .. p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->handleSetup(Lcom/shilapi/xcertplay/airplay/RtspMessage$Request;)Lcom/shilapi/xcertplay/airplay/RtspMessage$Response;

    move-result-object v1

    return-object v1

    .line 466
    :cond_1
    const-string v2, "TEARDOWN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 472
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->handleTeardown(Lcom/shilapi/xcertplay/airplay/RtspMessage$Request;)Lcom/shilapi/xcertplay/airplay/RtspMessage$Response;

    move-result-object v1

    return-object v1

    .line 466
    :cond_3
    const-string v2, "RECORD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 475
    :cond_4
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Request;->getPath()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "toLowerCase(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 477
    const-string v2, "/pair-setup"

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    const-string v6, "application/pairing+tlv8"

    const-string v8, "Content-Type"

    if-eqz v2, :cond_5

    new-instance v9, Lcom/shilapi/xcertplay/airplay/RtspMessage$Response;

    .line 478
    invoke-static {v8, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v13

    .line 479
    iget-object v1, v0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->pairSetup:Lcom/shilapi/xcertplay/airplay/PairSetup;

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Request;->getBody()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/shilapi/xcertplay/airplay/PairSetup;->handle([B)[B

    move-result-object v14

    const/4 v15, 0x7

    const/16 v16, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 477
    invoke-direct/range {v9 .. v16}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Response;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/Map;[BILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9

    .line 481
    :cond_5
    const-string v2, "/pair-verify"

    invoke-static {v1, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v9, Lcom/shilapi/xcertplay/airplay/RtspMessage$Response;

    .line 482
    invoke-static {v8, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v13

    .line 483
    iget-object v1, v0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->pairVerify:Lcom/shilapi/xcertplay/airplay/PairVerify;

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Request;->getBody()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/shilapi/xcertplay/airplay/PairVerify;->handle([B)[B

    move-result-object v14

    const/4 v15, 0x7

    const/16 v16, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 481
    invoke-direct/range {v9 .. v16}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Response;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/Map;[BILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9

    .line 485
    :cond_6
    const-string v2, "/auth-setup"

    invoke-static {v1, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 486
    iget-object v1, v0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->mfi:Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;

    if-eqz v1, :cond_7

    sget-object v2, Lcom/shilapi/xcertplay/airplay/MfiSapAuthSetup;->INSTANCE:Lcom/shilapi/xcertplay/airplay/MfiSapAuthSetup;

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Request;->getBody()[B

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/shilapi/xcertplay/airplay/MfiSapAuthSetup;->handle([BLcom/shilapi/xcertplay/mfi/MfiAuthenticator;)[B

    move-result-object v5

    :cond_7
    move-object v14, v5

    if-nez v14, :cond_8

    .line 487
    new-instance v15, Lcom/shilapi/xcertplay/airplay/RtspMessage$Response;

    const/16 v1, 0x190

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v21, 0x1d

    const/16 v22, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v15 .. v22}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Response;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/Map;[BILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v15

    .line 488
    :cond_8
    new-instance v9, Lcom/shilapi/xcertplay/airplay/RtspMessage$Response;

    const-string v1, "application/octet-stream"

    invoke-static {v8, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v13

    const/4 v15, 0x7

    const/16 v16, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v9 .. v16}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Response;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/Map;[BILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9

    .line 490
    :cond_9
    const-string v2, "/info"

    invoke-static {v1, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    const-string v6, "application/x-apple-binary-plist"

    if-eqz v2, :cond_10

    .line 491
    sget-object v1, Lcom/shilapi/xcertplay/airplay/AirPlayInfoPlist;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlayInfoPlist;

    iget-object v2, v0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->config:Lcom/shilapi/xcertplay/airplay/AirPlayConfig;

    invoke-virtual {v1, v2}, Lcom/shilapi/xcertplay/airplay/AirPlayInfoPlist;->build(Lcom/shilapi/xcertplay/airplay/AirPlayConfig;)Ljava/util/Map;

    move-result-object v1

    .line 492
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Request;->getBody()[B

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_a

    const/4 v2, 0x1

    goto :goto_1

    :cond_a
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_b

    .line 494
    :try_start_0
    sget-object v2, Lcom/shilapi/xcertplay/airplay/BplistCodec;->INSTANCE:Lcom/shilapi/xcertplay/airplay/BplistCodec;

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Request;->getBody()[B

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/shilapi/xcertplay/airplay/BplistCodec;->decode([B)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 496
    :catchall_0
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Request;->getBody()[B

    move-result-object v2

    array-length v2, v2

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "<unparseable "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes>"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 498
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "airplay /info request="

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v3, v4, v5}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->debugLog$default(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 502
    :cond_b
    const-string v2, "features"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 503
    const-string v7, "audioFormats"

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    instance-of v9, v7, Ljava/util/List;

    if-eqz v9, :cond_c

    check-cast v7, Ljava/util/List;

    goto :goto_3

    :cond_c
    move-object v7, v5

    :goto_3
    if-eqz v7, :cond_d

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    goto :goto_4

    :cond_d
    const/4 v7, 0x0

    .line 504
    :goto_4
    const-string v9, "audioLatencies"

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    instance-of v10, v9, Ljava/util/List;

    if-eqz v10, :cond_e

    check-cast v9, Ljava/util/List;

    goto :goto_5

    :cond_e
    move-object v9, v5

    :goto_5
    if-eqz v9, :cond_f

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    goto :goto_6

    :cond_f
    const/4 v9, 0x0

    :goto_6
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "airplay /info features="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " audioFormats="

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " audioLatencies="

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 500
    const-string/jumbo v7, "xcertplay-usb"

    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    const-string v2, "displays"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "airplay /info displays="

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v3, v4, v5}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->debugLog$default(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 507
    new-instance v9, Lcom/shilapi/xcertplay/airplay/RtspMessage$Response;

    .line 508
    invoke-static {v8, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v13

    .line 509
    sget-object v2, Lcom/shilapi/xcertplay/airplay/BplistCodec;->INSTANCE:Lcom/shilapi/xcertplay/airplay/BplistCodec;

    invoke-virtual {v2, v1}, Lcom/shilapi/xcertplay/airplay/BplistCodec;->encode(Ljava/lang/Object;)[B

    move-result-object v14

    const/4 v15, 0x7

    const/16 v16, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 507
    invoke-direct/range {v9 .. v16}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Response;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/Map;[BILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9

    .line 512
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Request;->getMethod()Ljava/lang/String;

    move-result-object v2

    const-string v9, "POST"

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "/command"

    invoke-static {v1, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-direct/range {p0 .. p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->handleCommand(Lcom/shilapi/xcertplay/airplay/RtspMessage$Request;)Lcom/shilapi/xcertplay/airplay/RtspMessage$Response;

    move-result-object v1

    return-object v1

    .line 513
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Request;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    const-string v2, "/feedback"

    invoke-static {v1, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 514
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 515
    iget-wide v9, v0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->lastTimingLogMs:J

    sub-long v9, v1, v9

    const-wide/16 v11, 0x2710

    cmp-long v13, v9, v11

    if-ltz v13, :cond_12

    .line 516
    iput-wide v1, v0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->lastTimingLogMs:J

    .line 517
    iget-object v1, v0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->ntp:Lcom/shilapi/xcertplay/airplay/NtpClock;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/airplay/NtpClock;->stats()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->activeStreams:Ljava/util/LinkedHashSet;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "airplay timing "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " activeStreams="

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3, v4, v5}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->debugLog$default(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 519
    :cond_12
    iget-object v1, v0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->media:Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;

    invoke-interface {v1, v0}, Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;->onFeedback(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_13

    .line 521
    new-instance v5, Lcom/shilapi/xcertplay/airplay/RtspMessage$Response;

    const/16 v11, 0x1d

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v12}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Response;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/Map;[BILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v5

    .line 523
    :cond_13
    new-instance v2, Lcom/shilapi/xcertplay/airplay/RtspMessage$Response;

    .line 524
    invoke-static {v8, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v10

    .line 525
    sget-object v3, Lcom/shilapi/xcertplay/airplay/BplistCodec;->INSTANCE:Lcom/shilapi/xcertplay/airplay/BplistCodec;

    invoke-virtual {v3, v1}, Lcom/shilapi/xcertplay/airplay/BplistCodec;->encode(Ljava/lang/Object;)[B

    move-result-object v11

    const/4 v12, 0x7

    const/4 v13, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v6, v2

    .line 523
    invoke-direct/range {v6 .. v13}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Response;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/Map;[BILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6

    .line 529
    :cond_14
    new-instance v5, Lcom/shilapi/xcertplay/airplay/RtspMessage$Response;

    const/16 v11, 0x1d

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v12}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Response;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/Map;[BILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v5

    .line 469
    :cond_15
    iget-object v1, v0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->listener:Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    invoke-interface {v1, v0}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;->onSessionActive(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    .line 470
    new-instance v5, Lcom/shilapi/xcertplay/airplay/RtspMessage$Response;

    const/16 v11, 0x1d

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v12}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Response;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/Map;[BILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v5
.end method

.method private final handleCommand(Lcom/shilapi/xcertplay/airplay/RtspMessage$Request;)Lcom/shilapi/xcertplay/airplay/RtspMessage$Response;
    .locals 14

    .line 658
    :try_start_0
    sget-object v0, Lcom/shilapi/xcertplay/airplay/BplistCodec;->INSTANCE:Lcom/shilapi/xcertplay/airplay/BplistCodec;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Request;->getBody()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/airplay/BplistCodec;->decode([B)Ljava/lang/Object;

    move-result-object v0

    # invokes: Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->asMap(Ljava/lang/Object;)Ljava/util/Map;
    invoke-static {v0}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->access$asMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 660
    :catchall_0
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 662
    :cond_0
    :goto_0
    const-string/jumbo v1, "type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    # invokes: Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->string(Ljava/lang/Object;)Ljava/lang/String;
    invoke-static {v1}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->access$string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->media:Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;

    invoke-static {v2, v1}, Lcom/shilapi/xcertplay/E01AudioScene;->prompt(Ljava/lang/Object;Ljava/lang/String;)V

    .line 663
    const-string v2, "params"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    # invokes: Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->asMap(Ljava/lang/Object;)Ljava/util/Map;
    invoke-static {v0}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->access$asMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 664
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "airplay command type="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " keys="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {p0, v2, v3, v4, v5}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->debugLog$default(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 665
    const-string v2, "modesChanged"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->modesSummary(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "airplay modesChanged "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v3, v4, v5}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->debugLog$default(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 666
    :cond_2
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Request;->getHeaders()Ljava/util/Map;

    move-result-object p1

    const-string/jumbo v2, "x-apple-streamid"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_3

    invoke-static {p1}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    goto :goto_1

    :cond_3
    move-object p1, v5

    .line 667
    :goto_1
    const-string v2, "data"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, [B

    if-eqz v3, :cond_4

    check-cast v2, [B

    goto :goto_2

    :cond_4
    move-object v2, v5

    :goto_2
    const/16 v3, 0xc8

    if-eqz p1, :cond_7

    if-eqz v2, :cond_7

    .line 669
    :try_start_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;

    sget-object v0, Lcom/shilapi/xcertplay/airplay/BplistCodec;->INSTANCE:Lcom/shilapi/xcertplay/airplay/BplistCodec;

    invoke-virtual {v0, v2}, Lcom/shilapi/xcertplay/airplay/BplistCodec;->decode([B)Ljava/lang/Object;

    move-result-object v0

    # invokes: Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->asMap(Ljava/lang/Object;)Ljava/util/Map;
    invoke-static {v0}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->access$asMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_3
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    move-object v5, v0

    :goto_4
    check-cast v5, Ljava/util/Map;

    if-eqz v5, :cond_6

    .line 670
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->listener:Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, p0, v1, v2, v5}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;->onRemoteControlMessage(Lcom/shilapi/xcertplay/airplay/AirPlaySession;JLjava/util/Map;)V

    .line 671
    :cond_6
    new-instance v6, Lcom/shilapi/xcertplay/airplay/RtspMessage$Response;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v12, 0x1d

    const/4 v13, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v13}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Response;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/Map;[BILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6

    .line 673
    :cond_7
    const-string p1, "requestUI"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string/jumbo v2, "url"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    # invokes: Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->string(Ljava/lang/Object;)Ljava/lang/String;
    invoke-static {v2}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->access$string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "videoplayback:"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 674
    iget-object p1, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->listener:Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    invoke-interface {p1, p0}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;->onVideoPlaybackUiRequested(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    goto :goto_5

    .line 675
    :cond_8
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 676
    iget-object p1, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->listener:Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    invoke-interface {p1, p0}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;->onHostUiRequested(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    .line 678
    :cond_9
    :goto_5
    iget-object p1, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->listener:Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    invoke-interface {p1, p0, v1, v0}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;->onCommand(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;Ljava/util/Map;)V

    .line 679
    new-instance v4, Lcom/shilapi/xcertplay/airplay/RtspMessage$Response;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v10, 0x1d

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v11}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Response;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/Map;[BILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4
.end method

.method private final handleSetup(Lcom/shilapi/xcertplay/airplay/RtspMessage$Request;)Lcom/shilapi/xcertplay/airplay/RtspMessage$Response;
    .locals 24

    move-object/from16 v1, p0

    const/16 v2, 0x190

    .line 561
    :try_start_0
    sget-object v0, Lcom/shilapi/xcertplay/airplay/BplistCodec;->INSTANCE:Lcom/shilapi/xcertplay/airplay/BplistCodec;

    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Request;->getBody()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/shilapi/xcertplay/airplay/BplistCodec;->decode([B)Ljava/lang/Object;

    move-result-object v0

    # invokes: Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->asMap(Ljava/lang/Object;)Ljava/util/Map;
    invoke-static {v0}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->access$asMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v3, Lcom/shilapi/xcertplay/airplay/RtspMessage$Response;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v9, 0x1d

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v10}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Response;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/Map;[BILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v3

    .line 566
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "airplay SETUP keys="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->debugLog$default(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 567
    const-string/jumbo v2, "streams"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Ljava/util/List;

    if-eqz v7, :cond_1

    check-cast v6, Ljava/util/List;

    goto :goto_0

    :cond_1
    move-object v6, v5

    .line 568
    :goto_0
    const-string v7, "application/x-apple-binary-plist"

    const-string v8, "Content-Type"

    const/4 v9, 0x1

    if-eqz v6, :cond_2

    .line 569
    invoke-direct {v1, v6}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->handleStreams(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 570
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "airplay SETUP response streams="

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6, v3, v4, v5}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->debugLog$default(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 571
    sget-object v4, Lcom/shilapi/xcertplay/airplay/BplistCodec;->INSTANCE:Lcom/shilapi/xcertplay/airplay/BplistCodec;

    new-array v5, v9, [Lkotlin/Pair;

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-static {v5}, Lkotlin/collections/MapsKt;->linkedMapOf([Lkotlin/Pair;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/shilapi/xcertplay/airplay/BplistCodec;->encode(Ljava/lang/Object;)[B

    move-result-object v14

    .line 572
    # invokes: Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->toHex([B)Ljava/lang/String;
    invoke-static {v14}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->access$toHex([B)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "airplay SETUP response bplistHex="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->trace(Ljava/lang/String;)V

    .line 573
    new-instance v9, Lcom/shilapi/xcertplay/airplay/RtspMessage$Response;

    invoke-static {v8, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v13

    const/4 v15, 0x7

    const/16 v16, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v9 .. v16}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Response;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/Map;[BILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9

    .line 576
    :cond_2
    const-string v2, "name"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    # invokes: Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->string(Ljava/lang/Object;)Ljava/lang/String;
    invoke-static {v2}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->access$string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 577
    const-string v2, "deviceID"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    # invokes: Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->string(Ljava/lang/Object;)Ljava/lang/String;
    invoke-static {v2}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->access$string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 578
    const-string v2, "macAddress"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    # invokes: Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->string(Ljava/lang/Object;)Ljava/lang/String;
    invoke-static {v2}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->access$string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v2, "toLowerCase(...)"

    invoke-static {v13, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 579
    const-string v2, "model"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    # invokes: Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->string(Ljava/lang/Object;)Ljava/lang/String;
    invoke-static {v2}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->access$string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 580
    const-string v2, "osVersion"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    # invokes: Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->string(Ljava/lang/Object;)Ljava/lang/String;
    invoke-static {v2}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->access$string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 581
    const-string/jumbo v2, "sourceVersion"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    # invokes: Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->string(Ljava/lang/Object;)Ljava/lang/String;
    invoke-static {v2}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->access$string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 582
    sget-object v6, Lcom/shilapi/xcertplay/airplay/AirPlayPeerDiagnostics;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlayPeerDiagnostics;

    invoke-virtual {v6, v14, v15, v2}, Lcom/shilapi/xcertplay/airplay/AirPlayPeerDiagnostics;->summary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6, v3, v4, v5}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->debugLog$default(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 583
    move-object v6, v12

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-lez v10, :cond_3

    iput-object v12, v1, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->deviceBtMac:Ljava/lang/String;

    .line 584
    :cond_3
    move-object v10, v11

    check-cast v10, Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-lez v10, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_5

    goto :goto_1

    :cond_5
    move-object v6, v13

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_6

    goto :goto_1

    :cond_6
    move-object v6, v14

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_7

    .line 585
    :goto_1
    iget-object v6, v1, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->listener:Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    .line 587
    new-instance v10, Lcom/shilapi/xcertplay/airplay/AirPlayDeviceInfo;

    move-object/from16 v16, v2

    invoke-direct/range {v10 .. v16}, Lcom/shilapi/xcertplay/airplay/AirPlayDeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    invoke-interface {v6, v1, v10}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;->onDeviceInfo(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Lcom/shilapi/xcertplay/airplay/AirPlayDeviceInfo;)V

    .line 591
    :cond_7
    const-string/jumbo v2, "timingPort"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    # invokes: Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->long(Ljava/lang/Object;)Ljava/lang/Long;
    invoke-static {v6}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->access$long(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    long-to-int v6, v10

    goto :goto_2

    :cond_8
    const/4 v6, 0x0

    .line 593
    :goto_2
    iget-object v10, v1, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->peerAddress:Ljava/net/InetAddress;

    instance-of v11, v10, Ljava/net/Inet6Address;

    if-eqz v11, :cond_9

    check-cast v10, Ljava/net/Inet6Address;

    goto :goto_3

    :cond_9
    move-object v10, v5

    :goto_3
    const-string v11, "none"

    if-eqz v10, :cond_a

    invoke-virtual {v10}, Ljava/net/Inet6Address;->getScopedInterface()Ljava/net/NetworkInterface;

    move-result-object v10

    if-eqz v10, :cond_a

    invoke-virtual {v10}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_b

    :cond_a
    move-object v10, v11

    .line 594
    :cond_b
    iget-object v12, v1, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->peerAddress:Ljava/net/InetAddress;

    instance-of v12, v12, Ljava/net/Inet6Address;

    if-eqz v12, :cond_c

    const-string v12, "IPv6"

    goto :goto_4

    :cond_c
    const-string v12, "IPv4"

    :goto_4
    const-string v13, "features"

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    instance-of v15, v14, Ljava/util/List;

    if-eqz v15, :cond_d

    check-cast v14, Ljava/util/List;

    goto :goto_5

    :cond_d
    move-object v14, v5

    :goto_5
    if-eqz v14, :cond_f

    move-object v15, v14

    check-cast v15, Ljava/lang/Iterable;

    const-string v14, ","

    move-object/from16 v16, v14

    check-cast v16, Ljava/lang/CharSequence;

    const/16 v22, 0x3e

    const/16 v23, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v15 .. v23}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_e

    goto :goto_6

    :cond_e
    move-object v11, v14

    :cond_f
    :goto_6
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "airplay timing peerPort="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " peerScope="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " family="

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " proposedFeatures="

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 593
    invoke-static {v1, v10, v3, v4, v5}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->debugLog$default(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 596
    new-array v4, v4, [Lkotlin/Pair;

    invoke-direct {v1, v6}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->openTiming(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v4, v3

    .line 597
    invoke-direct {v1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->openEvent()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "eventPort"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v4, v9

    .line 595
    invoke-static {v4}, Lkotlin/collections/MapsKt;->linkedMapOf([Lkotlin/Pair;)Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 599
    const-string v3, "keepAliveLowPower"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-wide/16 v9, 0x1

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 600
    :cond_10
    move-object v3, v2

    check-cast v3, Ljava/util/Map;

    invoke-direct {v1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->openKeepAlive()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v6, "keepAlivePort"

    invoke-interface {v3, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    :cond_11
    iget-object v3, v1, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->config:Lcom/shilapi/xcertplay/airplay/AirPlayConfig;

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Ljava/util/List;

    if-eqz v4, :cond_12

    move-object v5, v0

    check-cast v5, Ljava/util/List;

    :cond_12
    invoke-static {v3, v5}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->setupEnabledFeatures(Lcom/shilapi/xcertplay/airplay/AirPlayConfig;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 603
    const-string/jumbo v3, "videoPlayback"

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, v1, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->videoPlaybackEnabled:Z

    .line 604
    move-object v3, v2

    check-cast v3, Ljava/util/Map;

    const-string v4, "enabledFeatures"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    new-instance v9, Lcom/shilapi/xcertplay/airplay/RtspMessage$Response;

    .line 606
    invoke-static {v8, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v13

    .line 607
    sget-object v0, Lcom/shilapi/xcertplay/airplay/BplistCodec;->INSTANCE:Lcom/shilapi/xcertplay/airplay/BplistCodec;

    invoke-virtual {v0, v2}, Lcom/shilapi/xcertplay/airplay/BplistCodec;->encode(Ljava/lang/Object;)[B

    move-result-object v14

    const/4 v15, 0x7

    const/16 v16, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 605
    invoke-direct/range {v9 .. v16}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Response;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/Map;[BILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9

    :catchall_0
    move-exception v0

    .line 563
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Request;->getBody()[B

    move-result-object v3

    array-length v3, v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "airplay SETUP plist decode failed body="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "xcertplay-usb"

    invoke-static {v4, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 564
    new-instance v5, Lcom/shilapi/xcertplay/airplay/RtspMessage$Response;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v11, 0x1d

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v12}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Response;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/Map;[BILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v5
.end method

.method private final handleStreams(Ljava/util/List;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 612
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 613
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 614
    # invokes: Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->asMap(Ljava/lang/Object;)Ljava/util/Map;
    invoke-static {v1}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->access$asMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 615
    :cond_1
    const-string/jumbo v2, "type"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    # invokes: Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->long(Ljava/lang/Object;)Ljava/lang/Long;
    invoke-static {v3}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->access$long(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-int v4, v3

    .line 616
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "airplay SETUP stream type="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " payload="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {p0, v3, v5, v6, v7}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->debugLog$default(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;ZILjava/lang/Object;)V

    const/16 v3, 0x6e

    const/16 v8, 0x6f

    .line 617
    const-string v9, "dataPort"

    const-string v10, " dataPort="

    const/4 v11, 0x1

    if-eq v4, v3, :cond_b

    if-eq v4, v8, :cond_b

    const/16 v2, 0x82

    const-string v3, " accepted="

    const-string v8, "none"

    if-eq v4, v2, :cond_7

    packed-switch v4, :pswitch_data_0

    .line 650
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "airplay unsupported stream type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v5, v6, v7}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->debugLog$default(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_0

    .line 628
    :pswitch_0
    iget-object v2, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->media:Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;

    invoke-interface {v2, p0, v4, v1}, Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;->onAudio(Lcom/shilapi/xcertplay/airplay/AirPlaySession;ILjava/util/Map;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    :goto_1
    if-eqz v1, :cond_3

    .line 631
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    :cond_3
    move-object v2, v8

    :cond_4
    if-eqz v1, :cond_6

    .line 632
    const-string v9, "controlPort"

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_5

    goto :goto_2

    :cond_5
    move-object v8, v9

    :cond_6
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v12, "airplay audio stream type="

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " controlPort="

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 629
    invoke-static {p0, v2, v5, v6, v7}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->debugLog$default(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;ZILjava/lang/Object;)V

    if-eqz v1, :cond_0

    .line 635
    iget-object v2, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->activeStreams:Ljava/util/LinkedHashSet;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 636
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 640
    :cond_7
    iget-object v2, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->media:Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;

    invoke-interface {v2, p0, v1}, Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;->onDataStream(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_8

    goto :goto_3

    :cond_8
    const/4 v11, 0x0

    :goto_3
    if-eqz v1, :cond_a

    .line 643
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_9

    goto :goto_4

    :cond_9
    move-object v8, v2

    :cond_a
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v9, "airplay data stream type="

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 641
    invoke-static {p0, v2, v5, v6, v7}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->debugLog$default(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;ZILjava/lang/Object;)V

    if-eqz v1, :cond_0

    .line 646
    iget-object v2, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->activeStreams:Ljava/util/LinkedHashSet;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 647
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 619
    :cond_b
    iget-object v3, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->media:Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;

    invoke-interface {v3, p0, v4, v1}, Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;->onScreen(Lcom/shilapi/xcertplay/airplay/AirPlaySession;ILjava/util/Map;)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_c

    .line 620
    const-string v3, "rejected"

    goto :goto_5

    :cond_c
    move-object v3, v1

    :goto_5
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "airplay screen stream type="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v5, v6, v7}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->debugLog$default(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;ZILjava/lang/Object;)V

    if-eqz v1, :cond_0

    .line 622
    iget-object v3, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->activeStreams:Ljava/util/LinkedHashSet;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    if-ne v4, v8, :cond_d

    .line 623
    iget v3, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->clusterStreamSetups:I

    add-int/2addr v3, v11

    iput v3, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->clusterStreamSetups:I

    iput v3, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->clusterStream:I

    .line 624
    :cond_d
    new-array v3, v6, [Lkotlin/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v3, v5

    invoke-static {v9, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v3, v11

    invoke-static {v3}, Lkotlin/collections/MapsKt;->linkedMapOf([Lkotlin/Pair;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 653
    :cond_e
    check-cast v0, Ljava/util/List;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final handleTeardown(Lcom/shilapi/xcertplay/airplay/RtspMessage$Request;)Lcom/shilapi/xcertplay/airplay/RtspMessage$Response;
    .locals 13

    const/4 v0, 0x0

    .line 698
    :try_start_0
    sget-object v1, Lcom/shilapi/xcertplay/airplay/BplistCodec;->INSTANCE:Lcom/shilapi/xcertplay/airplay/BplistCodec;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Request;->getBody()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/shilapi/xcertplay/airplay/BplistCodec;->decode([B)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    move-object v1, v0

    .line 702
    :goto_0
    invoke-static {v1}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->teardownStreamTypes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    .line 705
    const-string v3, "all"

    goto :goto_1

    :cond_0
    move-object v3, v2

    :goto_1
    iget-object v4, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->activeStreams:Ljava/util/LinkedHashSet;

    .line 706
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Request;->getBody()[B

    move-result-object v5

    array-length v5, v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "airplay TEARDOWN types="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " activeBefore="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " body="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bytes payload="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 704
    invoke-static {p0, v1, v4, v3, v0}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->debugLog$default(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 708
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Request;->getBody()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Request;->getBody()[B

    move-result-object p1

    # invokes: Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->toHex([B)Ljava/lang/String;
    invoke-static {p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->access$toHex([B)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "airplay TEARDOWN raw"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "Hex="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->trace(Ljava/lang/String;)V

    if-nez v2, :cond_2

    .line 711
    iget-object p1, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->activeStreams:Ljava/util/LinkedHashSet;

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 976
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 711
    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->media:Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;

    invoke-interface {v1, p0, v0}, Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;->onTeardown(Lcom/shilapi/xcertplay/airplay/AirPlaySession;I)V

    goto :goto_2

    .line 712
    :cond_1
    iget-object p1, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->activeStreams:Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->clear()V

    goto :goto_4

    .line 714
    :cond_2
    check-cast v2, Ljava/lang/Iterable;

    .line 978
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 714
    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->activeStreams:Ljava/util/LinkedHashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->media:Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;

    invoke-interface {v1, p0, v0}, Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;->onTeardown(Lcom/shilapi/xcertplay/airplay/AirPlaySession;I)V

    goto :goto_3

    .line 716
    :cond_4
    :goto_4
    iget-object p1, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->activeStreams:Ljava/util/LinkedHashSet;

    const/16 v0, 0x6f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    iput v4, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->clusterStream:I

    .line 717
    :cond_5
    new-instance v5, Lcom/shilapi/xcertplay/airplay/RtspMessage$Response;

    const/16 p1, 0xc8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v11, 0x1d

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v12}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Response;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/Map;[BILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v5
.end method

.method private static final heartbeat$lambda$0()J
    .locals 2

    .line 106
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method private final modesSummary(Ljava/util/Map;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 687
    const-string v0, "resources"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_1
    check-cast v0, Ljava/lang/Iterable;

    .line 950
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 959
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 687
    # invokes: Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->asMap(Ljava/lang/Object;)Ljava/util/Map;
    invoke-static {v3}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->access$asMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 958
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 962
    :cond_3
    check-cast v1, Ljava/util/List;

    .line 950
    move-object v3, v1

    check-cast v3, Ljava/lang/Iterable;

    .line 687
    const-string v0, ","

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    new-instance v9, Lcom/shilapi/xcertplay/airplay/AirPlaySession$$ExternalSyntheticLambda3;

    invoke-direct {v9}, Lcom/shilapi/xcertplay/airplay/AirPlaySession$$ExternalSyntheticLambda3;-><init>()V

    const/16 v10, 0x1e

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v11}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 690
    const-string v3, "appStates"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v3, p1, Ljava/util/List;

    if-eqz v3, :cond_4

    move-object v2, p1

    check-cast v2, Ljava/util/List;

    :cond_4
    if-nez v2, :cond_5

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    :cond_5
    check-cast v2, Ljava/lang/Iterable;

    .line 963
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/Collection;

    .line 972
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 690
    # invokes: Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->asMap(Ljava/lang/Object;)Ljava/util/Map;
    invoke-static {v3}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->access$asMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 971
    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 975
    :cond_7
    check-cast p1, Ljava/util/List;

    .line 963
    move-object v2, p1

    check-cast v2, Ljava/lang/Iterable;

    .line 690
    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    new-instance v8, Lcom/shilapi/xcertplay/airplay/AirPlaySession$$ExternalSyntheticLambda4;

    invoke-direct {v8}, Lcom/shilapi/xcertplay/airplay/AirPlaySession$$ExternalSyntheticLambda4;-><init>()V

    const/16 v9, 0x1e

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 693
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "resources=["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] appStates=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static final modesSummary$lambda$16(Ljava/util/Map;)Ljava/lang/CharSequence;
    .locals 4

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 688
    const-string v0, "resourceID"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    # invokes: Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->long(Ljava/lang/Object;)Ljava/lang/Long;
    invoke-static {v0}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->access$long(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "entity"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    # invokes: Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->long(Ljava/lang/Object;)Ljava/lang/Long;
    invoke-static {v1}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->access$long(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "permanentEntity"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    # invokes: Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->long(Ljava/lang/Object;)Ljava/lang/Long;
    invoke-static {p0}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->access$long(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "res"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ":e"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "/p"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method private static final modesSummary$lambda$19(Ljava/util/Map;)Ljava/lang/CharSequence;
    .locals 5

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 691
    const-string v0, "appStateID"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    # invokes: Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->long(Ljava/lang/Object;)Ljava/lang/Long;
    invoke-static {v0}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->access$long(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "entity"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    # invokes: Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->long(Ljava/lang/Object;)Ljava/lang/Long;
    invoke-static {v1}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->access$long(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "speechMode"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    # invokes: Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->long(Ljava/lang/Object;)Ljava/lang/Long;
    invoke-static {p0}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->access$long(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v4, "/speech"

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    const-string p0, ""

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "app"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ":e"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method private final notifyPeerStalled(Z)V
    .locals 2

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->listener:Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    invoke-interface {v0, p0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;->onPeerStalled(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 175
    const-string v0, "peer stalled callback failed"

    check-cast p1, Ljava/lang/Throwable;

    const-string/jumbo v1, "xcertplay-usb"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private final notifySetupResponseSent()V
    .locals 3

    .line 535
    :try_start_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->media:Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;

    invoke-interface {v0, p0}, Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;->onSetupResponseSent(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 537
    const-string v1, "airplay SETUP response callback failed"

    check-cast v0, Ljava/lang/Throwable;

    const-string/jumbo v2, "xcertplay-usb"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private final openEvent()I
    .locals 10

    .line 756
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->eventServer:Ljava/net/ServerSocket;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    return v0

    .line 758
    :cond_1
    sget-object v1, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->INSTANCE:Lcom/shilapi/xcertplay/compat/AnyLocalBind;

    .line 759
    iget-object v2, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->localAddress:Ljava/net/InetAddress;

    .line 758
    new-instance v6, Lcom/shilapi/xcertplay/airplay/AirPlaySession$$ExternalSyntheticLambda12;

    invoke-direct {v6, p0}, Lcom/shilapi/xcertplay/airplay/AirPlaySession$$ExternalSyntheticLambda12;-><init>(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    const/16 v8, 0x2a

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x32

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v9}, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->bindServer$default(Lcom/shilapi/xcertplay/compat/AnyLocalBind;Ljava/net/InetAddress;IIZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/net/ServerSocket;

    move-result-object v0

    .line 763
    iput-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->eventServer:Ljava/net/ServerSocket;

    .line 764
    new-instance v1, Lcom/shilapi/xcertplay/airplay/AirPlaySession$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, v0}, Lcom/shilapi/xcertplay/airplay/AirPlaySession$$ExternalSyntheticLambda13;-><init>(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/net/ServerSocket;)V

    const-string v2, "airplay-event-accept"

    invoke-direct {p0, v2, v1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->spawnEvent(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 765
    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method private static final openEvent$lambda$32(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;)Lkotlin/Unit;
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 761
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "airplay event "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->debugLog$default(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final openEvent$lambda$33(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/net/ServerSocket;)Lkotlin/Unit;
    .locals 0

    .line 764
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->acceptEvent(Ljava/net/ServerSocket;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final openKeepAlive()I
    .locals 9

    .line 728
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->keepAliveSocket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v0

    return v0

    .line 730
    :cond_1
    sget-object v1, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->INSTANCE:Lcom/shilapi/xcertplay/compat/AnyLocalBind;

    .line 731
    iget-object v2, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->localAddress:Ljava/net/InetAddress;

    .line 730
    new-instance v5, Lcom/shilapi/xcertplay/airplay/AirPlaySession$$ExternalSyntheticLambda9;

    invoke-direct {v5, p0}, Lcom/shilapi/xcertplay/airplay/AirPlaySession$$ExternalSyntheticLambda9;-><init>(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    new-instance v6, Lcom/shilapi/xcertplay/airplay/AirPlaySession$$ExternalSyntheticLambda10;

    invoke-direct {v6}, Lcom/shilapi/xcertplay/airplay/AirPlaySession$$ExternalSyntheticLambda10;-><init>()V

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v8}, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->bindDatagram$default(Lcom/shilapi/xcertplay/compat/AnyLocalBind;Ljava/net/InetAddress;IZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/net/DatagramSocket;

    move-result-object v0

    .line 734
    iput-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->keepAliveSocket:Ljava/net/DatagramSocket;

    .line 735
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/shilapi/xcertplay/airplay/AirPlaySession$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0, v0}, Lcom/shilapi/xcertplay/airplay/AirPlaySession$$ExternalSyntheticLambda11;-><init>(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/net/DatagramSocket;)V

    const-string v3, "airplay-keepalive"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 736
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 737
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 735
    iput-object v1, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->keepAliveThread:Ljava/lang/Thread;

    .line 739
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method private static final openKeepAlive$lambda$26(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;)Lkotlin/Unit;
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 732
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "airplay keepalive "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->debugLog$default(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final openKeepAlive$lambda$27(Ljava/net/DatagramSocket;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 733
    invoke-virtual {p0, v0}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final openKeepAlive$lambda$28(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/net/DatagramSocket;)V
    .locals 0

    .line 735
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->runKeepAlive(Ljava/net/DatagramSocket;)V

    return-void
.end method

.method private final openTiming(I)I
    .locals 3

    .line 721
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->ntp:Lcom/shilapi/xcertplay/airplay/NtpClock;

    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->localAddress:Ljava/net/InetAddress;

    new-instance v2, Lcom/shilapi/xcertplay/airplay/AirPlaySession$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lcom/shilapi/xcertplay/airplay/AirPlaySession$$ExternalSyntheticLambda8;-><init>(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    invoke-virtual {v0, v1, v2}, Lcom/shilapi/xcertplay/airplay/NtpClock;->listen(Ljava/net/InetAddress;Lkotlin/jvm/functions/Function1;)I

    move-result v0

    if-lez p1, :cond_0

    .line 722
    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->peerAddress:Ljava/net/InetAddress;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->ntp:Lcom/shilapi/xcertplay/airplay/NtpClock;

    invoke-virtual {v2, v1, p1}, Lcom/shilapi/xcertplay/airplay/NtpClock;->start(Ljava/net/InetAddress;I)V

    :cond_0
    return v0
.end method

.method private static final openTiming$lambda$22(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;)Lkotlin/Unit;
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 721
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "airplay timing "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->debugLog$default(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final runControl()V
    .locals 35

    move-object/from16 v1, p0

    .line 377
    const-string v2, ": "

    const-string v3, "airplay handler failed "

    const-string v4, " body="

    const-string v5, " "

    const-string v6, "POST"

    const-string v7, "airplay "

    const-string/jumbo v8, "xcertplay-usb"

    const-string v9, " activeStreams="

    const-string v10, "airplay control closing reason="

    const-string v11, " cseq="

    sget-object v0, Lcom/shilapi/xcertplay/network/TcpLiveness;->INSTANCE:Lcom/shilapi/xcertplay/network/TcpLiveness;

    iget-object v12, v1, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->socket:Ljava/net/Socket;

    new-instance v13, Lcom/shilapi/xcertplay/airplay/AirPlaySession$$ExternalSyntheticLambda1;

    invoke-direct {v13, v1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession$$ExternalSyntheticLambda1;-><init>(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    invoke-virtual {v0, v12, v13}, Lcom/shilapi/xcertplay/network/TcpLiveness;->configure(Ljava/net/Socket;Lkotlin/jvm/functions/Function1;)V

    .line 378
    new-instance v12, Ljava/io/BufferedInputStream;

    iget-object v0, v1, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v12, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 379
    new-instance v13, Ljava/io/BufferedOutputStream;

    iget-object v0, v1, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v13, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v14, 0x0

    .line 380
    new-array v0, v14, [B

    const/16 v15, 0x4000

    .line 381
    new-array v15, v15, [B

    .line 382
    const-string v16, "session closed"

    .line 384
    :goto_0
    :try_start_0
    iget-object v14, v1, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-nez v14, :cond_d

    .line 385
    :try_start_1
    invoke-virtual {v12, v15}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-gez v14, :cond_0

    .line 387
    :try_start_2
    const-string v16, "peer EOF"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    goto/16 :goto_a

    .line 390
    :cond_0
    :try_start_3
    invoke-static {v15, v14}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v14

    move-object/from16 v18, v12

    const-string v12, "copyOf(...)"

    invoke-static {v14, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 391
    iget-object v12, v1, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->cipher:Lcom/shilapi/xcertplay/airplay/ControlCipher;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-eqz v12, :cond_2

    move-object/from16 v19, v15

    .line 393
    :try_start_4
    iget-object v15, v1, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->encBuf:[B

    invoke-static {v15, v14}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object v14

    iput-object v14, v1, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->encBuf:[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 395
    :try_start_5
    invoke-virtual {v12, v14}, Lcom/shilapi/xcertplay/airplay/ControlCipher;->decrypt([B)Lcom/shilapi/xcertplay/airplay/ControlCipher$Decrypted;

    move-result-object v12
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 401
    :try_start_6
    invoke-virtual {v12}, Lcom/shilapi/xcertplay/airplay/ControlCipher$Decrypted;->getRest()[B

    move-result-object v14

    iput-object v14, v1, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->encBuf:[B

    .line 402
    invoke-virtual {v12}, Lcom/shilapi/xcertplay/airplay/ControlCipher$Decrypted;->getData()[B

    move-result-object v14

    goto :goto_1

    :catch_0
    move-exception v0

    .line 397
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "control decrypt failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 398
    :try_start_7
    iget-object v3, v1, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->encBuf:[B

    array-length v3, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " encrypted="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v8, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    goto/16 :goto_b

    :catchall_0
    move-exception v0

    move-object/from16 v16, v2

    goto/16 :goto_d

    :cond_2
    move-object/from16 v19, v15

    .line 404
    :goto_1
    :try_start_8
    invoke-static {v0, v14}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object v0

    .line 405
    sget-object v12, Lcom/shilapi/xcertplay/airplay/RtspMessage;->INSTANCE:Lcom/shilapi/xcertplay/airplay/RtspMessage;

    invoke-virtual {v12, v0}, Lcom/shilapi/xcertplay/airplay/RtspMessage;->parseMessages([B)Lcom/shilapi/xcertplay/airplay/RtspMessage$Parsed;

    move-result-object v0

    .line 406
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Parsed;->getRest()[B

    move-result-object v12

    .line 407
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Parsed;->getMessages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/shilapi/xcertplay/airplay/RtspMessage$Request;

    .line 408
    invoke-virtual {v15}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Request;->getHeaders()Ljava/util/Map;

    move-result-object v0

    move-object/from16 v20, v12

    const-string v12, "cseq"

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-nez v0, :cond_3

    :try_start_9
    const-string v0, "-"
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :cond_3
    move-object v12, v0

    .line 409
    :try_start_a
    invoke-virtual {v15}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Request;->getPath()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v21, v14

    sget-object v14, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v14, "toLowerCase(...)"

    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 411
    iget-object v14, v1, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->heartbeat:Lcom/shilapi/xcertplay/airplay/PeerHeartbeat;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    move-object/from16 v22, v7

    :try_start_b
    invoke-virtual {v15}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Request;->getMethod()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    const/16 v23, 0x1

    move/from16 v24, v7

    const-string v7, "/feedback"

    if-eqz v24, :cond_4

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    move-object/from16 v26, v13

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x2

    :try_start_c
    invoke-static {v0, v7, v9, v13, v10}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    const/4 v9, 0x1

    goto :goto_3

    :cond_4
    move-object/from16 v24, v9

    move-object/from16 v25, v10

    move-object/from16 v26, v13

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x2

    :cond_5
    :goto_3
    invoke-virtual {v14, v9}, Lcom/shilapi/xcertplay/airplay/PeerHeartbeat;->beat(Z)V

    const/4 v9, 0x0

    .line 413
    invoke-static {v0, v7, v9, v13, v10}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 414
    invoke-virtual {v15}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Request;->getMethod()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "/command"

    invoke-static {v0, v7, v9, v13, v10}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    const/4 v7, 0x1

    goto :goto_4

    :cond_7
    const/4 v7, 0x0

    .line 416
    :goto_4
    invoke-virtual {v15}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Request;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Request;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Request;->getBody()[B

    move-result-object v10

    array-length v10, v10

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "airplay rx "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 415
    invoke-direct {v1, v0, v7}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->debugLog(Ljava/lang/String;Z)V

    .line 420
    invoke-virtual {v15}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Request;->getHeaders()Ljava/util/Map;

    move-result-object v0

    .line 421
    invoke-virtual {v15}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Request;->getBody()[B

    move-result-object v9

    # invokes: Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->toHex([B)Ljava/lang/String;
    invoke-static {v9}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->access$toHex([B)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "airplay control rx headers="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " bodyHex="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 419
    invoke-direct {v1, v0}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->trace(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 425
    :try_start_d
    invoke-direct {v1, v15}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->handle(Lcom/shilapi/xcertplay/airplay/RtspMessage$Request;)Lcom/shilapi/xcertplay/airplay/RtspMessage$Response;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    .line 429
    :try_start_e
    invoke-virtual {v15}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Request;->getMethod()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Request;->getPath()Ljava/lang/String;

    move-result-object v10

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 427
    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 435
    invoke-virtual {v15}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Request;->getMethod()Ljava/lang/String;

    move-result-object v9

    .line 436
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x2

    .line 434
    invoke-static {v1, v0, v9, v13, v10}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->debugLog$default(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 438
    new-instance v27, Lcom/shilapi/xcertplay/airplay/RtspMessage$Response;

    const/16 v0, 0x1f4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    const/16 v33, 0x1d

    const/16 v34, 0x0

    const/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-direct/range {v27 .. v34}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Response;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/Map;[BILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, v27

    .line 441
    :goto_5
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Response;->getStatus()Ljava/lang/Integer;

    move-result-object v9

    if-eqz v9, :cond_8

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_6

    :cond_8
    const/16 v9, 0xc8

    :goto_6
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Response;->getBody()[B

    move-result-object v10

    array-length v10, v10

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "airplay tx status="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 440
    invoke-direct {v1, v9, v7}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->debugLog(Ljava/lang/String;Z)V

    .line 444
    sget-object v7, Lcom/shilapi/xcertplay/airplay/RtspMessage;->INSTANCE:Lcom/shilapi/xcertplay/airplay/RtspMessage;

    invoke-virtual {v7, v15, v0}, Lcom/shilapi/xcertplay/airplay/RtspMessage;->buildResponse(Lcom/shilapi/xcertplay/airplay/RtspMessage$Request;Lcom/shilapi/xcertplay/airplay/RtspMessage$Response;)[B

    move-result-object v0

    .line 445
    # invokes: Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->toHex([B)Ljava/lang/String;
    invoke-static {v0}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->access$toHex([B)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "airplay control tx wireHex="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->trace(Ljava/lang/String;)V

    .line 446
    iget-object v7, v1, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->cipher:Lcom/shilapi/xcertplay/airplay/ControlCipher;

    if-eqz v7, :cond_a

    invoke-virtual {v7, v0}, Lcom/shilapi/xcertplay/airplay/ControlCipher;->encrypt([B)[B

    move-result-object v7

    if-nez v7, :cond_9

    goto :goto_7

    :cond_9
    move-object v0, v7

    :cond_a
    :goto_7
    move-object/from16 v7, v26

    invoke-virtual {v7, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 447
    iget-object v0, v1, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->cipher:Lcom/shilapi/xcertplay/airplay/ControlCipher;

    if-nez v0, :cond_b

    iget-object v0, v1, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->pairVerify:Lcom/shilapi/xcertplay/airplay/PairVerify;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/airplay/PairVerify;->getControlKeys()Lcom/shilapi/xcertplay/airplay/PairVerify$ControlKeys;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 448
    iget-object v0, v1, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->pairVerify:Lcom/shilapi/xcertplay/airplay/PairVerify;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/airplay/PairVerify;->getControlKeys()Lcom/shilapi/xcertplay/airplay/PairVerify$ControlKeys;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 449
    new-instance v9, Lcom/shilapi/xcertplay/airplay/ControlCipher;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/airplay/PairVerify$ControlKeys;->getReadKey()[B

    move-result-object v10

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/airplay/PairVerify$ControlKeys;->getWriteKey()[B

    move-result-object v0

    invoke-direct {v9, v10, v0}, Lcom/shilapi/xcertplay/airplay/ControlCipher;-><init>([B[B)V

    iput-object v9, v1, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->cipher:Lcom/shilapi/xcertplay/airplay/ControlCipher;

    .line 450
    const-string v0, "airplay control encryption enabled"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x2

    invoke-static {v1, v0, v9, v13, v10}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->debugLog$default(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_b
    move-object v13, v7

    move-object/from16 v12, v20

    move-object/from16 v14, v21

    move-object/from16 v7, v22

    move-object/from16 v9, v24

    move-object/from16 v10, v25

    goto/16 :goto_2

    :catchall_2
    move-exception v0

    goto :goto_8

    :cond_c
    move-object/from16 v22, v7

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    move-object/from16 v20, v12

    move-object v7, v13

    .line 453
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->flush()V

    .line 454
    invoke-direct {v1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->notifySetupResponseSent()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    move-object v13, v7

    move-object/from16 v12, v18

    move-object/from16 v15, v19

    move-object/from16 v0, v20

    move-object/from16 v7, v22

    move-object/from16 v9, v24

    move-object/from16 v10, v25

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    goto :goto_9

    :catchall_4
    move-exception v0

    move-object/from16 v22, v7

    :goto_8
    move-object/from16 v24, v9

    move-object/from16 v25, v10

    :goto_9
    move-object/from16 v2, v24

    move-object/from16 v4, v25

    goto :goto_e

    :cond_d
    :goto_a
    move-object/from16 v24, v9

    move-object/from16 v25, v10

    move-object/from16 v2, v16

    .line 460
    :goto_b
    iget-object v0, v1, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->activeStreams:Ljava/util/LinkedHashSet;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v4, v25

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v24

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_c
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x2

    invoke-static {v1, v0, v9, v13, v10}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->debugLog$default(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 461
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->close()V

    goto :goto_f

    :catchall_5
    move-exception v0

    :goto_d
    move-object/from16 v22, v7

    move-object v2, v9

    move-object v4, v10

    .line 457
    :goto_e
    :try_start_f
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_e

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    :cond_e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "control I/O failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 458
    :try_start_10
    iget-object v5, v1, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, v22

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 460
    :cond_f
    iget-object v0, v1, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->activeStreams:Ljava/util/LinkedHashSet;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :goto_f
    return-void

    :catchall_6
    move-exception v0

    goto :goto_10

    :catchall_7
    move-exception v0

    move-object/from16 v3, v16

    :goto_10
    iget-object v5, v1, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->activeStreams:Ljava/util/LinkedHashSet;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x2

    invoke-static {v1, v2, v9, v13, v10}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->debugLog$default(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 461
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->close()V

    goto :goto_12

    :goto_11
    throw v0

    :goto_12
    goto :goto_11
.end method

.method private static final runControl$lambda$11(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;)Lkotlin/Unit;
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 377
    invoke-static {p0, p1, v2, v0, v1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->debugLog$default(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final runEventRead(Ljava/net/Socket;)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 823
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 824
    new-instance v6, Ljava/io/BufferedOutputStream;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 825
    new-array v7, v4, [B

    .line 826
    new-array v8, v4, [B

    const/16 v9, 0x4000

    .line 827
    new-array v9, v9, [B

    .line 828
    :goto_0
    iget-object v10, v1, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v10

    if-nez v10, :cond_5

    .line 829
    invoke-virtual {v0, v9}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v10

    if-ltz v10, :cond_5

    .line 831
    iget-object v11, v1, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->eventCipher:Lcom/shilapi/xcertplay/airplay/ControlCipher;

    if-nez v11, :cond_0

    goto/16 :goto_2

    .line 832
    :cond_0
    invoke-static {v9, v10}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v10

    const-string v12, "copyOf(...)"

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v10}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 834
    :try_start_1
    invoke-virtual {v11, v7}, Lcom/shilapi/xcertplay/airplay/ControlCipher;->decrypt([B)Lcom/shilapi/xcertplay/airplay/ControlCipher$Decrypted;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 839
    :try_start_2
    invoke-virtual {v7}, Lcom/shilapi/xcertplay/airplay/ControlCipher$Decrypted;->getRest()[B

    move-result-object v10

    .line 840
    invoke-virtual {v7}, Lcom/shilapi/xcertplay/airplay/ControlCipher$Decrypted;->getData()[B

    move-result-object v7

    invoke-static {v8, v7}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object v7

    .line 841
    sget-object v8, Lcom/shilapi/xcertplay/airplay/RtspMessage;->INSTANCE:Lcom/shilapi/xcertplay/airplay/RtspMessage;

    invoke-virtual {v8, v7}, Lcom/shilapi/xcertplay/airplay/RtspMessage;->parseMessages([B)Lcom/shilapi/xcertplay/airplay/RtspMessage$Parsed;

    move-result-object v7

    .line 842
    invoke-virtual {v7}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Parsed;->getRest()[B

    move-result-object v8

    .line 843
    invoke-virtual {v7}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Parsed;->getMessages()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/shilapi/xcertplay/airplay/RtspMessage$Request;

    .line 844
    invoke-virtual {v12}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Request;->getMethod()Ljava/lang/String;

    move-result-object v13

    const-string v14, "RTSP/"

    invoke-static {v13, v14, v4, v3, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    invoke-virtual {v12}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Request;->getMethod()Ljava/lang/String;

    move-result-object v13

    const-string v14, "HTTP/"

    invoke-static {v13, v14, v4, v3, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    goto :goto_1

    .line 846
    :cond_2
    invoke-virtual {v12}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Request;->getMethod()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Request;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Request;->getHeaders()Ljava/util/Map;

    move-result-object v15

    const-string v3, "cseq"

    invoke-interface {v15, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_3

    const-string v3, "-"

    :cond_3
    invoke-virtual {v12}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Request;->getBody()[B

    move-result-object v15

    array-length v15, v15

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "airplay event rx "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " cseq="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " body="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v13, 0x0

    .line 845
    invoke-static {v1, v3, v5, v4, v13}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->debugLog$default(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 848
    sget-object v3, Lcom/shilapi/xcertplay/airplay/RtspMessage;->INSTANCE:Lcom/shilapi/xcertplay/airplay/RtspMessage;

    new-instance v16, Lcom/shilapi/xcertplay/airplay/RtspMessage$Response;

    const/16 v4, 0xc8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v22, 0x1d

    const/16 v23, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v16 .. v23}, Lcom/shilapi/xcertplay/airplay/RtspMessage$Response;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/Map;[BILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v4, v16

    invoke-virtual {v3, v12, v4}, Lcom/shilapi/xcertplay/airplay/RtspMessage;->buildResponse(Lcom/shilapi/xcertplay/airplay/RtspMessage$Request;Lcom/shilapi/xcertplay/airplay/RtspMessage$Response;)[B

    move-result-object v3

    .line 854
    iget-object v4, v1, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->eventWriteLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 855
    :try_start_3
    invoke-virtual {v11, v3}, Lcom/shilapi/xcertplay/airplay/ControlCipher;->encrypt([B)[B

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 856
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->flush()V

    .line 857
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 854
    :try_start_4
    monitor-exit v4

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_4
    move-object v7, v10

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 836
    const-string/jumbo v3, "xcertplay-usb"

    array-length v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "airplay event decrypt failed encrypted="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 863
    :cond_5
    :goto_2
    const-string v0, "airplay event connection closed"

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v13, 0x0

    invoke-static {v1, v0, v5, v4, v13}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->debugLog$default(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 864
    iget-object v0, v1, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->eventSocket:Ljava/net/Socket;

    if-ne v0, v2, :cond_6

    iput-object v13, v1, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->eventSocket:Ljava/net/Socket;

    .line 865
    :cond_6
    iput-object v13, v1, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->eventCipher:Lcom/shilapi/xcertplay/airplay/ControlCipher;

    .line 866
    move-object v0, v2

    check-cast v0, Ljava/io/Closeable;

    invoke-static {v0}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->safeClose(Ljava/io/Closeable;)V

    .line 867
    iget-object v0, v1, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_9

    :goto_3
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->close()V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    .line 861
    :try_start_5
    iget-object v3, v1, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_7

    const-string/jumbo v3, "xcertplay-usb"

    const-string v4, "airplay event read failed"

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 863
    :cond_7
    const-string v0, "airplay event connection closed"

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v13, 0x0

    invoke-static {v1, v0, v5, v4, v13}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->debugLog$default(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 864
    iget-object v0, v1, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->eventSocket:Ljava/net/Socket;

    if-ne v0, v2, :cond_8

    iput-object v13, v1, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->eventSocket:Ljava/net/Socket;

    .line 865
    :cond_8
    iput-object v13, v1, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->eventCipher:Lcom/shilapi/xcertplay/airplay/ControlCipher;

    .line 866
    move-object v0, v2

    check-cast v0, Ljava/io/Closeable;

    invoke-static {v0}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->safeClose(Ljava/io/Closeable;)V

    .line 867
    iget-object v0, v1, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_3

    :cond_9
    :goto_4
    return-void

    .line 863
    :goto_5
    const-string v3, "airplay event connection closed"

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v13, 0x0

    invoke-static {v1, v3, v5, v4, v13}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->debugLog$default(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 864
    iget-object v3, v1, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->eventSocket:Ljava/net/Socket;

    if-ne v3, v2, :cond_a

    iput-object v13, v1, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->eventSocket:Ljava/net/Socket;

    .line 865
    :cond_a
    iput-object v13, v1, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->eventCipher:Lcom/shilapi/xcertplay/airplay/ControlCipher;

    .line 866
    check-cast v2, Ljava/io/Closeable;

    invoke-static {v2}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->safeClose(Ljava/io/Closeable;)V

    .line 867
    iget-object v2, v1, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->close()V

    :cond_b
    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method

.method private final runHeartbeat()V
    .locals 8

    .line 148
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_4

    const-wide/16 v0, 0xfa

    .line 149
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 150
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->heartbeat:Lcom/shilapi/xcertplay/airplay/PeerHeartbeat;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/airplay/PeerHeartbeat;->check()Lcom/shilapi/xcertplay/airplay/PeerHeartbeat$Change;

    move-result-object v0

    sget-object v1, Lcom/shilapi/xcertplay/airplay/AirPlaySession$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/airplay/PeerHeartbeat$Change;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq v0, v1, :cond_3

    if-eq v0, v4, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->heartbeat:Lcom/shilapi/xcertplay/airplay/PeerHeartbeat;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/airplay/PeerHeartbeat;->silentMs()J

    move-result-wide v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "liveness: lost at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms; ending the session to reconnect"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3, v4, v2}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->debugLog$default(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 161
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->close()V

    goto :goto_0

    .line 156
    :cond_2
    const-string v0, "liveness: recovered; the iPhone answered again"

    invoke-static {p0, v0, v3, v4, v2}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->debugLog$default(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 157
    invoke-direct {p0, v3}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->notifyPeerStalled(Z)V

    goto :goto_0

    .line 152
    :cond_3
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->heartbeat:Lcom/shilapi/xcertplay/airplay/PeerHeartbeat;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/airplay/PeerHeartbeat;->silentMs()J

    move-result-wide v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "liveness: warn at "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " ms without /feedback or timing replies"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3, v4, v2}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->debugLog$default(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 153
    invoke-direct {p0, v1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->notifyPeerStalled(Z)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_4
    return-void
.end method

.method private final runKeepAlive(Ljava/net/DatagramSocket;)V
    .locals 3

    const/16 v0, 0x200

    .line 743
    new-array v1, v0, [B

    .line 744
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_1

    .line 746
    :try_start_0
    new-instance v2, Ljava/net/DatagramPacket;

    invoke-direct {v2, v1, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    invoke-virtual {p1, v2}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 748
    iget-object v2, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    return-void
.end method

.method private final sendCommandLocked(Ljava/util/Map;Ljava/lang/String;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->eventSocket:Ljava/net/Socket;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 237
    :cond_0
    iget-object v2, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->eventCipher:Lcom/shilapi/xcertplay/airplay/ControlCipher;

    if-nez v2, :cond_1

    return v1

    .line 238
    :cond_1
    iget v3, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->eventCseq:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->eventCseq:I

    .line 239
    sget-object v3, Lcom/shilapi/xcertplay/airplay/BplistCodec;->INSTANCE:Lcom/shilapi/xcertplay/airplay/BplistCodec;

    invoke-virtual {v3, p1}, Lcom/shilapi/xcertplay/airplay/BplistCodec;->encode(Ljava/lang/Object;)[B

    move-result-object v3

    .line 242
    array-length v5, v3

    .line 243
    iget v6, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->eventCseq:I

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "POST /command RTSP/1.0\r\n"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Content-Type: application/x-apple-binary-plist\r\nContent-Length: "

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\r\nCSeq: "

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\r\n\r\n"

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 246
    :try_start_0
    sget-object v5, Lkotlin/text/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    const-string v5, "getBytes(...)"

    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v3}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/shilapi/xcertplay/airplay/ControlCipher;->encrypt([B)[B

    move-result-object p2

    .line 247
    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 248
    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 249
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception p2

    .line 252
    const-string/jumbo v0, "type"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "airplay event command failed type="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Ljava/lang/Throwable;

    const-string/jumbo v0, "xcertplay-usb"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 253
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->close()V

    return v1
.end method

.method static synthetic sendCommandLocked$default(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 235
    const-string p2, ""

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->sendCommandLocked(Ljava/util/Map;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private final sendHidReport(I[B)Z
    .locals 3

    const/4 v0, 0x3

    .line 370
    new-array v0, v0, [Lkotlin/Pair;

    const-string/jumbo v1, "type"

    const-string v2, "hidSendReport"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x10

    .line 371
    invoke-static {v1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "toString(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "uuid"

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 372
    const-string p1, "hidReport"

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    .line 369
    invoke-static {v0}, Lkotlin/collections/MapsKt;->linkedMapOf([Lkotlin/Pair;)Ljava/util/LinkedHashMap;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 368
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->sendCommand(Ljava/util/Map;)Z

    move-result p1

    return p1
.end method

.method public static synthetic sendIapMessage$default(Lcom/shilapi/xcertplay/airplay/AirPlaySession;[BJILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide/16 p2, 0x0

    .line 318
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->sendIapMessage([BJ)Z

    move-result p0

    return p0
.end method

.method public static synthetic sendKnob$default(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 280
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->sendKnob(Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;Z)V

    return-void
.end method

.method private final sendPendingNightModeLocked()Z
    .locals 7

    .line 359
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->pendingNightMode:Ljava/lang/Boolean;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    const/4 v2, 0x2

    .line 361
    new-array v3, v2, [Lkotlin/Pair;

    const-string/jumbo v4, "type"

    const-string/jumbo v5, "setNightMode"

    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v4, v1, [Lkotlin/Pair;

    const-string v6, "nightMode"

    invoke-static {v6, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v4}, Lkotlin/collections/MapsKt;->linkedMapOf([Lkotlin/Pair;)Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v4, "params"

    invoke-static {v4, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v3}, Lkotlin/collections/MapsKt;->linkedMapOf([Lkotlin/Pair;)Ljava/util/LinkedHashMap;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    .line 360
    invoke-static {p0, v0, v1, v2, v1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->sendCommandLocked$default(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    iput-object v1, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->pendingNightMode:Ljava/lang/Boolean;

    :cond_0
    return v0

    :cond_1
    return v1
.end method

.method private final spawnEvent(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 872
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/shilapi/xcertplay/airplay/AirPlaySession$$ExternalSyntheticLambda2;

    invoke-direct {v1, p2}, Lcom/shilapi/xcertplay/airplay/AirPlaySession$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 873
    iget-object p1, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->eventThreads:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 874
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static final spawnEvent$lambda$37(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 872
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private static final start$lambda$1(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)Lkotlin/Unit;
    .locals 1

    .line 134
    iget-object p0, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->heartbeat:Lcom/shilapi/xcertplay/airplay/PeerHeartbeat;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/airplay/PeerHeartbeat;->beat(Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final teardown()V
    .locals 2

    .line 769
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->ntp:Lcom/shilapi/xcertplay/airplay/NtpClock;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/airplay/NtpClock;->close()V

    .line 770
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->keepAliveSocket:Ljava/net/DatagramSocket;

    check-cast v0, Ljava/io/Closeable;

    invoke-static {v0}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->safeClose(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    .line 771
    iput-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->keepAliveSocket:Ljava/net/DatagramSocket;

    .line 772
    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->keepAliveThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 773
    :cond_0
    iput-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->keepAliveThread:Ljava/lang/Thread;

    .line 774
    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->eventServer:Ljava/net/ServerSocket;

    check-cast v1, Ljava/io/Closeable;

    invoke-static {v1}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->safeClose(Ljava/io/Closeable;)V

    .line 775
    iput-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->eventServer:Ljava/net/ServerSocket;

    .line 776
    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->eventSocket:Ljava/net/Socket;

    check-cast v1, Ljava/io/Closeable;

    invoke-static {v1}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->safeClose(Ljava/io/Closeable;)V

    .line 777
    iput-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->eventSocket:Ljava/net/Socket;

    .line 778
    iput-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->eventCipher:Lcom/shilapi/xcertplay/airplay/ControlCipher;

    .line 779
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->eventThreads:Ljava/util/concurrent/CopyOnWriteArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .line 980
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    .line 779
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 780
    :cond_1
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->eventThreads:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method

.method private final trace(Ljava/lang/String;)V
    .locals 3

    const-string v0, "TRACE "

    .line 553
    :try_start_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->listener:Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;->onDebugLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 555
    const-string/jumbo v0, "trace log callback failed"

    check-cast p1, Ljava/lang/Throwable;

    const-string/jumbo v1, "xcertplay-usb"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 5

    invoke-static {p0}, Lcom/shilapi/xcertplay/E01MapZoom;->unbind(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    invoke-static {p0}, Lcom/shilapi/xcertplay/E01WheelKeys;->unbind(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    .line 180
    const-string/jumbo v0, "xcertplay-usb"

    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->socket:Ljava/net/Socket;

    check-cast v1, Ljava/io/Closeable;

    invoke-static {v1}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->safeClose(Ljava/io/Closeable;)V

    .line 183
    :try_start_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->media:Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;

    invoke-interface {v1, p0}, Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;->onSessionClosed(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 185
    const-string v4, "airplay media stream teardown failed"

    invoke-static {v0, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 187
    :goto_0
    invoke-direct {p0}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->teardown()V

    .line 190
    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->notified:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 192
    :try_start_1
    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->listener:Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    invoke-interface {v1, p0}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;->onSessionEnded(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    .line 194
    const-string v2, "airplay session ended callback failed"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public final getActiveStreams$shared_release()Ljava/util/LinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->activeStreams:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method public final getCipher$shared_release()Lcom/shilapi/xcertplay/airplay/ControlCipher;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->cipher:Lcom/shilapi/xcertplay/airplay/ControlCipher;

    return-object v0
.end method

.method public final getClusterDisplay$shared_release()Lcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->config:Lcom/shilapi/xcertplay/airplay/AirPlayConfig;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/airplay/AirPlayConfig;->getCluster()Lcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;

    move-result-object v0

    return-object v0
.end method

.method public final getClusterStream()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->clusterStream:I

    return v0
.end method

.method public final getControllerId()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->pairVerify:Lcom/shilapi/xcertplay/airplay/PairVerify;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/airplay/PairVerify;->getVerifiedControllerId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDeviceBtMac$shared_release()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->deviceBtMac:Ljava/lang/String;

    return-object v0
.end method

.method public final getEncBuf$shared_release()[B
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->encBuf:[B

    return-object v0
.end method

.method public final getHost()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->host:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->localAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public final getPairSetup$shared_release()Lcom/shilapi/xcertplay/airplay/PairSetup;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->pairSetup:Lcom/shilapi/xcertplay/airplay/PairSetup;

    return-object v0
.end method

.method public final getPairVerify$shared_release()Lcom/shilapi/xcertplay/airplay/PairVerify;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->pairVerify:Lcom/shilapi/xcertplay/airplay/PairVerify;

    return-object v0
.end method

.method public final getRemoteAddress$shared_release()Ljava/net/InetAddress;
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    instance-of v1, v0, Ljava/net/InetSocketAddress;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Ljava/net/InetSocketAddress;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v2
.end method

.method public final getSharedSecret()[B
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->pairVerify:Lcom/shilapi/xcertplay/airplay/PairVerify;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/airplay/PairVerify;->getShared()[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    const-string v1, "copyOf(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getVideoInCar()Z
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->config:Lcom/shilapi/xcertplay/airplay/AirPlayConfig;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/airplay/AirPlayConfig;->getVideoInCar()Z

    move-result v0

    return v0
.end method

.method public final invokeSiri()V
    .locals 9

    const/4 v0, 0x2

    .line 314
    new-array v1, v0, [Lkotlin/Pair;

    const-string/jumbo v2, "type"

    const-string v3, "requestSiri"

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v1, v5

    const/4 v4, 0x1

    new-array v6, v4, [Lkotlin/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string/jumbo v8, "siriAction"

    invoke-static {v8, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-static {v6}, Lkotlin/collections/MapsKt;->linkedMapOf([Lkotlin/Pair;)Ljava/util/LinkedHashMap;

    move-result-object v6

    const-string v7, "params"

    invoke-static {v7, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    aput-object v6, v1, v4

    invoke-static {v1}, Lkotlin/collections/MapsKt;->linkedMapOf([Lkotlin/Pair;)Ljava/util/LinkedHashMap;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-virtual {p0, v1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->sendCommand(Ljava/util/Map;)Z

    .line 315
    new-array v0, v0, [Lkotlin/Pair;

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v5

    new-array v1, v4, [Lkotlin/Pair;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v8, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v1}, Lkotlin/collections/MapsKt;->linkedMapOf([Lkotlin/Pair;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-static {v7, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lkotlin/collections/MapsKt;->linkedMapOf([Lkotlin/Pair;)Ljava/util/LinkedHashMap;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->sendCommand(Ljava/util/Map;)Z

    return-void
.end method

.method public final logDebug$shared_release(Ljava/lang/String;)V
    .locals 3

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 125
    invoke-static {p0, p1, v2, v0, v1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->debugLog$default(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final logTrace$shared_release(Ljava/lang/String;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->trace(Ljava/lang/String;)V

    return-void
.end method

.method public final requestUi(Ljava/lang/String;)V
    .locals 5

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 310
    new-array v1, v1, [Lkotlin/Pair;

    const-string/jumbo v2, "type"

    const-string v3, "requestUI"

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    new-array v4, v2, [Lkotlin/Pair;

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, v4, v3

    invoke-static {v4}, Lkotlin/collections/MapsKt;->linkedMapOf([Lkotlin/Pair;)Ljava/util/LinkedHashMap;

    move-result-object p1

    const-string v0, "params"

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v1}, Lkotlin/collections/MapsKt;->linkedMapOf([Lkotlin/Pair;)Ljava/util/LinkedHashMap;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->sendCommand(Ljava/util/Map;)Z

    return-void
.end method

.method public final sendCommand(Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "command"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->eventWriteLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 213
    :try_start_0
    invoke-static {p0, p1, v2, v1, v2}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->sendCommandLocked$default(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final sendIapMessage([BJ)Z
    .locals 10

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_6

    const/4 v2, 0x2

    .line 321
    new-array v3, v2, [Lkotlin/Pair;

    const-string/jumbo v4, "type"

    const-string v5, "iAPSendMessage"

    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 322
    const-string v4, "params"

    const/4 v6, 0x1

    new-array v7, v6, [Lkotlin/Pair;

    const-string v8, "data"

    invoke-static {v8, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, v7, v5

    invoke-static {v7}, Lkotlin/collections/MapsKt;->linkedMapOf([Lkotlin/Pair;)Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-static {v4, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, v3, v6

    .line 320
    invoke-static {v3}, Lkotlin/collections/MapsKt;->linkedMapOf([Lkotlin/Pair;)Ljava/util/LinkedHashMap;

    move-result-object p1

    cmp-long v3, p2, v0

    if-nez v3, :cond_0

    .line 324
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->sendCommand(Ljava/util/Map;)Z

    move-result p1

    return p1

    .line 326
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    const-wide/32 v6, 0xf4240

    mul-long p2, p2, v6

    add-long/2addr v3, p2

    .line 328
    :goto_0
    iget-object p2, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->eventWriteLock:Ljava/lang/Object;

    monitor-enter p2

    .line 329
    :try_start_0
    iget-object p3, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->eventSocket:Ljava/net/Socket;

    const/4 v8, 0x0

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->eventCipher:Lcom/shilapi/xcertplay/airplay/ControlCipher;

    if-nez p3, :cond_1

    goto :goto_1

    .line 332
    :cond_1
    move-object p3, p1

    check-cast p3, Ljava/util/Map;

    invoke-static {p0, p3, v8, v2, v8}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->sendCommandLocked$default(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    :cond_2
    :goto_1
    monitor-exit p2

    if-eqz v8, :cond_3

    .line 335
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 336
    :cond_3
    iget-object p2, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_4

    return v5

    .line 338
    :cond_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p2

    sub-long p2, v3, p2

    cmp-long v8, p2, v0

    if-gtz v8, :cond_5

    return v5

    :cond_5
    const-wide/32 v8, 0xf423f

    add-long/2addr p2, v8

    .line 342
    div-long/2addr p2, v6

    const-wide/16 v8, 0x19

    invoke-static {v8, v9, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    const-wide/16 v8, 0x1

    .line 343
    invoke-static {p2, p3, v8, v9}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide p2

    .line 345
    :try_start_1
    invoke-static {p2, p3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 347
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    return v5

    :catchall_0
    move-exception p1

    .line 328
    monitor-exit p2

    throw p1

    .line 319
    :cond_6
    const-string/jumbo p1, "timeoutMillis must not be negative"

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p2

    :goto_3
    goto :goto_2
.end method

.method public final sendKnob(Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;Z)V
    .locals 10

    const-string/jumbo v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    sget-object v0, Lcom/shilapi/xcertplay/airplay/AirPlayHid;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlayHid;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlayHid;->knobReport(Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;)[B

    move-result-object p1

    const v0, 0x2a2a2a2b

    invoke-direct {p0, v0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->sendHidReport(I[B)Z

    if-eqz p2, :cond_0

    .line 282
    sget-object p1, Lcom/shilapi/xcertplay/airplay/AirPlayHid;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlayHid;

    new-instance v1, Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;

    const/16 v8, 0x3f

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;-><init>(ZZZIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1, v1}, Lcom/shilapi/xcertplay/airplay/AirPlayHid;->knobReport(Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;)[B

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->sendHidReport(I[B)Z

    :cond_0
    return-void
.end method

.method public final sendKnobSelect(Z)Z
    .locals 10

    .line 286
    sget-object v0, Lcom/shilapi/xcertplay/airplay/AirPlayHid;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlayHid;

    new-instance v1, Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;

    const/16 v8, 0x3e

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v2, p1

    invoke-direct/range {v1 .. v9}, Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;-><init>(ZZZIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/airplay/AirPlayHid;->knobReport(Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;)[B

    move-result-object p1

    const v0, 0x2a2a2a2b

    invoke-direct {p0, v0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->sendHidReport(I[B)Z

    move-result p1

    return p1
.end method

.method public final sendMedia(I)V
    .locals 2

    .line 289
    sget-object v0, Lcom/shilapi/xcertplay/airplay/AirPlayHid;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlayHid;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlayHid;->mediaReport(I)[B

    move-result-object p1

    const v0, 0x2a2a2a2c

    invoke-direct {p0, v0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->sendHidReport(I[B)Z

    .line 290
    sget-object p1, Lcom/shilapi/xcertplay/airplay/AirPlayHid;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlayHid;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/shilapi/xcertplay/airplay/AirPlayHid;->mediaReport(I)[B

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->sendHidReport(I[B)Z

    return-void
.end method

.method public final sendMediaState(I)V
    .locals 1

    .line 295
    sget-object v0, Lcom/shilapi/xcertplay/airplay/AirPlayHid;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlayHid;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlayHid;->mediaReport(I)[B

    move-result-object p1

    const v0, 0x2a2a2a2c

    invoke-direct {p0, v0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->sendHidReport(I[B)Z

    return-void
.end method

.method public final sendRemoteControlMessage(JLjava/util/Map;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "X-Apple-StreamID: "

    const-string v1, "message"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->eventWriteLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    .line 222
    :try_start_0
    new-array v3, v2, [Lkotlin/Pair;

    const-string v4, "params"

    new-array v2, v2, [Lkotlin/Pair;

    const-string v5, "data"

    sget-object v6, Lcom/shilapi/xcertplay/airplay/BplistCodec;->INSTANCE:Lcom/shilapi/xcertplay/airplay/BplistCodec;

    invoke-virtual {v6, p3}, Lcom/shilapi/xcertplay/airplay/BplistCodec;->encode(Ljava/lang/Object;)[B

    move-result-object p3

    invoke-static {v5, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p3

    const/4 v5, 0x0

    aput-object p3, v2, v5

    invoke-static {v2}, Lkotlin/collections/MapsKt;->linkedMapOf([Lkotlin/Pair;)Ljava/util/LinkedHashMap;

    move-result-object p3

    invoke-static {v4, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p3

    aput-object p3, v3, v5

    invoke-static {v3}, Lkotlin/collections/MapsKt;->linkedMapOf([Lkotlin/Pair;)Ljava/util/LinkedHashMap;

    move-result-object p3

    check-cast p3, Ljava/util/Map;

    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "\r\n"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 221
    invoke-direct {p0, p3, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->sendCommandLocked(Ljava/util/Map;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    monitor-exit v1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v1

    throw p1
.end method

.method public final sendTelephony(I)V
    .locals 2

    .line 299
    sget-object v0, Lcom/shilapi/xcertplay/airplay/AirPlayHid;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlayHid;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlayHid;->telephonyReport(I)[B

    move-result-object p1

    const v0, 0x2a2a2a2d

    invoke-direct {p0, v0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->sendHidReport(I[B)Z

    .line 300
    sget-object p1, Lcom/shilapi/xcertplay/airplay/AirPlayHid;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlayHid;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/shilapi/xcertplay/airplay/AirPlayHid;->telephonyReport(I)[B

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->sendHidReport(I[B)Z

    return-void
.end method

.method public final sendTouch(Ljava/util/List;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/airplay/AirPlayContact;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "contacts"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    check-cast p1, Ljava/lang/Iterable;

    .line 945
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 946
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 947
    move-object v2, v1

    check-cast v2, Lcom/shilapi/xcertplay/airplay/AirPlayContact;

    .line 260
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/airplay/AirPlayContact;->getX()D

    move-result-wide v3

    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->config:Lcom/shilapi/xcertplay/airplay/AirPlayConfig;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/airplay/AirPlayConfig;->getMain()Lcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;->getWidthPixels()I

    move-result v1

    int-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v3, v5

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/airplay/AirPlayContact;->getY()D

    move-result-wide v6

    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->config:Lcom/shilapi/xcertplay/airplay/AirPlayConfig;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/airplay/AirPlayConfig;->getMain()Lcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;->getHeightPixels()I

    move-result v1

    int-to-double v8, v1

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v8

    const/16 v9, 0x9

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Lcom/shilapi/xcertplay/airplay/AirPlayContact;->copy$default(Lcom/shilapi/xcertplay/airplay/AirPlayContact;IDDZILjava/lang/Object;)Lcom/shilapi/xcertplay/airplay/AirPlayContact;

    move-result-object v1

    .line 947
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 948
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 263
    iget-object p1, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->touchSlots:Lcom/shilapi/xcertplay/airplay/AirPlayTouchSlots;

    monitor-enter p1

    :try_start_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->touchSlots:Lcom/shilapi/xcertplay/airplay/AirPlayTouchSlots;

    invoke-virtual {v1, v0}, Lcom/shilapi/xcertplay/airplay/AirPlayTouchSlots;->report(Ljava/util/List;)[B

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    .line 264
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const p1, 0x2a2a2a2a

    .line 265
    invoke-direct {p0, p1, v1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->sendHidReport(I[B)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 266
    sget-object v4, Lcom/shilapi/xcertplay/media/TouchLatencyProbe;->INSTANCE:Lcom/shilapi/xcertplay/media/TouchLatencyProbe;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {v4, v2, v3, v5, v6}, Lcom/shilapi/xcertplay/media/TouchLatencyProbe;->onTouchSent(JJ)V

    :cond_1
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_5

    .line 267
    iget-object v4, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->firstTouchSendLogged:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 268
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shilapi/xcertplay/airplay/AirPlayContact;

    .line 270
    const-string/jumbo v3, "xcertplay-usb"

    .line 271
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 272
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/airplay/AirPlayContact;->getX()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    goto :goto_1

    :cond_2
    move-object v5, v4

    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/airplay/AirPlayContact;->getY()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    goto :goto_2

    :cond_3
    move-object v6, v4

    :goto_2
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/airplay/AirPlayContact;->getDown()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    :cond_4
    invoke-static {v1}, Lcom/shilapi/xcertplay/airplay/BytesKt;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "airplay touch report sent contacts="

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " first=("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",down="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") report="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 269
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_5
    if-nez p1, :cond_6

    .line 274
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->touchSendFailureLogged:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 275
    const-string/jumbo v0, "xcertplay-usb"

    const-string v1, "airplay touch dropped: event channel is not ready"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return p1

    :catchall_0
    move-exception v0

    .line 263
    monitor-exit p1

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public final setCipher$shared_release(Lcom/shilapi/xcertplay/airplay/ControlCipher;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->cipher:Lcom/shilapi/xcertplay/airplay/ControlCipher;

    return-void
.end method

.method public final setClusterUiShown(Z)Z
    .locals 10

    .line 206
    const-string/jumbo v0, "uuid"

    const-string v1, "params"

    const-string/jumbo v2, "type"

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "b7e6c5a0-2222-4000-8000-000000000002"

    if-nez p1, :cond_0

    new-array p1, v3, [Lkotlin/Pair;

    const-string/jumbo v3, "stopUI"

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, p1, v5

    invoke-static {v0, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, p1, v4

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->sendCommand(Ljava/util/Map;)Z

    move-result p1

    return p1

    .line 207
    :cond_0
    iget-object p1, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->config:Lcom/shilapi/xcertplay/airplay/AirPlayConfig;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/AirPlayConfig;->getCluster()Lcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;->getInitialUrl()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 208
    :cond_1
    new-array v7, v3, [Lkotlin/Pair;

    const-string/jumbo v8, "showUI"

    invoke-static {v2, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    aput-object v8, v7, v5

    new-array v8, v3, [Lkotlin/Pair;

    invoke-static {v0, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    aput-object v9, v8, v5

    const-string/jumbo v9, "url"

    invoke-static {v9, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, v8, v4

    invoke-static {v8}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, v7, v4

    invoke-static {v7}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->sendCommand(Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 209
    new-array p1, v3, [Lkotlin/Pair;

    const-string v3, "forceKeyFrame"

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, p1, v5

    invoke-static {v0, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, p1, v4

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->sendCommand(Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v4

    :cond_2
    :goto_0
    return v5
.end method

.method public final setDeviceBtMac$shared_release(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->deviceBtMac:Ljava/lang/String;

    return-void
.end method

.method public final setEncBuf$shared_release([B)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->encBuf:[B

    return-void
.end method

.method public final setNightMode(Z)Z
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->eventWriteLock:Ljava/lang/Object;

    monitor-enter v0

    .line 354
    :try_start_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->pendingNightMode:Ljava/lang/Boolean;

    .line 355
    invoke-direct {p0}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->sendPendingNightModeLocked()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final setVideoPlaybackAllowed(Z)Z
    .locals 5

    .line 231
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->videoPlaybackEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 232
    new-array v0, v0, [Lkotlin/Pair;

    const-string/jumbo v2, "type"

    const-string/jumbo v3, "setVideoPlaybackAllowed"

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v2, 0x1

    new-array v3, v2, [Lkotlin/Pair;

    const-string/jumbo v4, "videoPlaybackAllowed"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v4, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-static {v3}, Lkotlin/collections/MapsKt;->linkedMapOf([Lkotlin/Pair;)Ljava/util/LinkedHashMap;

    move-result-object p1

    const-string v3, "params"

    invoke-static {v3, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-static {v0}, Lkotlin/collections/MapsKt;->linkedMapOf([Lkotlin/Pair;)Ljava/util/LinkedHashMap;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 231
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->sendCommand(Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method public final siriButton(Z)V
    .locals 5

    const/4 v0, 0x2

    .line 305
    new-array v1, v0, [Lkotlin/Pair;

    const-string/jumbo v2, "type"

    const-string v3, "requestSiri"

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    new-array v4, v2, [Lkotlin/Pair;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v0, "siriAction"

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, v4, v3

    invoke-static {v4}, Lkotlin/collections/MapsKt;->linkedMapOf([Lkotlin/Pair;)Ljava/util/LinkedHashMap;

    move-result-object p1

    const-string v0, "params"

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v1}, Lkotlin/collections/MapsKt;->linkedMapOf([Lkotlin/Pair;)Ljava/util/LinkedHashMap;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->sendCommand(Ljava/util/Map;)Z

    return-void
.end method

.method public final start()V
    .locals 4

    invoke-static {p0}, Lcom/shilapi/xcertplay/E01MapZoom;->bind(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    invoke-static {p0}, Lcom/shilapi/xcertplay/E01WheelKeys;->bind(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    .line 134
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->ntp:Lcom/shilapi/xcertplay/airplay/NtpClock;

    new-instance v1, Lcom/shilapi/xcertplay/airplay/AirPlaySession$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/shilapi/xcertplay/airplay/AirPlaySession$$ExternalSyntheticLambda5;-><init>(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/airplay/NtpClock;->setOnResponse(Lkotlin/jvm/functions/Function0;)V

    .line 135
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/shilapi/xcertplay/airplay/AirPlaySession$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/shilapi/xcertplay/airplay/AirPlaySession$$ExternalSyntheticLambda6;-><init>(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    const-string v2, "airplay-control"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 137
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 139
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/shilapi/xcertplay/airplay/AirPlaySession$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/shilapi/xcertplay/airplay/AirPlaySession$$ExternalSyntheticLambda7;-><init>(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    const-string v3, "airplay-heartbeat"

    invoke-direct {v0, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 141
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final syncedNtp()Ljava/math/BigInteger;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->ntp:Lcom/shilapi/xcertplay/airplay/NtpClock;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/airplay/NtpClock;->syncedNtp()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public final videoFrameRendered$shared_release()V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->listener:Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    invoke-interface {v0, p0}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;->onVideoFrameRendered(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    :cond_0
    return-void
.end method
