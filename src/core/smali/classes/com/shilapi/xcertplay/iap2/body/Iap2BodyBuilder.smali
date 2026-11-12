.class public final Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;
.super Ljava/lang/Object;
.source "Iap2BodyBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder$Companion;,
        Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIap2BodyBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Iap2BodyBuilder.kt\ncom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,175:1\n1563#2:176\n1634#2,3:177\n295#2,2:181\n1208#2,2:183\n1236#2,4:185\n1788#2,4:189\n774#2:193\n865#2,2:194\n2746#2,3:196\n1#3:180\n*S KotlinDebug\n*F\n+ 1 Iap2BodyBuilder.kt\ncom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder\n*L\n125#1:176\n125#1:177,3\n134#1:181,2\n137#1:183,2\n137#1:185,4\n149#1:189,4\n155#1:193\n155#1:194,2\n156#1:196,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u001c\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u0000 H2\u00020\u0001:\u0002GHB3\u0008\u0002\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0005J\u0016\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0005J\u0016\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\nJ\u0016\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0005J\u0016\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0005J\u0016\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0005J\u0016\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0005J\u0016\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u001bJ\u0016\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0005J\u0016\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u001bJ\u0016\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u001fJ\u0016\u0010 \u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020!J\u001c\u0010\"\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u00052\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020!0$J\u001c\u0010%\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u00052\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u00050$J\u0016\u0010&\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\'\u001a\u00020\u001fJ\'\u0010(\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u00052\u0017\u0010)\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020+0*\u00a2\u0006\u0002\u0008,J\u0016\u0010-\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010.\u001a\u00020\nJ\u001d\u0010/\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u00052\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u00100J\u001d\u00101\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u00052\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u00100J\u001d\u00102\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u00052\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u00100J\u001d\u00103\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u00052\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u00100J\u001d\u00104\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u00052\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u001b\u00a2\u0006\u0002\u00105J\u001d\u00106\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u00052\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u00100J\u001d\u00107\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u00052\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u001b\u00a2\u0006\u0002\u00105J\u0018\u00108\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u00052\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u001fJ\u0018\u00109\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u00052\u0008\u0010\u0015\u001a\u0004\u0018\u00010!J\u0006\u0010:\u001a\u00020;J\u000e\u0010:\u001a\u00020;2\u0006\u0010<\u001a\u00020\u0005J\u0008\u0010=\u001a\u00020\u001fH\u0002J \u0010>\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\'\u001a\u00020\u001f2\u0006\u0010?\u001a\u00020@H\u0002J\u0012\u0010A\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0013\u001a\u00020\u0005H\u0002J\u0016\u0010B\u001a\u00020+2\u000c\u0010C\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u0002J\u0018\u0010D\u001a\u00020\n2\u0006\u0010E\u001a\u00020@2\u0006\u0010F\u001a\u00020@H\u0002R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\rR\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\u00100\u000fj\u0008\u0012\u0004\u0012\u00020\u0010`\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006I"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;",
        "",
        "endpoint",
        "Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoint;",
        "explicitMessageId",
        "",
        "fields",
        "",
        "Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;",
        "validateSchema",
        "",
        "<init>",
        "(Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoint;Ljava/lang/Integer;Ljava/util/List;Z)V",
        "Ljava/lang/Integer;",
        "entries",
        "Ljava/util/ArrayList;",
        "Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder$Entry;",
        "Lkotlin/collections/ArrayList;",
        "void",
        "id",
        "u8",
        "value",
        "bool",
        "i8",
        "u16",
        "i16",
        "u32",
        "",
        "i32",
        "u64",
        "bytes",
        "",
        "string",
        "",
        "strings",
        "values",
        "",
        "u16List",
        "raw",
        "payload",
        "group",
        "block",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "optionalVoid",
        "present",
        "optionalU8",
        "(ILjava/lang/Integer;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;",
        "optionalI8",
        "optionalU16",
        "optionalI16",
        "optionalU32",
        "(ILjava/lang/Long;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;",
        "optionalI32",
        "optionalU64",
        "optionalBytes",
        "optionalString",
        "build",
        "Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;",
        "messageId",
        "encodeValidated",
        "add",
        "wireType",
        "Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;",
        "schemaField",
        "validate",
        "specs",
        "wireTypeMatches",
        "expected",
        "actual",
        "Entry",
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
.field public static final Companion:Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder$Companion;


