.class final Lcom/google/api/client/http/javanet/NetHttpRequest;
.super Lcom/google/api/client/http/LowLevelHttpRequest;
.source "NetHttpRequest.java"


# instance fields
.field private final connection:Ljava/net/HttpURLConnection;


# direct methods
.method constructor <init>(Ljava/net/HttpURLConnection;)V
    .locals 1
    .param p1, "connection"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/api/client/http/LowLevelHttpRequest;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/api/client/http/javanet/NetHttpRequest;->connection:Ljava/net/HttpURLConnection;

    .line 37
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 38
    return-void
.end method


# virtual methods
.method public final addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/api/client/http/javanet/NetHttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public final execute()Lcom/google/api/client/http/LowLevelHttpResponse;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/api/client/http/javanet/NetHttpRequest;->connection:Ljava/net/HttpURLConnection;

    .line 55
    .local v0, "connection":Ljava/net/HttpURLConnection;
    invoke-virtual {p0}, Lcom/google/api/client/http/javanet/NetHttpRequest;->getStreamingContent()Lcom/google/api/client/util/StreamingContent;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 56
    invoke-virtual {p0}, Lcom/google/api/client/http/javanet/NetHttpRequest;->getContentType()Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, "contentType":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 58
    const-string/jumbo v9, "Content-Type"

    invoke-virtual {p0, v9, v4}, Lcom/google/api/client/http/javanet/NetHttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/google/api/client/http/javanet/NetHttpRequest;->getContentEncoding()Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "contentEncoding":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 62
    const-string/jumbo v9, "Content-Encoding"

    invoke-virtual {p0, v9, v1}, Lcom/google/api/client/http/javanet/NetHttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_1
    invoke-virtual {p0}, Lcom/google/api/client/http/javanet/NetHttpRequest;->getContentLength()J

    move-result-wide v2

    .line 65
    .local v2, "contentLength":J
    const-wide/16 v10, 0x0

    cmp-long v9, v2, v10

    if-ltz v9, :cond_2

    .line 66
    const-string/jumbo v9, "Content-Length"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/google/api/client/http/javanet/NetHttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v6

    .line 69
    .local v6, "requestMethod":Ljava/lang/String;
    const-string/jumbo v9, "POST"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string/jumbo v9, "PUT"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 70
    :cond_3
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 72
    const-wide/16 v10, 0x0

    cmp-long v9, v2, v10

    if-ltz v9, :cond_5

    const-wide/32 v10, 0x7fffffff

    cmp-long v9, v2, v10

    if-gtz v9, :cond_5

    .line 73
    long-to-int v9, v2

    invoke-virtual {v0, v9}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 77
    :goto_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    .line 79
    .local v5, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/google/api/client/http/javanet/NetHttpRequest;->getStreamingContent()Lcom/google/api/client/util/StreamingContent;

    move-result-object v9

    invoke-interface {v9, v5}, Lcom/google/api/client/util/StreamingContent;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 91
    .end local v1    # "contentEncoding":Ljava/lang/String;
    .end local v2    # "contentLength":J
    .end local v4    # "contentType":Ljava/lang/String;
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v6    # "requestMethod":Ljava/lang/String;
    :cond_4
    :goto_1
    const/4 v8, 0x0

    .line 93
    .local v8, "successfulConnection":Z
    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 94
    new-instance v7, Lcom/google/api/client/http/javanet/NetHttpResponse;

    invoke-direct {v7, v0}, Lcom/google/api/client/http/javanet/NetHttpResponse;-><init>(Ljava/net/HttpURLConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 95
    .local v7, "response":Lcom/google/api/client/http/javanet/NetHttpResponse;
    const/4 v8, 0x1

    .line 99
    return-object v7

    .line 75
    .end local v7    # "response":Lcom/google/api/client/http/javanet/NetHttpResponse;
    .end local v8    # "successfulConnection":Z
    .restart local v1    # "contentEncoding":Ljava/lang/String;
    .restart local v2    # "contentLength":J
    .restart local v4    # "contentType":Ljava/lang/String;
    .restart local v6    # "requestMethod":Ljava/lang/String;
    :cond_5
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    goto :goto_0

    .line 81
    .restart local v5    # "out":Ljava/io/OutputStream;
    :catchall_0
    move-exception v9

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    throw v9

    .line 86
    .end local v5    # "out":Ljava/io/OutputStream;
    :cond_6
    const-wide/16 v10, 0x0

    cmp-long v9, v2, v10

    if-nez v9, :cond_7

    const/4 v9, 0x1

    :goto_2
    const-string/jumbo v10, "%s with non-zero content length is not supported"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    invoke-static {v9, v10, v11}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_7
    const/4 v9, 0x0

    goto :goto_2

    .line 98
    .end local v1    # "contentEncoding":Ljava/lang/String;
    .end local v2    # "contentLength":J
    .end local v4    # "contentType":Ljava/lang/String;
    .end local v6    # "requestMethod":Ljava/lang/String;
    .restart local v8    # "successfulConnection":Z
    :catchall_1
    move-exception v9

    if-nez v8, :cond_8

    .line 99
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    throw v9
.end method

.method public final setTimeout(II)V
    .locals 1
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/api/client/http/javanet/NetHttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 48
    iget-object v0, p0, Lcom/google/api/client/http/javanet/NetHttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 49
    return-void
.end method
