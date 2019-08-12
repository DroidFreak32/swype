.class abstract Ltwitter4j/TwitterBaseImpl;
.super Ljava/lang/Object;
.source "TwitterBaseImpl.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ltwitter4j/TwitterBase;
.implements Ltwitter4j/auth/OAuth2Support;
.implements Ltwitter4j/auth/OAuthSupport;
.implements Ltwitter4j/internal/http/HttpResponseListener;


# static fields
.field private static final serialVersionUID:J = -0x34e79201c9363e6cL


# instance fields
.field protected auth:Ltwitter4j/auth/Authorization;

.field protected conf:Ltwitter4j/conf/Configuration;

.field protected factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

.field protected transient http:Ltwitter4j/internal/http/HttpClientWrapper;

.field protected transient id:J

.field private rateLimitStatusListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltwitter4j/RateLimitStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field protected transient screenName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltwitter4j/conf/Configuration;Ltwitter4j/auth/Authorization;)V
    .locals 2
    .param p1, "conf"    # Ltwitter4j/conf/Configuration;
    .param p2, "auth"    # Ltwitter4j/auth/Authorization;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Ltwitter4j/TwitterBaseImpl;->screenName:Ljava/lang/String;

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltwitter4j/TwitterBaseImpl;->id:J

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ltwitter4j/TwitterBaseImpl;->rateLimitStatusListeners:Ljava/util/List;

    .line 52
    iput-object p1, p0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;

    .line 53
    iput-object p2, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;

    .line 54
    invoke-direct {p0}, Ltwitter4j/TwitterBaseImpl;->init()V

    .line 55
    return-void
.end method

.method private getOAuth()Ltwitter4j/auth/OAuthSupport;
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;

    instance-of v0, v0, Ltwitter4j/auth/OAuthSupport;

    if-nez v0, :cond_0

    .line 403
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "OAuth consumer key/secret combination not supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 406
    :cond_0
    iget-object v0, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;

    check-cast v0, Ltwitter4j/auth/OAuthSupport;

    return-object v0
.end method

.method private getOAuth2()Ltwitter4j/auth/OAuth2Support;
    .locals 2

    .prologue
    .line 425
    iget-object v0, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;

    instance-of v0, v0, Ltwitter4j/auth/OAuth2Support;

    if-nez v0, :cond_0

    .line 426
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "OAuth consumer key/secret combination not supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 429
    :cond_0
    iget-object v0, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;

    check-cast v0, Ltwitter4j/auth/OAuth2Support;

    return-object v0
.end method

