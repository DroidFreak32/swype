.class public abstract Lcom/google/api/client/http/AbstractHttpContent;
.super Ljava/lang/Object;
.source "AbstractHttpContent.java"

# interfaces
.implements Lcom/google/api/client/http/HttpContent;


# instance fields
.field private computedLength:J

.field private mediaType:Lcom/google/api/client/http/HttpMediaType;


# direct methods
.method protected constructor <init>(Lcom/google/api/client/http/HttpMediaType;)V
    .registers 4
    .param p1, "mediaType"    # Lcom/google/api/client/http/HttpMediaType;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/api/client/http/AbstractHttpContent;->computedLength:J

    .line 56
    iput-object p1, p0, Lcom/google/api/client/http/AbstractHttpContent;->mediaType:Lcom/google/api/client/http/HttpMediaType;

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "mediaType"    # Ljava/lang/String;

    .prologue
    .line 48
    if-nez p1, :cond_7

    const/4 v0, 0x0

    :goto_3
    invoke-direct {p0, v0}, Lcom/google/api/client/http/AbstractHttpContent;-><init>(Lcom/google/api/client/http/HttpMediaType;)V

    .line 49
    return-void

    .line 48
    :cond_7
    new-instance v0, Lcom/google/api/client/http/HttpMediaType;

    invoke-direct {v0, p1}, Lcom/google/api/client/http/HttpMediaType;-><init>(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static computeLength(Lcom/google/api/client/http/HttpContent;)J
    .registers 3
    .param p0, "content"    # Lcom/google/api/client/http/HttpContent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-interface {p0}, Lcom/google/api/client/http/HttpContent;->retrySupported()Z

    move-result v0

    if-nez v0, :cond_9

    .line 137
    const-wide/16 v0, -0x1

    .line 139
    :goto_8
    return-wide v0

    :cond_9
    invoke-static {p0}, Lcom/google/api/client/util/IOUtils;->computeLength(Lcom/google/api/client/util/StreamingContent;)J

    move-result-wide v0

    goto :goto_8
.end method


# virtual methods
.method protected computeLength()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-static {p0}, Lcom/google/api/client/http/AbstractHttpContent;->computeLength(Lcom/google/api/client/http/HttpContent;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getCharset()Ljava/nio/charset/Charset;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/api/client/http/AbstractHttpContent;->mediaType:Lcom/google/api/client/http/HttpMediaType;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/api/client/http/AbstractHttpContent;->mediaType:Lcom/google/api/client/http/HttpMediaType;

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpMediaType;->getCharsetParameter()Ljava/nio/charset/Charset;

    move-result-object v0

    if-nez v0, :cond_f

    :cond_c
    sget-object v0, Lcom/google/api/client/util/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/google/api/client/http/AbstractHttpContent;->mediaType:Lcom/google/api/client/http/HttpMediaType;

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpMediaType;->getCharsetParameter()Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_e
.end method

.method public getLength()J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/google/api/client/http/AbstractHttpContent;->computedLength:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    .line 65
    invoke-virtual {p0}, Lcom/google/api/client/http/AbstractHttpContent;->computeLength()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/api/client/http/AbstractHttpContent;->computedLength:J

    .line 67
    :cond_e
    iget-wide v0, p0, Lcom/google/api/client/http/AbstractHttpContent;->computedLength:J

    return-wide v0
.end method

.method public final getMediaType()Lcom/google/api/client/http/HttpMediaType;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/api/client/http/AbstractHttpContent;->mediaType:Lcom/google/api/client/http/HttpMediaType;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/api/client/http/AbstractHttpContent;->mediaType:Lcom/google/api/client/http/HttpMediaType;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/google/api/client/http/AbstractHttpContent;->mediaType:Lcom/google/api/client/http/HttpMediaType;

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpMediaType;->build()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public retrySupported()Z
    .registers 2

    .prologue
    .line 122
    const/4 v0, 0x1

    return v0
.end method

.method public setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/AbstractHttpContent;
    .registers 2
    .param p1, "mediaType"    # Lcom/google/api/client/http/HttpMediaType;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/api/client/http/AbstractHttpContent;->mediaType:Lcom/google/api/client/http/HttpMediaType;

    .line 91
    return-object p0
.end method
