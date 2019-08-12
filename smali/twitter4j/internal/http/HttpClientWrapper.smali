.class public final Ltwitter4j/internal/http/HttpClientWrapper;
.super Ljava/lang/Object;
.source "HttpClientWrapper.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5a5f30acf4f34913L


# instance fields
.field private http:Ltwitter4j/internal/http/HttpClient;

.field private httpResponseListener:Ltwitter4j/internal/http/HttpResponseListener;

.field private final requestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final wrapperConf:Ltwitter4j/internal/http/HttpClientWrapperConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/internal/http/HttpClientWrapper;->wrapperConf:Ltwitter4j/internal/http/HttpClientWrapperConfiguration;

    .line 50
    iget-object v0, p0, Ltwitter4j/internal/http/HttpClientWrapper;->wrapperConf:Ltwitter4j/internal/http/HttpClientWrapperConfiguration;

    invoke-interface {v0}, Ltwitter4j/internal/http/HttpClientWrapperConfiguration;->getRequestHeaders()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    .line 51
    iget-object v0, p0, Ltwitter4j/internal/http/HttpClientWrapper;->wrapperConf:Ltwitter4j/internal/http/HttpClientWrapperConfiguration;

    invoke-static {v0}, Ltwitter4j/internal/http/HttpClientFactory;->getInstance(Ltwitter4j/internal/http/HttpClientConfiguration;)Ltwitter4j/internal/http/HttpClient;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/internal/http/HttpClientWrapper;->http:Ltwitter4j/internal/http/HttpClient;

    .line 52
    return-void
.end method

.method public constructor <init>(Ltwitter4j/internal/http/HttpClientWrapperConfiguration;)V
    .locals 1
    .param p1, "wrapperConf"    # Ltwitter4j/internal/http/HttpClientWrapperConfiguration;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Ltwitter4j/internal/http/HttpClientWrapper;->wrapperConf:Ltwitter4j/internal/http/HttpClientWrapperConfiguration;

    .line 43
    invoke-interface {p1}, Ltwitter4j/internal/http/HttpClientWrapperConfiguration;->getRequestHeaders()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    .line 44
    invoke-static {p1}, Ltwitter4j/internal/http/HttpClientFactory;->getInstance(Ltwitter4j/internal/http/HttpClientConfiguration;)Ltwitter4j/internal/http/HttpClient;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/internal/http/HttpClientWrapper;->http:Ltwitter4j/internal/http/HttpClient;

    .line 45
    return-void
.end method

.method private request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;
    .locals 6
    .param p1, "req"    # Ltwitter4j/internal/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 61
    :try_start_0
    iget-object v2, p0, Ltwitter4j/internal/http/HttpClientWrapper;->http:Ltwitter4j/internal/http/HttpClient;

    invoke-interface {v2, p1}, Ltwitter4j/internal/http/HttpClient;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    .line 63
    .local v0, "res":Ltwitter4j/internal/http/HttpResponse;
    iget-object v2, p0, Ltwitter4j/internal/http/HttpClientWrapper;->httpResponseListener:Ltwitter4j/internal/http/HttpResponseListener;

    if-eqz v2, :cond_0

    .line 64
    iget-object v2, p0, Ltwitter4j/internal/http/HttpClientWrapper;->httpResponseListener:Ltwitter4j/internal/http/HttpResponseListener;

    new-instance v3, Ltwitter4j/internal/http/HttpResponseEvent;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v0, v4}, Ltwitter4j/internal/http/HttpResponseEvent;-><init>(Ltwitter4j/internal/http/HttpRequest;Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/TwitterException;)V

    invoke-interface {v2, v3}, Ltwitter4j/internal/http/HttpResponseListener;->httpResponseReceived(Ltwitter4j/internal/http/HttpResponseEvent;)V
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_0
    return-object v0

    .line 66
    .end local v0    # "res":Ltwitter4j/internal/http/HttpResponse;
    :catch_0
    move-exception v1

    .line 67
    .local v1, "te":Ltwitter4j/TwitterException;
    iget-object v2, p0, Ltwitter4j/internal/http/HttpClientWrapper;->httpResponseListener:Ltwitter4j/internal/http/HttpResponseListener;

    if-eqz v2, :cond_1

    .line 68
    iget-object v2, p0, Ltwitter4j/internal/http/HttpClientWrapper;->httpResponseListener:Ltwitter4j/internal/http/HttpResponseListener;

    new-instance v3, Ltwitter4j/internal/http/HttpResponseEvent;

    invoke-direct {v3, p1, v5, v1}, Ltwitter4j/internal/http/HttpResponseEvent;-><init>(Ltwitter4j/internal/http/HttpRequest;Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/TwitterException;)V

    invoke-interface {v2, v3}, Ltwitter4j/internal/http/HttpResponseListener;->httpResponseReceived(Ltwitter4j/internal/http/HttpResponseEvent;)V

    .line 70
    :cond_1
    throw v1