.method private init()V
    .locals 9

    .prologue
    .line 58
    iget-object v7, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;

    if-nez v7, :cond_1

    .line 60
    iget-object v7, p0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v7}, Ltwitter4j/conf/Configuration;->getOAuthConsumerKey()Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, "consumerKey":Ljava/lang/String;
    iget-object v7, p0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v7}, Ltwitter4j/conf/Configuration;->getOAuthConsumerSecret()Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, "consumerSecret":Ljava/lang/String;
    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    .line 64
    iget-object v7, p0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v7}, Ltwitter4j/conf/Configuration;->isApplicationOnlyAuthEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 65
    new-instance v5, Ltwitter4j/auth/OAuth2Authorization;

    iget-object v7, p0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v5, v7}, Ltwitter4j/auth/OAuth2Authorization;-><init>(Ltwitter4j/conf/Configuration;)V

    .line 66
    .local v5, "oauth2":Ltwitter4j/auth/OAuth2Authorization;
    iget-object v7, p0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v7}, Ltwitter4j/conf/Configuration;->getOAuth2TokenType()Ljava/lang/String;

    move-result-object v6

    .line 67
    .local v6, "tokenType":Ljava/lang/String;
    iget-object v7, p0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v7}, Ltwitter4j/conf/Configuration;->getOAuth2AccessToken()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "accessToken":Ljava/lang/String;
    if-eqz v6, :cond_0

    if-eqz v0, :cond_0

    .line 69
    new-instance v7, Ltwitter4j/auth/OAuth2Token;

    invoke-direct {v7, v6, v0}, Ltwitter4j/auth/OAuth2Token;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ltwitter4j/auth/OAuth2Authorization;->setOAuth2Token(Ltwitter4j/auth/OAuth2Token;)V

    .line 71
    :cond_0
    iput-object v5, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;

    .line 86
    .end local v0    # "accessToken":Ljava/lang/String;
    .end local v2    # "consumerKey":Ljava/lang/String;
    .end local v3    # "consumerSecret":Ljava/lang/String;
    .end local v5    # "oauth2":Ltwitter4j/auth/OAuth2Authorization;
    .end local v6    # "tokenType":Ljava/lang/String;
    :cond_1
    :goto_0
    new-instance v7, Ltwitter4j/internal/http/HttpClientWrapper;

    iget-object v8, p0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v7, v8}, Ltwitter4j/internal/http/HttpClientWrapper;-><init>(Ltwitter4j/internal/http/HttpClientWrapperConfiguration;)V

    iput-object v7, p0, Ltwitter4j/TwitterBaseImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    .line 87
    iget-object v7, p0, Ltwitter4j/TwitterBaseImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    invoke-virtual {v7, p0}, Ltwitter4j/internal/http/HttpClientWrapper;->setHttpResponseListener(Ltwitter4j/internal/http/HttpResponseListener;)V

    .line 88
    invoke-virtual {p0}, Ltwitter4j/TwitterBaseImpl;->setFactory()V

    .line 89
    return-void

    .line 74
    .restart local v2    # "consumerKey":Ljava/lang/String;
    .restart local v3    # "consumerSecret":Ljava/lang/String;
    :cond_2
    new-instance v4, Ltwitter4j/auth/OAuthAuthorization;

    iget-object v7, p0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v4, v7}, Ltwitter4j/auth/OAuthAuthorization;-><init>(Ltwitter4j/conf/Configuration;)V

    .line 75
    .local v4, "oauth":Ltwitter4j/auth/OAuthAuthorization;
    iget-object v7, p0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v7}, Ltwitter4j/conf/Configuration;->getOAuthAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 76
    .restart local v0    # "accessToken":Ljava/lang/String;
    iget-object v7, p0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v7}, Ltwitter4j/conf/Configuration;->getOAuthAccessTokenSecret()Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "accessTokenSecret":Ljava/lang/String;
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 78
    new-instance v7, Ltwitter4j/auth/AccessToken;

    invoke-direct {v7, v0, v1}, Ltwitter4j/auth/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ltwitter4j/auth/OAuthAuthorization;->setOAuthAccessToken(Ltwitter4j/auth/AccessToken;)V

    .line 80
    :cond_3
    iput-object v4, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;

    goto :goto_0

    .line 83
    .end local v0    # "accessToken":Ljava/lang/String;
    .end local v1    # "accessTokenSecret":Ljava/lang/String;
    .end local v4    # "oauth":Ltwitter4j/auth/OAuthAuthorization;
    :cond_4
    invoke-static {}, Ltwitter4j/auth/NullAuthorization;->getInstance()Ltwitter4j/auth/NullAuthorization;

    move-result-object v7

    iput-object v7, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 242
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    .line 244
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltwitter4j/conf/Configuration;

    iput-object v0, p0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;

    .line 245
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltwitter4j/auth/Authorization;

    iput-object v0, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;

    .line 246
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Ltwitter4j/TwitterBaseImpl;->rateLimitStatusListeners:Ljava/util/List;

    .line 247
    new-instance v0, Ltwitter4j/internal/http/HttpClientWrapper;

    iget-object v1, p0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1}, Ltwitter4j/internal/http/HttpClientWrapper;-><init>(Ltwitter4j/internal/http/HttpClientWrapperConfiguration;)V

    iput-object v0, p0, Ltwitter4j/TwitterBaseImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    .line 248
    iget-object v0, p0, Ltwitter4j/TwitterBaseImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    invoke-virtual {v0, p0}, Ltwitter4j/internal/http/HttpClientWrapper;->setHttpResponseListener(Ltwitter4j/internal/http/HttpResponseListener;)V

    .line 249
    invoke-virtual {p0}, Ltwitter4j/TwitterBaseImpl;->setFactory()V

    .line 250
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    .line 226
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 228
    iget-object v3, p0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 229
    iget-object v3, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 230
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 231
    .local v2, "serializableRateLimitStatusListeners":Ljava/util/List;, "Ljava/util/List<Ltwitter4j/RateLimitStatusListener;>;"
    iget-object v3, p0, Ltwitter4j/TwitterBaseImpl;->rateLimitStatusListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltwitter4j/RateLimitStatusListener;

    .line 232
    .local v1, "listener":Ltwitter4j/RateLimitStatusListener;
    instance-of v3, v1, Ljava/io/Serializable;

    if-eqz v3, :cond_0

    .line 233
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 236
    .end local v1    # "listener":Ltwitter4j/RateLimitStatusListener;
    :cond_1
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 237
    return-void
