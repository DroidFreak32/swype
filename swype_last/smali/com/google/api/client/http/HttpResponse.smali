.class public final Lcom/google/api/client/http/HttpResponse;
.super Ljava/lang/Object;
.source "HttpResponse.java"


# instance fields
.field private content:Ljava/io/InputStream;

.field private final contentEncoding:Ljava/lang/String;

.field private contentLoggingLimit:I

.field private contentRead:Z

.field private final contentType:Ljava/lang/String;

.field private loggingEnabled:Z

.field private final mediaType:Lcom/google/api/client/http/HttpMediaType;

.field private final request:Lcom/google/api/client/http/HttpRequest;

.field response:Lcom/google/api/client/http/LowLevelHttpResponse;

.field private final statusCode:I

.field private final statusMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/api/client/http/HttpRequest;Lcom/google/api/client/http/LowLevelHttpResponse;)V
    .registers 13
    .param p1, "request"    # Lcom/google/api/client/http/HttpRequest;
    .param p2, "response"    # Lcom/google/api/client/http/LowLevelHttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lcom/google/api/client/http/HttpResponse;->request:Lcom/google/api/client/http/HttpRequest;

    .line 121
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getContentLoggingLimit()I

    move-result v9

    iput v9, p0, Lcom/google/api/client/http/HttpResponse;->contentLoggingLimit:I

    .line 122
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->isLoggingEnabled()Z

    move-result v9

    iput-boolean v9, p0, Lcom/google/api/client/http/HttpResponse;->loggingEnabled:Z

    .line 123
    iput-object p2, p0, Lcom/google/api/client/http/HttpResponse;->response:Lcom/google/api/client/http/LowLevelHttpResponse;

    .line 124
    invoke-virtual {p2}, Lcom/google/api/client/http/LowLevelHttpResponse;->getContentEncoding()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/google/api/client/http/HttpResponse;->contentEncoding:Ljava/lang/String;

    .line 125
    invoke-virtual {p2}, Lcom/google/api/client/http/LowLevelHttpResponse;->getStatusCode()I

    move-result v0

    .line 126
    .local v0, "code":I
    if-gez v0, :cond_22

    move v0, v7

    .end local v0    # "code":I
    :cond_22
    iput v0, p0, Lcom/google/api/client/http/HttpResponse;->statusCode:I

    .line 127
    invoke-virtual {p2}, Lcom/google/api/client/http/LowLevelHttpResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object v5

    .line 128
    .local v5, "message":Ljava/lang/String;
    iput-object v5, p0, Lcom/google/api/client/http/HttpResponse;->statusMessage:Ljava/lang/String;

    .line 129
    sget-object v4, Lcom/google/api/client/http/HttpTransport;->LOGGER:Ljava/util/logging/Logger;

    .line 130
    .local v4, "logger":Ljava/util/logging/Logger;
    iget-boolean v9, p0, Lcom/google/api/client/http/HttpResponse;->loggingEnabled:Z

    if-eqz v9, :cond_83

    sget-object v9, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v4, v9}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v9

    if-eqz v9, :cond_83

    const/4 v3, 0x1

    .line 131
    .local v3, "loggable":Z
    :goto_39
    const/4 v2, 0x0

    .line 132
    .local v2, "logbuf":Ljava/lang/StringBuilder;
    if-eqz v3, :cond_5b

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2    # "logbuf":Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .restart local v2    # "logbuf":Ljava/lang/StringBuilder;
    const-string/jumbo v7, "-------------- RESPONSE --------------"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v9, Lcom/google/api/client/util/StringUtils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {p2}, Lcom/google/api/client/http/LowLevelHttpResponse;->getStatusLine()Ljava/lang/String;

    move-result-object v6

    .line 136
    .local v6, "statusLine":Ljava/lang/String;
    if-eqz v6, :cond_85

    .line 137
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    :cond_56
    :goto_56
    sget-object v7, Lcom/google/api/client/util/StringUtils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .end local v6    # "statusLine":Ljava/lang/String;
    :cond_5b
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getResponseHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v9

    if-eqz v3, :cond_96

    move-object v7, v2

    :goto_62
    invoke-virtual {v9, p2, v7}, Lcom/google/api/client/http/HttpHeaders;->fromHttpResponse(Lcom/google/api/client/http/LowLevelHttpResponse;Ljava/lang/StringBuilder;)V

    .line 152
    invoke-virtual {p2}, Lcom/google/api/client/http/LowLevelHttpResponse;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "contentType":Ljava/lang/String;
    if-nez v1, :cond_73

    .line 154
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getResponseHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/api/client/http/HttpHeaders;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 156
    :cond_73
    iput-object v1, p0, Lcom/google/api/client/http/HttpResponse;->contentType:Ljava/lang/String;

    .line 157
    if-nez v1, :cond_98

    :goto_77
    iput-object v8, p0, Lcom/google/api/client/http/HttpResponse;->mediaType:Lcom/google/api/client/http/HttpMediaType;

    .line 160
    if-eqz v3, :cond_82

    .line 161
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 163
    :cond_82
    return-void

    .end local v1    # "contentType":Ljava/lang/String;
    .end local v2    # "logbuf":Ljava/lang/StringBuilder;
    .end local v3    # "loggable":Z
    :cond_83
    move v3, v7

    .line 130
    goto :goto_39

    .line 139
    .restart local v2    # "logbuf":Ljava/lang/StringBuilder;
    .restart local v3    # "loggable":Z
    .restart local v6    # "statusLine":Ljava/lang/String;
    :cond_85
    iget v7, p0, Lcom/google/api/client/http/HttpResponse;->statusCode:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    if-eqz v5, :cond_56

    .line 141
    const/16 v7, 0x20

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_56

    .end local v6    # "statusLine":Ljava/lang/String;
    :cond_96
    move-object v7, v8

    .line 148
    goto :goto_62

    .line 157
    .restart local v1    # "contentType":Ljava/lang/String;
    :cond_98
    new-instance v8, Lcom/google/api/client/http/HttpMediaType;

    invoke-direct {v8, v1}, Lcom/google/api/client/http/HttpMediaType;-><init>(Ljava/lang/String;)V

    goto :goto_77
