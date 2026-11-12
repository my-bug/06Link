.class public final enum Ljavax/jmdns/impl/constants/DNSState;
.super Ljava/lang/Enum;
.source "DNSState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/jmdns/impl/constants/DNSState$StateClass;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljavax/jmdns/impl/constants/DNSState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavax/jmdns/impl/constants/DNSState;

.field public static final enum ANNOUNCED:Ljavax/jmdns/impl/constants/DNSState;

.field public static final enum ANNOUNCING_1:Ljavax/jmdns/impl/constants/DNSState;

.field public static final enum ANNOUNCING_2:Ljavax/jmdns/impl/constants/DNSState;

.field public static final enum CANCELED:Ljavax/jmdns/impl/constants/DNSState;

.field public static final enum CANCELING_1:Ljavax/jmdns/impl/constants/DNSState;

.field public static final enum CANCELING_2:Ljavax/jmdns/impl/constants/DNSState;

.field public static final enum CANCELING_3:Ljavax/jmdns/impl/constants/DNSState;

.field public static final enum CLOSED:Ljavax/jmdns/impl/constants/DNSState;

.field public static final enum CLOSING:Ljavax/jmdns/impl/constants/DNSState;

.field public static final enum PROBING_1:Ljavax/jmdns/impl/constants/DNSState;

.field public static final enum PROBING_2:Ljavax/jmdns/impl/constants/DNSState;

.field public static final enum PROBING_3:Ljavax/jmdns/impl/constants/DNSState;


# instance fields
.field private final name:Ljava/lang/String;

.field private final state:Ljavax/jmdns/impl/constants/DNSState$StateClass;


