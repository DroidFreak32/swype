.class public final Lcom/google/api/client/http/HttpRequestFactory;
.super Ljava/lang/Object;
.source "HttpRequestFactory.java"


# instance fields
.field private final initializer:Lcom/google/api/client/http/HttpRequestInitializer;

.field private final transport:Lcom/google/api/client/http/HttpTransport;


# direct methods
.method constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/http/HttpRequestInitializer;)V
    .locals 0
    .param p1, "transport"    # Lcom/google/api/client/http/HttpTransport;
    .param p2, "initializer"    # Lcom/google/api/client/http/HttpRequestInitializer;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/google/api/client/http/HttpRequestFactory;->transport:Lcom/google/api/client/http/HttpTransport;

    .line 55
    iput-object p2, p0, Lcom/google/api/client/http/HttpRequestFactory;->initializer:Lcom/google/api/client/http/HttpRequestInitializer;

    .line 56
    return-void
.end method


# virtual methods
.method public final buildDeleteRequest(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/HttpRequest;
    .locals 2
    .param p1, "url"    # Lcom/google/api/client/http/GenericUrl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    const-string/jumbo v0, "DELETE"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/api/client/http/HttpRequestFactory;->buildRequest(Ljava/lang/String;Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public final buildGetRequest(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/HttpRequest;
    .locals 2
    .param p1, "url"    # Lcom/google/api/client/http/GenericUrl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    const-string/jumbo v0, "GET"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/api/client/http/HttpRequestFactory;->buildRequest(Ljava/lang/String;Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public final buildHeadRequest(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/HttpRequest;
    .locals 2
    .param p1, "url"    # Lcom/google/api/client/http/GenericUrl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    const-string/jumbo v0, "HEAD"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/api/client/http/HttpRequestFactory;->buildRequest(Ljava/lang/String;Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public final buildPatchRequest(Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;
    .locals 1
    .param p1, "url"    # Lcom/google/api/client/http/GenericUrl;
    .param p2, "content"    # Lcom/google/api/client/http/HttpContent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    const-string/jumbo v0, "PATCH"

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/api/client/http/HttpRequestFactory;->buildRequest(Ljava/lang/String;Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public final buildPostRequest(Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;
    .locals 1
    .param p1, "url"    # Lcom/google/api/client/http/GenericUrl;
    .param p2, "content"    # Lcom/google/api/client/http/HttpContent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    const-string/jumbo v0, "POST"

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/api/client/http/HttpRequestFactory;->buildRequest(Ljava/lang/String;Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public final buildPutRequest(Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;
    .locals 1
    .param p1, "url"    # Lcom/google/api/client/http/GenericUrl;
    .param p2, "content"    # Lcom/google/api/client/http/HttpContent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    const-string/jumbo v0, "PUT"

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/api/client/http/HttpRequestFactory;->buildRequest(Ljava/lang/String;Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public final buildRequest(Ljava/lang/String;Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;
    .locals 2
    .param p1, "requestMethod"    # Ljava/lang/String;
    .param p2, "url"    # Lcom/google/api/client/http/GenericUrl;
    .param p3, "content"    # Lcom/google/api/client/http/HttpContent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v1, p0, Lcom/google/api/client/http/HttpRequestFactory;->transport:Lcom/google/api/client/http/HttpTransport;

    invoke-virtual {v1}, Lcom/google/api/client/http/HttpTransport;->buildRequest()Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    .line 92
    .local v0, "request":Lcom/google/api/client/http/HttpRequest;
    iget-object v1, p0, Lcom/google/api/client/http/HttpRequestFactory;->initializer:Lcom/google/api/client/http/HttpRequestInitializer;

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/google/api/client/http/HttpRequestFactory;->initializer:Lcom/google/api/client/http/HttpRequestInitializer;

    invoke-interface {v1, v0}, Lcom/google/api/client/http/HttpRequestInitializer;->initialize(Lcom/google/api/client/http/HttpRequest;)V

    .line 95
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/api/client/http/HttpRequest;->setRequestMethod(Ljava/lang/String;)Lcom/google/api/client/http/HttpRequest;

    .line 96
    if-eqz p2, :cond_1

    .line 97
    invoke-virtual {v0, p2}, Lcom/google/api/client/http/HttpRequest;->setUrl(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/HttpRequest;

    .line 99
    :cond_1
    if-eqz p3, :cond_2

    .line 100
    invoke-virtual {v0, p3}, Lcom/google/api/client/http/HttpRequest;->setContent(Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    .line 102
    :cond_2
    return-object v0
.end method

.method public final getInitializer()Lcom/google/api/client/http/HttpRequestInitializer;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/api/client/http/HttpRequestFactory;->initializer:Lcom/google/api/client/http/HttpRequestInitializer;

    return-object v0
.end method

.method public final getTransport()Lcom/google/api/client/http/HttpTransport;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/api/client/http/HttpRequestFactory;->transport:Lcom/google/api/client/http/HttpTransport;

    return-object v0
.end method
