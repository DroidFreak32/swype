.class public final Lcom/google/api/client/http/apache/ApacheHttpTransport;
.super Lcom/google/api/client/http/HttpTransport;
.source "ApacheHttpTransport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/http/apache/ApacheHttpTransport$Builder;
    }
.end annotation


# instance fields
.field private final httpClient:Lorg/apache/http/client/HttpClient;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 100
    invoke-static {}, Lcom/google/api/client/http/apache/ApacheHttpTransport;->newDefaultHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/api/client/http/apache/ApacheHttpTransport;-><init>(Lorg/apache/http/client/HttpClient;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/client/HttpClient;)V
    .registers 5
    .param p1, "httpClient"    # Lorg/apache/http/client/HttpClient;

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/google/api/client/http/HttpTransport;-><init>()V

    .line 128
    iput-object p1, p0, Lcom/google/api/client/http/apache/ApacheHttpTransport;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 129
    invoke-interface {p1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 130
    .local v0, "params":Lorg/apache/http/params/HttpParams;
    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 131
    const-string/jumbo v1, "http.protocol.handle-redirects"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 132
    return-void
.end method

.method public static newDefaultHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;
    .registers 3

    .prologue
    .line 157
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-static {}, Lcom/google/api/client/http/apache/ApacheHttpTransport;->newDefaultHttpParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/api/client/http/apache/ApacheHttpTransport;->newDefaultHttpClient(Lorg/apache/http/conn/ssl/SSLSocketFactory;Lorg/apache/http/params/HttpParams;Ljava/net/ProxySelector;)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    return-object v0
.end method

.method static newDefaultHttpClient(Lorg/apache/http/conn/ssl/SSLSocketFactory;Lorg/apache/http/params/HttpParams;Ljava/net/ProxySelector;)Lorg/apache/http/impl/client/DefaultHttpClient;
    .registers 11
    .param p0, "socketFactory"    # Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;
    .param p2, "proxySelector"    # Ljava/net/ProxySelector;

    .prologue
    const/4 v7, 0x0

    .line 186
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 187
    .local v2, "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string/jumbo v4, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v5

    const/16 v6, 0x50

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 188
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string/jumbo v4, "https"

    const/16 v5, 0x1bb

    invoke-direct {v3, v4, p0, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 189
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, p1, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 190
    .local v0, "connectionManager":Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 191
    .local v1, "defaultHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    invoke-direct {v3, v7, v7}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    invoke-virtual {v1, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 192
    if-eqz p2, :cond_40

    .line 193
    new-instance v3, Lorg/apache/http/impl/conn/ProxySelectorRoutePlanner;

    invoke-direct {v3, v2, p2}, Lorg/apache/http/impl/conn/ProxySelectorRoutePlanner;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;Ljava/net/ProxySelector;)V

    invoke-virtual {v1, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->setRoutePlanner(Lorg/apache/http/conn/routing/HttpRoutePlanner;)V

    .line 195
    :cond_40
    return-object v1
.end method

.method static newDefaultHttpParams()Lorg/apache/http/params/HttpParams;
    .registers 3

    .prologue
    .line 163
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 166
    .local v0, "params":Lorg/apache/http/params/HttpParams;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 167
    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 168
    const/16 v1, 0xc8

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 169
    new-instance v1, Lorg/apache/http/conn/params/ConnPerRouteBean;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 170
    return-object v0
.end method


# virtual methods
.method protected final bridge synthetic buildRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;
    .registers 4
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/http/apache/ApacheHttpTransport;->buildRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/apache/ApacheHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method protected final buildRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/apache/ApacheHttpRequest;
    .registers 6
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 206
    const-string/jumbo v1, "DELETE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 207
    new-instance v0, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .line 223
    .local v0, "requestBase":Lorg/apache/http/client/methods/HttpRequestBase;
    :goto_e
    new-instance v1, Lcom/google/api/client/http/apache/ApacheHttpRequest;

    iget-object v2, p0, Lcom/google/api/client/http/apache/ApacheHttpTransport;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-direct {v1, v2, v0}, Lcom/google/api/client/http/apache/ApacheHttpRequest;-><init>(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpRequestBase;)V

    return-object v1

    .line 208
    .end local v0    # "requestBase":Lorg/apache/http/client/methods/HttpRequestBase;
    :cond_16
    const-string/jumbo v1, "GET"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 209
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .restart local v0    # "requestBase":Lorg/apache/http/client/methods/HttpRequestBase;
    goto :goto_e

    .line 210
    .end local v0    # "requestBase":Lorg/apache/http/client/methods/HttpRequestBase;
    :cond_25
    const-string/jumbo v1, "HEAD"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 211
    new-instance v0, Lorg/apache/http/client/methods/HttpHead;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    .restart local v0    # "requestBase":Lorg/apache/http/client/methods/HttpRequestBase;
    goto :goto_e

    .line 212
    .end local v0    # "requestBase":Lorg/apache/http/client/methods/HttpRequestBase;
    :cond_34
    const-string/jumbo v1, "POST"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 213
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .restart local v0    # "requestBase":Lorg/apache/http/client/methods/HttpRequestBase;
    goto :goto_e

    .line 214
    .end local v0    # "requestBase":Lorg/apache/http/client/methods/HttpRequestBase;
    :cond_43
    const-string/jumbo v1, "PUT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 215
    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .restart local v0    # "requestBase":Lorg/apache/http/client/methods/HttpRequestBase;
    goto :goto_e

    .line 216
    .end local v0    # "requestBase":Lorg/apache/http/client/methods/HttpRequestBase;
    :cond_52
    const-string/jumbo v1, "TRACE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 217
    new-instance v0, Lorg/apache/http/client/methods/HttpTrace;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpTrace;-><init>(Ljava/lang/String;)V

    .restart local v0    # "requestBase":Lorg/apache/http/client/methods/HttpRequestBase;
    goto :goto_e

    .line 218
    .end local v0    # "requestBase":Lorg/apache/http/client/methods/HttpRequestBase;
    :cond_61
    const-string/jumbo v1, "OPTIONS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 219
    new-instance v0, Lorg/apache/http/client/methods/HttpOptions;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpOptions;-><init>(Ljava/lang/String;)V

    .restart local v0    # "requestBase":Lorg/apache/http/client/methods/HttpRequestBase;
    goto :goto_e

    .line 221
    .end local v0    # "requestBase":Lorg/apache/http/client/methods/HttpRequestBase;
    :cond_70
    new-instance v0, Lcom/google/api/client/http/apache/HttpExtensionMethod;

    invoke-direct {v0, p1, p2}, Lcom/google/api/client/http/apache/HttpExtensionMethod;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "requestBase":Lorg/apache/http/client/methods/HttpRequestBase;
    goto :goto_e
.end method

.method public final getHttpClient()Lorg/apache/http/client/HttpClient;
    .registers 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/api/client/http/apache/ApacheHttpTransport;->httpClient:Lorg/apache/http/client/HttpClient;

    return-object v0
.end method

.method public final shutdown()V
    .registers 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/api/client/http/apache/ApacheHttpTransport;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 235
    return-void
.end method

.method public final supportsMethod(Ljava/lang/String;)Z
    .registers 3
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 200
    const/4 v0, 0x1

    return v0
.end method
