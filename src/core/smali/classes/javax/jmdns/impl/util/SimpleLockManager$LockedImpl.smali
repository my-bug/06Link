.class Ljavax/jmdns/impl/util/SimpleLockManager$LockedImpl;
.super Ljavax/jmdns/impl/util/SimpleLockManager$Locked;
.source "SimpleLockManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/util/SimpleLockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LockedImpl"
.end annotation


# instance fields
.field private final id:Ljava/lang/String;

.field final synthetic this$0:Ljavax/jmdns/impl/util/SimpleLockManager;


# direct methods
.method private constructor <init>(Ljavax/jmdns/impl/util/SimpleLockManager;Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Ljavax/jmdns/impl/util/SimpleLockManager$LockedImpl;->this$0:Ljavax/jmdns/impl/util/SimpleLockManager;

    invoke-direct {p0}, Ljavax/jmdns/impl/util/SimpleLockManager$Locked;-><init>()V

    .line 81
    iput-object p2, p0, Ljavax/jmdns/impl/util/SimpleLockManager$LockedImpl;->id:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljavax/jmdns/impl/util/SimpleLockManager;Ljava/lang/String;Ljavax/jmdns/impl/util/SimpleLockManager$1;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Ljavax/jmdns/impl/util/SimpleLockManager$LockedImpl;-><init>(Ljavax/jmdns/impl/util/SimpleLockManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 87
    iget-object v0, p0, Ljavax/jmdns/impl/util/SimpleLockManager$LockedImpl;->this$0:Ljavax/jmdns/impl/util/SimpleLockManager;

    # getter for: Ljavax/jmdns/impl/util/SimpleLockManager;->_locks:Lj$/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Ljavax/jmdns/impl/util/SimpleLockManager;->access$100(Ljavax/jmdns/impl/util/SimpleLockManager;)Lj$/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Ljavax/jmdns/impl/util/SimpleLockManager$LockedImpl;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
