.class public final Lcom/shilapi/xcertplay/DiPlayActivity$Companion;
.super Ljava/lang/Object;
.source "DiPlayActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/DiPlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation



# direct methods
.method private constructor <init>()V
    .locals 0

    .line 5153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getACCENT(Lcom/shilapi/xcertplay/DiPlayActivity$Companion;)I
    .locals 0

    .line 5153
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity$Companion;->getACCENT()I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getMUTED(Lcom/shilapi/xcertplay/DiPlayActivity$Companion;)I
    .locals 0

    .line 5153
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity$Companion;->getMUTED()I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getTEXT(Lcom/shilapi/xcertplay/DiPlayActivity$Companion;)I
    .locals 0

    .line 5153
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity$Companion;->getTEXT()I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getWARNING(Lcom/shilapi/xcertplay/DiPlayActivity$Companion;)I
    .locals 0

    .line 5153
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlayActivity$Companion;->getWARNING()I

    move-result p0

    return p0
.end method

.method private final getACCENT()I
    .locals 1

    .line 5211
    sget-object v0, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/Glass;->getACCENT()I

    move-result v0

    return v0
.end method

.method private final getMUTED()I
    .locals 1

    .line 5213
    sget-object v0, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/Glass;->getMUTED()I

    move-result v0

    return v0
.end method

.method private final getTEXT()I
    .locals 1

    .line 5212
    sget-object v0, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/Glass;->getTEXT()I

    move-result v0

    return v0
.end method

.method private final getWARNING()I
    .locals 1

    .line 5214
    sget-object v0, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/Glass;->getWARNING()I

    move-result v0

    return v0
.end method

.method public static synthetic getWriteSettingsMissingForTest$common_release$annotations()V
    .locals 0

    return-void
.end method


# virtual methods


.method public final getResumedScreen$common_release()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/shilapi/xcertplay/DiPlayActivity;",
            ">;"
        }
    .end annotation

    .line 5170
    # getter for: Lcom/shilapi/xcertplay/DiPlayActivity;->resumedScreen:Ljava/lang/ref/WeakReference;
    invoke-static {}, Lcom/shilapi/xcertplay/DiPlayActivity;->access$getResumedScreen$cp()Ljava/lang/ref/WeakReference;

    move-result-object v0

    return-object v0
.end method


.method public final getWaitingOnHome$common_release()Z
    .locals 1

    .line 5199
    # getter for: Lcom/shilapi/xcertplay/DiPlayActivity;->waitingOnHome:Z
    invoke-static {}, Lcom/shilapi/xcertplay/DiPlayActivity;->access$getWaitingOnHome$cp()Z

    move-result v0

    return v0
.end method

.method public final getWriteSettingsMissingForTest$common_release()Ljava/lang/Boolean;
    .locals 1

    .line 5177
    # getter for: Lcom/shilapi/xcertplay/DiPlayActivity;->writeSettingsMissingForTest:Ljava/lang/Boolean;
    invoke-static {}, Lcom/shilapi/xcertplay/DiPlayActivity;->access$getWriteSettingsMissingForTest$cp()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method



.method public final setResumedScreen$common_release(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/shilapi/xcertplay/DiPlayActivity;",
            ">;)V"
        }
    .end annotation

    .line 5170
    invoke-static {p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->access$setResumedScreen$cp(Ljava/lang/ref/WeakReference;)V

    return-void
.end method


.method public final setWaitingOnHome$common_release(Z)V
    .locals 0

    .line 5199
    invoke-static {p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->access$setWaitingOnHome$cp(Z)V

    return-void
.end method

.method public final setWriteSettingsMissingForTest$common_release(Ljava/lang/Boolean;)V
    .locals 0

    .line 5177
    invoke-static {p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->access$setWriteSettingsMissingForTest$cp(Ljava/lang/Boolean;)V

    return-void
.end method
