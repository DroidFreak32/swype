.class public Lcom/google/api/client/http/MultipartContent;
.super Lcom/google/api/client/http/AbstractHttpContent;
.source "MultipartContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/http/MultipartContent$Part;
    }
.end annotation


# static fields
.field static final NEWLINE:Ljava/lang/String; = "\r\n"

.field private static final TWO_DASHES:Ljava/lang/String; = "--"


# instance fields
.field private parts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/api/client/http/MultipartContent$Part;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 58
    new-instance v0, Lcom/google/api/client/http/HttpMediaType;

    const-string/jumbo v1, "multipart/related"

    invoke-direct {v0, v1}, Lcom/google/api/client/http/HttpMediaType;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "boundary"

    const-string/jumbo v2, "__END_OF_PART__"

    invoke-virtual {v0, v1, v2}, Lcom/google/api/client/http/HttpMediaType;->setParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/HttpMediaType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/api/client/http/AbstractHttpContent;-><init>(Lcom/google/api/client/http/HttpMediaType;)V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/http/MultipartContent;->parts:Ljava/util/ArrayList;

    .line 59
    return-void
.end method


# virtual methods
.method public addPart(Lcom/google/api/client/http/MultipartContent$Part;)Lcom/google/api/client/http/MultipartContent;
    .registers 4
    .param p1, "part"    # Lcom/google/api/client/http/MultipartContent$Part;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/api/client/http/MultipartContent;->parts:Ljava/util/ArrayList;

    .line 1127
    invoke-static {p1}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 150
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    return-object p0
.end method

.method public final getBoundary()Ljava/lang/String;
    .registers 3

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/google/api/client/http/MultipartContent;->getMediaType()Lcom/google/api/client/http/HttpMediaType;

    move-result-object v0

    const-string/jumbo v1, "boundary"

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpMediaType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getParts()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/api/client/http/MultipartContent$Part;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/api/client/http/MultipartContent;->parts:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public retrySupported()Z
    .registers 3

    .prologue
    .line 122
    iget-object v1, p0, Lcom/google/api/client/http/MultipartContent;->parts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/api/client/http/MultipartContent$Part;

    .line 123
    iget-object v1, v1, Lcom/google/api/client/http/MultipartContent$Part;->content:Lcom/google/api/client/http/HttpContent;

    invoke-interface {v1}, Lcom/google/api/client/http/HttpContent;->retrySupported()Z

    move-result v1

    if-nez v1, :cond_6

    .line 124
    const/4 v1, 0x0

    .line 127
    :goto_1b
    return v1

    :cond_1c
    const/4 v1, 0x1

    goto :goto_1b
.end method

.method public setBoundary(Ljava/lang/String;)Lcom/google/api/client/http/MultipartContent;
    .registers 5
    .param p1, "boundary"    # Ljava/lang/String;

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/google/api/client/http/MultipartContent;->getMediaType()Lcom/google/api/client/http/HttpMediaType;

    move-result-object v1

    const-string/jumbo v2, "boundary"

    .line 2127
    invoke-static {p1}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 202
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/google/api/client/http/HttpMediaType;->setParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/HttpMediaType;

    .line 203
    return-object p0
.end method

.method public setContentParts(Ljava/util/Collection;)Lcom/google/api/client/http/MultipartContent;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/google/api/client/http/HttpContent;",
            ">;)",
            "Lcom/google/api/client/http/MultipartContent;"
        }
    .end annotation

    .prologue
    .line 177
    .local p1, "contentParts":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/google/api/client/http/HttpContent;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/google/api/client/http/MultipartContent;->parts:Ljava/util/ArrayList;

    .line 178
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/HttpContent;

    .line 179
    .local v0, "contentPart":Lcom/google/api/client/http/HttpContent;
    new-instance v2, Lcom/google/api/client/http/MultipartContent$Part;

    invoke-direct {v2, v0}, Lcom/google/api/client/http/MultipartContent$Part;-><init>(Lcom/google/api/client/http/HttpContent;)V

    invoke-virtual {p0, v2}, Lcom/google/api/client/http/MultipartContent;->addPart(Lcom/google/api/client/http/MultipartContent$Part;)Lcom/google/api/client/http/MultipartContent;

    goto :goto_f

    .line 181
    .end local v0    # "contentPart":Lcom/google/api/client/http/HttpContent;
    :cond_24
    return-object p0