.end method


# virtual methods
.method public final delete(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 136
    new-instance v0, Ltwitter4j/internal/http/HttpRequest;

    sget-object v1, Ltwitter4j/internal/http/RequestMethod;->DELETE:Ltwitter4j/internal/http/RequestMethod;

    iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public final delete(Ljava/lang/String;Ltwitter4j/auth/Authorization;)Ltwitter4j/internal/http/HttpResponse;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "authorization"    # Ltwitter4j/auth/Authorization;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 132
    new-instance v0, Ltwitter4j/internal/http/HttpRequest;

    sget-object v1, Ltwitter4j/internal/http/RequestMethod;->DELETE:Ltwitter4j/internal/http/RequestMethod;

    const/4 v3, 0x0

    iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public final delete(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "parameters"    # [Ltwitter4j/internal/http/HttpParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 127
    new-instance v0, Ltwitter4j/internal/http/HttpRequest;

    sget-object v1, Ltwitter4j/internal/http/RequestMethod;->DELETE:Ltwitter4j/internal/http/RequestMethod;

    const/4 v4, 0x0

    iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public final delete(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;)Ltwitter4j/internal/http/HttpResponse;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "parameters"    # [Ltwitter4j/internal/http/HttpParameter;
    .param p3, "authorization"    # Ltwitter4j/auth/Authorization;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 123
    new-instance v0, Ltwitter4j/internal/http/HttpRequest;

    sget-object v1, Ltwitter4j/internal/http/RequestMethod;->DELETE:Ltwitter4j/internal/http/RequestMethod;

    iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 176
    if-ne p0, p1, :cond_1

    .line 185
    :cond_0
    :goto_0
    return v1

    .line 177
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 179
    check-cast v0, Ltwitter4j/internal/http/HttpClientWrapper;

    .line 181
    .local v0, "that":Ltwitter4j/internal/http/HttpClientWrapper;
    iget-object v3, p0, Ltwitter4j/internal/http/HttpClientWrapper;->http:Ltwitter4j/internal/http/HttpClient;

    iget-object v4, v0, Ltwitter4j/internal/http/HttpClientWrapper;->http:Ltwitter4j/internal/http/HttpClient;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 182
    :cond_4
    iget-object v3, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    iget-object v4, v0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    goto :goto_0

    .line 183
    :cond_5
    iget-object v3, p0, Ltwitter4j/internal/http/HttpClientWrapper;->wrapperConf:Ltwitter4j/internal/http/HttpClientWrapperConfiguration;

    iget-object v4, v0, Ltwitter4j/internal/http/HttpClientWrapper;->wrapperConf:Ltwitter4j/internal/http/HttpClientWrapperConfiguration;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public final get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 93
    new-instance v0, Ltwitter4j/internal/http/HttpRequest;

    sget-object v1, Ltwitter4j/internal/http/RequestMethod;->GET:Ltwitter4j/internal/http/RequestMethod;

    iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public final get(Ljava/lang/String;Ltwitter4j/auth/Authorization;)Ltwitter4j/internal/http/HttpResponse;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "authorization"    # Ltwitter4j/auth/Authorization;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Ltwitter4j/internal/http/HttpRequest;

    sget-object v1, Ltwitter4j/internal/http/RequestMethod;->GET:Ltwitter4j/internal/http/RequestMethod;

    const/4 v3, 0x0

    iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public final get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "parameters"    # [Ltwitter4j/internal/http/HttpParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 85
    new-instance v0, Ltwitter4j/internal/http/HttpRequest;

    sget-object v1, Ltwitter4j/internal/http/RequestMethod;->GET:Ltwitter4j/internal/http/RequestMethod;

    const/4 v4, 0x0

    iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public final get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;)Ltwitter4j/internal/http/HttpResponse;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "parameters"    # [Ltwitter4j/internal/http/HttpParameter;
    .param p3, "authorization"    # Ltwitter4j/auth/Authorization;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 81
    new-instance v0, Ltwitter4j/internal/http/HttpRequest;

    sget-object v1, Ltwitter4j/internal/http/RequestMethod;->GET:Ltwitter4j/internal/http/RequestMethod;

    iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 190
    iget-object v1, p0, Ltwitter4j/internal/http/HttpClientWrapper;->wrapperConf:Ltwitter4j/internal/http/HttpClientWrapperConfiguration;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 191
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/internal/http/HttpClientWrapper;->http:Ltwitter4j/internal/http/HttpClient;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 192
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 193
    return v1
.end method

.method public final head(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 154
    new-instance v0, Ltwitter4j/internal/http/HttpRequest;

    sget-object v1, Ltwitter4j/internal/http/RequestMethod;->HEAD:Ltwitter4j/internal/http/RequestMethod;

    iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public final head(Ljava/lang/String;Ltwitter4j/auth/Authorization;)Ltwitter4j/internal/http/HttpResponse;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "authorization"    # Ltwitter4j/auth/Authorization;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 150
    new-instance v0, Ltwitter4j/internal/http/HttpRequest;

    sget-object v1, Ltwitter4j/internal/http/RequestMethod;->HEAD:Ltwitter4j/internal/http/RequestMethod;

    const/4 v3, 0x0

    iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public final head(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "parameters"    # [Ltwitter4j/internal/http/HttpParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 145
    new-instance v0, Ltwitter4j/internal/http/HttpRequest;

    sget-object v1, Ltwitter4j/internal/http/RequestMethod;->HEAD:Ltwitter4j/internal/http/RequestMethod;

    const/4 v4, 0x0

    iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public final head(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;)Ltwitter4j/internal/http/HttpResponse;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "parameters"    # [Ltwitter4j/internal/http/HttpParameter;
    .param p3, "authorization"    # Ltwitter4j/auth/Authorization;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 141
    new-instance v0, Ltwitter4j/internal/http/HttpRequest;

    sget-object v1, Ltwitter4j/internal/http/RequestMethod;->HEAD:Ltwitter4j/internal/http/RequestMethod;

    iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public final post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 118
    new-instance v0, Ltwitter4j/internal/http/HttpRequest;

    sget-object v1, Ltwitter4j/internal/http/RequestMethod;->POST:Ltwitter4j/internal/http/RequestMethod;

    iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public final post(Ljava/lang/String;Ltwitter4j/auth/Authorization;)Ltwitter4j/internal/http/HttpResponse;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "authorization"    # Ltwitter4j/auth/Authorization;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 114
    new-instance v0, Ltwitter4j/internal/http/HttpRequest;

    sget-object v1, Ltwitter4j/internal/http/RequestMethod;->POST:Ltwitter4j/internal/http/RequestMethod;

    const/4 v3, 0x0

    iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public final post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "parameters"    # [Ltwitter4j/internal/http/HttpParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 102
    new-instance v0, Ltwitter4j/internal/http/HttpRequest;

    sget-object v1, Ltwitter4j/internal/http/RequestMethod;->POST:Ltwitter4j/internal/http/RequestMethod;

    const/4 v4, 0x0

    iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public final post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ljava/util/Map;)Ltwitter4j/internal/http/HttpResponse;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "parameters"    # [Ltwitter4j/internal/http/HttpParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ltwitter4j/internal/http/HttpParameter;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ltwitter4j/internal/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 106
    .local p3, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Ljava/util/HashMap;

    iget-object v0, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    invoke-direct {v5, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 107
    .local v5, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p3, :cond_0

    .line 108
    invoke-interface {v5, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 110
    :cond_0
    new-instance v0, Ltwitter4j/internal/http/HttpRequest;

    sget-object v1, Ltwitter4j/internal/http/RequestMethod;->POST:Ltwitter4j/internal/http/RequestMethod;

    const/4 v4, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public final post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;)Ltwitter4j/internal/http/HttpResponse;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "parameters"    # [Ltwitter4j/internal/http/HttpParameter;
    .param p3, "authorization"    # Ltwitter4j/auth/Authorization;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 98
    new-instance v0, Ltwitter4j/internal/http/HttpRequest;

    sget-object v1, Ltwitter4j/internal/http/RequestMethod;->POST:Ltwitter4j/internal/http/RequestMethod;

    iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public final put(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 171
    new-instance v0, Ltwitter4j/internal/http/HttpRequest;

    sget-object v1, Ltwitter4j/internal/http/RequestMethod;->PUT:Ltwitter4j/internal/http/RequestMethod;

    iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public final put(Ljava/lang/String;Ltwitter4j/auth/Authorization;)Ltwitter4j/internal/http/HttpResponse;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "authorization"    # Ltwitter4j/auth/Authorization;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 167
    new-instance v0, Ltwitter4j/internal/http/HttpRequest;

    sget-object v1, Ltwitter4j/internal/http/RequestMethod;->PUT:Ltwitter4j/internal/http/RequestMethod;

    const/4 v3, 0x0

    iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public final put(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "parameters"    # [Ltwitter4j/internal/http/HttpParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 163
    new-instance v0, Ltwitter4j/internal/http/HttpRequest;

    sget-object v1, Ltwitter4j/internal/http/RequestMethod;->PUT:Ltwitter4j/internal/http/RequestMethod;

    const/4 v4, 0x0

    iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public final put(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;)Ltwitter4j/internal/http/HttpResponse;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "parameters"    # [Ltwitter4j/internal/http/HttpParameter;
    .param p3, "authorization"    # Ltwitter4j/auth/Authorization;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 159
    new-instance v0, Ltwitter4j/internal/http/HttpRequest;

    sget-object v1, Ltwitter4j/internal/http/RequestMethod;->PUT:Ltwitter4j/internal/http/RequestMethod;

    iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public final setHttpResponseListener(Ltwitter4j/internal/http/HttpResponseListener;)V
    .locals 0
    .param p1, "listener"    # Ltwitter4j/internal/http/HttpResponseListener;

    .prologue
    .line 76
    iput-object p1, p0, Ltwitter4j/internal/http/HttpClientWrapper;->httpResponseListener:Ltwitter4j/internal/http/HttpResponseListener;

    .line 77
    return-void
.end method

.method public final shutdown()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Ltwitter4j/internal/http/HttpClientWrapper;->http:Ltwitter4j/internal/http/HttpClient;

    invoke-interface {v0}, Ltwitter4j/internal/http/HttpClient;->shutdown()V

    .line 56
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HttpClientWrapper{wrapperConf="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ltwitter4j/internal/http/HttpClientWrapper;->wrapperConf:Ltwitter4j/internal/http/HttpClientWrapperConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", http="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/http/HttpClientWrapper;->http:Ltwitter4j/internal/http/HttpClient;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requestHeaders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", httpResponseListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/http/HttpClientWrapper;->httpResponseListener:Ltwitter4j/internal/http/HttpResponseListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
