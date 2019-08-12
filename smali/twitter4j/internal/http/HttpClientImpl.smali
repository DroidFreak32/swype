.class public Ltwitter4j/internal/http/HttpClientImpl;
.super Ltwitter4j/internal/http/HttpClientBase;
.source "HttpClientImpl.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ltwitter4j/internal/http/HttpResponseCode;


# static fields
.field private static final instanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ltwitter4j/internal/http/HttpClientConfiguration;",
            "Ltwitter4j/internal/http/HttpClient;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Ltwitter4j/internal/logging/Logger;

.field private static final serialVersionUID:J = -0x7a63fdacd4e632ffL


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    const-class v0, Ltwitter4j/internal/http/HttpClientImpl;

    invoke-static {v0}, Ltwitter4j/internal/logging/Logger;->getLogger(Ljava/lang/Class;)Ltwitter4j/internal/logging/Logger;

    move-result-object v0

    sput-object v0, Ltwitter4j/internal/http/HttpClientImpl;->logger:Ltwitter4j/internal/logging/Logger;

    .line 42
    invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;

    move-result-object v0

    invoke-interface {v0}, Ltwitter4j/conf/Configuration;->isDalvik()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const-string v0, "http.keepAlive"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Ltwitter4j/internal/http/HttpClientImpl;->instanceMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientBase;-><init>(Ltwitter4j/internal/http/HttpClientConfiguration;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ltwitter4j/internal/http/HttpClientConfiguration;)V
    .locals 0
    .param p1, "conf"    # Ltwitter4j/internal/http/HttpClientConfiguration;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Ltwitter4j/internal/http/HttpClientBase;-><init>(Ltwitter4j/internal/http/HttpClientConfiguration;)V

    .line 55
    return-void
.end method

.method public static getInstance(Ltwitter4j/internal/http/HttpClientConfiguration;)Ltwitter4j/internal/http/HttpClient;
    .locals 2
    .param p0, "conf"    # Ltwitter4j/internal/http/HttpClientConfiguration;

    .prologue
    .line 60
    sget-object v1, Ltwitter4j/internal/http/HttpClientImpl;->instanceMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltwitter4j/internal/http/HttpClient;

    .line 61
    .local v0, "client":Ltwitter4j/internal/http/HttpClient;
    if-nez v0, :cond_0

    .line 62
    new-instance v0, Ltwitter4j/internal/http/HttpClientImpl;

    .end local v0    # "client":Ltwitter4j/internal/http/HttpClient;
    invoke-direct {v0, p0}, Ltwitter4j/internal/http/HttpClientImpl;-><init>(Ltwitter4j/internal/http/HttpClientConfiguration;)V

    .line 63
    .restart local v0    # "client":Ltwitter4j/internal/http/HttpClient;
    sget-object v1, Ltwitter4j/internal/http/HttpClientImpl;->instanceMap:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_0
    return-object v0
.end method

