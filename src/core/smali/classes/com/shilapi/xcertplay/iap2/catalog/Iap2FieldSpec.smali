.class public final Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;
.super Ljava/lang/Object;
.source "Iap2Endpoint.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0019\u0008\u0086\u0008\u0018\u00002\u00020\u0001BC\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\t\u0012\u000e\u0008\u0002\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u000c\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\t\u0010\u001a\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\tH\u00c6\u0003J\t\u0010\u001e\u001a\u00020\tH\u00c6\u0003J\u000f\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u000cH\u00c6\u0003JK\u0010 \u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\t2\u000e\u0008\u0002\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u000cH\u00c6\u0001J\u0013\u0010!\u001a\u00020\t2\u0008\u0010\"\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010#\u001a\u00020\u0003H\u00d6\u0001J\t\u0010$\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\n\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0016R\u0017\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006%"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;",
        "",
        "id",
        "",
        "name",
        "",
        "type",
        "Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;",
        "required",
        "",
        "repeatable",
        "children",
        "",
        "<init>",
        "(ILjava/lang/String;Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;ZZLjava/util/List;)V",
        "getId",
        "()I",
        "getName",
        "()Ljava/lang/String;",
        "getType",
        "()Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;",
        "getRequired",
        "()Z",
        "getRepeatable",
        "getChildren",
        "()Ljava/util/List;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
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


# instance fields
.field private final children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;",
            ">;"
        }
    .end annotation
.end field

.field private final id:I

.field private final name:Ljava/lang/String;

.field private final repeatable:Z

.field private final required:Z

.field private final type:Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;ZZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;",
            "ZZ",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "type"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "children"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;->id:I

    .line 40
    iput-object p2, p0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;->name:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;->type:Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    .line 42
    iput-boolean p4, p0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;->required:Z

    .line 43
    iput-boolean p5, p0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;->repeatable:Z

    .line 44
    iput-object p6, p0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;->children:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;ZZLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p8, p7, 0x8

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    const/4 p4, 0x0

    :cond_0
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_1

    const/4 p5, 0x0

    :cond_1
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_2

    .line 44
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p6

    :cond_2
    move-object p7, p6

    move p6, p5

    move p5, p4

    move-object p4, p3

    move-object p3, p2

    move p2, p1

    move-object p1, p0

    .line 38
    invoke-direct/range {p1 .. p7}, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;-><init>(ILjava/lang/String;Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;ZZLjava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;ILjava/lang/String;Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;ZZLjava/util/List;ILjava/lang/Object;)Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;
    .locals 0

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget p1, p0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;->id:I

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;->name:Ljava/lang/String;

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    iget-object p3, p0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;->type:Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    iget-boolean p4, p0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;->required:Z

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    iget-boolean p5, p0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;->repeatable:Z

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    iget-object p6, p0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;->children:Ljava/util/List;

    :cond_5
    move p7, p5

    move-object p8, p6

    move-object p5, p3

    move p6, p4

    move p3, p1

    move-object p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p8}, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;->copy(ILjava/lang/String;Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;ZZLjava/util/List;)Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;->id:I

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;->type:Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    return-object v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;->required:Z

    return v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;->repeatable:Z

    return v0
.end method

.method public final component6()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;->children:Ljava/util/List;

    return-object v0
.end method

.method public final copy(ILjava/lang/String;Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;ZZLjava/util/List;)Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;",
            "ZZ",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;",
            ">;)",
            "Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "type"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "children"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;-><init>(ILjava/lang/String;Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;ZZLjava/util/List;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;

    iget v1, p0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;->id:I

    iget v3, p1, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;->id:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;->type:Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    iget-object v3, p1, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;->type:Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;->required:Z

    iget-boolean v3, p1, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;->required:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;->repeatable:Z

    iget-boolean v3, p1, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;->repeatable:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;->children:Ljava/util/List;

    iget-object p1, p1, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;->children:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;->children:Ljava/util/List;

    return-object v0
.end method

.method public final getId()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;->id:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getRepeatable()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;->repeatable:Z

    return v0
.end method

.method public final getRequired()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;->required:Z

    return v0
.end method

.method public final getType()Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;->type:Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;->id:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;->type:Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;->required:Z

    invoke-static {v1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;->repeatable:Z

    invoke-static {v1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;->children:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget v0, p0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;->id:I

    iget-object v1, p0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;->type:Lcom/shilapi/xcertplay/iap2/catalog/Iap2WireType;

    iget-boolean v3, p0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;->required:Z

    iget-boolean v4, p0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;->repeatable:Z

    iget-object v5, p0, Lcom/shilapi/xcertplay/iap2/catalog/Iap2FieldSpec;->children:Ljava/util/List;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Iap2FieldSpec(id="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", name="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", type="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", required="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", repeatable="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", children="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
