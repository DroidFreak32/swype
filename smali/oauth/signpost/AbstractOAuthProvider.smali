.class public abstract Loauth/signpost/AbstractOAuthProvider;
.super Ljava/lang/Object;
.source "AbstractOAuthProvider.java"

# interfaces
.implements Loauth/signpost/OAuthProvider;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private accessTokenEndpointUrl:Ljava/lang/String;

.field private authorizationWebsiteUrl:Ljava/lang/String;

.field private defaultHeaders:Ljava/util/Map;
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

.field private isOAuth10a:Z

.field private transient listener:Loauth/signpost/OAuthProviderListener;

.field private requestTokenEndpointUrl:Ljava/lang/String;

.field private responseParameters:Loauth/signpost/http/HttpParameters;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "requestTokenEndpointUrl"    # Ljava/lang/String;
    .param p2, "accessTokenEndpointUrl"    # Ljava/lang/String;
    .param p3, "authorizationWebsiteUrl"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Loauth/signpost/AbstractOAuthProvider;->requestTokenEndpointUrl:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Loauth/signpost/AbstractOAuthProvider;->accessTokenEndpointUrl:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Loauth/signpost/AbstractOAuthProvider;->authorizationWebsiteUrl:Ljava/lang/String;

    .line 56
    new-instance v0, Loauth/signpost/http/HttpParameters;

    invoke-direct {v0}, Loauth/signpost/http/HttpParameters;-><init>()V

    iput-object v0, p0, Loauth/signpost/AbstractOAuthProvider;->responseParameters:Loauth/signpost/http/HttpParameters;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Loauth/signpost/AbstractOAuthProvider;->defaultHeaders:Ljava/util/Map;

    .line 58
    return-void
.end method


# virtual methods
.method protected closeConnection(Loauth/signpost/http/HttpRequest;Loauth/signpost/http/HttpResponse;)V
    .locals 0
    .param p1, "request"    # Loauth/signpost/http/HttpRequest;
    .param p2, "response"    # Loauth/signpost/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 287
    return-void
.end method

