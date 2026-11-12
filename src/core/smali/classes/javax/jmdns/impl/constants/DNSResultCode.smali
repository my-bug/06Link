.class public final enum Ljavax/jmdns/impl/constants/DNSResultCode;
.super Ljava/lang/Enum;
.source "DNSResultCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljavax/jmdns/impl/constants/DNSResultCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavax/jmdns/impl/constants/DNSResultCode;

.field static final ExtendedRCode_MASK:I = 0xff

.field public static final enum FormErr:Ljavax/jmdns/impl/constants/DNSResultCode;

.field public static final enum NXDomain:Ljavax/jmdns/impl/constants/DNSResultCode;

.field public static final enum NXRRSet:Ljavax/jmdns/impl/constants/DNSResultCode;

.field public static final enum NoError:Ljavax/jmdns/impl/constants/DNSResultCode;

.field public static final enum NotAuth:Ljavax/jmdns/impl/constants/DNSResultCode;

.field public static final enum NotImp:Ljavax/jmdns/impl/constants/DNSResultCode;

.field public static final enum NotZone:Ljavax/jmdns/impl/constants/DNSResultCode;

.field static final RCode_MASK:I = 0xf

.field public static final enum Refused:Ljavax/jmdns/impl/constants/DNSResultCode;

.field public static final enum ServFail:Ljavax/jmdns/impl/constants/DNSResultCode;

.field public static final enum Unknown:Ljavax/jmdns/impl/constants/DNSResultCode;

.field public static final enum YXDomain:Ljavax/jmdns/impl/constants/DNSResultCode;

.field public static final enum YXRRSet:Ljavax/jmdns/impl/constants/DNSResultCode;


# instance fields
.field private final externalName:Ljava/lang/String;

