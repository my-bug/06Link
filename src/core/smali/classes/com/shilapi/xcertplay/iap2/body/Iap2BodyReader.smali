.class public final Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;
.super Ljava/lang/Object;
.source "Iap2BodyReader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIap2BodyReader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Iap2BodyReader.kt\ncom/shilapi/xcertplay/iap2/body/Iap2BodyReader\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,197:1\n1#2:198\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0010\n\u0002\u0010\t\n\u0002\u0008\u0014\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 D2\u00020\u0001:\u0001DB\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u0007J\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\r\u001a\u00020\u0007J\u0018\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0012J\u0014\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u00142\u0006\u0010\r\u001a\u00020\u0007J\u000e\u0010\u0015\u001a\u00020\u00162\u0006\u0010\r\u001a\u00020\u0007J\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u00162\u0006\u0010\r\u001a\u00020\u0007J\u000e\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u0007J\u000e\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u0007J\u000e\u0010\u001a\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0007J\u0015\u0010\u001b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\r\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u001cJ\u000e\u0010\u001d\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0007J\u0015\u0010\u001e\u001a\u0004\u0018\u00010\u00072\u0006\u0010\r\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u001cJ\u000e\u0010\u001f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u0007J\u0015\u0010 \u001a\u0004\u0018\u00010\u000b2\u0006\u0010\r\u001a\u00020\u0007\u00a2\u0006\u0002\u0010!J\u000e\u0010\"\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0007J\u0015\u0010#\u001a\u0004\u0018\u00010\u00072\u0006\u0010\r\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u001cJ\u000e\u0010$\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0007J\u0015\u0010%\u001a\u0004\u0018\u00010\u00072\u0006\u0010\r\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u001cJ\u000e\u0010&\u001a\u00020\'2\u0006\u0010\r\u001a\u00020\u0007J\u0015\u0010(\u001a\u0004\u0018\u00010\'2\u0006\u0010\r\u001a\u00020\u0007\u00a2\u0006\u0002\u0010)J\u000e\u0010*\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0007J\u0015\u0010+\u001a\u0004\u0018\u00010\u00072\u0006\u0010\r\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u001cJ\u000e\u0010,\u001a\u00020\'2\u0006\u0010\r\u001a\u00020\u0007J\u0015\u0010-\u001a\u0004\u0018\u00010\'2\u0006\u0010\r\u001a\u00020\u0007\u00a2\u0006\u0002\u0010)J\u000e\u0010.\u001a\u00020\u00162\u0006\u0010\r\u001a\u00020\u0007J\u0010\u0010/\u001a\u0004\u0018\u00010\u00162\u0006\u0010\r\u001a\u00020\u0007J\u000e\u00100\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\u0007J\u0010\u00101\u001a\u0004\u0018\u00010\u00122\u0006\u0010\r\u001a\u00020\u0007J\u0014\u00102\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00142\u0006\u0010\r\u001a\u00020\u0007J\u0016\u00103\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u00142\u0006\u0010\r\u001a\u00020\u0007J\u0014\u00104\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00142\u0006\u0010\r\u001a\u00020\u0007J\u0016\u00105\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00142\u0006\u0010\r\u001a\u00020\u0007J\u000e\u00106\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0007J\u0010\u00107\u001a\u0004\u0018\u00010\u00002\u0006\u0010\r\u001a\u00020\u0007J\u000c\u00108\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0014J\u0018\u00109\u001a\u00020\u00162\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010:\u001a\u00020\u0007H\u0002J \u0010;\u001a\u00020<2\u0006\u0010=\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010:\u001a\u00020\u0007H\u0002J\u0018\u0010>\u001a\u00020<2\u0006\u0010=\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\u0007H\u0002J\u0018\u0010?\u001a\u00020@2\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010A\u001a\u00020@H\u0002J\u0010\u0010B\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\u0007H\u0002J\u0010\u0010C\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\u0007H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006E"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;",
        "",
        "parameters",
        "Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;",
        "<init>",
        "(Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;)V",
        "size",
        "",
        "getSize",
        "()I",
        "isEmpty",
        "",
        "has",
        "id",
        "first",
        "Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;",
        "require",
        "description",
        "",
        "all",
        "",
        "raw",
        "",
        "optionalRaw",
        "void",
        "optionalVoid",
        "u8",
        "optionalU8",
        "(I)Ljava/lang/Integer;",
        "i8",
        "optionalI8",
        "bool",
        "optionalBool",
        "(I)Ljava/lang/Boolean;",
        "u16",
        "optionalU16",
        "i16",
        "optionalI16",
        "u32",
        "",
        "optionalU32",
        "(I)Ljava/lang/Long;",
        "i32",
        "optionalI32",
        "u64",
        "optionalU64",
        "bytes",
        "optionalBytes",
        "string",
        "optionalString",
        "strings",
        "optionalStrings",
        "u16List",
        "optionalU16List",
        "group",
        "optionalGroup",
        "list",
        "scalar",
        "expectedBytes",
        "requireSize",
        "",
        "parameter",
        "requireEmpty",
        "malformed",
        "Lcom/shilapi/xcertplay/iap2/wire/Iap2ProtocolException;",
        "failure",
        "defaultDescription",
        "hex",
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
.field public static final Companion:Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader$Companion;


