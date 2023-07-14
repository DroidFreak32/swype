.class public final Lcom/google/api/client/util/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# direct methods
.method public static computeLength(Lcom/google/api/client/util/StreamingContent;)J
    .locals 4
    .param p0, "content"    # Lcom/google/api/client/util/StreamingContent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    new-instance v0, Lcom/google/api/client/util/ByteCountingOutputStream;

    invoke-direct {v0}, Lcom/google/api/client/util/ByteCountingOutputStream;-><init>()V

    .line 113
    .local v0, "countingStream":Lcom/google/api/client/util/ByteCountingOutputStream;
    :try_start_0
    invoke-interface {p0, v0}, Lcom/google/api/client/util/StreamingContent;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    invoke-virtual {v0}, Lcom/google/api/client/util/ByteCountingOutputStream;->close()V

    .line 117
    iget-wide v2, v0, Lcom/google/api/client/util/ByteCountingOutputStream;->count:J

    return-wide v2

    .line 115
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/google/api/client/util/ByteCountingOutputStream;->close()V

    throw v1
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V
    .locals 3
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "closeInputStream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    .line 1127
    :try_start_0
    invoke-static {p0}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2127
    invoke-static {p1}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 1051
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 1052
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 1055
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    if-eqz p2, :cond_0

    .line 97
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_0
    throw v0

    .line 96
    :cond_1
    if-eqz p2, :cond_2

    .line 97
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 100
    :cond_2
    return-void
.end method