.method protected abstract createRequest(Ljava/lang/String;)Loauth/signpost/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public getAccessTokenEndpointUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Loauth/signpost/AbstractOAuthProvider;->accessTokenEndpointUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthorizationWebsiteUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Loauth/signpost/AbstractOAuthProvider;->authorizationWebsiteUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 335
    iget-object v0, p0, Loauth/signpost/AbstractOAuthProvider;->defaultHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getRequestTokenEndpointUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Loauth/signpost/AbstractOAuthProvider;->requestTokenEndpointUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected getResponseParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 303
    iget-object v0, p0, Loauth/signpost/AbstractOAuthProvider;->responseParameters:Loauth/signpost/http/HttpParameters;

    invoke-virtual {v0, p1}, Loauth/signpost/http/HttpParameters;->getFirst(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseParameters()Loauth/signpost/http/HttpParameters;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Loauth/signpost/AbstractOAuthProvider;->responseParameters:Loauth/signpost/http/HttpParameters;

    return-object v0
.end method

.method protected handleUnexpectedResponse(ILoauth/signpost/http/HttpResponse;)V
    .locals 6
    .param p1, "statusCode"    # I
    .param p2, "response"    # Loauth/signpost/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 229
    if-nez p2, :cond_0

    .line 230
    return-void

    .line 232
    :cond_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-interface {p2}, Loauth/signpost/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 233
    .local v1, "reader":Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    .local v2, "responseBody":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "line":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_1

    .line 237
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 241
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 245
    new-instance v3, Loauth/signpost/exception/OAuthCommunicationException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Service provider responded in error: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Loauth/signpost/http/HttpResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Loauth/signpost/exception/OAuthCommunicationException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 243
    :pswitch_0
    new-instance v3, Loauth/signpost/exception/OAuthNotAuthorizedException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Loauth/signpost/exception/OAuthNotAuthorizedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 241
    :pswitch_data_0
    .packed-switch 0x191
        :pswitch_0
    .end packed-switch
.end method

.method public isOAuth10a()Z
    .locals 1

    .prologue
    .line 315
    iget-boolean v0, p0, Loauth/signpost/AbstractOAuthProvider;->isOAuth10a:Z

    return v0
.end method

.method public removeListener(Loauth/signpost/OAuthProviderListener;)V
    .locals 1
    .param p1, "listener"    # Loauth/signpost/OAuthProviderListener;

    .prologue
    .line 343
    const/4 v0, 0x0

    iput-object v0, p0, Loauth/signpost/AbstractOAuthProvider;->listener:Loauth/signpost/OAuthProviderListener;

    .line 344
    return-void
.end method

.method public varargs declared-synchronized retrieveAccessToken(Loauth/signpost/OAuthConsumer;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "consumer"    # Loauth/signpost/OAuthConsumer;
    .param p2, "oauthVerifier"    # Ljava/lang/String;
    .param p3, "customOAuthParams"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Loauth/signpost/exception/OAuthMessageSignerException;,
            Loauth/signpost/exception/OAuthNotAuthorizedException;,
            Loauth/signpost/exception/OAuthExpectationFailedException;,
            Loauth/signpost/exception/OAuthCommunicationException;
        }
    .end annotation

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Loauth/signpost/OAuthConsumer;->getToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Loauth/signpost/OAuthConsumer;->getTokenSecret()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 97
    :cond_0
    new-instance v1, Loauth/signpost/exception/OAuthExpectationFailedException;

    const-string v2, "Authorized request token or token secret not set. Did you retrieve an authorized request token before?"

    invoke-direct {v1, v2}, Loauth/signpost/exception/OAuthExpectationFailedException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 102
    :cond_1
    :try_start_1
    new-instance v0, Loauth/signpost/http/HttpParameters;

    invoke-direct {v0}, Loauth/signpost/http/HttpParameters;-><init>()V

    .line 103
    .local v0, "params":Loauth/signpost/http/HttpParameters;
    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Loauth/signpost/http/HttpParameters;->putAll([Ljava/lang/String;Z)V

    .line 105
    iget-boolean v1, p0, Loauth/signpost/AbstractOAuthProvider;->isOAuth10a:Z

    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    .line 106
    const-string v1, "oauth_verifier"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Loauth/signpost/http/HttpParameters;->put(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 108
    :cond_2
    iget-object v1, p0, Loauth/signpost/AbstractOAuthProvider;->accessTokenEndpointUrl:Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v0}, Loauth/signpost/AbstractOAuthProvider;->retrieveToken(Loauth/signpost/OAuthConsumer;Ljava/lang/String;Loauth/signpost/http/HttpParameters;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    monitor-exit p0

    return-void
.end method

.method public varargs declared-synchronized retrieveRequestToken(Loauth/signpost/OAuthConsumer;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "consumer"    # Loauth/signpost/OAuthConsumer;
    .param p2, "callbackUrl"    # Ljava/lang/String;
    .param p3, "customOAuthParams"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Loauth/signpost/exception/OAuthMessageSignerException;,
            Loauth/signpost/exception/OAuthNotAuthorizedException;,
            Loauth/signpost/exception/OAuthExpectationFailedException;,
            Loauth/signpost/exception/OAuthCommunicationException;
        }
    .end annotation

    .prologue
    .line 66
    monitor-enter p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {p1, v2, v3}, Loauth/signpost/OAuthConsumer;->setTokenWithSecret(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    new-instance v1, Loauth/signpost/http/HttpParameters;

    invoke-direct {v1}, Loauth/signpost/http/HttpParameters;-><init>()V

    .line 71
    .local v1, "params":Loauth/signpost/http/HttpParameters;
    const/4 v2, 0x1

    invoke-virtual {v1, p3, v2}, Loauth/signpost/http/HttpParameters;->putAll([Ljava/lang/String;Z)V

    .line 72
    const-string v2, "oauth_callback"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p2, v3}, Loauth/signpost/http/HttpParameters;->put(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 74
    iget-object v2, p0, Loauth/signpost/AbstractOAuthProvider;->requestTokenEndpointUrl:Ljava/lang/String;

    invoke-virtual {p0, p1, v2, v1}, Loauth/signpost/AbstractOAuthProvider;->retrieveToken(Loauth/signpost/OAuthConsumer;Ljava/lang/String;Loauth/signpost/http/HttpParameters;)V

    .line 76
    iget-object v2, p0, Loauth/signpost/AbstractOAuthProvider;->responseParameters:Loauth/signpost/http/HttpParameters;

    const-string v3, "oauth_callback_confirmed"

    invoke-virtual {v2, v3}, Loauth/signpost/http/HttpParameters;->getFirst(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "callbackConfirmed":Ljava/lang/String;
    iget-object v2, p0, Loauth/signpost/AbstractOAuthProvider;->responseParameters:Loauth/signpost/http/HttpParameters;

    const-string v3, "oauth_callback_confirmed"

    invoke-virtual {v2, v3}, Loauth/signpost/http/HttpParameters;->remove(Ljava/lang/Object;)Ljava/util/SortedSet;

    .line 78
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Loauth/signpost/AbstractOAuthProvider;->isOAuth10a:Z

    .line 82
    iget-boolean v2, p0, Loauth/signpost/AbstractOAuthProvider;->isOAuth10a:Z

    if-eqz v2, :cond_0

    .line 83
    iget-object v2, p0, Loauth/signpost/AbstractOAuthProvider;->authorizationWebsiteUrl:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "oauth_token"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-interface {p1}, Loauth/signpost/OAuthConsumer;->getToken()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Loauth/signpost/OAuth;->addQueryParameters(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 86
    :goto_0
    monitor-exit p0

    return-object v2

    :cond_0
    :try_start_1
    iget-object v2, p0, Loauth/signpost/AbstractOAuthProvider;->authorizationWebsiteUrl:Ljava/lang/String;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "oauth_token"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-interface {p1}, Loauth/signpost/OAuthConsumer;->getToken()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "oauth_callback"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Loauth/signpost/OAuth;->addQueryParameters(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 66
    .end local v0    # "callbackConfirmed":Ljava/lang/String;
    .end local v1    # "params":Loauth/signpost/http/HttpParameters;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected retrieveToken(Loauth/signpost/OAuthConsumer;Ljava/lang/String;Loauth/signpost/http/HttpParameters;)V
    .locals 14
    .param p1, "consumer"    # Loauth/signpost/OAuthConsumer;
    .param p2, "endpointUrl"    # Ljava/lang/String;
    .param p3, "customOAuthParams"    # Loauth/signpost/http/HttpParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Loauth/signpost/exception/OAuthMessageSignerException;,
            Loauth/signpost/exception/OAuthCommunicationException;,
            Loauth/signpost/exception/OAuthNotAuthorizedException;,
            Loauth/signpost/exception/OAuthExpectationFailedException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-virtual {p0}, Loauth/signpost/AbstractOAuthProvider;->getRequestHeaders()Ljava/util/Map;

    move-result-object v1

    .line 156
    .local v1, "defaultHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Loauth/signpost/OAuthConsumer;->getConsumerKey()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_0

    invoke-interface {p1}, Loauth/signpost/OAuthConsumer;->getConsumerSecret()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_1

    .line 157
    :cond_0
    new-instance v12, Loauth/signpost/exception/OAuthExpectationFailedException;

    const-string v13, "Consumer key or secret not set"

    invoke-direct {v12, v13}, Loauth/signpost/exception/OAuthExpectationFailedException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 160
    :cond_1
    const/4 v5, 0x0

    .line 161
    .local v5, "request":Loauth/signpost/http/HttpRequest;
    const/4 v7, 0x0

    .line 163
    .local v7, "response":Loauth/signpost/http/HttpResponse;
    :try_start_0
    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Loauth/signpost/AbstractOAuthProvider;->createRequest(Ljava/lang/String;)Loauth/signpost/http/HttpRequest;

    move-result-object v5

    .line 164
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 165
    .local v3, "header":Ljava/lang/String;
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v5, v3, v12}, Loauth/signpost/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Loauth/signpost/exception/OAuthNotAuthorizedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Loauth/signpost/exception/OAuthExpectationFailedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 213
    .end local v3    # "header":Ljava/lang/String;
    .end local v4    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v12

    :try_start_1
    throw v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    :catchall_0
    move-exception v12

    .line 221
    :try_start_2
    invoke-virtual {p0, v5, v7}, Loauth/signpost/AbstractOAuthProvider;->closeConnection(Loauth/signpost/http/HttpRequest;Loauth/signpost/http/HttpResponse;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 223
    throw v12

    .line 167
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    if-eqz p3, :cond_3

    :try_start_3
    invoke-virtual/range {p3 .. p3}, Loauth/signpost/http/HttpParameters;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3

    .line 168
    move-object/from16 v0, p3

    invoke-interface {p1, v0}, Loauth/signpost/OAuthConsumer;->setAdditionalParameters(Loauth/signpost/http/HttpParameters;)V

    .line 171
    :cond_3
    iget-object v12, p0, Loauth/signpost/AbstractOAuthProvider;->listener:Loauth/signpost/OAuthProviderListener;

    if-eqz v12, :cond_4

    .line 172
    iget-object v12, p0, Loauth/signpost/AbstractOAuthProvider;->listener:Loauth/signpost/OAuthProviderListener;

    invoke-interface {v12, v5}, Loauth/signpost/OAuthProviderListener;->prepareRequest(Loauth/signpost/http/HttpRequest;)V

    .line 175
    :cond_4
    invoke-interface {p1, v5}, Loauth/signpost/OAuthConsumer;->sign(Loauth/signpost/http/HttpRequest;)Loauth/signpost/http/HttpRequest;

    .line 177
    iget-object v12, p0, Loauth/signpost/AbstractOAuthProvider;->listener:Loauth/signpost/OAuthProviderListener;

    if-eqz v12, :cond_5

    .line 178
    iget-object v12, p0, Loauth/signpost/AbstractOAuthProvider;->listener:Loauth/signpost/OAuthProviderListener;

    invoke-interface {v12, v5}, Loauth/signpost/OAuthProviderListener;->prepareSubmission(Loauth/signpost/http/HttpRequest;)V

    .line 181
    :cond_5
    invoke-virtual {p0, v5}, Loauth/signpost/AbstractOAuthProvider;->sendRequest(Loauth/signpost/http/HttpRequest;)Loauth/signpost/http/HttpResponse;

    move-result-object v7

    .line 182
    invoke-interface {v7}, Loauth/signpost/http/HttpResponse;->getStatusCode()I

    move-result v10

    .line 184
    .local v10, "statusCode":I
    const/4 v6, 0x0

    .line 185
    .local v6, "requestHandled":Z
    iget-object v12, p0, Loauth/signpost/AbstractOAuthProvider;->listener:Loauth/signpost/OAuthProviderListener;

    if-eqz v12, :cond_6

    .line 186
    iget-object v12, p0, Loauth/signpost/AbstractOAuthProvider;->listener:Loauth/signpost/OAuthProviderListener;

    invoke-interface {v12, v5, v7}, Loauth/signpost/OAuthProviderListener;->onResponseReceived(Loauth/signpost/http/HttpRequest;Loauth/signpost/http/HttpResponse;)Z
    :try_end_3
    .catch Loauth/signpost/exception/OAuthNotAuthorizedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Loauth/signpost/exception/OAuthExpectationFailedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v6

    .line 188
    :cond_6
    if-eqz v6, :cond_7

    .line 221
    :try_start_4
    invoke-virtual {p0, v5, v7}, Loauth/signpost/AbstractOAuthProvider;->closeConnection(Loauth/signpost/http/HttpRequest;Loauth/signpost/http/HttpResponse;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 224
    :goto_1
    return-void

    .line 222
    :catch_1
    move-exception v2

    .line 223
    .local v2, "e":Ljava/lang/Exception;
    new-instance v12, Loauth/signpost/exception/OAuthCommunicationException;

    invoke-direct {v12, v2}, Loauth/signpost/exception/OAuthCommunicationException;-><init>(Ljava/lang/Exception;)V

    throw v12

    .line 192
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_7
    const/16 v12, 0x12c

    if-lt v10, v12, :cond_8

    .line 193
    :try_start_5
    invoke-virtual {p0, v10, v7}, Loauth/signpost/AbstractOAuthProvider;->handleUnexpectedResponse(ILoauth/signpost/http/HttpResponse;)V

    .line 196
    :cond_8
    invoke-interface {v7}, Loauth/signpost/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v12

    invoke-static {v12}, Loauth/signpost/OAuth;->decodeForm(Ljava/io/InputStream;)Loauth/signpost/http/HttpParameters;

    move-result-object v8

    .line 198
    .local v8, "responseParams":Loauth/signpost/http/HttpParameters;
    const-string v12, "oauth_token"

    invoke-virtual {v8, v12}, Loauth/signpost/http/HttpParameters;->getFirst(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 199
    .local v11, "token":Ljava/lang/String;
    const-string v12, "oauth_token_secret"

    invoke-virtual {v8, v12}, Loauth/signpost/http/HttpParameters;->getFirst(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 200
    .local v9, "secret":Ljava/lang/String;
    const-string v12, "oauth_token"

    invoke-virtual {v8, v12}, Loauth/signpost/http/HttpParameters;->remove(Ljava/lang/Object;)Ljava/util/SortedSet;

    .line 201
    const-string v12, "oauth_token_secret"

    invoke-virtual {v8, v12}, Loauth/signpost/http/HttpParameters;->remove(Ljava/lang/Object;)Ljava/util/SortedSet;

    .line 203
    invoke-virtual {p0, v8}, Loauth/signpost/AbstractOAuthProvider;->setResponseParameters(Loauth/signpost/http/HttpParameters;)V

    .line 205
    if-eqz v11, :cond_9

    if-nez v9, :cond_a

    .line 206
    :cond_9
    new-instance v12, Loauth/signpost/exception/OAuthExpectationFailedException;

    const-string v13, "Request token or token secret not set in server reply. The service provider you use is probably buggy."

    invoke-direct {v12, v13}, Loauth/signpost/exception/OAuthExpectationFailedException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_5
    .catch Loauth/signpost/exception/OAuthNotAuthorizedException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Loauth/signpost/exception/OAuthExpectationFailedException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 215
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "requestHandled":Z
    .end local v8    # "responseParams":Loauth/signpost/http/HttpParameters;
    .end local v9    # "secret":Ljava/lang/String;
    .end local v10    # "statusCode":I
    .end local v11    # "token":Ljava/lang/String;
    :catch_2
    move-exception v12

    :try_start_6
    throw v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 211
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v6    # "requestHandled":Z
    .restart local v8    # "responseParams":Loauth/signpost/http/HttpParameters;
    .restart local v9    # "secret":Ljava/lang/String;
    .restart local v10    # "statusCode":I
    .restart local v11    # "token":Ljava/lang/String;
    :cond_a
    :try_start_7
    invoke-interface {p1, v11, v9}, Loauth/signpost/OAuthConsumer;->setTokenWithSecret(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Loauth/signpost/exception/OAuthNotAuthorizedException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Loauth/signpost/exception/OAuthExpectationFailedException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 221
    :try_start_8
    invoke-virtual {p0, v5, v7}, Loauth/signpost/AbstractOAuthProvider;->closeConnection(Loauth/signpost/http/HttpRequest;Loauth/signpost/http/HttpResponse;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_1

    .line 222
    :catch_3
    move-exception v2

    .line 223
    .restart local v2    # "e":Ljava/lang/Exception;
    new-instance v12, Loauth/signpost/exception/OAuthCommunicationException;

    invoke-direct {v12, v2}, Loauth/signpost/exception/OAuthCommunicationException;-><init>(Ljava/lang/Exception;)V

    throw v12

    .line 217
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "requestHandled":Z
    .end local v8    # "responseParams":Loauth/signpost/http/HttpParameters;
    .end local v9    # "secret":Ljava/lang/String;
    .end local v10    # "statusCode":I
    .end local v11    # "token":Ljava/lang/String;
    :catch_4
    move-exception v2

    .line 218
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_9
    new-instance v12, Loauth/signpost/exception/OAuthCommunicationException;

    invoke-direct {v12, v2}, Loauth/signpost/exception/OAuthCommunicationException;-><init>(Ljava/lang/Exception;)V

    throw v12
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 222
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v2

    .line 223
    .restart local v2    # "e":Ljava/lang/Exception;
    new-instance v12, Loauth/signpost/exception/OAuthCommunicationException;

    invoke-direct {v12, v2}, Loauth/signpost/exception/OAuthCommunicationException;-><init>(Ljava/lang/Exception;)V

    throw v12
.end method

.method protected abstract sendRequest(Loauth/signpost/http/HttpRequest;)Loauth/signpost/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public setListener(Loauth/signpost/OAuthProviderListener;)V
    .locals 0
    .param p1, "listener"    # Loauth/signpost/OAuthProviderListener;

    .prologue
    .line 339
    iput-object p1, p0, Loauth/signpost/AbstractOAuthProvider;->listener:Loauth/signpost/OAuthProviderListener;

    .line 340
    return-void
.end method

.method public setOAuth10a(Z)V
    .locals 0
    .param p1, "isOAuth10aProvider"    # Z

    .prologue
    .line 311
    iput-boolean p1, p0, Loauth/signpost/AbstractOAuthProvider;->isOAuth10a:Z

    .line 312
    return-void
.end method

.method public setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 331
    iget-object v0, p0, Loauth/signpost/AbstractOAuthProvider;->defaultHeaders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    return-void
.end method

.method public setResponseParameters(Loauth/signpost/http/HttpParameters;)V
    .locals 0
    .param p1, "parameters"    # Loauth/signpost/http/HttpParameters;

    .prologue
    .line 307
    iput-object p1, p0, Loauth/signpost/AbstractOAuthProvider;->responseParameters:Loauth/signpost/http/HttpParameters;

    .line 308
    return-void
.end method
