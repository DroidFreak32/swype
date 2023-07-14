.class public abstract Lcom/google/api/client/http/LowLevelHttpRequest;
.super Ljava/lang/Object;
.source "LowLevelHttpRequest.java"


# instance fields
.field private contentEncoding:Ljava/lang/String;

.field private contentLength:J

.field private contentType:Ljava/lang/String;

.field private streamingContent:Lcom/google/api/client/util/StreamingContent;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/api/client/http/LowLevelHttpRequest;->contentLength:J

    return-void
.end method


# virtual methods
.method public abstract addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract execute()Lcom/google/api/client/http/LowLevelHttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final getContentEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/api/client/http/LowLevelHttpRequest;->contentEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public final getContentLength()J
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/google/api/client/http/LowLevelHttpRequest;->contentLength:J

    return-wide v0
.end method

.method public final getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/api/client/http/LowLevelHttpRequest;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public final getStreamingContent()Lcom/google/api/client/util/StreamingContent;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/api/client/http/LowLevelHttpRequest;->streamingContent:Lcom/google/api/client/util/StreamingContent;

    return-object v0
.end method

.method public final setContentEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    iput-object p1, p0, Lcom/google/api/client/http/LowLevelHttpRequest;->contentEncoding:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public final setContentLength(J)V
    .locals 1
    .param p1, "contentLength"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    iput-wide p1, p0, Lcom/google/api/client/http/LowLevelHttpRequest;->contentLength:J

    .line 76
    return-void
.end method

.method public final setContentType(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    iput-object p1, p0, Lcom/google/api/client/http/LowLevelHttpRequest;->contentType:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public final setStreamingContent(Lcom/google/api/client/util/StreamingContent;)V
    .locals 0
    .param p1, "streamingContent"    # Lcom/google/api/client/util/StreamingContent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    iput-object p1, p0, Lcom/google/api/client/http/LowLevelHttpRequest;->streamingContent:Lcom/google/api/client/util/StreamingContent;

    .line 134
    return-void
.end method

.method public setTimeout(II)V
    .locals 0
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    return-void
.end method
