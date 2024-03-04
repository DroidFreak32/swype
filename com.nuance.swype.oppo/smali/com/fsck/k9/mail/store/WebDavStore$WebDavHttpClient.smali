.class public Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;
.super Lorg/apache/http/impl/client/DefaultHttpClient;
.source "WebDavStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/store/WebDavStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebDavHttpClient"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2566
    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    return-void
.end method

.method public static getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;
    .locals 6
    .param p0, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2589
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 2590
    .local v2, "responseStream":Ljava/io/InputStream;
    if-nez v2, :cond_0

    move-object v3, v2

    .line 2603
    .end local v2    # "responseStream":Ljava/io/InputStream;
    .local v3, "responseStream":Ljava/io/InputStream;
    :goto_0
    return-object v3

    .line 2592
    .end local v3    # "responseStream":Ljava/io/InputStream;
    .restart local v2    # "responseStream":Ljava/io/InputStream;
    :cond_0
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v1

    .line 2593
    .local v1, "header":Lorg/apache/http/Header;
    if-nez v1, :cond_1

    move-object v3, v2

    .line 2594
    .end local v2    # "responseStream":Ljava/io/InputStream;
    .restart local v3    # "responseStream":Ljava/io/InputStream;
    goto :goto_0

    .line 2595
    .end local v3    # "responseStream":Ljava/io/InputStream;
    .restart local v2    # "responseStream":Ljava/io/InputStream;
    :cond_1
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 2596
    .local v0, "contentEncoding":Ljava/lang/String;
    if-nez v0, :cond_2

    move-object v3, v2

    .line 2597
    .end local v2    # "responseStream":Ljava/io/InputStream;
    .restart local v3    # "responseStream":Ljava/io/InputStream;
    goto :goto_0

    .line 2598
    .end local v3    # "responseStream":Ljava/io/InputStream;
    .restart local v2    # "responseStream":Ljava/io/InputStream;
    :cond_2
    const-string v4, "gzip"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2600
    const-string v4, "k9"

    const-string v5, "Response is gzipped"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2601
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v3, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v2    # "responseStream":Ljava/io/InputStream;
    .restart local v3    # "responseStream":Ljava/io/InputStream;
    move-object v2, v3

    .end local v3    # "responseStream":Ljava/io/InputStream;
    .restart local v2    # "responseStream":Ljava/io/InputStream;
    :cond_3
    move-object v3, v2

    .line 2603
    .end local v2    # "responseStream":Ljava/io/InputStream;
    .restart local v3    # "responseStream":Ljava/io/InputStream;
    goto :goto_0
.end method

.method public static modifyRequestToAcceptGzipResponse(Lorg/apache/http/HttpRequest;)V
    .locals 2
    .param p0, "request"    # Lorg/apache/http/HttpRequest;

    .prologue
    .line 2582
    const-string v0, "k9"

    const-string v1, "Requesting gzipped data"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2583
    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    invoke-interface {p0, v0, v1}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2584
    return-void
.end method


# virtual methods
.method public executeOverride(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2609
    invoke-static {p1}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;->modifyRequestToAcceptGzipResponse(Lorg/apache/http/HttpRequest;)V

    .line 2610
    invoke-super {p0, p1, p2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method
