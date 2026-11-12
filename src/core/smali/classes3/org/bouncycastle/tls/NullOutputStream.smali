.class Lorg/bouncycastle/tls/NullOutputStream;
.super Ljava/io/OutputStream;


# static fields
.field static final INSTANCE:Lorg/bouncycastle/tls/NullOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/tls/NullOutputStream;

    invoke-direct {v0}, Lorg/bouncycastle/tls/NullOutputStream;-><init>()V

    sput-object v0, Lorg/bouncycastle/tls/NullOutputStream;->INSTANCE:Lorg/bouncycastle/tls/NullOutputStream;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public write([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public write([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
