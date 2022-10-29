.class public final Lcom/google/api/client/util/LoggingStreamingContent;
.super Ljava/lang/Object;
.source "LoggingStreamingContent.java"

# interfaces
.implements Lcom/google/api/client/util/StreamingContent;


# instance fields
.field private final content:Lcom/google/api/client/util/StreamingContent;

.field private final contentLoggingLimit:I

.field private final logger:Ljava/util/logging/Logger;

.field private final loggingLevel:Ljava/util/logging/Level;


# direct methods
.method public constructor <init>(Lcom/google/api/client/util/StreamingContent;Ljava/util/logging/Logger;Ljava/util/logging/Level;I)V
    .registers 5
    .param p1, "content"    # Lcom/google/api/client/util/StreamingContent;
    .param p2, "logger"    # Ljava/util/logging/Logger;
    .param p3, "loggingLevel"    # Ljava/util/logging/Level;
    .param p4, "contentLoggingLimit"    # I

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/google/api/client/util/LoggingStreamingContent;->content:Lcom/google/api/client/util/StreamingContent;

    .line 56
    iput-object p2, p0, Lcom/google/api/client/util/LoggingStreamingContent;->logger:Ljava/util/logging/Logger;

    .line 57
    iput-object p3, p0, Lcom/google/api/client/util/LoggingStreamingContent;->loggingLevel:Ljava/util/logging/Level;

    .line 58
    iput p4, p0, Lcom/google/api/client/util/LoggingStreamingContent;->contentLoggingLimit:I

    .line 59
    return-void
.end method


# virtual methods
.method public final writeTo(Ljava/io/OutputStream;)V
    .registers 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Lcom/google/api/client/util/LoggingOutputStream;

    iget-object v1, p0, Lcom/google/api/client/util/LoggingStreamingContent;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/google/api/client/util/LoggingStreamingContent;->loggingLevel:Ljava/util/logging/Level;

    iget v3, p0, Lcom/google/api/client/util/LoggingStreamingContent;->contentLoggingLimit:I

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/google/api/client/util/LoggingOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/logging/Logger;Ljava/util/logging/Level;I)V

    .line 65
    .local v0, "loggableOutputStream":Lcom/google/api/client/util/LoggingOutputStream;
    :try_start_b
    iget-object v1, p0, Lcom/google/api/client/util/LoggingStreamingContent;->content:Lcom/google/api/client/util/StreamingContent;

    invoke-interface {v1, v0}, Lcom/google/api/client/util/StreamingContent;->writeTo(Ljava/io/OutputStream;)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_19

    .line 1069
    iget-object v1, v0, Lcom/google/api/client/util/LoggingOutputStream;->logStream:Lcom/google/api/client/util/LoggingByteArrayOutputStream;

    .line 68
    invoke-virtual {v1}, Lcom/google/api/client/util/LoggingByteArrayOutputStream;->close()V

    .line 70
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 71
    return-void

    .line 68
    :catchall_19
    move-exception v1

    .line 2069
    iget-object v2, v0, Lcom/google/api/client/util/LoggingOutputStream;->logStream:Lcom/google/api/client/util/LoggingByteArrayOutputStream;

    .line 68
    invoke-virtual {v2}, Lcom/google/api/client/util/LoggingByteArrayOutputStream;->close()V

    throw v1
.end method