# instance fields
.field private final parameters:Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->Companion:Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader$Companion;

    return-void
.end method

.method private constructor <init>(Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->parameters:Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;-><init>(Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;)V

    return-void
.end method

.method private final defaultDescription(I)Ljava/lang/String;
    .locals 2

    .line 178
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->hex(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "parameter 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final hex(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x10

    .line 180
    invoke-static {v0}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "toString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    const/16 v1, 0x30

    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final malformed(ILcom/shilapi/xcertplay/iap2/wire/Iap2ProtocolException;)Lcom/shilapi/xcertplay/iap2/wire/Iap2ProtocolException;
    .locals 3

    .line 176
    new-instance v0, Lcom/shilapi/xcertplay/iap2/wire/Iap2ProtocolException;

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->hex(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Malformed parameter 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Ljava/lang/Throwable;

    invoke-direct {v0, p1, p2}, Lcom/shilapi/xcertplay/iap2/wire/Iap2ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static synthetic require$default(Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;ILjava/lang/String;ILjava/lang/Object;)Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 27
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->defaultDescription(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->require(ILjava/lang/String;)Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;

    move-result-object p0

    return-object p0
.end method

.method private final requireEmpty(Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;I)V
    .locals 2

    .line 170
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;->getPayload()[B

    move-result-object p1

    array-length p1, p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    return-void

    .line 171
    :cond_1
    new-instance p1, Lcom/shilapi/xcertplay/iap2/wire/Iap2ProtocolException;

    invoke-direct {p0, p2}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->hex(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Parameter 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " must be void"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p1, p2, v1, v0, v1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1
.end method

.method private final requireSize(Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;II)V
    .locals 3

    .line 162
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;->getPayload()[B

    move-result-object v0

    array-length v0, v0

    if-ne v0, p3, :cond_0

    return-void

    .line 163
    :cond_0
    new-instance v0, Lcom/shilapi/xcertplay/iap2/wire/Iap2ProtocolException;

    .line 164
    invoke-direct {p0, p2}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->hex(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;->getPayload()[B

    move-result-object p1

    array-length p1, p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Parameter 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " expected "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " bytes, got "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    const/4 p3, 0x0

    .line 163
    invoke-direct {v0, p1, p3, p2, p3}, Lcom/shilapi/xcertplay/iap2/wire/Iap2ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method

.method private final scalar(II)[B
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 156
    invoke-static {p0, p1, v0, v1, v0}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->require$default(Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;ILjava/lang/String;ILjava/lang/Object;)Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;

    move-result-object v0

    .line 157
    invoke-direct {p0, v0, p1, p2}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->requireSize(Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;II)V

    .line 158
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;->getPayload()[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final all(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->parameters:Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;->all(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final bool(I)Z
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->u8(I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final bytes(I)[B
    .locals 0

    .line 100
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->raw(I)[B

    move-result-object p1

    return-object p1
.end method

.method public final first(I)Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->parameters:Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;->first(I)Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;

    move-result-object p1

    return-object p1
.end method

.method public final getSize()I
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->parameters:Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;->getSize()I

    move-result v0

    return v0
.end method

.method public final group(I)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;
    .locals 2

    .line 147
    new-instance v0, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;

    sget-object v1, Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;->Companion:Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList$Companion;

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->raw(I)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList$Companion;->parse([B)Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;-><init>(Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;)V

    return-object v0
.end method

.method public final has(I)Z
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->parameters:Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;->has(I)Z

    move-result p1

    return p1
.end method

.method public final i16(I)I
    .locals 4

    .line 72
    sget-object v0, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->INSTANCE:Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;

    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->scalar(II)[B

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p1, v2, v1, v3}, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->readI16$default(Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;[BIILjava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final i32(I)I
    .locals 4

    .line 86
    sget-object v0, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->INSTANCE:Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;

    const/4 v1, 0x4

    invoke-direct {p0, p1, v1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->scalar(II)[B

    move-result-object p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p1, v3, v1, v2}, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->readI32$default(Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;[BIILjava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final i8(I)I
    .locals 4

    .line 54
    sget-object v0, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->INSTANCE:Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->scalar(II)[B

    move-result-object p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p1, v3, v1, v2}, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->readI8$default(Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;[BIILjava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final isEmpty()Z
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->parameters:Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;",
            ">;"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->parameters:Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;->asList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final optionalBool(I)Ljava/lang/Boolean;
    .locals 0

    .line 63
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->optionalU8(I)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final optionalBytes(I)[B
    .locals 0

    .line 102
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->optionalRaw(I)[B

    move-result-object p1

    return-object p1
.end method

.method public final optionalGroup(I)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;
    .locals 2

    .line 149
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->optionalRaw(I)[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 150
    new-instance v0, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;

    sget-object v1, Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;->Companion:Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList$Companion;

    invoke-virtual {v1, p1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList$Companion;->parse([B)Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;-><init>(Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final optionalI16(I)Ljava/lang/Integer;
    .locals 4

    .line 74
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->first(I)Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    .line 75
    invoke-direct {p0, v0, p1, v2}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->requireSize(Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;II)V

    .line 76
    sget-object p1, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->INSTANCE:Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;->getPayload()[B

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {p1, v0, v3, v2, v1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->readI16$default(Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;[BIILjava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v1
.end method

.method public final optionalI32(I)Ljava/lang/Integer;
    .locals 4

    .line 88
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->first(I)Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x4

    .line 89
    invoke-direct {p0, v0, p1, v2}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->requireSize(Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;II)V

    .line 90
    sget-object p1, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->INSTANCE:Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;->getPayload()[B

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v0, v2, v3, v1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->readI32$default(Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;[BIILjava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v1
.end method

.method public final optionalI8(I)Ljava/lang/Integer;
    .locals 4

    .line 56
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->first(I)Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 57
    invoke-direct {p0, v0, p1, v2}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->requireSize(Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;II)V

    .line 58
    sget-object p1, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->INSTANCE:Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;->getPayload()[B

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v0, v2, v3, v1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->readI8$default(Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;[BIILjava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v1
.end method

.method public final optionalRaw(I)[B
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->first(I)Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;->getPayload()[B

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final optionalString(I)Ljava/lang/String;
    .locals 2

    .line 110
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->first(I)Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    :try_start_0
    sget-object v1, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->INSTANCE:Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;->getPayload()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->readString([B)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lcom/shilapi/xcertplay/iap2/wire/Iap2ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 114
    invoke-direct {p0, p1, v0}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->malformed(ILcom/shilapi/xcertplay/iap2/wire/Iap2ProtocolException;)Lcom/shilapi/xcertplay/iap2/wire/Iap2ProtocolException;

    move-result-object p1

    throw p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final optionalStrings(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 124
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->first(I)Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    :try_start_0
    sget-object v1, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->INSTANCE:Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;->getPayload()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->readStrings([B)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Lcom/shilapi/xcertplay/iap2/wire/Iap2ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 128
    invoke-direct {p0, p1, v0}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->malformed(ILcom/shilapi/xcertplay/iap2/wire/Iap2ProtocolException;)Lcom/shilapi/xcertplay/iap2/wire/Iap2ProtocolException;

    move-result-object p1

    throw p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final optionalU16(I)Ljava/lang/Integer;
    .locals 4

    .line 67
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->first(I)Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    .line 68
    invoke-direct {p0, v0, p1, v2}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->requireSize(Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;II)V

    .line 69
    sget-object p1, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->INSTANCE:Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;->getPayload()[B

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {p1, v0, v3, v2, v1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->readU16$default(Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;[BIILjava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v1
.end method

.method public final optionalU16List(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 138
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->first(I)Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    :try_start_0
    sget-object v1, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->INSTANCE:Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;->getPayload()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->readU16List([B)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Lcom/shilapi/xcertplay/iap2/wire/Iap2ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 142
    invoke-direct {p0, p1, v0}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->malformed(ILcom/shilapi/xcertplay/iap2/wire/Iap2ProtocolException;)Lcom/shilapi/xcertplay/iap2/wire/Iap2ProtocolException;

    move-result-object p1

    throw p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final optionalU32(I)Ljava/lang/Long;
    .locals 4

    .line 81
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->first(I)Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x4

    .line 82
    invoke-direct {p0, v0, p1, v2}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->requireSize(Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;II)V

    .line 83
    sget-object p1, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->INSTANCE:Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;->getPayload()[B

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v0, v2, v3, v1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->readU32$default(Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;[BIILjava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v1
.end method

.method public final optionalU64(I)Ljava/lang/Long;
    .locals 4

    .line 95
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->first(I)Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v2, 0x8

    .line 96
    invoke-direct {p0, v0, p1, v2}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->requireSize(Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;II)V

    .line 97
    sget-object p1, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->INSTANCE:Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;->getPayload()[B

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v0, v2, v3, v1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->readU64$default(Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;[BIILjava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v1
.end method

.method public final optionalU8(I)Ljava/lang/Integer;
    .locals 4

    .line 49
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->first(I)Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 50
    invoke-direct {p0, v0, p1, v2}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->requireSize(Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;II)V

    .line 51
    sget-object p1, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->INSTANCE:Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;->getPayload()[B

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v0, v2, v3, v1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->readU8$default(Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;[BIILjava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v1
.end method

.method public final optionalVoid(I)Z
    .locals 1

    .line 42
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->first(I)Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    invoke-direct {p0, v0, p1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->requireEmpty(Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final raw(I)[B
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 32
    invoke-static {p0, p1, v0, v1, v0}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->require$default(Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;ILjava/lang/String;ILjava/lang/Object;)Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;->getPayload()[B

    move-result-object p1

    return-object p1
.end method

.method public final require(ILjava/lang/String;)Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;
    .locals 1

    const-string v0, "description"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->parameters:Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;

    invoke-virtual {v0, p1, p2}, Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;->require(ILjava/lang/String;)Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;

    move-result-object p1

    return-object p1
.end method

.method public final string(I)Ljava/lang/String;
    .locals 2

    .line 105
    :try_start_0
    sget-object v0, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->INSTANCE:Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->raw(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->readString([B)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lcom/shilapi/xcertplay/iap2/wire/Iap2ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 107
    invoke-direct {p0, p1, v0}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->malformed(ILcom/shilapi/xcertplay/iap2/wire/Iap2ProtocolException;)Lcom/shilapi/xcertplay/iap2/wire/Iap2ProtocolException;

    move-result-object p1

    throw p1
.end method

.method public final strings(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 119
    :try_start_0
    sget-object v0, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->INSTANCE:Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->raw(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->readStrings([B)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Lcom/shilapi/xcertplay/iap2/wire/Iap2ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 121
    invoke-direct {p0, p1, v0}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->malformed(ILcom/shilapi/xcertplay/iap2/wire/Iap2ProtocolException;)Lcom/shilapi/xcertplay/iap2/wire/Iap2ProtocolException;

    move-result-object p1

    throw p1
.end method

.method public final u16(I)I
    .locals 4

    .line 65
    sget-object v0, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->INSTANCE:Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;

    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->scalar(II)[B

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p1, v2, v1, v3}, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->readU16$default(Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;[BIILjava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final u16List(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 133
    :try_start_0
    sget-object v0, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->INSTANCE:Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->raw(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->readU16List([B)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Lcom/shilapi/xcertplay/iap2/wire/Iap2ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 135
    invoke-direct {p0, p1, v0}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->malformed(ILcom/shilapi/xcertplay/iap2/wire/Iap2ProtocolException;)Lcom/shilapi/xcertplay/iap2/wire/Iap2ProtocolException;

    move-result-object p1

    throw p1
.end method

.method public final u32(I)J
    .locals 4

    .line 79
    sget-object v0, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->INSTANCE:Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;

    const/4 v1, 0x4

    invoke-direct {p0, p1, v1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->scalar(II)[B

    move-result-object p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p1, v3, v1, v2}, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->readU32$default(Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;[BIILjava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final u64(I)J
    .locals 4

    .line 93
    sget-object v0, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->INSTANCE:Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;

    const/16 v1, 0x8

    invoke-direct {p0, p1, v1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->scalar(II)[B

    move-result-object p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p1, v3, v1, v2}, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->readU64$default(Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;[BIILjava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final u8(I)I
    .locals 4

    .line 47
    sget-object v0, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->INSTANCE:Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->scalar(II)[B

    move-result-object p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p1, v3, v1, v2}, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->readU8$default(Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;[BIILjava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final void(I)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 37
    invoke-static {p0, p1, v0, v1, v0}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->require$default(Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;ILjava/lang/String;ILjava/lang/Object;)Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;

    move-result-object v0

    .line 38
    invoke-direct {p0, v0, p1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->requireEmpty(Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;I)V

    const/4 p1, 0x1

    return p1
.end method
