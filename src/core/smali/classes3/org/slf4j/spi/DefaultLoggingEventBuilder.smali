.class public Lorg/slf4j/spi/DefaultLoggingEventBuilder;
.super Ljava/lang/Object;
.source "DefaultLoggingEventBuilder.java"

# interfaces
.implements Lorg/slf4j/spi/LoggingEventBuilder;
.implements Lorg/slf4j/spi/CallerBoundaryAware;


# static fields
.field static DLEB_FQCN:Ljava/lang/String; = "org.slf4j.spi.DefaultLoggingEventBuilder"


# instance fields
.field protected logger:Lorg/slf4j/Logger;

.field protected loggingEvent:Lorg/slf4j/event/DefaultLoggingEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/slf4j/Logger;Lorg/slf4j/event/Level;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->logger:Lorg/slf4j/Logger;

    .line 51
    new-instance v0, Lorg/slf4j/event/DefaultLoggingEvent;

    invoke-direct {v0, p2, p1}, Lorg/slf4j/event/DefaultLoggingEvent;-><init>(Lorg/slf4j/event/Level;Lorg/slf4j/Logger;)V

    iput-object v0, p0, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->loggingEvent:Lorg/slf4j/event/DefaultLoggingEvent;

    return-void
.end method

.method private logViaPublicSLF4JLoggerAPI(Lorg/slf4j/event/LoggingEvent;)V
    .locals 7

    .line 154
    invoke-interface {p1}, Lorg/slf4j/event/LoggingEvent;->getArgumentArray()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 155
    :cond_0
    array-length v2, v0

    .line 157
    :goto_0
    invoke-interface {p1}, Lorg/slf4j/event/LoggingEvent;->getThrowable()Ljava/lang/Throwable;

    move-result-object v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    .line 160
    :goto_1
    invoke-interface {p1}, Lorg/slf4j/event/LoggingEvent;->getMessage()Ljava/lang/String;

    move-result-object v6

    add-int/2addr v5, v2

    .line 162
    new-array v5, v5, [Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 165
    invoke-static {v0, v1, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    if-eqz v3, :cond_3

    .line 168
    aput-object v3, v5, v2

    .line 171
    :cond_3
    invoke-direct {p0, p1, v6}, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->mergeMarkersAndKeyValuePairs(Lorg/slf4j/event/LoggingEvent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    sget-object v1, Lorg/slf4j/spi/DefaultLoggingEventBuilder$1;->$SwitchMap$org$slf4j$event$Level:[I

    invoke-interface {p1}, Lorg/slf4j/event/LoggingEvent;->getLevel()Lorg/slf4j/event/Level;

    move-result-object p1

    invoke-virtual {p1}, Lorg/slf4j/event/Level;->ordinal()I

    move-result p1

    aget p1, v1, p1

    if-eq p1, v4, :cond_8

    const/4 v1, 0x2

    if-eq p1, v1, :cond_7

    const/4 v1, 0x3

    if-eq p1, v1, :cond_6

    const/4 v1, 0x4

    if-eq p1, v1, :cond_5

    const/4 v1, 0x5

    if-eq p1, v1, :cond_4

    return-void

    .line 187
    :cond_4
    iget-object p1, p0, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->logger:Lorg/slf4j/Logger;

    invoke-interface {p1, v0, v5}, Lorg/slf4j/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 184
    :cond_5
    iget-object p1, p0, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->logger:Lorg/slf4j/Logger;

    invoke-interface {p1, v0, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 181
    :cond_6
    iget-object p1, p0, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->logger:Lorg/slf4j/Logger;

    invoke-interface {p1, v0, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 178
    :cond_7
    iget-object p1, p0, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->logger:Lorg/slf4j/Logger;

    invoke-interface {p1, v0, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 175
    :cond_8
    iget-object p1, p0, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->logger:Lorg/slf4j/Logger;

    invoke-interface {p1, v0, v5}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private mergeMarkersAndKeyValuePairs(Lorg/slf4j/event/LoggingEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 204
    invoke-interface {p1}, Lorg/slf4j/event/LoggingEvent;->getMarkers()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x20

    if-eqz v0, :cond_0

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    invoke-interface {p1}, Lorg/slf4j/event/LoggingEvent;->getMarkers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/slf4j/Marker;

    .line 207
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 212
    :cond_1
    invoke-interface {p1}, Lorg/slf4j/event/LoggingEvent;->getKeyValuePairs()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    if-nez v0, :cond_2

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    :cond_2
    invoke-interface {p1}, Lorg/slf4j/event/LoggingEvent;->getKeyValuePairs()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/slf4j/event/KeyValuePair;

    .line 217
    iget-object v3, v2, Lorg/slf4j/event/KeyValuePair;->key:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    .line 218
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 219
    iget-object v2, v2, Lorg/slf4j/event/KeyValuePair;->value:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    .line 225
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    return-object p2
.end method


# virtual methods
.method public addArgument(Ljava/lang/Object;)Lorg/slf4j/spi/LoggingEventBuilder;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->loggingEvent:Lorg/slf4j/event/DefaultLoggingEvent;

    invoke-virtual {v0, p1}, Lorg/slf4j/event/DefaultLoggingEvent;->addArgument(Ljava/lang/Object;)V

    return-object p0
.end method

.method public addArgument(Ljava/util/function/Supplier;)Lorg/slf4j/spi/LoggingEventBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "*>;)",
            "Lorg/slf4j/spi/LoggingEventBuilder;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->loggingEvent:Lorg/slf4j/event/DefaultLoggingEvent;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/slf4j/event/DefaultLoggingEvent;->addArgument(Ljava/lang/Object;)V

    return-object p0
.end method

.method public addKeyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/slf4j/spi/LoggingEventBuilder;
    .locals 1

    .line 236
    iget-object v0, p0, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->loggingEvent:Lorg/slf4j/event/DefaultLoggingEvent;

    invoke-virtual {v0, p1, p2}, Lorg/slf4j/event/DefaultLoggingEvent;->addKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public addKeyValue(Ljava/lang/String;Ljava/util/function/Supplier;)Lorg/slf4j/spi/LoggingEventBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/slf4j/spi/LoggingEventBuilder;"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->loggingEvent:Lorg/slf4j/event/DefaultLoggingEvent;

    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/slf4j/event/DefaultLoggingEvent;->addKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public addMarker(Lorg/slf4j/Marker;)Lorg/slf4j/spi/LoggingEventBuilder;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->loggingEvent:Lorg/slf4j/event/DefaultLoggingEvent;

    invoke-virtual {v0, p1}, Lorg/slf4j/event/DefaultLoggingEvent;->addMarker(Lorg/slf4j/Marker;)V

    return-object p0
.end method

.method public log()V
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->loggingEvent:Lorg/slf4j/event/DefaultLoggingEvent;

    invoke-virtual {p0, v0}, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->log(Lorg/slf4j/event/LoggingEvent;)V

    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->loggingEvent:Lorg/slf4j/event/DefaultLoggingEvent;

    invoke-virtual {v0, p1}, Lorg/slf4j/event/DefaultLoggingEvent;->setMessage(Ljava/lang/String;)V

    .line 109
    iget-object p1, p0, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->loggingEvent:Lorg/slf4j/event/DefaultLoggingEvent;

    invoke-virtual {p0, p1}, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->log(Lorg/slf4j/event/LoggingEvent;)V

    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->loggingEvent:Lorg/slf4j/event/DefaultLoggingEvent;

    invoke-virtual {v0, p1}, Lorg/slf4j/event/DefaultLoggingEvent;->setMessage(Ljava/lang/String;)V

    .line 115
    iget-object p1, p0, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->loggingEvent:Lorg/slf4j/event/DefaultLoggingEvent;

    invoke-virtual {p1, p2}, Lorg/slf4j/event/DefaultLoggingEvent;->addArgument(Ljava/lang/Object;)V

    .line 116
    iget-object p1, p0, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->loggingEvent:Lorg/slf4j/event/DefaultLoggingEvent;

    invoke-virtual {p0, p1}, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->log(Lorg/slf4j/event/LoggingEvent;)V

    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->loggingEvent:Lorg/slf4j/event/DefaultLoggingEvent;

    invoke-virtual {v0, p1}, Lorg/slf4j/event/DefaultLoggingEvent;->setMessage(Ljava/lang/String;)V

    .line 122
    iget-object p1, p0, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->loggingEvent:Lorg/slf4j/event/DefaultLoggingEvent;

    invoke-virtual {p1, p2}, Lorg/slf4j/event/DefaultLoggingEvent;->addArgument(Ljava/lang/Object;)V

    .line 123
    iget-object p1, p0, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->loggingEvent:Lorg/slf4j/event/DefaultLoggingEvent;

    invoke-virtual {p1, p3}, Lorg/slf4j/event/DefaultLoggingEvent;->addArgument(Ljava/lang/Object;)V

    .line 124
    iget-object p1, p0, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->loggingEvent:Lorg/slf4j/event/DefaultLoggingEvent;

    invoke-virtual {p0, p1}, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->log(Lorg/slf4j/event/LoggingEvent;)V

    return-void
.end method

.method public varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 129
    iget-object v0, p0, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->loggingEvent:Lorg/slf4j/event/DefaultLoggingEvent;

    invoke-virtual {v0, p1}, Lorg/slf4j/event/DefaultLoggingEvent;->setMessage(Ljava/lang/String;)V

    .line 130
    iget-object p1, p0, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->loggingEvent:Lorg/slf4j/event/DefaultLoggingEvent;

    invoke-virtual {p1, p2}, Lorg/slf4j/event/DefaultLoggingEvent;->addArguments([Ljava/lang/Object;)V

    .line 132
    iget-object p1, p0, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->loggingEvent:Lorg/slf4j/event/DefaultLoggingEvent;

    invoke-virtual {p0, p1}, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->log(Lorg/slf4j/event/LoggingEvent;)V

    return-void
.end method

.method public log(Ljava/util/function/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 138
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->log(Ljava/lang/String;)V

    return-void

    .line 140
    :cond_0
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected log(Lorg/slf4j/event/LoggingEvent;)V
    .locals 2

    .line 145
    sget-object v0, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->DLEB_FQCN:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->setCallerBoundary(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->logger:Lorg/slf4j/Logger;

    instance-of v1, v0, Lorg/slf4j/spi/LoggingEventAware;

    if-eqz v1, :cond_0

    .line 147
    check-cast v0, Lorg/slf4j/spi/LoggingEventAware;

    invoke-interface {v0, p1}, Lorg/slf4j/spi/LoggingEventAware;->log(Lorg/slf4j/event/LoggingEvent;)V

    return-void

    .line 149
    :cond_0
    invoke-direct {p0, p1}, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->logViaPublicSLF4JLoggerAPI(Lorg/slf4j/event/LoggingEvent;)V

    return-void
.end method

.method public setCallerBoundary(Ljava/lang/String;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->loggingEvent:Lorg/slf4j/event/DefaultLoggingEvent;

    invoke-virtual {v0, p1}, Lorg/slf4j/event/DefaultLoggingEvent;->setCallerBoundary(Ljava/lang/String;)V

    return-void
.end method

.method public setCause(Ljava/lang/Throwable;)Lorg/slf4j/spi/LoggingEventBuilder;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->loggingEvent:Lorg/slf4j/event/DefaultLoggingEvent;

    invoke-virtual {v0, p1}, Lorg/slf4j/event/DefaultLoggingEvent;->setThrowable(Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lorg/slf4j/spi/LoggingEventBuilder;
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->loggingEvent:Lorg/slf4j/event/DefaultLoggingEvent;

    invoke-virtual {v0, p1}, Lorg/slf4j/event/DefaultLoggingEvent;->setMessage(Ljava/lang/String;)V

    return-object p0
.end method

.method public setMessage(Ljava/util/function/Supplier;)Lorg/slf4j/spi/LoggingEventBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/slf4j/spi/LoggingEventBuilder;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->loggingEvent:Lorg/slf4j/event/DefaultLoggingEvent;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/slf4j/event/DefaultLoggingEvent;->setMessage(Ljava/lang/String;)V

    return-object p0
.end method
