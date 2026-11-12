.class public final Lorg/bouncycastle/tls/RecordPreview;
.super Ljava/lang/Object;


# instance fields
.field private final contentLimit:I

.field private final recordSize:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/tls/RecordPreview;->recordSize:I

    iput p2, p0, Lorg/bouncycastle/tls/RecordPreview;->contentLimit:I

    return-void
.end method

.method static combineAppData(Lorg/bouncycastle/tls/RecordPreview;Lorg/bouncycastle/tls/RecordPreview;)Lorg/bouncycastle/tls/RecordPreview;
    .locals 3

    new-instance v0, Lorg/bouncycastle/tls/RecordPreview;

    invoke-virtual {p0}, Lorg/bouncycastle/tls/RecordPreview;->getRecordSize()I

    move-result v1

    invoke-virtual {p1}, Lorg/bouncycastle/tls/RecordPreview;->getRecordSize()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lorg/bouncycastle/tls/RecordPreview;->getContentLimit()I

    move-result p0

    invoke-virtual {p1}, Lorg/bouncycastle/tls/RecordPreview;->getContentLimit()I

    move-result p1

    add-int/2addr p0, p1

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/tls/RecordPreview;-><init>(II)V

    return-object v0
.end method

.method static extendRecordSize(Lorg/bouncycastle/tls/RecordPreview;I)Lorg/bouncycastle/tls/RecordPreview;
    .locals 2

    new-instance v0, Lorg/bouncycastle/tls/RecordPreview;

    invoke-virtual {p0}, Lorg/bouncycastle/tls/RecordPreview;->getRecordSize()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lorg/bouncycastle/tls/RecordPreview;->getContentLimit()I

    move-result p0

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/tls/RecordPreview;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public getApplicationDataLimit()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/tls/RecordPreview;->contentLimit:I

    return v0
.end method

.method public getContentLimit()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/tls/RecordPreview;->contentLimit:I

    return v0
.end method

.method public getRecordSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/tls/RecordPreview;->recordSize:I

    return v0
.end method
