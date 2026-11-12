.class public final enum Ljavax/jmdns/impl/constants/DNSOperationCode;
.super Ljava/lang/Enum;
.source "DNSOperationCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljavax/jmdns/impl/constants/DNSOperationCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavax/jmdns/impl/constants/DNSOperationCode;

.field public static final enum IQuery:Ljavax/jmdns/impl/constants/DNSOperationCode;

.field public static final enum Notify:Ljavax/jmdns/impl/constants/DNSOperationCode;

.field static final OpCode_MASK:I = 0x7800

.field public static final enum Query:Ljavax/jmdns/impl/constants/DNSOperationCode;

.field public static final enum Status:Ljavax/jmdns/impl/constants/DNSOperationCode;

.field public static final enum Unassigned:Ljavax/jmdns/impl/constants/DNSOperationCode;

.field public static final enum Update:Ljavax/jmdns/impl/constants/DNSOperationCode;


# instance fields
.field private final externalName:Ljava/lang/String;

.field private final indexValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 25
    new-instance v0, Ljavax/jmdns/impl/constants/DNSOperationCode;

    const-string v1, "Query"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Ljavax/jmdns/impl/constants/DNSOperationCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/impl/constants/DNSOperationCode;->Query:Ljavax/jmdns/impl/constants/DNSOperationCode;

    .line 29
    new-instance v1, Ljavax/jmdns/impl/constants/DNSOperationCode;

    const-string v3, "Inverse Query"

    const-string v4, "IQuery"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v3, v5}, Ljavax/jmdns/impl/constants/DNSOperationCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Ljavax/jmdns/impl/constants/DNSOperationCode;->IQuery:Ljavax/jmdns/impl/constants/DNSOperationCode;

    .line 33
    new-instance v3, Ljavax/jmdns/impl/constants/DNSOperationCode;

    const-string v4, "Status"

    const/4 v6, 0x2

    invoke-direct {v3, v4, v6, v4, v6}, Ljavax/jmdns/impl/constants/DNSOperationCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v3, Ljavax/jmdns/impl/constants/DNSOperationCode;->Status:Ljavax/jmdns/impl/constants/DNSOperationCode;

    .line 37
    new-instance v4, Ljavax/jmdns/impl/constants/DNSOperationCode;

    const-string v7, "Unassigned"

    const/4 v8, 0x3

    invoke-direct {v4, v7, v8, v7, v8}, Ljavax/jmdns/impl/constants/DNSOperationCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v4, Ljavax/jmdns/impl/constants/DNSOperationCode;->Unassigned:Ljavax/jmdns/impl/constants/DNSOperationCode;

    .line 41
    new-instance v7, Ljavax/jmdns/impl/constants/DNSOperationCode;

    const-string v9, "Notify"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v9, v10}, Ljavax/jmdns/impl/constants/DNSOperationCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v7, Ljavax/jmdns/impl/constants/DNSOperationCode;->Notify:Ljavax/jmdns/impl/constants/DNSOperationCode;

    .line 45
    new-instance v9, Ljavax/jmdns/impl/constants/DNSOperationCode;

    const-string v11, "Update"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v11, v12}, Ljavax/jmdns/impl/constants/DNSOperationCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v9, Ljavax/jmdns/impl/constants/DNSOperationCode;->Update:Ljavax/jmdns/impl/constants/DNSOperationCode;

    const/4 v11, 0x6

    .line 21
    new-array v11, v11, [Ljavax/jmdns/impl/constants/DNSOperationCode;

    aput-object v0, v11, v2

    aput-object v1, v11, v5

    aput-object v3, v11, v6

    aput-object v4, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Ljavax/jmdns/impl/constants/DNSOperationCode;->$VALUES:[Ljavax/jmdns/impl/constants/DNSOperationCode;

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

    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    iput-object p3, p0, Ljavax/jmdns/impl/constants/DNSOperationCode;->externalName:Ljava/lang/String;

    .line 58
    iput p4, p0, Ljavax/jmdns/impl/constants/DNSOperationCode;->indexValue:I

    return-void
.end method

.method public static operationCodeForFlags(I)Ljavax/jmdns/impl/constants/DNSOperationCode;
    .locals 5

    and-int/lit16 p0, p0, 0x7800

    shr-int/lit8 p0, p0, 0xb

    .line 85
    invoke-static {}, Ljavax/jmdns/impl/constants/DNSOperationCode;->values()[Ljavax/jmdns/impl/constants/DNSOperationCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 86
    iget v4, v3, Ljavax/jmdns/impl/constants/DNSOperationCode;->indexValue:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 88
    :cond_1
    sget-object p0, Ljavax/jmdns/impl/constants/DNSOperationCode;->Unassigned:Ljavax/jmdns/impl/constants/DNSOperationCode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/jmdns/impl/constants/DNSOperationCode;
    .locals 1

    .line 21
    const-class v0, Ljavax/jmdns/impl/constants/DNSOperationCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljavax/jmdns/impl/constants/DNSOperationCode;

    return-object p0
.end method

.method public static values()[Ljavax/jmdns/impl/constants/DNSOperationCode;
    .locals 1

    .line 21
    sget-object v0, Ljavax/jmdns/impl/constants/DNSOperationCode;->$VALUES:[Ljavax/jmdns/impl/constants/DNSOperationCode;

    invoke-virtual {v0}, [Ljavax/jmdns/impl/constants/DNSOperationCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/jmdns/impl/constants/DNSOperationCode;

    return-object v0
.end method


# virtual methods
.method public externalName()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Ljavax/jmdns/impl/constants/DNSOperationCode;->externalName:Ljava/lang/String;

    return-object v0
.end method

.method public indexValue()I
    .locals 1

    .line 76
    iget v0, p0, Ljavax/jmdns/impl/constants/DNSOperationCode;->indexValue:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/constants/DNSOperationCode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljavax/jmdns/impl/constants/DNSOperationCode;->indexValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
