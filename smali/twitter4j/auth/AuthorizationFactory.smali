.class public final Ltwitter4j/auth/AuthorizationFactory;
.super Ljava/lang/Object;
.source "AuthorizationFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Ltwitter4j/conf/Configuration;)Ltwitter4j/auth/Authorization;
    .locals 11
    .param p0, "conf"    # Ltwitter4j/conf/Configuration;

    .prologue
    .line 34
    const/4 v2, 0x0

    .line 35
    .local v2, "auth":Ltwitter4j/auth/Authorization;
    invoke-interface {p0}, Ltwitter4j/conf/Configuration;->getOAuthConsumerKey()Ljava/lang/String;

    move-result-object v3

    .line 36
    .local v3, "consumerKey":Ljava/lang/String;
    invoke-interface {p0}, Ltwitter4j/conf/Configuration;->getOAuthConsumerSecret()Ljava/lang/String;

    move-result-object v4

    .line 38
    .local v4, "consumerSecret":Ljava/lang/String;
    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    .line 39
    invoke-interface {p0}, Ltwitter4j/conf/Configuration;->isApplicationOnlyAuthEnabled()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 40
    new-instance v6, Ltwitter4j/auth/OAuth2Authorization;

    invoke-direct {v6, p0}, Ltwitter4j/auth/OAuth2Authorization;-><init>(Ltwitter4j/conf/Configuration;)V

    .line 41
    .local v6, "oauth2":Ltwitter4j/auth/OAuth2Authorization;
    invoke-interface {p0}, Ltwitter4j/conf/Configuration;->getOAuth2TokenType()Ljava/lang/String;

    move-result-object v9

    .line 42
    .local v9, "tokenType":Ljava/lang/String;
    invoke-interface {p0}, Ltwitter4j/conf/Configuration;->getOAuth2AccessToken()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "accessToken":Ljava/lang/String;
    if-eqz v9, :cond_0

    if-eqz v0, :cond_0

    .line 44
    new-instance v10, Ltwitter4j/auth/OAuth2Token;

    invoke-direct {v10, v9, v0}, Ltwitter4j/auth/OAuth2Token;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Ltwitter4j/auth/OAuth2Authorization;->setOAuth2Token(Ltwitter4j/auth/OAuth2Token;)V

    .line 46
    :cond_0
    move-object v2, v6

    .line 65
    .end local v0    # "accessToken":Ljava/lang/String;
    .end local v6    # "oauth2":Ltwitter4j/auth/OAuth2Authorization;
    .end local v9    # "tokenType":Ljava/lang/String;
    :cond_1
    :goto_0
    if-nez v2, :cond_2

    .line 66
    invoke-static {}, Ltwitter4j/auth/NullAuthorization;->getInstance()Ltwitter4j/auth/NullAuthorization;

    move-result-object v2

    .line 68
    :cond_2
    return-object v2

    .line 50
    :cond_3
    new-instance v5, Ltwitter4j/auth/OAuthAuthorization;

    invoke-direct {v5, p0}, Ltwitter4j/auth/OAuthAuthorization;-><init>(Ltwitter4j/conf/Configuration;)V

    .line 51
    .local v5, "oauth":Ltwitter4j/auth/OAuthAuthorization;
    invoke-interface {p0}, Ltwitter4j/conf/Configuration;->getOAuthAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 52
    .restart local v0    # "accessToken":Ljava/lang/String;
    invoke-interface {p0}, Ltwitter4j/conf/Configuration;->getOAuthAccessTokenSecret()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "accessTokenSecret":Ljava/lang/String;
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 54
    new-instance v10, Ltwitter4j/auth/AccessToken;

    invoke-direct {v10, v0, v1}, Ltwitter4j/auth/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Ltwitter4j/auth/OAuthAuthorization;->setOAuthAccessToken(Ltwitter4j/auth/AccessToken;)V

    .line 56
    :cond_4
    move-object v2, v5

    .line 57
    goto :goto_0

    .line 59
    .end local v0    # "accessToken":Ljava/lang/String;
    .end local v1    # "accessTokenSecret":Ljava/lang/String;
    .end local v5    # "oauth":Ltwitter4j/auth/OAuthAuthorization;
    :cond_5
    invoke-interface {p0}, Ltwitter4j/conf/Configuration;->getUser()Ljava/lang/String;

    move-result-object v8

    .line 60
    .local v8, "screenName":Ljava/lang/String;
    invoke-interface {p0}, Ltwitter4j/conf/Configuration;->getPassword()Ljava/lang/String;

    move-result-object v7

    .line 61
    .local v7, "password":Ljava/lang/String;
    if-eqz v8, :cond_1

    if-eqz v7, :cond_1

    .line 62
    new-instance v2, Ltwitter4j/auth/BasicAuthorization;

    .end local v2    # "auth":Ltwitter4j/auth/Authorization;
    invoke-direct {v2, v8, v7}, Ltwitter4j/auth/BasicAuthorization;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v2    # "auth":Ltwitter4j/auth/Authorization;
    goto :goto_0
.end method
