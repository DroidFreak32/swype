.class public final Lcom/google/api/client/util/LoggingInputStream;
.super Ljava/io/FilterInputStream;
.source "LoggingInputStream.java"


# instance fields
.field private final logStream:Lcom/google/api/client/util/LoggingByteArrayOutputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/util/logging/Logger;Ljava/util/logging/Level;I)V
    .registers 6
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "logger"    # Ljava/util/logging/Logger;
    .param p3, "loggingLevel"    # Ljava/util/logging/Level;
    .param p4, "contentLoggingLimit"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 45
    new-instance v0, Lcom/google/api/client/util/LoggingByteArrayOutputStream;

    invoke-direct {v0, p2, p3, p4}, Lcom/google/api/client/util/LoggingByteArrayOutputStream;-><init>(Ljava/util/logging/Logger;Ljava/util/logging/Level;I)V

    iput-object v0, p0, Lcom/google/api/client/util/LoggingInputStream;->logStream:Lcom/google/api/client/util/LoggingByteArrayOutputStream;

    .line 46
    return-void
.end method


# virtual methods
.method public final close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/api/client/util/LoggingInputStream;->logStream:Lcom/google/api/client/util/LoggingByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/google/api/client/util/LoggingByteArrayOutputStream;->close()V

    .line 67
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 68
    return-void
.end method

.method public final read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 51
    .local v0, "read":I
    iget-object v1, p0, Lcom/google/api/client/util/LoggingInputStream;->logStream:Lcom/google/api/client/util/LoggingByteArrayOutputStream;

    invoke-virtual {v1, v0}, Lcom/google/api/client/util/LoggingByteArrayOutputStream;->write(I)V

    .line 52
    return v0
.end method

.method public final read([BII)I
    .registers 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 58
    .local v0, "read":I
    if-lez v0, :cond_b

    .line 59
    iget-object v1, p0, Lcom/google/api/client/util/LoggingInputStream;->logStream:Lcom/google/api/client/util/LoggingByteArrayOutputStream;

    invoke-virtual {v1, p1, p2, v0}, Lcom/google/api/client/util/LoggingByteArrayOutputStream;->write([BII)V

    .line 61
    :cond_b
    return v0
.end method