# direct methods
.method static constructor <clinit>()V
    .locals 27

    .line 22
    new-instance v0, Ljavax/jmdns/impl/constants/DNSState;

    const-string v1, "probing 1"

    sget-object v2, Ljavax/jmdns/impl/constants/DNSState$StateClass;->probing:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    const-string v3, "PROBING_1"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Ljavax/jmdns/impl/constants/DNSState;-><init>(Ljava/lang/String;ILjava/lang/String;Ljavax/jmdns/impl/constants/DNSState$StateClass;)V

    sput-object v0, Ljavax/jmdns/impl/constants/DNSState;->PROBING_1:Ljavax/jmdns/impl/constants/DNSState;

    .line 23
    new-instance v1, Ljavax/jmdns/impl/constants/DNSState;

    const-string v2, "probing 2"

    sget-object v3, Ljavax/jmdns/impl/constants/DNSState$StateClass;->probing:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    const-string v5, "PROBING_2"

    const/4 v6, 0x1

    invoke-direct {v1, v5, v6, v2, v3}, Ljavax/jmdns/impl/constants/DNSState;-><init>(Ljava/lang/String;ILjava/lang/String;Ljavax/jmdns/impl/constants/DNSState$StateClass;)V

    sput-object v1, Ljavax/jmdns/impl/constants/DNSState;->PROBING_2:Ljavax/jmdns/impl/constants/DNSState;

    .line 24
    new-instance v2, Ljavax/jmdns/impl/constants/DNSState;

    const-string v3, "probing 3"

    sget-object v5, Ljavax/jmdns/impl/constants/DNSState$StateClass;->probing:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    const-string v7, "PROBING_3"

    const/4 v8, 0x2

    invoke-direct {v2, v7, v8, v3, v5}, Ljavax/jmdns/impl/constants/DNSState;-><init>(Ljava/lang/String;ILjava/lang/String;Ljavax/jmdns/impl/constants/DNSState$StateClass;)V

    sput-object v2, Ljavax/jmdns/impl/constants/DNSState;->PROBING_3:Ljavax/jmdns/impl/constants/DNSState;

    .line 25
    new-instance v3, Ljavax/jmdns/impl/constants/DNSState;

    const-string v5, "announcing 1"

    sget-object v7, Ljavax/jmdns/impl/constants/DNSState$StateClass;->announcing:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    const-string v9, "ANNOUNCING_1"

    const/4 v10, 0x3

    invoke-direct {v3, v9, v10, v5, v7}, Ljavax/jmdns/impl/constants/DNSState;-><init>(Ljava/lang/String;ILjava/lang/String;Ljavax/jmdns/impl/constants/DNSState$StateClass;)V

    sput-object v3, Ljavax/jmdns/impl/constants/DNSState;->ANNOUNCING_1:Ljavax/jmdns/impl/constants/DNSState;

    .line 26
    new-instance v5, Ljavax/jmdns/impl/constants/DNSState;

    const-string v7, "announcing 2"

    sget-object v9, Ljavax/jmdns/impl/constants/DNSState$StateClass;->announcing:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    const-string v11, "ANNOUNCING_2"

    const/4 v12, 0x4

    invoke-direct {v5, v11, v12, v7, v9}, Ljavax/jmdns/impl/constants/DNSState;-><init>(Ljava/lang/String;ILjava/lang/String;Ljavax/jmdns/impl/constants/DNSState$StateClass;)V

    sput-object v5, Ljavax/jmdns/impl/constants/DNSState;->ANNOUNCING_2:Ljavax/jmdns/impl/constants/DNSState;

    .line 27
    new-instance v7, Ljavax/jmdns/impl/constants/DNSState;

    const-string v9, "announced"

    sget-object v11, Ljavax/jmdns/impl/constants/DNSState$StateClass;->announced:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    const-string v13, "ANNOUNCED"

    const/4 v14, 0x5

    invoke-direct {v7, v13, v14, v9, v11}, Ljavax/jmdns/impl/constants/DNSState;-><init>(Ljava/lang/String;ILjava/lang/String;Ljavax/jmdns/impl/constants/DNSState$StateClass;)V

    sput-object v7, Ljavax/jmdns/impl/constants/DNSState;->ANNOUNCED:Ljavax/jmdns/impl/constants/DNSState;

    .line 28
    new-instance v9, Ljavax/jmdns/impl/constants/DNSState;

    const-string v11, "canceling 1"

    sget-object v13, Ljavax/jmdns/impl/constants/DNSState$StateClass;->canceling:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    const-string v15, "CANCELING_1"

    const/16 v16, 0x0

    const/4 v4, 0x6

    invoke-direct {v9, v15, v4, v11, v13}, Ljavax/jmdns/impl/constants/DNSState;-><init>(Ljava/lang/String;ILjava/lang/String;Ljavax/jmdns/impl/constants/DNSState$StateClass;)V

    sput-object v9, Ljavax/jmdns/impl/constants/DNSState;->CANCELING_1:Ljavax/jmdns/impl/constants/DNSState;

    .line 29
    new-instance v11, Ljavax/jmdns/impl/constants/DNSState;

    const-string v13, "canceling 2"

    sget-object v15, Ljavax/jmdns/impl/constants/DNSState$StateClass;->canceling:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    const/16 v17, 0x6

    const-string v4, "CANCELING_2"

    const/16 v18, 0x1

    const/4 v6, 0x7

    invoke-direct {v11, v4, v6, v13, v15}, Ljavax/jmdns/impl/constants/DNSState;-><init>(Ljava/lang/String;ILjava/lang/String;Ljavax/jmdns/impl/constants/DNSState$StateClass;)V

    sput-object v11, Ljavax/jmdns/impl/constants/DNSState;->CANCELING_2:Ljavax/jmdns/impl/constants/DNSState;

    .line 30
    new-instance v4, Ljavax/jmdns/impl/constants/DNSState;

    const-string v13, "canceling 3"

    sget-object v15, Ljavax/jmdns/impl/constants/DNSState$StateClass;->canceling:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    const/16 v19, 0x7

    const-string v6, "CANCELING_3"

    const/16 v20, 0x2

    const/16 v8, 0x8

    invoke-direct {v4, v6, v8, v13, v15}, Ljavax/jmdns/impl/constants/DNSState;-><init>(Ljava/lang/String;ILjava/lang/String;Ljavax/jmdns/impl/constants/DNSState$StateClass;)V

    sput-object v4, Ljavax/jmdns/impl/constants/DNSState;->CANCELING_3:Ljavax/jmdns/impl/constants/DNSState;

    .line 31
    new-instance v6, Ljavax/jmdns/impl/constants/DNSState;

    const-string v13, "canceled"

    sget-object v15, Ljavax/jmdns/impl/constants/DNSState$StateClass;->canceled:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    const/16 v21, 0x8

    const-string v8, "CANCELED"

    const/16 v22, 0x3

    const/16 v10, 0x9

    invoke-direct {v6, v8, v10, v13, v15}, Ljavax/jmdns/impl/constants/DNSState;-><init>(Ljava/lang/String;ILjava/lang/String;Ljavax/jmdns/impl/constants/DNSState$StateClass;)V

    sput-object v6, Ljavax/jmdns/impl/constants/DNSState;->CANCELED:Ljavax/jmdns/impl/constants/DNSState;

    .line 32
    new-instance v8, Ljavax/jmdns/impl/constants/DNSState;

    const-string v13, "closing"

    sget-object v15, Ljavax/jmdns/impl/constants/DNSState$StateClass;->closing:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    const/16 v23, 0x9

    const-string v10, "CLOSING"

    const/16 v24, 0x4

    const/16 v12, 0xa

    invoke-direct {v8, v10, v12, v13, v15}, Ljavax/jmdns/impl/constants/DNSState;-><init>(Ljava/lang/String;ILjava/lang/String;Ljavax/jmdns/impl/constants/DNSState$StateClass;)V

    sput-object v8, Ljavax/jmdns/impl/constants/DNSState;->CLOSING:Ljavax/jmdns/impl/constants/DNSState;

    .line 33
    new-instance v10, Ljavax/jmdns/impl/constants/DNSState;

    const-string v13, "closed"

    sget-object v15, Ljavax/jmdns/impl/constants/DNSState$StateClass;->closed:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    const/16 v25, 0xa

    const-string v12, "CLOSED"

    const/16 v26, 0x5

    const/16 v14, 0xb

    invoke-direct {v10, v12, v14, v13, v15}, Ljavax/jmdns/impl/constants/DNSState;-><init>(Ljava/lang/String;ILjava/lang/String;Ljavax/jmdns/impl/constants/DNSState$StateClass;)V

    sput-object v10, Ljavax/jmdns/impl/constants/DNSState;->CLOSED:Ljavax/jmdns/impl/constants/DNSState;

    const/16 v12, 0xc

    .line 21
    new-array v12, v12, [Ljavax/jmdns/impl/constants/DNSState;

    aput-object v0, v12, v16

    aput-object v1, v12, v18

    aput-object v2, v12, v20

    aput-object v3, v12, v22

    aput-object v5, v12, v24

    aput-object v7, v12, v26

    aput-object v9, v12, v17

    aput-object v11, v12, v19

    aput-object v4, v12, v21

    aput-object v6, v12, v23

    aput-object v8, v12, v25

    aput-object v10, v12, v14

    sput-object v12, Ljavax/jmdns/impl/constants/DNSState;->$VALUES:[Ljavax/jmdns/impl/constants/DNSState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljavax/jmdns/impl/constants/DNSState$StateClass;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljavax/jmdns/impl/constants/DNSState$StateClass;",
            ")V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput-object p3, p0, Ljavax/jmdns/impl/constants/DNSState;->name:Ljava/lang/String;

    .line 45
    iput-object p4, p0, Ljavax/jmdns/impl/constants/DNSState;->state:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/jmdns/impl/constants/DNSState;
    .locals 1

    .line 21
    const-class v0, Ljavax/jmdns/impl/constants/DNSState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljavax/jmdns/impl/constants/DNSState;

    return-object p0
.end method

.method public static values()[Ljavax/jmdns/impl/constants/DNSState;
    .locals 1

    .line 21
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->$VALUES:[Ljavax/jmdns/impl/constants/DNSState;

    invoke-virtual {v0}, [Ljavax/jmdns/impl/constants/DNSState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/jmdns/impl/constants/DNSState;

    return-object v0
.end method


# virtual methods
.method public final advance()Ljavax/jmdns/impl/constants/DNSState;
    .locals 2

    .line 61
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState$1;->$SwitchMap$javax$jmdns$impl$constants$DNSState:[I

    invoke-virtual {p0}, Ljavax/jmdns/impl/constants/DNSState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    return-object p0

    .line 82
    :pswitch_0
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->CLOSED:Ljavax/jmdns/impl/constants/DNSState;

    return-object v0

    .line 79
    :pswitch_1
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->CANCELED:Ljavax/jmdns/impl/constants/DNSState;

    return-object v0

    .line 76
    :pswitch_2
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->CANCELING_3:Ljavax/jmdns/impl/constants/DNSState;

    return-object v0

    .line 74
    :pswitch_3
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->CANCELING_2:Ljavax/jmdns/impl/constants/DNSState;

    return-object v0

    .line 72
    :pswitch_4
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->ANNOUNCED:Ljavax/jmdns/impl/constants/DNSState;

    return-object v0

    .line 69
    :pswitch_5
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->ANNOUNCING_2:Ljavax/jmdns/impl/constants/DNSState;

    return-object v0

    .line 67
    :pswitch_6
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->ANNOUNCING_1:Ljavax/jmdns/impl/constants/DNSState;

    return-object v0

    .line 65
    :pswitch_7
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->PROBING_3:Ljavax/jmdns/impl/constants/DNSState;

    return-object v0

    .line 63
    :pswitch_8
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->PROBING_2:Ljavax/jmdns/impl/constants/DNSState;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final isAnnounced()Z
    .locals 2

    .line 143
    iget-object v0, p0, Ljavax/jmdns/impl/constants/DNSState;->state:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    sget-object v1, Ljavax/jmdns/impl/constants/DNSState$StateClass;->announced:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isAnnouncing()Z
    .locals 2

    .line 134
    iget-object v0, p0, Ljavax/jmdns/impl/constants/DNSState;->state:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    sget-object v1, Ljavax/jmdns/impl/constants/DNSState$StateClass;->announcing:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isCanceled()Z
    .locals 2

    .line 161
    iget-object v0, p0, Ljavax/jmdns/impl/constants/DNSState;->state:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    sget-object v1, Ljavax/jmdns/impl/constants/DNSState$StateClass;->canceled:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isCanceling()Z
    .locals 2

    .line 152
    iget-object v0, p0, Ljavax/jmdns/impl/constants/DNSState;->state:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    sget-object v1, Ljavax/jmdns/impl/constants/DNSState$StateClass;->canceling:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isClosed()Z
    .locals 2

    .line 179
    iget-object v0, p0, Ljavax/jmdns/impl/constants/DNSState;->state:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    sget-object v1, Ljavax/jmdns/impl/constants/DNSState$StateClass;->closed:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isClosing()Z
    .locals 2

    .line 170
    iget-object v0, p0, Ljavax/jmdns/impl/constants/DNSState;->state:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    sget-object v1, Ljavax/jmdns/impl/constants/DNSState$StateClass;->closing:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isProbing()Z
    .locals 2

    .line 125
    iget-object v0, p0, Ljavax/jmdns/impl/constants/DNSState;->state:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    sget-object v1, Ljavax/jmdns/impl/constants/DNSState$StateClass;->probing:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final revert()Ljavax/jmdns/impl/constants/DNSState;
    .locals 2

    .line 95
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState$1;->$SwitchMap$javax$jmdns$impl$constants$DNSState:[I

    invoke-virtual {p0}, Ljavax/jmdns/impl/constants/DNSState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    return-object p0

    .line 112
    :pswitch_0
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->CLOSED:Ljavax/jmdns/impl/constants/DNSState;

    return-object v0

    .line 110
    :pswitch_1
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->CLOSING:Ljavax/jmdns/impl/constants/DNSState;

    return-object v0

    .line 108
    :pswitch_2
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->CANCELED:Ljavax/jmdns/impl/constants/DNSState;

    return-object v0

    .line 106
    :pswitch_3
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->CANCELING_1:Ljavax/jmdns/impl/constants/DNSState;

    return-object v0

    .line 102
    :pswitch_4
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->PROBING_1:Ljavax/jmdns/impl/constants/DNSState;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Ljavax/jmdns/impl/constants/DNSState;->name:Ljava/lang/String;

    return-object v0
.end method