.end method

.method public bridge synthetic setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/AbstractHttpContent;
    .registers 3
    .param p1, "x0"    # Lcom/google/api/client/http/HttpMediaType;

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/MultipartContent;->setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/MultipartContent;

    move-result-object v0

    return-object v0
.end method

.method public setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/MultipartContent;
    .registers 2
    .param p1, "mediaType"    # Lcom/google/api/client/http/HttpMediaType;

    .prologue
    .line 132
    invoke-super {p0, p1}, Lcom/google/api/client/http/AbstractHttpContent;->setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/AbstractHttpContent;

    .line 133
    return-object p0
.end method

.method public setParts(Ljava/util/Collection;)Lcom/google/api/client/http/MultipartContent;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/api/client/http/MultipartContent$Part;",
            ">;)",
            "Lcom/google/api/client/http/MultipartContent;"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, "parts":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/api/client/http/MultipartContent$Part;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/api/client/http/MultipartContent;->parts:Ljava/util/ArrayList;

    .line 164
    return-object p0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 16
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    new-instance v9, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0}, Lcom/google/api/client/http/MultipartContent;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v10

    invoke-direct {v9, p1, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 63
    .local v9, "writer":Ljava/io/Writer;
    invoke-virtual {p0}, Lcom/google/api/client/http/MultipartContent;->getBoundary()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "boundary":Ljava/lang/String;
    iget-object v10, p0, Lcom/google/api/client/http/MultipartContent;->parts:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_13
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_bd

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/api/client/http/MultipartContent$Part;

    .line 65
    .local v7, "part":Lcom/google/api/client/http/MultipartContent$Part;
    new-instance v10, Lcom/google/api/client/http/HttpHeaders;

    invoke-direct {v10}, Lcom/google/api/client/http/HttpHeaders;-><init>()V

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/google/api/client/http/HttpHeaders;->setAcceptEncoding(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    move-result-object v5

    .line 66
    .local v5, "headers":Lcom/google/api/client/http/HttpHeaders;
    iget-object v10, v7, Lcom/google/api/client/http/MultipartContent$Part;->headers:Lcom/google/api/client/http/HttpHeaders;

    if-eqz v10, :cond_32

    .line 67
    iget-object v10, v7, Lcom/google/api/client/http/MultipartContent$Part;->headers:Lcom/google/api/client/http/HttpHeaders;

    invoke-virtual {v5, v10}, Lcom/google/api/client/http/HttpHeaders;->fromHttpHeaders(Lcom/google/api/client/http/HttpHeaders;)V

    .line 69
    :cond_32
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Lcom/google/api/client/http/HttpHeaders;->setContentEncoding(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/google/api/client/http/HttpHeaders;->setUserAgent(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/google/api/client/http/HttpHeaders;->setContentType(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/google/api/client/http/HttpHeaders;->setContentLength(Ljava/lang/Long;)Lcom/google/api/client/http/HttpHeaders;

    move-result-object v10

    const-string/jumbo v11, "Content-Transfer-Encoding"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/google/api/client/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/http/HttpHeaders;

    .line 75
    iget-object v1, v7, Lcom/google/api/client/http/MultipartContent$Part;->content:Lcom/google/api/client/http/HttpContent;

    .line 76
    .local v1, "content":Lcom/google/api/client/http/HttpContent;
    const/4 v8, 0x0

    .line 77
    .local v8, "streamingContent":Lcom/google/api/client/util/StreamingContent;
    if-eqz v1, :cond_82

    .line 78
    const-string/jumbo v10, "Content-Transfer-Encoding"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "binary"

    aput-object v13, v11, v12

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Lcom/google/api/client/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/http/HttpHeaders;

    .line 79
    invoke-interface {v1}, Lcom/google/api/client/http/HttpContent;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/google/api/client/http/HttpHeaders;->setContentType(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    .line 80
    iget-object v4, v7, Lcom/google/api/client/http/MultipartContent$Part;->encoding:Lcom/google/api/client/http/HttpEncoding;

    .line 82
    .local v4, "encoding":Lcom/google/api/client/http/HttpEncoding;
    if-nez v4, :cond_ac

    .line 83
    invoke-interface {v1}, Lcom/google/api/client/http/HttpContent;->getLength()J

    move-result-wide v2

    .line 84
    .local v2, "contentLength":J
    move-object v8, v1

    .line 90
    :goto_75
    const-wide/16 v10, -0x1

    cmp-long v10, v2, v10

    if-eqz v10, :cond_82

    .line 91
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/google/api/client/http/HttpHeaders;->setContentLength(Ljava/lang/Long;)Lcom/google/api/client/http/HttpHeaders;

    .line 97
    .end local v2    # "contentLength":J
    .end local v4    # "encoding":Lcom/google/api/client/http/HttpEncoding;
    :cond_82
    const-string/jumbo v10, "--"

    invoke-virtual {v9, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v9, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 99
    const-string/jumbo v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 102
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v5, v10, v11, v9}, Lcom/google/api/client/http/HttpHeaders;->serializeHeadersForMultipartRequests(Lcom/google/api/client/http/HttpHeaders;Ljava/lang/StringBuilder;Ljava/util/logging/Logger;Ljava/io/Writer;)V

    .line 103
    if-eqz v8, :cond_a4

    .line 104
    const-string/jumbo v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v9}, Ljava/io/Writer;->flush()V

    .line 107
    invoke-interface {v8, p1}, Lcom/google/api/client/util/StreamingContent;->writeTo(Ljava/io/OutputStream;)V

    .line 110
    :cond_a4
    const-string/jumbo v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 86
    .restart local v4    # "encoding":Lcom/google/api/client/http/HttpEncoding;
    :cond_ac
    invoke-interface {v4}, Lcom/google/api/client/http/HttpEncoding;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/google/api/client/http/HttpHeaders;->setContentEncoding(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    .line 87
    new-instance v8, Lcom/google/api/client/http/HttpEncodingStreamingContent;

    .end local v8    # "streamingContent":Lcom/google/api/client/util/StreamingContent;
    invoke-direct {v8, v1, v4}, Lcom/google/api/client/http/HttpEncodingStreamingContent;-><init>(Lcom/google/api/client/util/StreamingContent;Lcom/google/api/client/http/HttpEncoding;)V

    .line 88
    .restart local v8    # "streamingContent":Lcom/google/api/client/util/StreamingContent;
    invoke-static {v1}, Lcom/google/api/client/http/AbstractHttpContent;->computeLength(Lcom/google/api/client/http/HttpContent;)J

    move-result-wide v2

    .restart local v2    # "contentLength":J
    goto :goto_75

    .line 113
    .end local v1    # "content":Lcom/google/api/client/http/HttpContent;
    .end local v2    # "contentLength":J
    .end local v4    # "encoding":Lcom/google/api/client/http/HttpEncoding;
    .end local v5    # "headers":Lcom/google/api/client/http/HttpHeaders;
    .end local v7    # "part":Lcom/google/api/client/http/MultipartContent$Part;
    .end local v8    # "streamingContent":Lcom/google/api/client/util/StreamingContent;
    :cond_bd
    const-string/jumbo v10, "--"

    invoke-virtual {v9, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v9, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 115
    const-string/jumbo v10, "--"

    invoke-virtual {v9, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 116
    const-string/jumbo v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v9}, Ljava/io/Writer;->flush()V

    .line 118
    return-void
.end method
