.class final Lcom/google/api/client/http/apache/ContentEntity;
.super Lorg/apache/http/entity/AbstractHttpEntity;
.source "ContentEntity.java"


# instance fields
.field private final contentLength:J

.field private final streamingContent:Lcom/google/api/client/util/StreamingContent;


# direct methods
.method constructor <init>(JLcom/google/api/client/util/StreamingContent;)V
    .locals 1
    .param p1, "contentLength"    # J
    .param p3, "streamingContent"    # Lcom/google/api/client/util/StreamingContent;

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    .line 42
    iput-wide p1, p0, Lcom/google/api/client/http/apache/ContentEntity;->contentLength:J

    .line 1127
    invoke-static {p3}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 43
    check-cast v0, Lcom/google/api/client/util/StreamingContent;

    iput-object v0, p0, Lcom/google/api/client/http/apache/ContentEntity;->streamingContent:Lcom/google/api/client/util/StreamingContent;

    .line 44
    return-void
.end method


# virtual methods
.method public final getContent()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 47
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final getContentLength()J
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/google/api/client/http/apache/ContentEntity;->contentLength:J

    return-wide v0
.end method

.method public final isRepeatable()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public final isStreaming()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public final writeTo(Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/google/api/client/http/apache/ContentEntity;->contentLength:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/google/api/client/http/apache/ContentEntity;->streamingContent:Lcom/google/api/client/util/StreamingContent;

    invoke-interface {v0, p1}, Lcom/google/api/client/util/StreamingContent;->writeTo(Ljava/io/OutputStream;)V

    .line 66
    :cond_0
    return-void
.end method