.end method


# virtual methods
.method public addRateLimitStatusListener(Ltwitter4j/RateLimitStatusListener;)V
    .locals 1
    .param p1, "listener"    # Ltwitter4j/RateLimitStatusListener;

    .prologue
    .line 148
    iget-object v0, p0, Ltwitter4j/TwitterBaseImpl;->rateLimitStatusListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    return-void
.end method

.method protected final ensureAuthorizationEnabled()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;

    invoke-interface {v0}, Ltwitter4j/auth/Authorization;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Authentication credentials are missing. See http://twitter4j.org/en/configuration.html for the detail."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_0
    return-void
.end method

.method protected final ensureOAuthEnabled()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;

    instance-of v0, v0, Ltwitter4j/auth/OAuthAuthorization;

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "OAuth required. Authentication credentials are missing. See http://twitter4j.org/en/configuration.html for the detail."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 434
    if-ne p0, p1, :cond_1

    .line 447
    :cond_0
    :goto_0
    return v1

    .line 435
    :cond_1
    instance-of v3, p1, Ltwitter4j/TwitterBaseImpl;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 437
    check-cast v0, Ltwitter4j/TwitterBaseImpl;

    .line 439
    .local v0, "that":Ltwitter4j/TwitterBaseImpl;
    iget-object v3, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;

    if-eqz v3, :cond_4

    iget-object v3, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;

    iget-object v4, v0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_3
    move v1, v2

    .line 440
    goto :goto_0

    .line 439
    :cond_4
    iget-object v3, v0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;

    if-nez v3, :cond_3

    .line 441
    :cond_5
    iget-object v3, p0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;

    iget-object v4, v0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    goto :goto_0

    .line 442
    :cond_6
    iget-object v3, p0, Ltwitter4j/TwitterBaseImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    if-eqz v3, :cond_8

    iget-object v3, p0, Ltwitter4j/TwitterBaseImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    iget-object v4, v0, Ltwitter4j/TwitterBaseImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    invoke-virtual {v3, v4}, Ltwitter4j/internal/http/HttpClientWrapper;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_7
    move v1, v2

    .line 443
    goto :goto_0

    .line 442
    :cond_8
    iget-object v3, v0, Ltwitter4j/TwitterBaseImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    if-nez v3, :cond_7

    .line 444
    :cond_9
    iget-object v3, p0, Ltwitter4j/TwitterBaseImpl;->rateLimitStatusListeners:Ljava/util/List;

    iget-object v4, v0, Ltwitter4j/TwitterBaseImpl;->rateLimitStatusListeners:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 445
    goto :goto_0
.end method