.method private setHeaders(Ltwitter4j/internal/http/HttpRequest;Ljava/net/HttpURLConnection;)V
    .locals 6
    .param p1, "req"    # Ltwitter4j/internal/http/HttpRequest;
    .param p2, "connection"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 200
    sget-object v3, Ltwitter4j/internal/http/HttpClientImpl;->logger:Ltwitter4j/internal/logging/Logger;

    invoke-virtual {v3}, Ltwitter4j/internal/logging/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 201
    sget-object v3, Ltwitter4j/internal/http/HttpClientImpl;->logger:Ltwitter4j/internal/logging/Logger;

    const-string v4, "Request: "

    invoke-virtual {v3, v4}, Ltwitter4j/internal/logging/Logger;->debug(Ljava/lang/String;)V

    .line 202
    sget-object v3, Ltwitter4j/internal/http/HttpClientImpl;->logger:Ltwitter4j/internal/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpRequest;->getMethod()Ltwitter4j/internal/http/RequestMethod;

    move-result-object v5

    invoke-virtual {v5}, Ltwitter4j/internal/http/RequestMethod;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpRequest;->getURL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ltwitter4j/internal/logging/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_0
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpRequest;->getAuthorization()Ltwitter4j/auth/Authorization;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpRequest;->getAuthorization()Ltwitter4j/auth/Authorization;

    move-result-object v3

    invoke-interface {v3, p1}, Ltwitter4j/auth/Authorization;->getAuthorizationHeader(Ltwitter4j/internal/http/HttpRequest;)Ljava/lang/String;

    move-result-object v0

    .local v0, "authorizationHeader":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 207
    sget-object v3, Ltwitter4j/internal/http/HttpClientImpl;->logger:Ltwitter4j/internal/logging/Logger;

    invoke-virtual {v3}, Ltwitter4j/internal/logging/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 208
    sget-object v3, Ltwitter4j/internal/http/HttpClientImpl;->logger:Ltwitter4j/internal/logging/Logger;

    const-string v4, "Authorization: "

    invoke-static {v0}, Ltwitter4j/internal/util/z_T4JInternalStringUtil;->maskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ltwitter4j/internal/logging/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :cond_1
    const-string v3, "Authorization"

    invoke-virtual {p2, v3, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .end local v0    # "authorizationHeader":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 213
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 214
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v2, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    sget-object v4, Ltwitter4j/internal/http/HttpClientImpl;->logger:Ltwitter4j/internal/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ltwitter4j/internal/logging/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 218
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/String;
    :cond_3
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 69
    new-instance v0, Ltwitter4j/internal/http/HttpRequest;

    sget-object v1, Ltwitter4j/internal/http/RequestMethod;->GET:Ltwitter4j/internal/http/RequestMethod;

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Ltwitter4j/internal/http/HttpClientImpl;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected getConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpClientImpl;->isProxyConfigured()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 223
    iget-object v2, p0, Ltwitter4j/internal/http/HttpClientImpl;->CONF:Ltwitter4j/internal/http/HttpClientConfiguration;

    invoke-interface {v2}, Ltwitter4j/internal/http/HttpClientConfiguration;->getHttpProxyUser()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Ltwitter4j/internal/http/HttpClientImpl;->CONF:Ltwitter4j/internal/http/HttpClientConfiguration;

    invoke-interface {v2}, Ltwitter4j/internal/http/HttpClientConfiguration;->getHttpProxyUser()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 224
    sget-object v2, Ltwitter4j/internal/http/HttpClientImpl;->logger:Ltwitter4j/internal/logging/Logger;

    invoke-virtual {v2}, Ltwitter4j/internal/logging/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 225
    sget-object v2, Ltwitter4j/internal/http/HttpClientImpl;->logger:Ltwitter4j/internal/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Proxy AuthUser: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Ltwitter4j/internal/http/HttpClientImpl;->CONF:Ltwitter4j/internal/http/HttpClientConfiguration;

    invoke-interface {v4}, Ltwitter4j/internal/http/HttpClientConfiguration;->getHttpProxyUser()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ltwitter4j/internal/logging/Logger;->debug(Ljava/lang/String;)V

    .line 226
    sget-object v2, Ltwitter4j/internal/http/HttpClientImpl;->logger:Ltwitter4j/internal/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Proxy AuthPassword: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Ltwitter4j/internal/http/HttpClientImpl;->CONF:Ltwitter4j/internal/http/HttpClientConfiguration;

    invoke-interface {v4}, Ltwitter4j/internal/http/HttpClientConfiguration;->getHttpProxyPassword()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ltwitter4j/internal/util/z_T4JInternalStringUtil;->maskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ltwitter4j/internal/logging/Logger;->debug(Ljava/lang/String;)V

    .line 228
    :cond_0
    new-instance v2, Ltwitter4j/internal/http/HttpClientImpl$1;

    invoke-direct {v2, p0}, Ltwitter4j/internal/http/HttpClientImpl$1;-><init>(Ltwitter4j/internal/http/HttpClientImpl;)V

    invoke-static {v2}, Ljava/net/Authenticator;->setDefault(Ljava/net/Authenticator;)V

    .line 242
    :cond_1
    new-instance v1, Ljava/net/Proxy;

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    iget-object v3, p0, Ltwitter4j/internal/http/HttpClientImpl;->CONF:Ltwitter4j/internal/http/HttpClientConfiguration;

    invoke-interface {v3}, Ltwitter4j/internal/http/HttpClientConfiguration;->getHttpProxyHost()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ltwitter4j/internal/http/HttpClientImpl;->CONF:Ltwitter4j/internal/http/HttpClientConfiguration;

    invoke-interface {v4}, Ltwitter4j/internal/http/HttpClientConfiguration;->getHttpProxyPort()I

    move-result v4

    invoke-static {v3, v4}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 244
    .local v1, "proxy":Ljava/net/Proxy;
    sget-object v2, Ltwitter4j/internal/http/HttpClientImpl;->logger:Ltwitter4j/internal/logging/Logger;

    invoke-virtual {v2}, Ltwitter4j/internal/logging/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 245
    sget-object v2, Ltwitter4j/internal/http/HttpClientImpl;->logger:Ltwitter4j/internal/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Opening proxied connection("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Ltwitter4j/internal/http/HttpClientImpl;->CONF:Ltwitter4j/internal/http/HttpClientConfiguration;

    invoke-interface {v4}, Ltwitter4j/internal/http/HttpClientConfiguration;->getHttpProxyHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ltwitter4j/internal/http/HttpClientImpl;->CONF:Ltwitter4j/internal/http/HttpClientConfiguration;

    invoke-interface {v4}, Ltwitter4j/internal/http/HttpClientConfiguration;->getHttpProxyPort()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ltwitter4j/internal/logging/Logger;->debug(Ljava/lang/String;)V

    .line 247
    :cond_2
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 251
    .end local v1    # "proxy":Ljava/net/Proxy;
    .local v0, "con":Ljava/net/HttpURLConnection;
    :goto_0
    iget-object v2, p0, Ltwitter4j/internal/http/HttpClientImpl;->CONF:Ltwitter4j/internal/http/HttpClientConfiguration;

    invoke-interface {v2}, Ltwitter4j/internal/http/HttpClientConfiguration;->getHttpConnectionTimeout()I

    move-result v2

    if-lez v2, :cond_3

    .line 252
    iget-object v2, p0, Ltwitter4j/internal/http/HttpClientImpl;->CONF:Ltwitter4j/internal/http/HttpClientConfiguration;

    invoke-interface {v2}, Ltwitter4j/internal/http/HttpClientConfiguration;->getHttpConnectionTimeout()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 254
    :cond_3
    iget-object v2, p0, Ltwitter4j/internal/http/HttpClientImpl;->CONF:Ltwitter4j/internal/http/HttpClientConfiguration;

    invoke-interface {v2}, Ltwitter4j/internal/http/HttpClientConfiguration;->getHttpReadTimeout()I

    move-result v2

    if-lez v2, :cond_4

    .line 255
    iget-object v2, p0, Ltwitter4j/internal/http/HttpClientImpl;->CONF:Ltwitter4j/internal/http/HttpClientConfiguration;

    invoke-interface {v2}, Ltwitter4j/internal/http/HttpClientConfiguration;->getHttpReadTimeout()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 257
    :cond_4
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 258
    return-object v0

    .line 249
    .end local v0    # "con":Ljava/net/HttpURLConnection;
    :cond_5
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .restart local v0    # "con":Ljava/net/HttpURLConnection;
    goto :goto_0
.end method

.method public post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "params"    # [Ltwitter4j/internal/http/HttpParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 73
    new-instance v0, Ltwitter4j/internal/http/HttpRequest;

    sget-object v1, Ltwitter4j/internal/http/RequestMethod;->POST:Ltwitter4j/internal/http/RequestMethod;

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Ltwitter4j/internal/http/HttpClientImpl;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;
    .locals 30
    .param p1, "req"    # Ltwitter4j/internal/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 79
    move-object/from16 v0, p0

    iget-object v0, v0, Ltwitter4j/internal/http/HttpClientImpl;->CONF:Ltwitter4j/internal/http/HttpClientConfiguration;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ltwitter4j/internal/http/HttpClientConfiguration;->getHttpRetryCount()I

    move-result v27

    add-int/lit8 v25, v27, 0x1

    .line 80
    .local v25, "retry":I
    const/16 v20, 0x0

    .line 81
    .local v20, "res":Ltwitter4j/internal/http/HttpResponse;
    const/16 v24, 0x0

    .local v24, "retriedCount":I
    move-object/from16 v21, v20

    .end local v20    # "res":Ltwitter4j/internal/http/HttpResponse;
    .local v21, "res":Ltwitter4j/internal/http/HttpResponse;
    :goto_0
    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_f

    .line 82
    const/16 v22, -0x1

    .line 85
    .local v22, "responseCode":I
    const/16 v16, 0x0

    .line 87
    .local v16, "os":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ltwitter4j/internal/http/HttpRequest;->getURL()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ltwitter4j/internal/http/HttpClientImpl;->getConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v8

    .line 88
    .local v8, "con":Ljava/net/HttpURLConnection;
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 89
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8}, Ltwitter4j/internal/http/HttpClientImpl;->setHeaders(Ltwitter4j/internal/http/HttpRequest;Ljava/net/HttpURLConnection;)V

    .line 90
    invoke-virtual/range {p1 .. p1}, Ltwitter4j/internal/http/HttpRequest;->getMethod()Ltwitter4j/internal/http/RequestMethod;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ltwitter4j/internal/http/RequestMethod;->name()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 91
    invoke-virtual/range {p1 .. p1}, Ltwitter4j/internal/http/HttpRequest;->getMethod()Ltwitter4j/internal/http/RequestMethod;

    move-result-object v27

    sget-object v28, Ltwitter4j/internal/http/RequestMethod;->POST:Ltwitter4j/internal/http/RequestMethod;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_4

    .line 92
    invoke-virtual/range {p1 .. p1}, Ltwitter4j/internal/http/HttpRequest;->getParameters()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ltwitter4j/internal/http/HttpParameter;->containsFile([Ltwitter4j/internal/http/HttpParameter;)Z

    move-result v27

    if-eqz v27, :cond_6

    .line 93
    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "----Twitter4J-upload"

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    invoke-virtual/range {v27 .. v29}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 94
    .local v5, "boundary":Ljava/lang/String;
    const-string v27, "Content-Type"

    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "multipart/form-data; boundary="

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v8, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "--"

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 96
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 97
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v16

    .line 98
    new-instance v17, Ljava/io/DataOutputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 99
    .local v17, "out":Ljava/io/DataOutputStream;
    invoke-virtual/range {p1 .. p1}, Ltwitter4j/internal/http/HttpRequest;->getParameters()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v4

    .local v4, "arr$":[Ltwitter4j/internal/http/HttpParameter;
    array-length v14, v4

    .local v14, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_1
    if-ge v9, v14, :cond_3

    aget-object v18, v4, v9

    .line 100
    .local v18, "param":Ltwitter4j/internal/http/HttpParameter;
    invoke-virtual/range {v18 .. v18}, Ltwitter4j/internal/http/HttpParameter;->isFile()Z

    move-result v27

    if-eqz v27, :cond_2

    .line 101
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\r\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ltwitter4j/internal/http/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 102
    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "Content-Disposition: form-data; name=\""

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ltwitter4j/internal/http/HttpParameter;->getName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\"; filename=\""

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v18 .. v18}, Ltwitter4j/internal/http/HttpParameter;->getFile()Ljava/io/File;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\"\r\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ltwitter4j/internal/http/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 103
    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "Content-Type: "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ltwitter4j/internal/http/HttpParameter;->getContentType()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\r\n\r\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ltwitter4j/internal/http/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 104
    new-instance v11, Ljava/io/BufferedInputStream;

    invoke-virtual/range {v18 .. v18}, Ltwitter4j/internal/http/HttpParameter;->hasFileBody()Z

    move-result v27

    if-eqz v27, :cond_0

    invoke-virtual/range {v18 .. v18}, Ltwitter4j/internal/http/HttpParameter;->getFileBody()Ljava/io/InputStream;

    move-result-object v27

    :goto_2
    move-object/from16 v0, v27

    invoke-direct {v11, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 107
    .local v11, "in":Ljava/io/BufferedInputStream;
    const/16 v27, 0x400

    move/from16 v0, v27

    new-array v6, v0, [B

    .line 109
    .local v6, "buff":[B
    :goto_3
    invoke-virtual {v11, v6}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v15

    .local v15, "length":I
    const/16 v27, -0x1

    move/from16 v0, v27

    if-eq v15, v0, :cond_1

    .line 110
    const/16 v27, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-virtual {v0, v6, v1, v15}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 169
    .end local v4    # "arr$":[Ltwitter4j/internal/http/HttpParameter;
    .end local v5    # "boundary":Ljava/lang/String;
    .end local v6    # "buff":[B
    .end local v8    # "con":Ljava/net/HttpURLConnection;
    .end local v9    # "i$":I
    .end local v11    # "in":Ljava/io/BufferedInputStream;
    .end local v14    # "len$":I
    .end local v15    # "length":I
    .end local v17    # "out":Ljava/io/DataOutputStream;
    .end local v18    # "param":Ltwitter4j/internal/http/HttpParameter;
    :catchall_0
    move-exception v27

    move-object/from16 v20, v21

    .line 170
    .end local v21    # "res":Ltwitter4j/internal/http/HttpResponse;
    .restart local v20    # "res":Ltwitter4j/internal/http/HttpResponse;
    :goto_4
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 172
    :goto_5
    :try_start_2
    throw v27
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 179
    :catch_0
    move-exception v12

    .line 176
    .local v12, "ioe":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Ltwitter4j/internal/http/HttpClientImpl;->CONF:Ltwitter4j/internal/http/HttpClientConfiguration;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ltwitter4j/internal/http/HttpClientConfiguration;->getHttpRetryCount()I

    move-result v27

    move/from16 v0, v24

    move/from16 v1, v27

    if-ne v0, v1, :cond_d

    .line 177
    new-instance v27, Ltwitter4j/TwitterException;

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move/from16 v2, v22

    invoke-direct {v0, v1, v12, v2}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v27

    .line 104
    .end local v12    # "ioe":Ljava/io/IOException;
    .end local v20    # "res":Ltwitter4j/internal/http/HttpResponse;
    .restart local v4    # "arr$":[Ltwitter4j/internal/http/HttpParameter;
    .restart local v5    # "boundary":Ljava/lang/String;
    .restart local v8    # "con":Ljava/net/HttpURLConnection;
    .restart local v9    # "i$":I
    .restart local v14    # "len$":I
    .restart local v17    # "out":Ljava/io/DataOutputStream;
    .restart local v18    # "param":Ltwitter4j/internal/http/HttpParameter;
    .restart local v21    # "res":Ltwitter4j/internal/http/HttpResponse;
    :cond_0
    :try_start_3
    new-instance v27, Ljava/io/FileInputStream;

    invoke-virtual/range {v18 .. v18}, Ltwitter4j/internal/http/HttpParameter;->getFile()Ljava/io/File;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto :goto_2

    .line 112
    .restart local v6    # "buff":[B
    .restart local v11    # "in":Ljava/io/BufferedInputStream;
    .restart local v15    # "length":I
    :cond_1
    const-string v27, "\r\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ltwitter4j/internal/http/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 113
    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->close()V

    .line 99
    .end local v6    # "buff":[B
    .end local v11    # "in":Ljava/io/BufferedInputStream;
    .end local v15    # "length":I
    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 115
    :cond_2
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\r\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ltwitter4j/internal/http/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 116
    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "Content-Disposition: form-data; name=\""

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ltwitter4j/internal/http/HttpParameter;->getName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\"\r\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ltwitter4j/internal/http/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 117
    const-string v27, "Content-Type: text/plain; charset=UTF-8\r\n\r\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ltwitter4j/internal/http/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 118
    sget-object v27, Ltwitter4j/internal/http/HttpClientImpl;->logger:Ltwitter4j/internal/logging/Logger;

    invoke-virtual/range {v18 .. v18}, Ltwitter4j/internal/http/HttpParameter;->getValue()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ltwitter4j/internal/logging/Logger;->debug(Ljava/lang/String;)V

    .line 119
    invoke-virtual/range {v18 .. v18}, Ltwitter4j/internal/http/HttpParameter;->getValue()Ljava/lang/String;

    move-result-object v27

    const-string v28, "UTF-8"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v27

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 120
    const-string v27, "\r\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ltwitter4j/internal/http/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    goto :goto_6

    .line 123
    .end local v18    # "param":Ltwitter4j/internal/http/HttpParameter;
    :cond_3
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "--\r\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ltwitter4j/internal/http/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 124
    const-string v27, "\r\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ltwitter4j/internal/http/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 138
    .end local v4    # "arr$":[Ltwitter4j/internal/http/HttpParameter;
    .end local v5    # "boundary":Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v14    # "len$":I
    .end local v17    # "out":Ljava/io/DataOutputStream;
    :goto_7
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->flush()V

    .line 139
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V

    .line 141
    :cond_4
    new-instance v20, Ltwitter4j/internal/http/HttpResponseImpl;

    move-object/from16 v0, p0

    iget-object v0, v0, Ltwitter4j/internal/http/HttpClientImpl;->CONF:Ltwitter4j/internal/http/HttpClientConfiguration;

    move-object/from16 v27, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-direct {v0, v8, v1}, Ltwitter4j/internal/http/HttpResponseImpl;-><init>(Ljava/net/HttpURLConnection;Ltwitter4j/internal/http/HttpClientConfiguration;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 142
    .end local v21    # "res":Ltwitter4j/internal/http/HttpResponse;
    .restart local v20    # "res":Ltwitter4j/internal/http/HttpResponse;
    :try_start_4
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v22

    .line 143
    sget-object v27, Ltwitter4j/internal/http/HttpClientImpl;->logger:Ltwitter4j/internal/logging/Logger;

    invoke-virtual/range {v27 .. v27}, Ltwitter4j/internal/logging/Logger;->isDebugEnabled()Z

    move-result v27

    if-eqz v27, :cond_8

    .line 144
    sget-object v27, Ltwitter4j/internal/http/HttpClientImpl;->logger:Ltwitter4j/internal/logging/Logger;

    const-string v28, "Response: "

    invoke-virtual/range {v27 .. v28}, Ltwitter4j/internal/logging/Logger;->debug(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v23

    .line 146
    .local v23, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 147
    .local v13, "key":Ljava/lang/String;
    move-object/from16 v0, v23

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/List;

    .line 148
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 149
    .local v26, "value":Ljava/lang/String;
    if-eqz v13, :cond_7

    .line 150
    sget-object v27, Ltwitter4j/internal/http/HttpClientImpl;->logger:Ltwitter4j/internal/logging/Logger;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ": "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ltwitter4j/internal/logging/Logger;->debug(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_8

    .line 169
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v13    # "key":Ljava/lang/String;
    .end local v23    # "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v26    # "value":Ljava/lang/String;
    :catchall_1
    move-exception v27

    goto/16 :goto_4

    .line 127
    .end local v20    # "res":Ltwitter4j/internal/http/HttpResponse;
    .restart local v21    # "res":Ltwitter4j/internal/http/HttpResponse;
    :cond_6
    :try_start_5
    const-string v27, "Content-Type"

    const-string v28, "application/x-www-form-urlencoded"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v8, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual/range {p1 .. p1}, Ltwitter4j/internal/http/HttpRequest;->getParameters()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ltwitter4j/internal/http/HttpParameter;->encodeParameters([Ltwitter4j/internal/http/HttpParameter;)Ljava/lang/String;

    move-result-object v19

    .line 130
    .local v19, "postParam":Ljava/lang/String;
    sget-object v27, Ltwitter4j/internal/http/HttpClientImpl;->logger:Ltwitter4j/internal/logging/Logger;

    const-string v28, "Post Params: "

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ltwitter4j/internal/logging/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v27, "UTF-8"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 132
    .local v7, "bytes":[B
    const-string v27, "Content-Length"

    array-length v0, v7

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v8, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 135
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v16

    .line 136
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/io/OutputStream;->write([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_7

    .line 152
    .end local v7    # "bytes":[B
    .end local v19    # "postParam":Ljava/lang/String;
    .end local v21    # "res":Ltwitter4j/internal/http/HttpResponse;
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v13    # "key":Ljava/lang/String;
    .restart local v20    # "res":Ltwitter4j/internal/http/HttpResponse;
    .restart local v23    # "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v26    # "value":Ljava/lang/String;
    :cond_7
    :try_start_6
    sget-object v27, Ltwitter4j/internal/http/HttpClientImpl;->logger:Ltwitter4j/internal/logging/Logger;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ltwitter4j/internal/logging/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 157
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v13    # "key":Ljava/lang/String;
    .end local v23    # "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v26    # "value":Ljava/lang/String;
    :cond_8
    const/16 v27, 0xc8

    move/from16 v0, v22

    move/from16 v1, v27

    if-lt v0, v1, :cond_9

    const/16 v27, 0x12e

    move/from16 v0, v22

    move/from16 v1, v27

    if-eq v0, v1, :cond_b

    const/16 v27, 0x12c

    move/from16 v0, v27

    move/from16 v1, v22

    if-gt v0, v1, :cond_b

    .line 158
    :cond_9
    const/16 v27, 0x1a4

    move/from16 v0, v22

    move/from16 v1, v27

    if-eq v0, v1, :cond_a

    const/16 v27, 0x190

    move/from16 v0, v22

    move/from16 v1, v27

    if-eq v0, v1, :cond_a

    const/16 v27, 0x1f4

    move/from16 v0, v22

    move/from16 v1, v27

    if-lt v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Ltwitter4j/internal/http/HttpClientImpl;->CONF:Ltwitter4j/internal/http/HttpClientConfiguration;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ltwitter4j/internal/http/HttpClientConfiguration;->getHttpRetryCount()I

    move-result v27

    move/from16 v0, v24

    move/from16 v1, v27

    if-ne v0, v1, :cond_c

    .line 162
    :cond_a
    new-instance v27, Ltwitter4j/TwitterException;

    invoke-virtual/range {v20 .. v20}, Ltwitter4j/internal/http/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ltwitter4j/internal/http/HttpResponse;)V

    throw v27
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 170
    :cond_b
    :try_start_7
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 190
    .end local v8    # "con":Ljava/net/HttpURLConnection;
    .end local v16    # "os":Ljava/io/OutputStream;
    .end local v22    # "responseCode":I
    :goto_9
    return-object v20

    .line 170
    .restart local v8    # "con":Ljava/net/HttpURLConnection;
    .restart local v16    # "os":Ljava/io/OutputStream;
    .restart local v22    # "responseCode":I
    :cond_c
    :try_start_8
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 181
    .end local v8    # "con":Ljava/net/HttpURLConnection;
    :cond_d
    :goto_a
    :try_start_9
    sget-object v27, Ltwitter4j/internal/http/HttpClientImpl;->logger:Ltwitter4j/internal/logging/Logger;

    invoke-virtual/range {v27 .. v27}, Ltwitter4j/internal/logging/Logger;->isDebugEnabled()Z

    move-result v27

    if-eqz v27, :cond_e

    if-eqz v20, :cond_e

    .line 182
    invoke-virtual/range {v20 .. v20}, Ltwitter4j/internal/http/HttpResponse;->asString()Ljava/lang/String;

    .line 184
    :cond_e
    sget-object v27, Ltwitter4j/internal/http/HttpClientImpl;->logger:Ltwitter4j/internal/logging/Logger;

    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "Sleeping "

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Ltwitter4j/internal/http/HttpClientImpl;->CONF:Ltwitter4j/internal/http/HttpClientConfiguration;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ltwitter4j/internal/http/HttpClientConfiguration;->getHttpRetryIntervalSeconds()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " seconds until the next retry."

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ltwitter4j/internal/logging/Logger;->debug(Ljava/lang/String;)V

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Ltwitter4j/internal/http/HttpClientImpl;->CONF:Ltwitter4j/internal/http/HttpClientConfiguration;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ltwitter4j/internal/http/HttpClientConfiguration;->getHttpRetryIntervalSeconds()I

    move-result v27

    move/from16 v0, v27

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_4

    .line 81
    :goto_b
    add-int/lit8 v24, v24, 0x1

    move-object/from16 v21, v20

    .end local v20    # "res":Ltwitter4j/internal/http/HttpResponse;
    .restart local v21    # "res":Ltwitter4j/internal/http/HttpResponse;
    goto/16 :goto_0

    .end local v21    # "res":Ltwitter4j/internal/http/HttpResponse;
    .restart local v8    # "con":Ljava/net/HttpURLConnection;
    .restart local v20    # "res":Ltwitter4j/internal/http/HttpResponse;
    :catch_1
    move-exception v27

    goto :goto_9

    .line 173
    :catch_2
    move-exception v27

    goto :goto_a

    .end local v8    # "con":Ljava/net/HttpURLConnection;
    :catch_3
    move-exception v28

    goto/16 :goto_5

    :catch_4
    move-exception v27

    goto :goto_b

    .end local v16    # "os":Ljava/io/OutputStream;
    .end local v20    # "res":Ltwitter4j/internal/http/HttpResponse;
    .end local v22    # "responseCode":I
    .restart local v21    # "res":Ltwitter4j/internal/http/HttpResponse;
    :cond_f
    move-object/from16 v20, v21

    .end local v21    # "res":Ltwitter4j/internal/http/HttpResponse;
    .restart local v20    # "res":Ltwitter4j/internal/http/HttpResponse;
    goto :goto_9
.end method
