.class public final Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;
.super Ljava/lang/Object;
.source "HciEvents.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/usbbt/HciReturnParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocalVersion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHciEvents.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HciEvents.kt\ncom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,197:1\n1#2:198\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\r\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0003H\u00c6\u0003J;\u0010\u0019\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001d\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001e\u001a\u00020\u0011H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000bR\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000bR\u0011\u0010\u0010\u001a\u00020\u00118F\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;",
        "",
        "hciVersion",
        "",
        "hciRevision",
        "lmpVersion",
        "manufacturer",
        "lmpSubversion",
        "<init>",
        "(IIIII)V",
        "getHciVersion",
        "()I",
        "getHciRevision",
        "getLmpVersion",
        "getManufacturer",
        "getLmpSubversion",
        "coreVersionName",
        "",
        "getCoreVersionName",
        "()Ljava/lang/String;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "",
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
.field private final hciRevision:I

.field private final hciVersion:I

.field private final lmpSubversion:I

.field private final lmpVersion:I

.field private final manufacturer:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;->hciVersion:I

    iput p2, p0, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;->hciRevision:I

    iput p3, p0, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;->lmpVersion:I

    iput p4, p0, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;->manufacturer:I

    iput p5, p0, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;->lmpSubversion:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;IIIIIILjava/lang/Object;)Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget p1, p0, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;->hciVersion:I

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget p2, p0, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;->hciRevision:I

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    iget p3, p0, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;->lmpVersion:I

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    iget p4, p0, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;->manufacturer:I

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    iget p5, p0, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;->lmpSubversion:I

    :cond_4
    move p6, p4

    move p7, p5

    move p4, p2

    move p5, p3

    move-object p2, p0

    move p3, p1

    invoke-virtual/range {p2 .. p7}, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;->copy(IIIII)Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;->hciVersion:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;->hciRevision:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;->lmpVersion:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;->manufacturer:I

    return v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;->lmpSubversion:I

    return v0
.end method

.method public final copy(IIIII)Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;
    .locals 6

    new-instance v0, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;-><init>(IIIII)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;

    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;->hciVersion:I

    iget v3, p1, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;->hciVersion:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;->hciRevision:I

    iget v3, p1, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;->hciRevision:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;->lmpVersion:I

    iget v3, p1, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;->lmpVersion:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;->manufacturer:I

    iget v3, p1, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;->manufacturer:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;->lmpSubversion:I

    iget p1, p1, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;->lmpSubversion:I

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getCoreVersionName()Ljava/lang/String;
    .locals 3

    .line 123
    # getter for: Lcom/shilapi/xcertplay/usbbt/HciReturnParameters;->CORE_VERSIONS:Ljava/util/List;
    invoke-static {}, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters;->access$getCORE_VERSIONS$p()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;->lmpVersion:I

    if-ltz v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;->lmpVersion:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "?("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getHciRevision()I
    .locals 1

    .line 121
    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;->hciRevision:I

    return v0
.end method

.method public final getHciVersion()I
    .locals 1

    .line 121
    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;->hciVersion:I

    return v0
.end method

.method public final getLmpSubversion()I
    .locals 1

    .line 121
    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;->lmpSubversion:I

    return v0
.end method

.method public final getLmpVersion()I
    .locals 1

    .line 121
    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;->lmpVersion:I

    return v0
.end method

.method public final getManufacturer()I
    .locals 1

    .line 121
    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;->manufacturer:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;->hciVersion:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;->hciRevision:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;->lmpVersion:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;->manufacturer:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;->lmpSubversion:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;->hciVersion:I

    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;->hciRevision:I

    iget v2, p0, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;->lmpVersion:I

    iget v3, p0, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;->manufacturer:I

    iget v4, p0, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;->lmpSubversion:I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "LocalVersion(hciVersion="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", hciRevision="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", lmpVersion="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", manufacturer="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", lmpSubversion="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