.method protected fillInIDAndScreenName()Ltwitter4j/User;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-virtual {p0}, Ltwitter4j/TwitterBaseImpl;->ensureAuthorizationEnabled()V

    .line 137
    iget-object v1, p0, Ltwitter4j/TwitterBaseImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    iget-object v2, p0, Ltwitter4j/TwitterBaseImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v4}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "account/verify_credentials.json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;

    invoke-virtual {v2, v3, v4}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;Ltwitter4j/auth/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v2

    invoke-interface {v1, v2}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createUser(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/User;

    move-result-object v0

    .line 138
    .local v0, "user":Ltwitter4j/User;
    invoke-interface {v0}, Ltwitter4j/User;->getScreenName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/TwitterBaseImpl;->screenName:Ljava/lang/String;

    .line 139
    invoke-interface {v0}, Ltwitter4j/User;->getId()J

    move-result-wide v2

    iput-wide v2, p0, Ltwitter4j/TwitterBaseImpl;->id:J

    .line 140
    return-object v0
.end method

.method public final getAuthorization()Ltwitter4j/auth/Authorization;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;

    return-object v0
.end method

.method public getConfiguration()Ltwitter4j/conf/Configuration;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;

    return-object v0
.end method

.method public getId()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;

    invoke-interface {v0}, Ltwitter4j/auth/Authorization;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Neither user ID/password combination nor OAuth consumer key/secret combination supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Ltwitter4j/TwitterBaseImpl;->id:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 129
    invoke-virtual {p0}, Ltwitter4j/TwitterBaseImpl;->fillInIDAndScreenName()Ltwitter4j/User;

    .line 132
    :cond_1
    iget-wide v0, p0, Ltwitter4j/TwitterBaseImpl;->id:J

    return-wide v0
.end method

.method public declared-synchronized getOAuth2Token()Ltwitter4j/auth/OAuth2Token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 411
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ltwitter4j/TwitterBaseImpl;->getOAuth2()Ltwitter4j/auth/OAuth2Support;

    move-result-object v0

    invoke-interface {v0}, Ltwitter4j/auth/OAuth2Support;->getOAuth2Token()Ltwitter4j/auth/OAuth2Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getOAuthAccessToken()Ltwitter4j/auth/AccessToken;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 320
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ltwitter4j/TwitterBaseImpl;->getAuthorization()Ltwitter4j/auth/Authorization;

    move-result-object v2

    .line 322
    .local v2, "auth":Ltwitter4j/auth/Authorization;
    instance-of v7, v2, Ltwitter4j/auth/BasicAuthorization;

    if-eqz v7, :cond_1

    .line 323
    move-object v0, v2

    check-cast v0, Ltwitter4j/auth/BasicAuthorization;

    move-object v3, v0

    .line 324
    .local v3, "basicAuth":Ltwitter4j/auth/BasicAuthorization;
    iget-object v7, p0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v7}, Ltwitter4j/auth/AuthorizationFactory;->getInstance(Ltwitter4j/conf/Configuration;)Ltwitter4j/auth/Authorization;

    move-result-object v2

    .line 325
    instance-of v7, v2, Ltwitter4j/auth/OAuthAuthorization;

    if-eqz v7, :cond_0

    .line 326
    iput-object v2, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;

    .line 327
    move-object v0, v2

    check-cast v0, Ltwitter4j/auth/OAuthAuthorization;

    move-object v7, v0

    .line 328
    invoke-virtual {v3}, Ltwitter4j/auth/BasicAuthorization;->getUserId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Ltwitter4j/auth/BasicAuthorization;->getPassword()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ltwitter4j/auth/OAuthAuthorization;->getOAuthAccessToken(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/auth/AccessToken;

    move-result-object v4

    .line 343
    .end local v3    # "basicAuth":Ltwitter4j/auth/BasicAuthorization;
    .local v4, "oauthAccessToken":Ltwitter4j/auth/AccessToken;
    :goto_0
    invoke-virtual {v4}, Ltwitter4j/auth/AccessToken;->getScreenName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Ltwitter4j/TwitterBaseImpl;->screenName:Ljava/lang/String;

    .line 344
    invoke-virtual {v4}, Ltwitter4j/auth/AccessToken;->getUserId()J

    move-result-wide v8

    iput-wide v8, p0, Ltwitter4j/TwitterBaseImpl;->id:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    monitor-exit p0

    return-object v4

    .line 330
    .end local v4    # "oauthAccessToken":Ltwitter4j/auth/AccessToken;
    .restart local v3    # "basicAuth":Ltwitter4j/auth/BasicAuthorization;
    :cond_0
    :try_start_1
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "consumer key / secret combination not supplied."

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 320
    .end local v2    # "auth":Ltwitter4j/auth/Authorization;
    .end local v3    # "basicAuth":Ltwitter4j/auth/BasicAuthorization;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 332
    .restart local v2    # "auth":Ltwitter4j/auth/Authorization;
    :cond_1
    :try_start_2
    instance-of v7, v2, Ltwitter4j/internal/http/XAuthAuthorization;

    if-eqz v7, :cond_2

    .line 334
    move-object v0, v2

    check-cast v0, Ltwitter4j/internal/http/XAuthAuthorization;

    move-object v6, v0

    .line 335
    .local v6, "xauth":Ltwitter4j/internal/http/XAuthAuthorization;
    iput-object v6, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;

    .line 336
    new-instance v5, Ltwitter4j/auth/OAuthAuthorization;

    iget-object v7, p0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v5, v7}, Ltwitter4j/auth/OAuthAuthorization;-><init>(Ltwitter4j/conf/Configuration;)V

    .line 337
    .local v5, "oauthAuth":Ltwitter4j/auth/OAuthAuthorization;
    invoke-virtual {v6}, Ltwitter4j/internal/http/XAuthAuthorization;->getConsumerKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ltwitter4j/internal/http/XAuthAuthorization;->getConsumerSecret()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ltwitter4j/auth/OAuthAuthorization;->setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    invoke-virtual {v6}, Ltwitter4j/internal/http/XAuthAuthorization;->getUserId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ltwitter4j/internal/http/XAuthAuthorization;->getPassword()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ltwitter4j/auth/OAuthAuthorization;->getOAuthAccessToken(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/auth/AccessToken;

    move-result-object v4

    .line 339
    .restart local v4    # "oauthAccessToken":Ltwitter4j/auth/AccessToken;
    goto :goto_0

    .line 340
    .end local v4    # "oauthAccessToken":Ltwitter4j/auth/AccessToken;
    .end local v5    # "oauthAuth":Ltwitter4j/auth/OAuthAuthorization;
    .end local v6    # "xauth":Ltwitter4j/internal/http/XAuthAuthorization;
    :cond_2
    invoke-direct {p0}, Ltwitter4j/TwitterBaseImpl;->getOAuth()Ltwitter4j/auth/OAuthSupport;

    move-result-object v7

    invoke-interface {v7}, Ltwitter4j/auth/OAuthSupport;->getOAuthAccessToken()Ltwitter4j/auth/AccessToken;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .restart local v4    # "oauthAccessToken":Ltwitter4j/auth/AccessToken;
    goto :goto_0
.end method

.method public declared-synchronized getOAuthAccessToken(Ljava/lang/String;)Ltwitter4j/auth/AccessToken;
    .locals 2
    .param p1, "oauthVerifier"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 356
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ltwitter4j/TwitterBaseImpl;->getOAuth()Ltwitter4j/auth/OAuthSupport;

    move-result-object v1

    invoke-interface {v1, p1}, Ltwitter4j/auth/OAuthSupport;->getOAuthAccessToken(Ljava/lang/String;)Ltwitter4j/auth/AccessToken;

    move-result-object v0

    .line 357
    .local v0, "oauthAccessToken":Ltwitter4j/auth/AccessToken;
    invoke-virtual {v0}, Ltwitter4j/auth/AccessToken;->getScreenName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/TwitterBaseImpl;->screenName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    monitor-exit p0

    return-object v0

    .line 356
    .end local v0    # "oauthAccessToken":Ltwitter4j/auth/AccessToken;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getOAuthAccessToken(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/auth/AccessToken;
    .locals 1
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 397
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ltwitter4j/TwitterBaseImpl;->getOAuth()Ltwitter4j/auth/OAuthSupport;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ltwitter4j/auth/OAuthSupport;->getOAuthAccessToken(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/auth/AccessToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getOAuthAccessToken(Ltwitter4j/auth/RequestToken;)Ltwitter4j/auth/AccessToken;
    .locals 2
    .param p1, "requestToken"    # Ltwitter4j/auth/RequestToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 368
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ltwitter4j/TwitterBaseImpl;->getOAuth()Ltwitter4j/auth/OAuthSupport;

    move-result-object v1

    .line 369
    invoke-interface {v1, p1}, Ltwitter4j/auth/OAuthSupport;->getOAuthAccessToken(Ltwitter4j/auth/RequestToken;)Ltwitter4j/auth/AccessToken;

    move-result-object v0

    .line 370
    .local v0, "oauthAccessToken":Ltwitter4j/auth/AccessToken;
    invoke-virtual {v0}, Ltwitter4j/auth/AccessToken;->getScreenName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/TwitterBaseImpl;->screenName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    monitor-exit p0

    return-object v0

    .line 368
    .end local v0    # "oauthAccessToken":Ltwitter4j/auth/AccessToken;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getOAuthAccessToken(Ltwitter4j/auth/RequestToken;Ljava/lang/String;)Ltwitter4j/auth/AccessToken;
    .locals 1
    .param p1, "requestToken"    # Ltwitter4j/auth/RequestToken;
    .param p2, "oauthVerifier"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 381
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ltwitter4j/TwitterBaseImpl;->getOAuth()Ltwitter4j/auth/OAuthSupport;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ltwitter4j/auth/OAuthSupport;->getOAuthAccessToken(Ltwitter4j/auth/RequestToken;Ljava/lang/String;)Ltwitter4j/auth/AccessToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getOAuthRequestToken()Ltwitter4j/auth/RequestToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 290
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltwitter4j/TwitterBaseImpl;->getOAuthRequestToken(Ljava/lang/String;)Ltwitter4j/auth/RequestToken;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthRequestToken(Ljava/lang/String;)Ltwitter4j/auth/RequestToken;
    .locals 1
    .param p1, "callbackUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 298
    invoke-direct {p0}, Ltwitter4j/TwitterBaseImpl;->getOAuth()Ltwitter4j/auth/OAuthSupport;

    move-result-object v0

    invoke-interface {v0, p1}, Ltwitter4j/auth/OAuthSupport;->getOAuthRequestToken(Ljava/lang/String;)Ltwitter4j/auth/RequestToken;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthRequestToken(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/auth/RequestToken;
    .locals 1
    .param p1, "callbackUrl"    # Ljava/lang/String;
    .param p2, "xAuthAccessType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 306
    invoke-direct {p0}, Ltwitter4j/TwitterBaseImpl;->getOAuth()Ltwitter4j/auth/OAuthSupport;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ltwitter4j/auth/OAuthSupport;->getOAuthRequestToken(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/auth/RequestToken;

    move-result-object v0

    return-object v0
.end method

.method public getScreenName()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;

    invoke-interface {v0}, Ltwitter4j/auth/Authorization;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Neither user ID/password combination nor OAuth consumer key/secret combination supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    iget-object v0, p0, Ltwitter4j/TwitterBaseImpl;->screenName:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 105
    iget-object v0, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;

    instance-of v0, v0, Ltwitter4j/auth/BasicAuthorization;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;

    check-cast v0, Ltwitter4j/auth/BasicAuthorization;

    invoke-virtual {v0}, Ltwitter4j/auth/BasicAuthorization;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/TwitterBaseImpl;->screenName:Ljava/lang/String;

    .line 107
    const/4 v0, -0x1

    iget-object v1, p0, Ltwitter4j/TwitterBaseImpl;->screenName:Ljava/lang/String;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Ltwitter4j/TwitterBaseImpl;->screenName:Ljava/lang/String;

    .line 111
    :cond_1
    iget-object v0, p0, Ltwitter4j/TwitterBaseImpl;->screenName:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 113
    invoke-virtual {p0}, Ltwitter4j/TwitterBaseImpl;->fillInIDAndScreenName()Ltwitter4j/User;

    .line 116
    :cond_2
    iget-object v0, p0, Ltwitter4j/TwitterBaseImpl;->screenName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 452
    iget-object v1, p0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 453
    .local v0, "result":I
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Ltwitter4j/TwitterBaseImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ltwitter4j/TwitterBaseImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    invoke-virtual {v1}, Ltwitter4j/internal/http/HttpClientWrapper;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v3, v1

    .line 454
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/TwitterBaseImpl;->rateLimitStatusListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 455
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;

    if-eqz v3, :cond_0

    iget-object v2, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_0
    add-int/2addr v1, v2

    .line 456
    return v1

    :cond_1
    move v1, v2

    .line 453
    goto :goto_0
.end method

.method public httpResponseReceived(Ltwitter4j/internal/http/HttpResponseEvent;)V
    .locals 8
    .param p1, "event"    # Ltwitter4j/internal/http/HttpResponseEvent;

    .prologue
    .line 153
    iget-object v7, p0, Ltwitter4j/TwitterBaseImpl;->rateLimitStatusListeners:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_3

    .line 154
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponseEvent;->getResponse()Ltwitter4j/internal/http/HttpResponse;

    move-result-object v3

    .line 155
    .local v3, "res":Ltwitter4j/internal/http/HttpResponse;
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponseEvent;->getTwitterException()Ltwitter4j/TwitterException;

    move-result-object v6

    .line 158
    .local v6, "te":Ltwitter4j/TwitterException;
    if-eqz v6, :cond_1

    .line 159
    invoke-virtual {v6}, Ltwitter4j/TwitterException;->getRateLimitStatus()Ltwitter4j/RateLimitStatus;

    move-result-object v2

    .line 160
    .local v2, "rateLimitStatus":Ltwitter4j/RateLimitStatus;
    invoke-virtual {v6}, Ltwitter4j/TwitterException;->getStatusCode()I

    move-result v4

    .line 165
    .local v4, "statusCode":I
    :goto_0
    if-eqz v2, :cond_3

    .line 166
    new-instance v5, Ltwitter4j/RateLimitStatusEvent;

    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponseEvent;->isAuthenticated()Z

    move-result v7

    invoke-direct {v5, p0, v2, v7}, Ltwitter4j/RateLimitStatusEvent;-><init>(Ljava/lang/Object;Ltwitter4j/RateLimitStatus;Z)V

    .line 168
    .local v5, "statusEvent":Ltwitter4j/RateLimitStatusEvent;
    const/16 v7, 0x1a4

    if-eq v4, v7, :cond_0

    const/16 v7, 0x1f7

    if-ne v4, v7, :cond_2

    .line 172
    :cond_0
    iget-object v7, p0, Ltwitter4j/TwitterBaseImpl;->rateLimitStatusListeners:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltwitter4j/RateLimitStatusListener;

    .line 173
    .local v1, "listener":Ltwitter4j/RateLimitStatusListener;
    invoke-interface {v1, v5}, Ltwitter4j/RateLimitStatusListener;->onRateLimitStatus(Ltwitter4j/RateLimitStatusEvent;)V

    .line 174
    invoke-interface {v1, v5}, Ltwitter4j/RateLimitStatusListener;->onRateLimitReached(Ltwitter4j/RateLimitStatusEvent;)V

    goto :goto_1

    .line 162
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Ltwitter4j/RateLimitStatusListener;
    .end local v2    # "rateLimitStatus":Ltwitter4j/RateLimitStatus;
    .end local v4    # "statusCode":I
    .end local v5    # "statusEvent":Ltwitter4j/RateLimitStatusEvent;
    :cond_1
    invoke-static {v3}, Ltwitter4j/internal/json/z_T4JInternalJSONImplFactory;->createRateLimitStatusFromResponseHeader(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/RateLimitStatus;

    move-result-object v2

    .line 163
    .restart local v2    # "rateLimitStatus":Ltwitter4j/RateLimitStatus;
    invoke-virtual {v3}, Ltwitter4j/internal/http/HttpResponse;->getStatusCode()I

    move-result v4

    .restart local v4    # "statusCode":I
    goto :goto_0

    .line 177
    .restart local v5    # "statusEvent":Ltwitter4j/RateLimitStatusEvent;
    :cond_2
    iget-object v7, p0, Ltwitter4j/TwitterBaseImpl;->rateLimitStatusListeners:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ltwitter4j/RateLimitStatusListener;

    .line 178
    invoke-interface {v7, v5}, Ltwitter4j/RateLimitStatusListener;->onRateLimitStatus(Ltwitter4j/RateLimitStatusEvent;)V

    goto :goto_2

    .line 183
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "rateLimitStatus":Ltwitter4j/RateLimitStatus;
    .end local v3    # "res":Ltwitter4j/internal/http/HttpResponse;
    .end local v4    # "statusCode":I
    .end local v5    # "statusEvent":Ltwitter4j/RateLimitStatusEvent;
    .end local v6    # "te":Ltwitter4j/TwitterException;
    :cond_3
    return-void
.end method

.method public declared-synchronized invalidateOAuth2Token()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 421
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ltwitter4j/TwitterBaseImpl;->getOAuth2()Ltwitter4j/auth/OAuth2Support;

    move-result-object v0

    invoke-interface {v0}, Ltwitter4j/auth/OAuth2Support;->invalidateOAuth2Token()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    monitor-exit p0

    return-void

    .line 421
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected setFactory()V
    .locals 2

    .prologue
    .line 92
    new-instance v0, Ltwitter4j/internal/json/z_T4JInternalJSONImplFactory;

    iget-object v1, p0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalJSONImplFactory;-><init>(Ltwitter4j/conf/Configuration;)V

    iput-object v0, p0, Ltwitter4j/TwitterBaseImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    .line 93
    return-void
.end method

.method public setOAuth2Token(Ltwitter4j/auth/OAuth2Token;)V
    .locals 1
    .param p1, "oauth2Token"    # Ltwitter4j/auth/OAuth2Token;

    .prologue
    .line 416
    invoke-direct {p0}, Ltwitter4j/TwitterBaseImpl;->getOAuth2()Ltwitter4j/auth/OAuth2Support;

    move-result-object v0

    invoke-interface {v0, p1}, Ltwitter4j/auth/OAuth2Support;->setOAuth2Token(Ltwitter4j/auth/OAuth2Token;)V

    .line 417
    return-void
.end method

.method public declared-synchronized setOAuthAccessToken(Ltwitter4j/auth/AccessToken;)V
    .locals 1
    .param p1, "accessToken"    # Ltwitter4j/auth/AccessToken;

    .prologue
    .line 389
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ltwitter4j/TwitterBaseImpl;->getOAuth()Ltwitter4j/auth/OAuthSupport;

    move-result-object v0

    invoke-interface {v0, p1}, Ltwitter4j/auth/OAuthSupport;->setOAuthAccessToken(Ltwitter4j/auth/AccessToken;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    monitor-exit p0

    return-void

    .line 389
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "consumerKey"    # Ljava/lang/String;
    .param p2, "consumerSecret"    # Ljava/lang/String;

    .prologue
    .line 260
    monitor-enter p0

    if-nez p1, :cond_0

    .line 261
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "consumer key is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 263
    :cond_0
    if-nez p2, :cond_1

    .line 264
    :try_start_1
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "consumer secret is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 266
    :cond_1
    iget-object v3, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;

    instance-of v3, v3, Ltwitter4j/auth/NullAuthorization;

    if-eqz v3, :cond_4

    .line 267
    iget-object v3, p0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->isApplicationOnlyAuthEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 268
    new-instance v1, Ltwitter4j/auth/OAuth2Authorization;

    iget-object v3, p0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v1, v3}, Ltwitter4j/auth/OAuth2Authorization;-><init>(Ltwitter4j/conf/Configuration;)V

    .line 269
    .local v1, "oauth2":Ltwitter4j/auth/OAuth2Authorization;
    invoke-virtual {v1, p1, p2}, Ltwitter4j/auth/OAuth2Authorization;->setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iput-object v1, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 283
    .end local v1    # "oauth2":Ltwitter4j/auth/OAuth2Authorization;
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 272
    :cond_3
    :try_start_2
    new-instance v0, Ltwitter4j/auth/OAuthAuthorization;

    iget-object v3, p0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v3}, Ltwitter4j/auth/OAuthAuthorization;-><init>(Ltwitter4j/conf/Configuration;)V

    .line 273
    .local v0, "oauth":Ltwitter4j/auth/OAuthAuthorization;
    invoke-virtual {v0, p1, p2}, Ltwitter4j/auth/OAuthAuthorization;->setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iput-object v0, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;

    goto :goto_0

    .line 276
    .end local v0    # "oauth":Ltwitter4j/auth/OAuthAuthorization;
    :cond_4
    iget-object v3, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;

    instance-of v3, v3, Ltwitter4j/auth/BasicAuthorization;

    if-eqz v3, :cond_5

    .line 277
    new-instance v2, Ltwitter4j/internal/http/XAuthAuthorization;

    iget-object v3, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;

    check-cast v3, Ltwitter4j/auth/BasicAuthorization;

    invoke-direct {v2, v3}, Ltwitter4j/internal/http/XAuthAuthorization;-><init>(Ltwitter4j/auth/BasicAuthorization;)V

    .line 278
    .local v2, "xauth":Ltwitter4j/internal/http/XAuthAuthorization;
    invoke-virtual {v2, p1, p2}, Ltwitter4j/internal/http/XAuthAuthorization;->setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iput-object v2, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;

    goto :goto_0

    .line 280
    .end local v2    # "xauth":Ltwitter4j/internal/http/XAuthAuthorization;
    :cond_5
    iget-object v3, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;

    instance-of v3, v3, Ltwitter4j/auth/OAuthAuthorization;

    if-nez v3, :cond_6

    iget-object v3, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;

    instance-of v3, v3, Ltwitter4j/auth/OAuth2Authorization;

    if-eqz v3, :cond_2

    .line 281
    :cond_6
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "consumer key/secret pair already set."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Ltwitter4j/TwitterBaseImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltwitter4j/TwitterBaseImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    invoke-virtual {v0}, Ltwitter4j/internal/http/HttpClientWrapper;->shutdown()V

    .line 207
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TwitterBase{conf="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", http="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterBaseImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rateLimitStatusListeners="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterBaseImpl;->rateLimitStatusListeners:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", auth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