.field private final indexValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 26

    .line 25
    new-instance v0, Ljavax/jmdns/impl/constants/DNSResultCode;

    const v1, 0xffff

    const-string v2, "Unknown"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v2, v1}, Ljavax/jmdns/impl/constants/DNSResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/impl/constants/DNSResultCode;->Unknown:Ljavax/jmdns/impl/constants/DNSResultCode;

    .line 29
    new-instance v1, Ljavax/jmdns/impl/constants/DNSResultCode;

    const-string v2, "No Error"

    const-string v4, "NoError"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2, v3}, Ljavax/jmdns/impl/constants/DNSResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Ljavax/jmdns/impl/constants/DNSResultCode;->NoError:Ljavax/jmdns/impl/constants/DNSResultCode;

    .line 33
    new-instance v2, Ljavax/jmdns/impl/constants/DNSResultCode;

    const-string v4, "Format Error"

    const-string v6, "FormErr"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4, v5}, Ljavax/jmdns/impl/constants/DNSResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Ljavax/jmdns/impl/constants/DNSResultCode;->FormErr:Ljavax/jmdns/impl/constants/DNSResultCode;

    .line 37
    new-instance v4, Ljavax/jmdns/impl/constants/DNSResultCode;

    const-string v6, "Server Failure"

    const-string v8, "ServFail"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6, v7}, Ljavax/jmdns/impl/constants/DNSResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v4, Ljavax/jmdns/impl/constants/DNSResultCode;->ServFail:Ljavax/jmdns/impl/constants/DNSResultCode;

    .line 41
    new-instance v6, Ljavax/jmdns/impl/constants/DNSResultCode;

    const-string v8, "Non-Existent Domain"

    const-string v10, "NXDomain"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8, v9}, Ljavax/jmdns/impl/constants/DNSResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v6, Ljavax/jmdns/impl/constants/DNSResultCode;->NXDomain:Ljavax/jmdns/impl/constants/DNSResultCode;

    .line 45
    new-instance v8, Ljavax/jmdns/impl/constants/DNSResultCode;

    const-string v10, "Not Implemented"

    const-string v12, "NotImp"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10, v11}, Ljavax/jmdns/impl/constants/DNSResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v8, Ljavax/jmdns/impl/constants/DNSResultCode;->NotImp:Ljavax/jmdns/impl/constants/DNSResultCode;

    .line 49
    new-instance v10, Ljavax/jmdns/impl/constants/DNSResultCode;

    const-string v12, "Query Refused"

    const-string v14, "Refused"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12, v13}, Ljavax/jmdns/impl/constants/DNSResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v10, Ljavax/jmdns/impl/constants/DNSResultCode;->Refused:Ljavax/jmdns/impl/constants/DNSResultCode;

    .line 53
    new-instance v12, Ljavax/jmdns/impl/constants/DNSResultCode;

    const-string v14, "Name Exists when it should not"

    const/16 v16, 0x0

    const-string v3, "YXDomain"

    const/16 v17, 0x1

    const/4 v5, 0x7

    invoke-direct {v12, v3, v5, v14, v15}, Ljavax/jmdns/impl/constants/DNSResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v12, Ljavax/jmdns/impl/constants/DNSResultCode;->YXDomain:Ljavax/jmdns/impl/constants/DNSResultCode;

    .line 57
    new-instance v3, Ljavax/jmdns/impl/constants/DNSResultCode;

    const-string v14, "RR Set Exists when it should not"

    const/16 v18, 0x2

    const-string v7, "YXRRSet"

    const/16 v19, 0x3

    const/16 v9, 0x8

    invoke-direct {v3, v7, v9, v14, v5}, Ljavax/jmdns/impl/constants/DNSResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v3, Ljavax/jmdns/impl/constants/DNSResultCode;->YXRRSet:Ljavax/jmdns/impl/constants/DNSResultCode;

    .line 61
    new-instance v7, Ljavax/jmdns/impl/constants/DNSResultCode;

    const-string v14, "RR Set that should exist does not"

    const/16 v20, 0x7

    const-string v5, "NXRRSet"

    const/16 v21, 0x4

    const/16 v11, 0x9

    invoke-direct {v7, v5, v11, v14, v9}, Ljavax/jmdns/impl/constants/DNSResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v7, Ljavax/jmdns/impl/constants/DNSResultCode;->NXRRSet:Ljavax/jmdns/impl/constants/DNSResultCode;

    .line 65
    new-instance v5, Ljavax/jmdns/impl/constants/DNSResultCode;

    const-string v14, "Server Not Authoritative for zone"

    const/16 v22, 0x8

    const-string v9, "NotAuth"

    const/16 v23, 0x5

    const/16 v13, 0xa

    invoke-direct {v5, v9, v13, v14, v11}, Ljavax/jmdns/impl/constants/DNSResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v5, Ljavax/jmdns/impl/constants/DNSResultCode;->NotAuth:Ljavax/jmdns/impl/constants/DNSResultCode;

    .line 69
    new-instance v9, Ljavax/jmdns/impl/constants/DNSResultCode;

    const-string v14, "NotZone Name not contained in zone"

    const/16 v24, 0x9

    const-string v11, "NotZone"

    const/16 v25, 0x6

    const/16 v15, 0xb

    invoke-direct {v9, v11, v15, v14, v13}, Ljavax/jmdns/impl/constants/DNSResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v9, Ljavax/jmdns/impl/constants/DNSResultCode;->NotZone:Ljavax/jmdns/impl/constants/DNSResultCode;

    const/16 v11, 0xc

    .line 21
    new-array v11, v11, [Ljavax/jmdns/impl/constants/DNSResultCode;

    aput-object v0, v11, v16

    aput-object v1, v11, v17

    aput-object v2, v11, v18

    aput-object v4, v11, v19

    aput-object v6, v11, v21

    aput-object v8, v11, v23

    aput-object v10, v11, v25

    aput-object v12, v11, v20

    aput-object v3, v11, v22

    aput-object v7, v11, v24

    aput-object v5, v11, v13

    aput-object v9, v11, v15

    sput-object v11, Ljavax/jmdns/impl/constants/DNSResultCode;->$VALUES:[Ljavax/jmdns/impl/constants/DNSResultCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 111
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 112
    iput-object p3, p0, Ljavax/jmdns/impl/constants/DNSResultCode;->externalName:Ljava/lang/String;

    .line 113
    iput p4, p0, Ljavax/jmdns/impl/constants/DNSResultCode;->indexValue:I

    return-void
.end method

.method public static resultCodeForFlags(I)Ljavax/jmdns/impl/constants/DNSResultCode;
    .locals 5

    and-int/lit8 p0, p0, 0xf

    .line 140
    invoke-static {}, Ljavax/jmdns/impl/constants/DNSResultCode;->values()[Ljavax/jmdns/impl/constants/DNSResultCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 141
    iget v4, v3, Ljavax/jmdns/impl/constants/DNSResultCode;->indexValue:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 143
    :cond_1
    sget-object p0, Ljavax/jmdns/impl/constants/DNSResultCode;->Unknown:Ljavax/jmdns/impl/constants/DNSResultCode;

    return-object p0
.end method

.method public static resultCodeForFlags(II)Ljavax/jmdns/impl/constants/DNSResultCode;
    .locals 4

    shr-int/lit8 p1, p1, 0x1c

    and-int/lit16 p1, p1, 0xff

    and-int/lit8 p0, p0, 0xf

    or-int/2addr p0, p1

    .line 148
    invoke-static {}, Ljavax/jmdns/impl/constants/DNSResultCode;->values()[Ljavax/jmdns/impl/constants/DNSResultCode;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 149
    iget v3, v2, Ljavax/jmdns/impl/constants/DNSResultCode;->indexValue:I

    if-ne v3, p0, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    :cond_1
    sget-object p0, Ljavax/jmdns/impl/constants/DNSResultCode;->Unknown:Ljavax/jmdns/impl/constants/DNSResultCode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/jmdns/impl/constants/DNSResultCode;
    .locals 1

    .line 21
    const-class v0, Ljavax/jmdns/impl/constants/DNSResultCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljavax/jmdns/impl/constants/DNSResultCode;

    return-object p0
.end method

.method public static values()[Ljavax/jmdns/impl/constants/DNSResultCode;
    .locals 1

    .line 21
    sget-object v0, Ljavax/jmdns/impl/constants/DNSResultCode;->$VALUES:[Ljavax/jmdns/impl/constants/DNSResultCode;

    invoke-virtual {v0}, [Ljavax/jmdns/impl/constants/DNSResultCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/jmdns/impl/constants/DNSResultCode;

    return-object v0
.end method


# virtual methods
.method public externalName()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Ljavax/jmdns/impl/constants/DNSResultCode;->externalName:Ljava/lang/String;

    return-object v0
.end method

.method public indexValue()I
    .locals 1

    .line 131
    iget v0, p0, Ljavax/jmdns/impl/constants/DNSResultCode;->indexValue:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/constants/DNSResultCode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljavax/jmdns/impl/constants/DNSResultCode;->indexValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