.end method

.method private hasMessageBody()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 467
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    move-result v0

    .line 468
    .local v0, "statusCode":I
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getRequest()Lcom/google/api/client/http/HttpRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/api/client/http/HttpRequest;->getRequestMethod()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "HEAD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    div-int/lit8 v2, v0, 0x64

    if-eq v2, v1, :cond_22

    const/16 v2, 0xcc

    if-eq v0, v2, :cond_22

    const/16 v2, 0x130

    if-ne v0, v2, :cond_26

    .line 471
    :cond_22
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->ignore()V

    .line 472
    const/4 v1, 0x0

    .line 474
    :cond_26
    return v1
.end method


# virtual methods
.method public final disconnect()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 441
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->ignore()V

    .line 442
    iget-object v0, p0, Lcom/google/api/client/http/HttpResponse;->response:Lcom/google/api/client/http/LowLevelHttpResponse;

    invoke-virtual {v0}, Lcom/google/api/client/http/LowLevelHttpResponse;->disconnect()V

    .line 443
    return-void
.end method

.method public final download(Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 1063
    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/google/api/client/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V

    .line 422
    return-void
.end method

.method public final getContent()Ljava/io/InputStream;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 353
    iget-boolean v4, p0, Lcom/google/api/client/http/HttpResponse;->contentRead:Z

    if-nez v4, :cond_3a

    .line 354
    iget-object v4, p0, Lcom/google/api/client/http/HttpResponse;->response:Lcom/google/api/client/http/LowLevelHttpResponse;

    invoke-virtual {v4}, Lcom/google/api/client/http/LowLevelHttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 355
    .local v2, "lowLevelResponseContent":Ljava/io/InputStream;
    if-eqz v2, :cond_37

    .line 361
    :try_start_c
    iget-object v0, p0, Lcom/google/api/client/http/HttpResponse;->contentEncoding:Ljava/lang/String;

    .line 362
    .local v0, "contentEncoding":Ljava/lang/String;
    if-eqz v0, :cond_4f

    const-string/jumbo v4, "gzip"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 363
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v3, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1e
    .catch Ljava/io/EOFException; {:try_start_c .. :try_end_1e} :catch_3d
    .catchall {:try_start_c .. :try_end_1e} :catchall_42

    .line 366
    .end local v2    # "lowLevelResponseContent":Ljava/io/InputStream;
    .local v3, "lowLevelResponseContent":Ljava/io/InputStream;
    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/google/api/client/http/HttpTransport;->LOGGER:Ljava/util/logging/Logger;

    .line 367
    .local v1, "logger":Ljava/util/logging/Logger;
    iget-boolean v4, p0, Lcom/google/api/client/http/HttpResponse;->loggingEnabled:Z

    if-eqz v4, :cond_4d

    sget-object v4, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v1, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 368
    new-instance v2, Lcom/google/api/client/util/LoggingInputStream;

    sget-object v4, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    iget v5, p0, Lcom/google/api/client/http/HttpResponse;->contentLoggingLimit:I

    invoke-direct {v2, v3, v1, v4, v5}, Lcom/google/api/client/util/LoggingInputStream;-><init>(Ljava/io/InputStream;Ljava/util/logging/Logger;Ljava/util/logging/Level;I)V
    :try_end_35
    .catch Ljava/io/EOFException; {:try_start_1e .. :try_end_35} :catch_4a
    .catchall {:try_start_1e .. :try_end_35} :catchall_47

    .line 371
    .end local v3    # "lowLevelResponseContent":Ljava/io/InputStream;
    .restart local v2    # "lowLevelResponseContent":Ljava/io/InputStream;
    :goto_35
    :try_start_35
    iput-object v2, p0, Lcom/google/api/client/http/HttpResponse;->content:Ljava/io/InputStream;
    :try_end_37
    .catch Ljava/io/EOFException; {:try_start_35 .. :try_end_37} :catch_3d
    .catchall {:try_start_35 .. :try_end_37} :catchall_42

    .line 382
    .end local v0    # "contentEncoding":Ljava/lang/String;
    .end local v1    # "logger":Ljava/util/logging/Logger;
    :cond_37
    :goto_37
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/api/client/http/HttpResponse;->contentRead:Z

    .line 384
    .end local v2    # "lowLevelResponseContent":Ljava/io/InputStream;
    :cond_3a
    iget-object v4, p0, Lcom/google/api/client/http/HttpResponse;->content:Ljava/io/InputStream;

    return-object v4

    .line 378
    .restart local v2    # "lowLevelResponseContent":Ljava/io/InputStream;
    :catch_3d
    move-exception v4

    :goto_3e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_37

    .line 377
    :catchall_42
    move-exception v4

    .line 378
    :goto_43
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v4

    .line 377
    .end local v2    # "lowLevelResponseContent":Ljava/io/InputStream;
    .restart local v0    # "contentEncoding":Ljava/lang/String;
    .restart local v3    # "lowLevelResponseContent":Ljava/io/InputStream;
    :catchall_47
    move-exception v4

    move-object v2, v3

    .end local v3    # "lowLevelResponseContent":Ljava/io/InputStream;
    .restart local v2    # "lowLevelResponseContent":Ljava/io/InputStream;
    goto :goto_43

    .line 378
    .end local v2    # "lowLevelResponseContent":Ljava/io/InputStream;
    .restart local v3    # "lowLevelResponseContent":Ljava/io/InputStream;
    :catch_4a
    move-exception v4

    move-object v2, v3

    .end local v3    # "lowLevelResponseContent":Ljava/io/InputStream;
    .restart local v2    # "lowLevelResponseContent":Ljava/io/InputStream;
    goto :goto_3e

    .end local v2    # "lowLevelResponseContent":Ljava/io/InputStream;
    .restart local v1    # "logger":Ljava/util/logging/Logger;
    .restart local v3    # "lowLevelResponseContent":Ljava/io/InputStream;
    :cond_4d
    move-object v2, v3

    .end local v3    # "lowLevelResponseContent":Ljava/io/InputStream;
    .restart local v2    # "lowLevelResponseContent":Ljava/io/InputStream;
    goto :goto_35

    .end local v1    # "logger":Ljava/util/logging/Logger;
    :cond_4f
    move-object v3, v2

    .end local v2    # "lowLevelResponseContent":Ljava/io/InputStream;
    .restart local v3    # "lowLevelResponseContent":Ljava/io/InputStream;
    goto :goto_1e
.end method

.method public final getContentCharset()Ljava/nio/charset/Charset;
    .registers 2

    .prologue
    .line 526
    iget-object v0, p0, Lcom/google/api/client/http/HttpResponse;->mediaType:Lcom/google/api/client/http/HttpMediaType;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/api/client/http/HttpResponse;->mediaType:Lcom/google/api/client/http/HttpMediaType;

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpMediaType;->getCharsetParameter()Ljava/nio/charset/Charset;

    move-result-object v0

    if-nez v0, :cond_f

    :cond_c
    sget-object v0, Lcom/google/api/client/util/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/google/api/client/http/HttpResponse;->mediaType:Lcom/google/api/client/http/HttpMediaType;

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpMediaType;->getCharsetParameter()Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_e
.end method

.method public final getContentEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/api/client/http/HttpResponse;->contentEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public final getContentLoggingLimit()I
    .registers 2

    .prologue
    .line 188
    iget v0, p0, Lcom/google/api/client/http/HttpResponse;->contentLoggingLimit:I

    return v0
.end method

.method public final getContentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/google/api/client/http/HttpResponse;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public final getHeaders()Lcom/google/api/client/http/HttpHeaders;
    .registers 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/google/api/client/http/HttpResponse;->request:Lcom/google/api/client/http/HttpRequest;

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpRequest;->getResponseHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v0

    return-object v0
.end method

.method public final getMediaType()Lcom/google/api/client/http/HttpMediaType;
    .registers 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/google/api/client/http/HttpResponse;->mediaType:Lcom/google/api/client/http/HttpMediaType;

    return-object v0
.end method

.method public final getRequest()Lcom/google/api/client/http/HttpRequest;
    .registers 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/google/api/client/http/HttpResponse;->request:Lcom/google/api/client/http/HttpRequest;

    return-object v0
.end method

.method public final getStatusCode()I
    .registers 2

    .prologue
    .line 300
    iget v0, p0, Lcom/google/api/client/http/HttpResponse;->statusCode:I

    return v0
.end method

.method public final getStatusMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/api/client/http/HttpResponse;->statusMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final getTransport()Lcom/google/api/client/http/HttpTransport;
    .registers 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/google/api/client/http/HttpResponse;->request:Lcom/google/api/client/http/HttpRequest;

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpRequest;->getTransport()Lcom/google/api/client/http/HttpTransport;

    move-result-object v0

    return-object v0
.end method

.method public final ignore()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 429
    .local v0, "content":Ljava/io/InputStream;
    if-eqz v0, :cond_9

    .line 430
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 432
    :cond_9
    return-void
.end method

.method public final isLoggingEnabled()Z
    .registers 2

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/google/api/client/http/HttpResponse;->loggingEnabled:Z

    return v0
.end method

.method public final isSuccessStatusCode()Z
    .registers 2

    .prologue
    .line 291
    iget v0, p0, Lcom/google/api/client/http/HttpResponse;->statusCode:I

    invoke-static {v0}, Lcom/google/api/client/http/HttpStatusCodes;->isSuccess(I)Z

    move-result v0

    return v0
.end method

.method public final parseAs(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 456
    .local p1, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Lcom/google/api/client/http/HttpResponse;->hasMessageBody()Z

    move-result v0

    if-nez v0, :cond_8

    .line 457
    const/4 v0, 0x0

    .line 459
    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/google/api/client/http/HttpResponse;->request:Lcom/google/api/client/http/HttpRequest;

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpRequest;->getParser()Lcom/google/api/client/util/ObjectParser;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getContentCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lcom/google/api/client/util/ObjectParser;->parseAndClose(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_7
.end method

.method public final parseAs(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 5
    .param p1, "dataType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 485
    invoke-direct {p0}, Lcom/google/api/client/http/HttpResponse;->hasMessageBody()Z

    move-result v0

    if-nez v0, :cond_8

    .line 486
    const/4 v0, 0x0

    .line 488
    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/google/api/client/http/HttpResponse;->request:Lcom/google/api/client/http/HttpRequest;

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpRequest;->getParser()Lcom/google/api/client/util/ObjectParser;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getContentCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lcom/google/api/client/util/ObjectParser;->parseAndClose(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_7
.end method

.method public final parseAsString()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 510
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 511
    .local v0, "content":Ljava/io/InputStream;
    if-nez v0, :cond_a

    .line 512
    const-string/jumbo v2, ""

    .line 516
    :goto_9
    return-object v2

    .line 514
    :cond_a
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2063
    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/api/client/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V

    .line 516
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getContentCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_9
.end method

.method public final setContentLoggingLimit(I)Lcom/google/api/client/http/HttpResponse;
    .registers 4
    .param p1, "contentLoggingLimit"    # I

    .prologue
    .line 214
    if-ltz p1, :cond_c

    const/4 v0, 0x1

    :goto_3
    const-string/jumbo v1, "The content logging limit must be non-negative."

    invoke-static {v0, v1}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 216
    iput p1, p0, Lcom/google/api/client/http/HttpResponse;->contentLoggingLimit:I

    .line 217
    return-object p0

    .line 214
    :cond_c
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public final setLoggingEnabled(Z)Lcom/google/api/client/http/HttpResponse;
    .registers 2
    .param p1, "loggingEnabled"    # Z

    .prologue
    .line 243
    iput-boolean p1, p0, Lcom/google/api/client/http/HttpResponse;->loggingEnabled:Z

    .line 244
    return-object p0
.end method