# instance fields
.field private final endpoint:Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoint;

.field private final entries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final explicitMessageId:Ljava/lang/Integer;

.field private final fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;",
            ">;"
        }
    .end annotation
.end field

.field private final validateSchema:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->Companion:Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder$Companion;

    return-void
.end method

.method private constructor <init>(Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoint;Ljava/lang/Integer;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoint;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;",
            ">;Z)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->endpoint:Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoint;

    .line 20
    iput-object p2, p0, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->explicitMessageId:Ljava/lang/Integer;

    .line 21
    iput-object p3, p0, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->fields:Ljava/util/List;

    .line 22
    iput-boolean p4, p0, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->validateSchema:Z

    .line 26
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->entries:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoint;Ljava/lang/Integer;Ljava/util/List;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;-><init>(Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoint;Ljava/lang/Integer;Ljava/util/List;Z)V

    return-void
.end method

.method private final add(I[BLcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;
    .locals 3

    if-ltz p1, :cond_0

    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->entries:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    new-instance v1, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder$Entry;

    new-instance v2, Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;

    invoke-direct {v2, p1, p2}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;-><init>(I[B)V

    invoke-direct {v1, v2, p3}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder$Entry;-><init>(Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 129
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "CSM parameter id must fit in u16"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final encodeValidated()[B
    .locals 4

    .line 124
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->validateSchema:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->fields:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->fields:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->validate(Ljava/util/List;)V

    .line 125
    :cond_0
    sget-object v0, Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;->Companion:Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList$Companion;

    iget-object v1, p0, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->entries:Ljava/util/ArrayList;

    check-cast v1, Ljava/lang/Iterable;

    .line 176
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 177
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 178
    check-cast v3, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder$Entry;

    .line 125
    invoke-virtual {v3}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder$Entry;->getParameter()Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;

    move-result-object v3

    .line 178
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 179
    :cond_1
    check-cast v2, Ljava/util/List;

    .line 176
    check-cast v2, Ljava/lang/Iterable;

    .line 125
    invoke-virtual {v0, v2}, Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList$Companion;->of(Ljava/lang/Iterable;)Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/iap2/wire/Iap2ParameterList;->encode()[B

    move-result-object v0

    return-object v0
.end method

.method private final schemaField(I)Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;
    .locals 3

    .line 134
    iget-object v0, p0, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->fields:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 181
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;

    .line 134
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 182
    :goto_0
    check-cast v1, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;

    return-object v1
.end method

.method private final validate(Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 137
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Iterable;

    const/16 v2, 0xa

    .line 183
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v2

    .line 184
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v4, Ljava/util/Map;

    .line 185
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 186
    move-object v6, v5

    check-cast v6, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;

    .line 137
    invoke-virtual {v6}, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 186
    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 138
    :cond_0
    iget-object v2, v0, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->entries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-string v5, "iterator(...)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x2

    const/16 v7, 0x30

    const/4 v8, 0x4

    const-string/jumbo v9, "toString(...)"

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v5, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    const-string v13, "next(...)"

    invoke-static {v5, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder$Entry;

    .line 139
    invoke-virtual {v5}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder$Entry;->getParameter()Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;

    move-result-object v13

    invoke-virtual {v13}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;->getId()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v4, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;

    if-eqz v13, :cond_8

    .line 143
    invoke-virtual {v13}, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;->getType()Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    move-result-object v14

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder$Entry;->getWireType()Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    move-result-object v15

    invoke-direct {v0, v14, v15}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->wireTypeMatches(Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;)Z

    move-result v14

    const-string v15, "Body parameter 0x"

    if-eqz v14, :cond_7

    .line 149
    invoke-virtual {v13}, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;->getRepeatable()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v0, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->entries:Ljava/util/ArrayList;

    check-cast v5, Ljava/lang/Iterable;

    .line 189
    instance-of v14, v5, Ljava/util/Collection;

    if-eqz v14, :cond_2

    move-object v14, v5

    check-cast v14, Ljava/util/Collection;

    invoke-interface {v14}, Ljava/util/Collection;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_2

    const/4 v10, 0x0

    :goto_2
    const/16 p1, 0x10

    goto :goto_5

    .line 191
    :cond_2
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v14, 0x0

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder$Entry;

    .line 149
    invoke-virtual/range {v16 .. v16}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder$Entry;->getParameter()Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;

    move-result-object v16

    const/16 p1, 0x10

    invoke-virtual/range {v16 .. v16}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;->getId()I

    move-result v3

    invoke-virtual {v13}, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;->getId()I

    move-result v10

    if-ne v3, v10, :cond_3

    const/4 v3, 0x1

    goto :goto_4

    :cond_3
    const/4 v3, 0x0

    :goto_4
    if-eqz v3, :cond_4

    add-int/lit8 v14, v14, 0x1

    if-gez v14, :cond_4

    .line 191
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwCountOverflow()V

    :cond_4
    const/16 v3, 0x10

    goto :goto_3

    :cond_5
    move v10, v14

    goto :goto_2

    :goto_5
    if-gt v10, v11, :cond_6

    const/16 v3, 0x10

    goto/16 :goto_1

    .line 150
    :cond_6
    new-instance v1, Lcom/shilapi/xcertplay/iap2/wire/Iap2ProtocolException;

    .line 151
    invoke-virtual {v13}, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;->getId()I

    move-result v2

    invoke-static/range {p1 .. p1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v8, v7}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not repeatable"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-direct {v1, v2, v12, v6, v12}, Lcom/shilapi/xcertplay/iap2/wire/Iap2ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1

    :cond_7
    const/16 p1, 0x10

    .line 144
    new-instance v1, Lcom/shilapi/xcertplay/iap2/wire/Iap2ProtocolException;

    .line 145
    invoke-virtual {v13}, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;->getId()I

    move-result v2

    invoke-static/range {p1 .. p1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v8, v7}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13}, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;->getType()Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    move-result-object v3

    .line 146
    invoke-virtual {v5}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder$Entry;->getWireType()Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " expected "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", got "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 144
    invoke-direct {v1, v2, v12, v6, v12}, Lcom/shilapi/xcertplay/iap2/wire/Iap2ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1

    :cond_8
    const/16 p1, 0x10

    .line 140
    new-instance v1, Lcom/shilapi/xcertplay/iap2/wire/Iap2ProtocolException;

    .line 141
    invoke-virtual {v5}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder$Entry;->getParameter()Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;->getId()I

    move-result v2

    invoke-static/range {p1 .. p1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v8, v7}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown body parameter 0x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 140
    invoke-direct {v1, v2, v12, v6, v12}, Lcom/shilapi/xcertplay/iap2/wire/Iap2ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1

    :cond_9
    const/16 p1, 0x10

    .line 193
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 194
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;

    .line 155
    invoke-virtual {v4}, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;->getRequired()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 194
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 195
    :cond_b
    check-cast v2, Ljava/util/List;

    .line 155
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;

    .line 156
    iget-object v3, v0, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->entries:Ljava/util/ArrayList;

    check-cast v3, Ljava/lang/Iterable;

    .line 196
    instance-of v4, v3, Ljava/util/Collection;

    if-eqz v4, :cond_d

    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_c
    const/4 v3, 0x1

    goto :goto_9

    .line 197
    :cond_d
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder$Entry;

    .line 156
    invoke-virtual {v4}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder$Entry;->getParameter()Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Parameter;->getId()I

    move-result v4

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;->getId()I

    move-result v5

    if-ne v4, v5, :cond_f

    const/4 v4, 0x1

    goto :goto_8

    :cond_f
    const/4 v4, 0x0

    :goto_8
    if-eqz v4, :cond_e

    const/4 v3, 0x0

    :goto_9
    if-nez v3, :cond_10

    goto :goto_7

    .line 157
    :cond_10
    new-instance v1, Lcom/shilapi/xcertplay/iap2/wire/Iap2ProtocolException;

    .line 158
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;->getId()I

    move-result v3

    invoke-static/range {p1 .. p1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v8, v7}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Missing required body parameter 0x"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 157
    invoke-direct {v1, v2, v12, v6, v12}, Lcom/shilapi/xcertplay/iap2/wire/Iap2ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1

    :cond_11
    return-void
.end method

.method private final wireTypeMatches(Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;)Z
    .locals 1

    .line 165
    sget-object v0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;->OPAQUE:Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    if-eq p1, v0, :cond_1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public final bool(IZ)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;
    .locals 1

    .line 34
    sget-object v0, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->INSTANCE:Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;

    invoke-virtual {v0, p2}, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->bool(Z)[B

    move-result-object p2

    sget-object v0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;->U8:Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    invoke-direct {p0, p1, p2, v0}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->add(I[BLcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final build()Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->endpoint:Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoint;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoint;->getId()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->explicitMessageId:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 116
    :goto_0
    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->build(I)Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;

    move-result-object v0

    return-object v0

    .line 115
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A raw body builder needs an explicit message id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final build(I)Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;
    .locals 2

    .line 120
    new-instance v0, Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;

    invoke-direct {p0}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->encodeValidated()[B

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;-><init>(I[B)V

    return-object v0
.end method

.method public final bytes(I[B)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    sget-object v0, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->INSTANCE:Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;

    invoke-virtual {v0, p2}, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->bytes([B)[B

    move-result-object p2

    sget-object v0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;->BYTES:Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    invoke-direct {p0, p1, p2, v0}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->add(I[BLcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final group(ILkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    new-instance v0, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    .line 75
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->schemaField(I)Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;->getChildren()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 76
    :cond_1
    iget-boolean v3, p0, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->validateSchema:Z

    .line 72
    invoke-direct {v0, v2, v2, v1, v3}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;-><init>(Lcom/shilapi/xcertplay/iap2/catalog/Iap2Endpoint;Ljava/lang/Integer;Ljava/util/List;Z)V

    .line 77
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-direct {v0}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->encodeValidated()[B

    move-result-object p2

    .line 79
    sget-object v0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;->GROUP:Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    invoke-direct {p0, p1, p2, v0}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->add(I[BLcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    return-object p0
.end method

.method public final i16(II)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;
    .locals 1

    .line 43
    sget-object v0, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->INSTANCE:Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;

    invoke-virtual {v0, p2}, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->i16(I)[B

    move-result-object p2

    sget-object v0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;->I16:Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    invoke-direct {p0, p1, p2, v0}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->add(I[BLcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final i32(II)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;
    .locals 1

    .line 51
    sget-object v0, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->INSTANCE:Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;

    invoke-virtual {v0, p2}, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->i32(I)[B

    move-result-object p2

    sget-object v0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;->I32:Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    invoke-direct {p0, p1, p2, v0}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->add(I[BLcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final i8(II)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;
    .locals 1

    .line 37
    sget-object v0, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->INSTANCE:Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;

    invoke-virtual {v0, p2}, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->i8(I)[B

    move-result-object p2

    sget-object v0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;->I8:Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    invoke-direct {p0, p1, p2, v0}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->add(I[BLcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final optionalBytes(I[B)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;
    .locals 0

    if-nez p2, :cond_0

    return-object p0

    .line 108
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->bytes(I[B)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final optionalI16(ILjava/lang/Integer;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;
    .locals 0

    if-nez p2, :cond_0

    return-object p0

    .line 96
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->i16(II)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final optionalI32(ILjava/lang/Integer;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;
    .locals 0

    if-nez p2, :cond_0

    return-object p0

    .line 102
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->i32(II)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final optionalI8(ILjava/lang/Integer;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;
    .locals 0

    if-nez p2, :cond_0

    return-object p0

    .line 90
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->i8(II)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final optionalString(ILjava/lang/String;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;
    .locals 0

    if-nez p2, :cond_0

    return-object p0

    .line 111
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->string(ILjava/lang/String;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final optionalU16(ILjava/lang/Integer;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;
    .locals 0

    if-nez p2, :cond_0

    return-object p0

    .line 93
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->u16(II)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final optionalU32(ILjava/lang/Long;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;
    .locals 2

    if-nez p2, :cond_0

    return-object p0

    .line 99
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->u32(IJ)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final optionalU64(ILjava/lang/Long;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;
    .locals 2

    if-nez p2, :cond_0

    return-object p0

    .line 105
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->u64(IJ)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final optionalU8(ILjava/lang/Integer;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;
    .locals 0

    if-nez p2, :cond_0

    return-object p0

    .line 87
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->u8(II)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final optionalVoid(IZ)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;
    .locals 0

    if-eqz p2, :cond_0

    .line 84
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->void(I)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p0
.end method

.method public final raw(I[B)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;
    .locals 1

    const-string v0, "payload"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p2

    const-string v0, "copyOf(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;->OPAQUE:Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    invoke-direct {p0, p1, p2, v0}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->add(I[BLcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final string(ILjava/lang/String;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    sget-object v0, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->INSTANCE:Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;

    invoke-virtual {v0, p2}, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->string(Ljava/lang/String;)[B

    move-result-object p2

    sget-object v0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;->STRING:Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    invoke-direct {p0, p1, p2, v0}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->add(I[BLcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final strings(ILjava/lang/Iterable;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;"
        }
    .end annotation

    const-string/jumbo v0, "values"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    sget-object v0, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->INSTANCE:Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;

    invoke-virtual {v0, p2}, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->strings(Ljava/lang/Iterable;)[B

    move-result-object p2

    sget-object v0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;->STRING_LIST:Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    invoke-direct {p0, p1, p2, v0}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->add(I[BLcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final u16(II)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;
    .locals 1

    .line 40
    sget-object v0, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->INSTANCE:Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;

    invoke-virtual {v0, p2}, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->u16(I)[B

    move-result-object p2

    sget-object v0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;->U16:Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    invoke-direct {p0, p1, p2, v0}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->add(I[BLcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final u16List(ILjava/lang/Iterable;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;"
        }
    .end annotation

    const-string/jumbo v0, "values"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    sget-object v0, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->INSTANCE:Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;

    invoke-virtual {v0, p2}, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->u16List(Ljava/lang/Iterable;)[B

    move-result-object p2

    sget-object v0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;->U16_LIST:Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    invoke-direct {p0, p1, p2, v0}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->add(I[BLcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final u32(II)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;
    .locals 2

    int-to-long v0, p2

    .line 45
    invoke-virtual {p0, p1, v0, v1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->u32(IJ)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final u32(IJ)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;
    .locals 1

    .line 48
    sget-object v0, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->INSTANCE:Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;

    invoke-virtual {v0, p2, p3}, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->u32(J)[B

    move-result-object p2

    sget-object p3, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;->U32:Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    invoke-direct {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->add(I[BLcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final u64(IJ)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;
    .locals 1

    .line 54
    sget-object v0, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->INSTANCE:Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;

    invoke-virtual {v0, p2, p3}, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->u64(J)[B

    move-result-object p2

    sget-object p3, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;->U64:Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    invoke-direct {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->add(I[BLcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final u8(II)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;
    .locals 1

    .line 31
    sget-object v0, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->INSTANCE:Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;

    invoke-virtual {v0, p2}, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->u8(I)[B

    move-result-object p2

    sget-object v0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;->U8:Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    invoke-direct {p0, p1, p2, v0}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->add(I[BLcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final void(I)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;
    .locals 2

    .line 28
    sget-object v0, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->INSTANCE:Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/iap2/wire/Iap2WireCodec;->void()[B

    move-result-object v0

    sget-object v1, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;->VOID:Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    invoke-direct {p0, p1, v0, v1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;->add(I[BLcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    move-result-object p1

    return-object p1
.end method
