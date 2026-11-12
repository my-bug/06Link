.class final Lorg/bouncycastle/jsse/BCSNIHostName$BCSNIHostNameMatcher;
.super Lorg/bouncycastle/jsse/BCSNIMatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jsse/BCSNIHostName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BCSNIHostNameMatcher"
.end annotation


# instance fields
.field private final pattern:Ljava/util/regex/Pattern;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/jsse/BCSNIMatcher;-><init>(I)V

    const/4 v0, 0x2

    invoke-static {p1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jsse/BCSNIHostName$BCSNIHostNameMatcher;->pattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method private getAsciiHostName(Lorg/bouncycastle/jsse/BCSNIServerName;)Ljava/lang/String;
    .locals 1

    instance-of v0, p1, Lorg/bouncycastle/jsse/BCSNIHostName;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/bouncycastle/jsse/BCSNIHostName;

    invoke-virtual {p1}, Lorg/bouncycastle/jsse/BCSNIHostName;->getAsciiName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/jsse/BCSNIServerName;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/Strings;->fromUTF8ByteArray([B)Ljava/lang/String;

    move-result-object p1

    # invokes: Lorg/bouncycastle/jsse/BCSNIHostName;->normalizeHostName(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1}, Lorg/bouncycastle/jsse/BCSNIHostName;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public matches(Lorg/bouncycastle/jsse/BCSNIServerName;)Z
    .locals 3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/bouncycastle/jsse/BCSNIServerName;->getType()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lorg/bouncycastle/jsse/BCSNIHostName$BCSNIHostNameMatcher;->getAsciiHostName(Lorg/bouncycastle/jsse/BCSNIServerName;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lorg/bouncycastle/jsse/BCSNIHostName$BCSNIHostNameMatcher;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-static {p1, v1}, Lorg/bouncycastle/jsse/provider/IDNUtil;->toUnicode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/bouncycastle/jsse/BCSNIHostName$BCSNIHostNameMatcher;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :catch_0
    :cond_2
    return v1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "\'serverName\' cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
