.class public final Lcom/google/api/client/util/LoggingByteArrayOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "LoggingByteArrayOutputStream.java"


# instance fields
.field private bytesWritten:I

.field private closed:Z

.field private final logger:Ljava/util/logging/Logger;

.field private final loggingLevel:Ljava/util/logging/Level;

.field private final maximumBytesToLog:I


# direct methods
.method public constructor <init>(Ljava/util/logging/Logger;Ljava/util/logging/Level;I)V
    .registers 5
    .param p1, "logger"    # Ljava/util/logging/Logger;
    .param p2, "loggingLevel"    # Ljava/util/logging/Level;
    .param p3, "maximumBytesToLog"    # I

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1127
    invoke-static {p1}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 63
    check-cast v0, Ljava/util/logging/Logger;

    iput-object v0, p0, Lcom/google/api/client/util/LoggingByteArrayOutputStream;->logger:Ljava/util/logging/Logger;

    .line 2127
    invoke-static {p2}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 64
    check-cast v0, Ljava/util/logging/Level;

    iput-object v0, p0, Lcom/google/api/client/util/LoggingByteArrayOutputStream;->loggingLevel:Ljava/util/logging/Level;

    .line 65
    if-ltz p3, :cond_1c

    const/4 v0, 0x1

    .line 3037
    :goto_16
    invoke-static {v0}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkArgument(Z)V

    .line 66
    iput p3, p0, Lcom/google/api/client/util/LoggingByteArrayOutputStream;->maximumBytesToLog:I

    .line 67
    return-void

    .line 65
    :cond_1c
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private static appendBytes(Ljava/lang/StringBuilder;I)V
    .registers 6
    .param p0, "buf"    # Ljava/lang/StringBuilder;
    .param p1, "x"    # I

    .prologue
    .line 128
    const/4 v0, 0x1

    if-ne p1, v0, :cond_a

    .line 129
    const-string/jumbo v0, "1 byte"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    :goto_9
    return-void

    .line 131
    :cond_a
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9
.end method


# virtual methods
.method public final declared-synchronized close()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Lcom/google/api/client/util/LoggingByteArrayOutputStream;->closed:Z

    if-nez v1, :cond_59

    .line 96
    iget v1, p0, Lcom/google/api/client/util/LoggingByteArrayOutputStream;->bytesWritten:I

    if-eqz v1, :cond_56

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Total: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/google/api/client/util/LoggingByteArrayOutputStream;->bytesWritten:I

    invoke-static {v0, v1}, Lcom/google/api/client/util/LoggingByteArrayOutputStream;->appendBytes(Ljava/lang/StringBuilder;I)V

    .line 100
    iget v1, p0, Lcom/google/api/client/util/LoggingByteArrayOutputStream;->count:I

    if-eqz v1, :cond_31

    iget v1, p0, Lcom/google/api/client/util/LoggingByteArrayOutputStream;->count:I

    iget v2, p0, Lcom/google/api/client/util/LoggingByteArrayOutputStream;->bytesWritten:I

    if-ge v1, v2, :cond_31

    .line 101
    const-string/jumbo v1, " (logging first "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget v1, p0, Lcom/google/api/client/util/LoggingByteArrayOutputStream;->count:I

    invoke-static {v0, v1}, Lcom/google/api/client/util/LoggingByteArrayOutputStream;->appendBytes(Ljava/lang/StringBuilder;I)V

    .line 103
    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    :cond_31
    iget-object v1, p0, Lcom/google/api/client/util/LoggingByteArrayOutputStream;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 107
    iget v1, p0, Lcom/google/api/client/util/LoggingByteArrayOutputStream;->count:I

    if-eqz v1, :cond_56

    .line 109
    iget-object v1, p0, Lcom/google/api/client/util/LoggingByteArrayOutputStream;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/google/api/client/util/LoggingByteArrayOutputStream;->loggingLevel:Ljava/util/logging/Level;

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {p0, v3}, Lcom/google/api/client/util/LoggingByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "[\\x00-\\x09\\x0B\\x0C\\x0E-\\x1F\\x7F]"

    const-string/jumbo v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 113
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    :cond_56
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/api/client/util/LoggingByteArrayOutputStream;->closed:Z
    :try_end_59
    .catchall {:try_start_1 .. :try_end_59} :catchall_5b

    .line 115
    :cond_59
    monitor-exit p0

    return-void

    .line 94
    :catchall_5b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized write(I)V
    .registers 4
    .param p1, "b"    # I

    .prologue
    .line 71
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/api/client/util/LoggingByteArrayOutputStream;->closed:Z

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    .line 4037
    :goto_6
    invoke-static {v0}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkArgument(Z)V

    .line 72
    iget v0, p0, Lcom/google/api/client/util/LoggingByteArrayOutputStream;->bytesWritten:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/api/client/util/LoggingByteArrayOutputStream;->bytesWritten:I

    .line 73
    iget v0, p0, Lcom/google/api/client/util/LoggingByteArrayOutputStream;->count:I

    iget v1, p0, Lcom/google/api/client/util/LoggingByteArrayOutputStream;->maximumBytesToLog:I

    if-ge v0, v1, :cond_18

    .line 74
    invoke-super {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1c

    .line 76
    :cond_18
    monitor-exit p0

    return-void

    .line 71
    :cond_1a
    const/4 v0, 0x0

    goto :goto_6

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized write([BII)V
    .registers 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 80
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Lcom/google/api/client/util/LoggingByteArrayOutputStream;->closed:Z

    if-nez v1, :cond_25

    const/4 v1, 0x1

    .line 5037
    :goto_6
    invoke-static {v1}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkArgument(Z)V

    .line 81
    iget v1, p0, Lcom/google/api/client/util/LoggingByteArrayOutputStream;->bytesWritten:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/google/api/client/util/LoggingByteArrayOutputStream;->bytesWritten:I

    .line 82
    iget v1, p0, Lcom/google/api/client/util/LoggingByteArrayOutputStream;->count:I

    iget v2, p0, Lcom/google/api/client/util/LoggingByteArrayOutputStream;->maximumBytesToLog:I

    if-ge v1, v2, :cond_23

    .line 83
    iget v1, p0, Lcom/google/api/client/util/LoggingByteArrayOutputStream;->count:I

    add-int v0, v1, p3

    .line 84
    .local v0, "end":I
    iget v1, p0, Lcom/google/api/client/util/LoggingByteArrayOutputStream;->maximumBytesToLog:I

    if-le v0, v1, :cond_20

    .line 85
    iget v1, p0, Lcom/google/api/client/util/LoggingByteArrayOutputStream;->maximumBytesToLog:I

    sub-int/2addr v1, v0

    add-int/2addr p3, v1

    .line 87
    :cond_20
    invoke-super {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_27

    .line 89
    .end local v0    # "end":I
    :cond_23
    monitor-exit p0

    return-void

    .line 80
    :cond_25
    const/4 v1, 0x0

    goto :goto_6

    :catchall_27
    move-exception v1

    monitor-exit p0

    throw v1
.end method
