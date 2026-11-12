.class public final Lj$/time/Period;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final PATTERN:Ljava/util/regex/Pattern;

.field private static final SUPPORTED_UNITS:Ljava/util/List;

.field public static final ZERO:Lj$/time/Period;

.field private static final serialVersionUID:J = -0xcbe97ad039fbcL


# instance fields
.field private final days:I

.field private final months:I

.field private final years:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 139
    new-instance v0, Lj$/time/Period;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lj$/time/Period;-><init>(III)V

    sput-object v0, Lj$/time/Period;->ZERO:Lj$/time/Period;

    .line 147
    const-string v0, "([-+]?)P(?:([-+]?[0-9]+)Y)?(?:([-+]?[0-9]+)M)?(?:([-+]?[0-9]+)W)?(?:([-+]?[0-9]+)D)?"

    const/4 v1, 0x2

    .line 148
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lj$/time/Period;->PATTERN:Ljava/util/regex/Pattern;

    .line 153
    sget-object v0, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    sget-object v1, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    sget-object v2, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-static {v0, v1, v2}, Lj$/time/Period$$ExternalSyntheticBackport2;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lj$/time/Period;->SUPPORTED_UNITS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(III)V
    .locals 0

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    iput p1, p0, Lj$/time/Period;->years:I

    .line 418
    iput p2, p0, Lj$/time/Period;->months:I

    .line 419
    iput p3, p0, Lj$/time/Period;->days:I

    return-void
.end method

.method private static create(III)Lj$/time/Period;
    .locals 1

    or-int v0, p0, p1

    or-int/2addr v0, p2

    if-nez v0, :cond_0

    .line 404
    sget-object p0, Lj$/time/Period;->ZERO:Lj$/time/Period;

    return-object p0

    .line 406
    :cond_0
    new-instance v0, Lj$/time/Period;

    invoke-direct {v0, p0, p1, p2}, Lj$/time/Period;-><init>(III)V

    return-object v0
.end method

.method public static of(III)Lj$/time/Period;
    .locals 0

    .line 234
    invoke-static {p0, p1, p2}, Lj$/time/Period;->create(III)Lj$/time/Period;

    move-result-object p0

    return-object p0
.end method

.method static readExternal(Ljava/io/DataInput;)Lj$/time/Period;
    .locals 2

    .line 1080
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 1081
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    .line 1082
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result p0

    .line 1083
    invoke-static {v0, v1, p0}, Lj$/time/Period;->of(III)Lj$/time/Period;

    move-result-object p0

    return-object p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    .line 1070
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Deserialization via serialization delegate"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1060
    new-instance v0, Lj$/time/Ser;

    const/16 v1, 0xe

    invoke-direct {v0, v1, p0}, Lj$/time/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 997
    :cond_0
    instance-of v1, p1, Lj$/time/Period;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 998
    check-cast p1, Lj$/time/Period;

    .line 999
    iget v1, p0, Lj$/time/Period;->years:I

    iget v3, p1, Lj$/time/Period;->years:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lj$/time/Period;->months:I

    iget v3, p1, Lj$/time/Period;->months:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lj$/time/Period;->days:I

    iget p1, p1, Lj$/time/Period;->days:I

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public hashCode()I
    .locals 3

    .line 1013
    iget v0, p0, Lj$/time/Period;->years:I

    iget v1, p0, Lj$/time/Period;->months:I

    const/16 v2, 0x8

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lj$/time/Period;->days:I

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1027
    sget-object v0, Lj$/time/Period;->ZERO:Lj$/time/Period;

    if-ne p0, v0, :cond_0

    .line 1028
    const-string v0, "P0D"

    return-object v0

    .line 1030
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x50

    .line 1031
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1032
    iget v1, p0, Lj$/time/Period;->years:I

    if-eqz v1, :cond_1

    .line 1033
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x59

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1035
    :cond_1
    iget v1, p0, Lj$/time/Period;->months:I

    if-eqz v1, :cond_2

    .line 1036
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x4d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1038
    :cond_2
    iget v1, p0, Lj$/time/Period;->days:I

    if-eqz v1, :cond_3

    .line 1039
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1041
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 1

    .line 1074
    iget v0, p0, Lj$/time/Period;->years:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 1075
    iget v0, p0, Lj$/time/Period;->months:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 1076
    iget v0, p0, Lj$/time/Period;->days:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    return-void
.end method
