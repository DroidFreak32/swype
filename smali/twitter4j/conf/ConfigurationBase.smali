.class Ltwitter4j/conf/ConfigurationBase;
.super Ljava/lang/Object;
.source "ConfigurationBase.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ltwitter4j/conf/Configuration;


# static fields
.field public static final DALVIK:Ljava/lang/String; = "twitter4j.dalvik"

.field private static final DEFAULT_OAUTH2_INVALIDATE_TOKEN_URL:Ljava/lang/String; = "https://api.twitter.com/oauth2/invalidate_token"

.field private static final DEFAULT_OAUTH2_TOKEN_URL:Ljava/lang/String; = "https://api.twitter.com/oauth2/token"

.field private static final DEFAULT_OAUTH_ACCESS_TOKEN_URL:Ljava/lang/String; = "http://api.twitter.com/oauth/access_token"

.field private static final DEFAULT_OAUTH_AUTHENTICATION_URL:Ljava/lang/String; = "http://api.twitter.com/oauth/authenticate"

.field private static final DEFAULT_OAUTH_AUTHORIZATION_URL:Ljava/lang/String; = "http://api.twitter.com/oauth/authorize"

.field private static final DEFAULT_OAUTH_REQUEST_TOKEN_URL:Ljava/lang/String; = "http://api.twitter.com/oauth/request_token"

.field private static final DEFAULT_REST_BASE_URL:Ljava/lang/String; = "http://api.twitter.com/1.1/"

.field private static final DEFAULT_SITE_STREAM_BASE_URL:Ljava/lang/String; = "https://sitestream.twitter.com/1.1/"

.field private static final DEFAULT_STREAM_BASE_URL:Ljava/lang/String; = "https://stream.twitter.com/1.1/"

.field private static final DEFAULT_USER_STREAM_BASE_URL:Ljava/lang/String; = "https://userstream.twitter.com/1.1/"

.field public static final GAE:Ljava/lang/String; = "twitter4j.gae"

.field static dalvikDetected:Ljava/lang/String; = null

.field static gaeDetected:Ljava/lang/String; = null

.field private static final instances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltwitter4j/conf/ConfigurationBase;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x5bbd3477f3537f08L


# instance fields
.field private IS_DALVIK:Z

.field private IS_GAE:Z

.field private applicationOnlyAuthEnabled:Z

.field private asyncNumThreads:I

.field private clientURL:Ljava/lang/String;

.field private clientVersion:Ljava/lang/String;

.field private contributingTo:J

.field private debug:Z

.field private defaultMaxPerRoute:I

.field private dispatcherImpl:Ljava/lang/String;

.field private gzipEnabled:Z

.field private httpConnectionTimeout:I

.field private httpProxyHost:Ljava/lang/String;

.field private httpProxyPassword:Ljava/lang/String;

.field private httpProxyPort:I

.field private httpProxyUser:Ljava/lang/String;

.field private httpReadTimeout:I

.field private httpRetryCount:I

.field private httpRetryIntervalSeconds:I

.field private httpStreamingReadTimeout:I

.field private includeEntitiesEnabled:Z

.field private includeMyRetweetEnabled:Z

.field private includeRTsEnabled:Z

.field private jsonStoreEnabled:Z

.field private loggerFactory:Ljava/lang/String;

.field private maxTotalConnections:I

.field private mbeanEnabled:Z

.field private mediaProvider:Ljava/lang/String;

.field private mediaProviderAPIKey:Ljava/lang/String;

.field private mediaProviderParameters:Ljava/util/Properties;

.field private oAuth2AccessToken:Ljava/lang/String;

.field private oAuth2InvalidateTokenURL:Ljava/lang/String;

.field private oAuth2TokenType:Ljava/lang/String;

.field private oAuth2TokenURL:Ljava/lang/String;

.field private oAuthAccessToken:Ljava/lang/String;

.field private oAuthAccessTokenSecret:Ljava/lang/String;

.field private oAuthAccessTokenURL:Ljava/lang/String;

.field private oAuthAuthenticationURL:Ljava/lang/String;

.field private oAuthAuthorizationURL:Ljava/lang/String;

.field private oAuthConsumerKey:Ljava/lang/String;

.field private oAuthConsumerSecret:Ljava/lang/String;

.field private oAuthRequestTokenURL:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private prettyDebug:Z

.field requestHeaders:Ljava/util/Map;
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

.field private restBaseURL:Ljava/lang/String;

.field private siteStreamBaseURL:Ljava/lang/String;

.field private stallWarningsEnabled:Z

.field private streamBaseURL:Ljava/lang/String;

.field private trimUserEnabled:Z

.field private useSSL:Z

.field private user:Ljava/lang/String;

.field private userAgent:Ljava/lang/String;

.field private userStreamBaseURL:Ljava/lang/String;

.field private userStreamRepliesAllEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 131
    :try_start_0
    const-string v0, "dalvik.system.VMRuntime"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 132
    const-string v0, "true"

    sput-object v0, Ltwitter4j/conf/ConfigurationBase;->dalvikDetected:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    :try_start_1
    const-string v0, "com.google.appengine.api.urlfetch.URLFetchService"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 140
    const-string v0, "true"

    sput-object v0, Ltwitter4j/conf/ConfigurationBase;->gaeDetected:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 998
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ltwitter4j/conf/ConfigurationBase;->instances:Ljava/util/List;

    return-void

    .line 134
    :catch_0
    move-exception v0

    const-string v0, "false"

    sput-object v0, Ltwitter4j/conf/ConfigurationBase;->dalvikDetected:Ljava/lang/String;

    goto :goto_0

    .line 142
    :catch_1
    move-exception v0

    const-string v0, "false"

    sput-object v0, Ltwitter4j/conf/ConfigurationBase;->gaeDetected:Ljava/lang/String;

    goto :goto_1
.end method

.method protected constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-boolean v6, p0, Ltwitter4j/conf/ConfigurationBase;->includeRTsEnabled:Z

    .line 79
    iput-boolean v6, p0, Ltwitter4j/conf/ConfigurationBase;->includeEntitiesEnabled:Z

    .line 81
    iput-boolean v6, p0, Ltwitter4j/conf/ConfigurationBase;->includeMyRetweetEnabled:Z

    .line 83
    iput-boolean v5, p0, Ltwitter4j/conf/ConfigurationBase;->trimUserEnabled:Z

    .line 93
    iput-boolean v5, p0, Ltwitter4j/conf/ConfigurationBase;->applicationOnlyAuthEnabled:Z

    .line 147
    invoke-virtual {p0, v5}, Ltwitter4j/conf/ConfigurationBase;->setDebug(Z)V

    .line 148
    invoke-virtual {p0, v4}, Ltwitter4j/conf/ConfigurationBase;->setUser(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0, v4}, Ltwitter4j/conf/ConfigurationBase;->setPassword(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0, v6}, Ltwitter4j/conf/ConfigurationBase;->setUseSSL(Z)V

    .line 151
    invoke-virtual {p0, v5}, Ltwitter4j/conf/ConfigurationBase;->setPrettyDebugEnabled(Z)V

    .line 152
    invoke-virtual {p0, v6}, Ltwitter4j/conf/ConfigurationBase;->setGZIPEnabled(Z)V

    .line 153
    invoke-virtual {p0, v4}, Ltwitter4j/conf/ConfigurationBase;->setHttpProxyHost(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0, v4}, Ltwitter4j/conf/ConfigurationBase;->setHttpProxyUser(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0, v4}, Ltwitter4j/conf/ConfigurationBase;->setHttpProxyPassword(Ljava/lang/String;)V

    .line 156
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setHttpProxyPort(I)V

    .line 157
    const/16 v2, 0x4e20

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setHttpConnectionTimeout(I)V

    .line 158
    const v2, 0x1d4c0

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setHttpReadTimeout(I)V

    .line 159
    const v2, 0x9c40

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setHttpStreamingReadTimeout(I)V

    .line 160
    invoke-virtual {p0, v5}, Ltwitter4j/conf/ConfigurationBase;->setHttpRetryCount(I)V

    .line 161
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setHttpRetryIntervalSeconds(I)V

    .line 162
    const/16 v2, 0x14

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setHttpMaxTotalConnections(I)V

    .line 163
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setHttpDefaultMaxPerRoute(I)V

    .line 164
    invoke-virtual {p0, v4}, Ltwitter4j/conf/ConfigurationBase;->setOAuthConsumerKey(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0, v4}, Ltwitter4j/conf/ConfigurationBase;->setOAuthConsumerSecret(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0, v4}, Ltwitter4j/conf/ConfigurationBase;->setOAuthAccessToken(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0, v4}, Ltwitter4j/conf/ConfigurationBase;->setOAuthAccessTokenSecret(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0, v6}, Ltwitter4j/conf/ConfigurationBase;->setAsyncNumThreads(I)V

    .line 169
    const-wide/16 v2, -0x1

    invoke-virtual {p0, v2, v3}, Ltwitter4j/conf/ConfigurationBase;->setContributingTo(J)V

    .line 170
    invoke-static {}, Ltwitter4j/Version;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setClientVersion(Ljava/lang/String;)V

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://twitter4j.org/en/twitter4j-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ltwitter4j/Version;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setClientURL(Ljava/lang/String;)V

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "twitter4j http://twitter4j.org/ /"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ltwitter4j/Version;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setUserAgent(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0, v5}, Ltwitter4j/conf/ConfigurationBase;->setJSONStoreEnabled(Z)V

    .line 176
    invoke-virtual {p0, v5}, Ltwitter4j/conf/ConfigurationBase;->setMBeanEnabled(Z)V

    .line 178
    const-string v2, "http://api.twitter.com/oauth/request_token"

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setOAuthRequestTokenURL(Ljava/lang/String;)V

    .line 179
    const-string v2, "http://api.twitter.com/oauth/authorize"

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setOAuthAuthorizationURL(Ljava/lang/String;)V

    .line 180
    const-string v2, "http://api.twitter.com/oauth/access_token"

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setOAuthAccessTokenURL(Ljava/lang/String;)V

    .line 181
    const-string v2, "http://api.twitter.com/oauth/authenticate"

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setOAuthAuthenticationURL(Ljava/lang/String;)V

    .line 182
    const-string v2, "https://api.twitter.com/oauth2/token"

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setOAuth2TokenURL(Ljava/lang/String;)V

    .line 183
    const-string v2, "https://api.twitter.com/oauth2/invalidate_token"

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setOAuth2InvalidateTokenURL(Ljava/lang/String;)V

    .line 185
    const-string v2, "http://api.twitter.com/1.1/"

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setRestBaseURL(Ljava/lang/String;)V

    .line 186
    const-string v2, "https://stream.twitter.com/1.1/"

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setStreamBaseURL(Ljava/lang/String;)V

    .line 187
    const-string v2, "https://userstream.twitter.com/1.1/"

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setUserStreamBaseURL(Ljava/lang/String;)V

    .line 188
    const-string v2, "https://sitestream.twitter.com/1.1/"

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setSiteStreamBaseURL(Ljava/lang/String;)V

    .line 190
    const-string v2, "twitter4j.internal.async.DispatcherImpl"

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setDispatcherImpl(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0, v4}, Ltwitter4j/conf/ConfigurationBase;->setLoggerFactory(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0, v5}, Ltwitter4j/conf/ConfigurationBase;->setUserStreamRepliesAllEnabled(Z)V

    .line 194
    invoke-virtual {p0, v6}, Ltwitter4j/conf/ConfigurationBase;->setStallWarningsEnabled(Z)V

    .line 197
    :try_start_0
    const-string v2, "twitter4j.dalvik"

    sget-object v3, Ltwitter4j/conf/ConfigurationBase;->dalvikDetected:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 202
    .local v0, "isDalvik":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->IS_DALVIK:Z

    .line 206
    :try_start_1
    const-string v2, "twitter4j.gae"

    sget-object v3, Ltwitter4j/conf/ConfigurationBase;->gaeDetected:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 211
    .local v1, "isGAE":Ljava/lang/String;
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->IS_GAE:Z

    .line 213
    const-string v2, "TWITTER"

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setMediaProvider(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0, v4}, Ltwitter4j/conf/ConfigurationBase;->setMediaProviderAPIKey(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0, v4}, Ltwitter4j/conf/ConfigurationBase;->setMediaProviderParameters(Ljava/util/Properties;)V

    .line 216
    return-void

    .line 200
    .end local v0    # "isDalvik":Ljava/lang/String;
    .end local v1    # "isGAE":Ljava/lang/String;
    :catch_0
    move-exception v2

    sget-object v0, Ltwitter4j/conf/ConfigurationBase;->dalvikDetected:Ljava/lang/String;

    .restart local v0    # "isDalvik":Ljava/lang/String;
    goto :goto_0

    .line 209
    :catch_1
    move-exception v2

    sget-object v1, Ltwitter4j/conf/ConfigurationBase;->gaeDetected:Ljava/lang/String;

    .restart local v1    # "isGAE":Ljava/lang/String;
    goto :goto_1
.end method

.method private static cacheInstance(Ltwitter4j/conf/ConfigurationBase;)V
    .locals 1
    .param p0, "conf"    # Ltwitter4j/conf/ConfigurationBase;

    .prologue
    .line 1001
    sget-object v0, Ltwitter4j/conf/ConfigurationBase;->instances:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1002
    sget-object v0, Ltwitter4j/conf/ConfigurationBase;->instances:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1004
    :cond_0
    return-void
.end method

.method private fixRestBaseURL()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 543
    const-string v0, "http://api.twitter.com/1.1/"

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    invoke-static {v2, v1}, Ltwitter4j/conf/ConfigurationBase;->fixURL(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->useSSL:Z

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    invoke-static {v0, v1}, Ltwitter4j/conf/ConfigurationBase;->fixURL(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    .line 546
    :cond_0
    const-string v0, "http://api.twitter.com/oauth/access_token"

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;

    invoke-static {v2, v1}, Ltwitter4j/conf/ConfigurationBase;->fixURL(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 547
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->useSSL:Z

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;

    invoke-static {v0, v1}, Ltwitter4j/conf/ConfigurationBase;->fixURL(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;

    .line 549
    :cond_1
    const-string v0, "http://api.twitter.com/oauth/authenticate"

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;

    invoke-static {v2, v1}, Ltwitter4j/conf/ConfigurationBase;->fixURL(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 550
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->useSSL:Z

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;

    invoke-static {v0, v1}, Ltwitter4j/conf/ConfigurationBase;->fixURL(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;

    .line 552
    :cond_2
    const-string v0, "http://api.twitter.com/oauth/authorize"

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;

    invoke-static {v2, v1}, Ltwitter4j/conf/ConfigurationBase;->fixURL(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 553
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->useSSL:Z

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;

    invoke-static {v0, v1}, Ltwitter4j/conf/ConfigurationBase;->fixURL(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;

    .line 555
    :cond_3
    const-string v0, "http://api.twitter.com/oauth/request_token"

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;

    invoke-static {v2, v1}, Ltwitter4j/conf/ConfigurationBase;->fixURL(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 556
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->useSSL:Z

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;

    invoke-static {v0, v1}, Ltwitter4j/conf/ConfigurationBase;->fixURL(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;

    .line 558
    :cond_4
    return-void
.end method

.method static fixURL(ZLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "useSSL"    # Z
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 771
    if-nez p1, :cond_0

    .line 772
    const/4 v2, 0x0

    .line 782
    :goto_0
    return-object v2

    .line 774
    :cond_0
    const-string v2, "://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 775
    .local v1, "index":I
    const/4 v2, -0x1

    if-ne v2, v1, :cond_1

    .line 776
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "url should contain \'://\'"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 778
    :cond_1
    add-int/lit8 v2, v1, 0x3

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 779
    .local v0, "hostAndLater":Ljava/lang/String;
    if-eqz p0, :cond_2

    .line 780
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 782
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static getInstance(Ltwitter4j/conf/ConfigurationBase;)Ltwitter4j/conf/ConfigurationBase;
    .locals 2
    .param p0, "configurationBase"    # Ltwitter4j/conf/ConfigurationBase;

    .prologue
    .line 1012
    sget-object v1, Ltwitter4j/conf/ConfigurationBase;->instances:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1013
    sget-object v1, Ltwitter4j/conf/ConfigurationBase;->instances:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1016
    .end local p0    # "configurationBase":Ltwitter4j/conf/ConfigurationBase;
    :goto_0
    return-object p0

    .restart local p0    # "configurationBase":Ltwitter4j/conf/ConfigurationBase;
    :cond_0
    sget-object v1, Ltwitter4j/conf/ConfigurationBase;->instances:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltwitter4j/conf/ConfigurationBase;

    move-object p0, v1

    goto :goto_0
.end method

.method private initRequestHeaders()V
    .locals 3

    .prologue
    .line 315
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->requestHeaders:Ljava/util/Map;

    .line 316
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->requestHeaders:Ljava/util/Map;

    const-string v1, "X-Twitter-Client-Version"

    invoke-virtual {p0}, Ltwitter4j/conf/ConfigurationBase;->getClientVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->requestHeaders:Ljava/util/Map;

    const-string v1, "X-Twitter-Client-URL"

    invoke-virtual {p0}, Ltwitter4j/conf/ConfigurationBase;->getClientURL()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->requestHeaders:Ljava/util/Map;

    const-string v1, "X-Twitter-Client"

    const-string v2, "Twitter4J"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->requestHeaders:Ljava/util/Map;

    const-string v1, "User-Agent"

    invoke-virtual {p0}, Ltwitter4j/conf/ConfigurationBase;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->gzipEnabled:Z

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->requestHeaders:Ljava/util/Map;

    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    :cond_0
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->IS_DALVIK:Z

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->requestHeaders:Ljava/util/Map;

    const-string v1, "Connection"

    const-string v2, "close"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    :cond_1
    return-void
.end method


# virtual methods
.method protected cacheInstance()V
    .locals 0

    .prologue
    .line 1007
    invoke-static {p0}, Ltwitter4j/conf/ConfigurationBase;->cacheInstance(Ltwitter4j/conf/ConfigurationBase;)V

    .line 1008
    return-void
.end method

.method public dumpConfiguration()V
    .locals 9

    .prologue
    .line 219
    const-class v7, Ltwitter4j/conf/ConfigurationBase;

    invoke-static {v7}, Ltwitter4j/internal/logging/Logger;->getLogger(Ljava/lang/Class;)Ltwitter4j/internal/logging/Logger;

    move-result-object v4

    .line 220
    .local v4, "log":Ltwitter4j/internal/logging/Logger;
    iget-boolean v7, p0, Ltwitter4j/conf/ConfigurationBase;->debug:Z

    if-eqz v7, :cond_1

    .line 221
    const-class v7, Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v7}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 222
    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 224
    .local v1, "field":Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 225
    .local v6, "value":Ljava/lang/Object;
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 226
    .local v5, "strValue":Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "oAuthConsumerSecret|oAuthAccessTokenSecret|password"

    invoke-virtual {v7, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 227
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ltwitter4j/internal/util/z_T4JInternalStringUtil;->maskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 229
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ltwitter4j/internal/logging/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    .end local v5    # "strValue":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/Object;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 234
    .end local v0    # "arr$":[Ljava/lang/reflect/Field;
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_1
    iget-boolean v7, p0, Ltwitter4j/conf/ConfigurationBase;->includeRTsEnabled:Z

    if-nez v7, :cond_2

    .line 235
    const-string v7, "includeRTsEnabled is set to false. This configuration may not take effect after May 14th, 2012. https://dev.twitter.com/blog/api-housekeeping"

    invoke-virtual {v4, v7}, Ltwitter4j/internal/logging/Logger;->warn(Ljava/lang/String;)V

    .line 237
    :cond_2
    iget-boolean v7, p0, Ltwitter4j/conf/ConfigurationBase;->includeEntitiesEnabled:Z

    if-nez v7, :cond_3

    .line 238
    const-string v7, "includeEntitiesEnabled is set to false. This configuration may not take effect after May 14th, 2012. https://dev.twitter.com/blog/api-housekeeping"

    invoke-virtual {v4, v7}, Ltwitter4j/internal/logging/Logger;->warn(Ljava/lang/String;)V

    .line 240
    :cond_3
    return-void

    .line 230
    .restart local v0    # "arr$":[Ljava/lang/reflect/Field;
    .restart local v1    # "field":Ljava/lang/reflect/Field;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 788
    if-ne p0, p1, :cond_1

    .line 874
    :cond_0
    :goto_0
    return v1

    .line 789
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

    .line 791
    check-cast v0, Ltwitter4j/conf/ConfigurationBase;

    .line 793
    .local v0, "that":Ltwitter4j/conf/ConfigurationBase;
    iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->IS_DALVIK:Z

    iget-boolean v4, v0, Ltwitter4j/conf/ConfigurationBase;->IS_DALVIK:Z

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 794
    :cond_4
    iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->IS_GAE:Z

    iget-boolean v4, v0, Ltwitter4j/conf/ConfigurationBase;->IS_GAE:Z

    if-eq v3, v4, :cond_5

    move v1, v2

    goto :goto_0

    .line 795
    :cond_5
    iget v3, p0, Ltwitter4j/conf/ConfigurationBase;->asyncNumThreads:I

    iget v4, v0, Ltwitter4j/conf/ConfigurationBase;->asyncNumThreads:I

    if-eq v3, v4, :cond_6

    move v1, v2

    goto :goto_0

    .line 796
    :cond_6
    iget-wide v4, p0, Ltwitter4j/conf/ConfigurationBase;->contributingTo:J

    iget-wide v6, v0, Ltwitter4j/conf/ConfigurationBase;->contributingTo:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_7

    move v1, v2

    goto :goto_0

    .line 797
    :cond_7
    iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->debug:Z

    iget-boolean v4, v0, Ltwitter4j/conf/ConfigurationBase;->debug:Z

    if-eq v3, v4, :cond_8

    move v1, v2

    goto :goto_0

    .line 798
    :cond_8
    iget v3, p0, Ltwitter4j/conf/ConfigurationBase;->defaultMaxPerRoute:I

    iget v4, v0, Ltwitter4j/conf/ConfigurationBase;->defaultMaxPerRoute:I

    if-eq v3, v4, :cond_9

    move v1, v2

    goto :goto_0

    .line 799
    :cond_9
    iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->gzipEnabled:Z

    iget-boolean v4, v0, Ltwitter4j/conf/ConfigurationBase;->gzipEnabled:Z

    if-eq v3, v4, :cond_a

    move v1, v2

    goto :goto_0

    .line 800
    :cond_a
    iget v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpConnectionTimeout:I

    iget v4, v0, Ltwitter4j/conf/ConfigurationBase;->httpConnectionTimeout:I

    if-eq v3, v4, :cond_b

    move v1, v2

    goto :goto_0

    .line 801
    :cond_b
    iget v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyPort:I

    iget v4, v0, Ltwitter4j/conf/ConfigurationBase;->httpProxyPort:I

    if-eq v3, v4, :cond_c

    move v1, v2

    goto :goto_0

    .line 802
    :cond_c
    iget v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpReadTimeout:I

    iget v4, v0, Ltwitter4j/conf/ConfigurationBase;->httpReadTimeout:I

    if-eq v3, v4, :cond_d

    move v1, v2

    goto :goto_0

    .line 803
    :cond_d
    iget v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryCount:I

    iget v4, v0, Ltwitter4j/conf/ConfigurationBase;->httpRetryCount:I

    if-eq v3, v4, :cond_e

    move v1, v2

    goto :goto_0

    .line 804
    :cond_e
    iget v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryIntervalSeconds:I

    iget v4, v0, Ltwitter4j/conf/ConfigurationBase;->httpRetryIntervalSeconds:I

    if-eq v3, v4, :cond_f

    move v1, v2

    goto :goto_0

    .line 805
    :cond_f
    iget v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpStreamingReadTimeout:I

    iget v4, v0, Ltwitter4j/conf/ConfigurationBase;->httpStreamingReadTimeout:I

    if-eq v3, v4, :cond_10

    move v1, v2

    goto :goto_0

    .line 806
    :cond_10
    iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->includeEntitiesEnabled:Z

    iget-boolean v4, v0, Ltwitter4j/conf/ConfigurationBase;->includeEntitiesEnabled:Z

    if-eq v3, v4, :cond_11

    move v1, v2

    goto/16 :goto_0

    .line 807
    :cond_11
    iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->includeMyRetweetEnabled:Z

    iget-boolean v4, v0, Ltwitter4j/conf/ConfigurationBase;->includeMyRetweetEnabled:Z

    if-eq v3, v4, :cond_12

    move v1, v2

    goto/16 :goto_0

    .line 808
    :cond_12
    iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->trimUserEnabled:Z

    iget-boolean v4, v0, Ltwitter4j/conf/ConfigurationBase;->trimUserEnabled:Z

    if-eq v3, v4, :cond_13

    move v1, v2

    goto/16 :goto_0

    .line 809
    :cond_13
    iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->includeRTsEnabled:Z

    iget-boolean v4, v0, Ltwitter4j/conf/ConfigurationBase;->includeRTsEnabled:Z

    if-eq v3, v4, :cond_14

    move v1, v2

    goto/16 :goto_0

    .line 810
    :cond_14
    iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->jsonStoreEnabled:Z

    iget-boolean v4, v0, Ltwitter4j/conf/ConfigurationBase;->jsonStoreEnabled:Z

    if-eq v3, v4, :cond_15

    move v1, v2

    goto/16 :goto_0

    .line 811
    :cond_15
    iget v3, p0, Ltwitter4j/conf/ConfigurationBase;->maxTotalConnections:I

    iget v4, v0, Ltwitter4j/conf/ConfigurationBase;->maxTotalConnections:I

    if-eq v3, v4, :cond_16

    move v1, v2

    goto/16 :goto_0

    .line 812
    :cond_16
    iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->mbeanEnabled:Z

    iget-boolean v4, v0, Ltwitter4j/conf/ConfigurationBase;->mbeanEnabled:Z

    if-eq v3, v4, :cond_17

    move v1, v2

    goto/16 :goto_0

    .line 813
    :cond_17
    iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->prettyDebug:Z

    iget-boolean v4, v0, Ltwitter4j/conf/ConfigurationBase;->prettyDebug:Z

    if-eq v3, v4, :cond_18

    move v1, v2

    goto/16 :goto_0

    .line 814
    :cond_18
    iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->stallWarningsEnabled:Z

    iget-boolean v4, v0, Ltwitter4j/conf/ConfigurationBase;->stallWarningsEnabled:Z

    if-eq v3, v4, :cond_19

    move v1, v2

    goto/16 :goto_0

    .line 815
    :cond_19
    iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->applicationOnlyAuthEnabled:Z

    iget-boolean v4, v0, Ltwitter4j/conf/ConfigurationBase;->applicationOnlyAuthEnabled:Z

    if-eq v3, v4, :cond_1a

    move v1, v2

    goto/16 :goto_0

    .line 816
    :cond_1a
    iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->useSSL:Z

    iget-boolean v4, v0, Ltwitter4j/conf/ConfigurationBase;->useSSL:Z

    if-eq v3, v4, :cond_1b

    move v1, v2

    goto/16 :goto_0

    .line 817
    :cond_1b
    iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamRepliesAllEnabled:Z

    iget-boolean v4, v0, Ltwitter4j/conf/ConfigurationBase;->userStreamRepliesAllEnabled:Z

    if-eq v3, v4, :cond_1c

    move v1, v2

    goto/16 :goto_0

    .line 818
    :cond_1c
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->clientURL:Ljava/lang/String;

    if-eqz v3, :cond_1e

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->clientURL:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->clientURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    :cond_1d
    move v1, v2

    goto/16 :goto_0

    :cond_1e
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->clientURL:Ljava/lang/String;

    if-nez v3, :cond_1d

    .line 819
    :cond_1f
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->clientVersion:Ljava/lang/String;

    if-eqz v3, :cond_21

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->clientVersion:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->clientVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    :cond_20
    move v1, v2

    .line 820
    goto/16 :goto_0

    .line 819
    :cond_21
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->clientVersion:Ljava/lang/String;

    if-nez v3, :cond_20

    .line 821
    :cond_22
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->dispatcherImpl:Ljava/lang/String;

    if-eqz v3, :cond_24

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->dispatcherImpl:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->dispatcherImpl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    :cond_23
    move v1, v2

    .line 822
    goto/16 :goto_0

    .line 821
    :cond_24
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->dispatcherImpl:Ljava/lang/String;

    if-nez v3, :cond_23

    .line 823
    :cond_25
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyHost:Ljava/lang/String;

    if-eqz v3, :cond_27

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyHost:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->httpProxyHost:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    :cond_26
    move v1, v2

    .line 824
    goto/16 :goto_0

    .line 823
    :cond_27
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->httpProxyHost:Ljava/lang/String;

    if-nez v3, :cond_26

    .line 825
    :cond_28
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyPassword:Ljava/lang/String;

    if-eqz v3, :cond_2a

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyPassword:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->httpProxyPassword:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    :cond_29
    move v1, v2

    .line 826
    goto/16 :goto_0

    .line 825
    :cond_2a
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->httpProxyPassword:Ljava/lang/String;

    if-nez v3, :cond_29

    .line 827
    :cond_2b
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyUser:Ljava/lang/String;

    if-eqz v3, :cond_2d

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyUser:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->httpProxyUser:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    :cond_2c
    move v1, v2

    .line 828
    goto/16 :goto_0

    .line 827
    :cond_2d
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->httpProxyUser:Ljava/lang/String;

    if-nez v3, :cond_2c

    .line 829
    :cond_2e
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->loggerFactory:Ljava/lang/String;

    if-eqz v3, :cond_30

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->loggerFactory:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->loggerFactory:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    :cond_2f
    move v1, v2

    .line 830
    goto/16 :goto_0

    .line 829
    :cond_30
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->loggerFactory:Ljava/lang/String;

    if-nez v3, :cond_2f

    .line 831
    :cond_31
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProvider:Ljava/lang/String;

    if-eqz v3, :cond_33

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProvider:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->mediaProvider:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    :cond_32
    move v1, v2

    .line 832
    goto/16 :goto_0

    .line 831
    :cond_33
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->mediaProvider:Ljava/lang/String;

    if-nez v3, :cond_32

    .line 833
    :cond_34
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderAPIKey:Ljava/lang/String;

    if-eqz v3, :cond_36

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderAPIKey:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderAPIKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37

    :cond_35
    move v1, v2

    .line 834
    goto/16 :goto_0

    .line 833
    :cond_36
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderAPIKey:Ljava/lang/String;

    if-nez v3, :cond_35

    .line 835
    :cond_37
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderParameters:Ljava/util/Properties;

    if-eqz v3, :cond_39

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderParameters:Ljava/util/Properties;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderParameters:Ljava/util/Properties;

    invoke-virtual {v3, v4}, Ljava/util/Properties;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    :cond_38
    move v1, v2

    .line 836
    goto/16 :goto_0

    .line 835
    :cond_39
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderParameters:Ljava/util/Properties;

    if-nez v3, :cond_38

    .line 837
    :cond_3a
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessToken:Ljava/lang/String;

    if-eqz v3, :cond_3c

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessToken:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessToken:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d

    :cond_3b
    move v1, v2

    .line 838
    goto/16 :goto_0

    .line 837
    :cond_3c
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessToken:Ljava/lang/String;

    if-nez v3, :cond_3b

    .line 839
    :cond_3d
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenSecret:Ljava/lang/String;

    if-eqz v3, :cond_3f

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenSecret:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenSecret:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    :cond_3e
    move v1, v2

    .line 840
    goto/16 :goto_0

    .line 839
    :cond_3f
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenSecret:Ljava/lang/String;

    if-nez v3, :cond_3e

    .line 841
    :cond_40
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenType:Ljava/lang/String;

    if-eqz v3, :cond_42

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenType:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_43

    :cond_41
    move v1, v2

    .line 842
    goto/16 :goto_0

    .line 841
    :cond_42
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenType:Ljava/lang/String;

    if-nez v3, :cond_41

    .line 843
    :cond_43
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2AccessToken:Ljava/lang/String;

    if-eqz v3, :cond_45

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2AccessToken:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->oAuth2AccessToken:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_46

    :cond_44
    move v1, v2

    .line 844
    goto/16 :goto_0

    .line 843
    :cond_45
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->oAuth2AccessToken:Ljava/lang/String;

    if-nez v3, :cond_44

    .line 845
    :cond_46
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;

    if-eqz v3, :cond_48

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_49

    :cond_47
    move v1, v2

    .line 846
    goto/16 :goto_0

    .line 845
    :cond_48
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;

    if-nez v3, :cond_47

    .line 847
    :cond_49
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;

    if-eqz v3, :cond_4b

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4c

    :cond_4a
    move v1, v2

    .line 848
    goto/16 :goto_0

    .line 847
    :cond_4b
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;

    if-nez v3, :cond_4a

    .line 849
    :cond_4c
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;

    if-eqz v3, :cond_4e

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4f

    :cond_4d
    move v1, v2

    .line 850
    goto/16 :goto_0

    .line 849
    :cond_4e
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;

    if-nez v3, :cond_4d

    .line 851
    :cond_4f
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenURL:Ljava/lang/String;

    if-eqz v3, :cond_51

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenURL:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_52

    :cond_50
    move v1, v2

    .line 852
    goto/16 :goto_0

    .line 851
    :cond_51
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenURL:Ljava/lang/String;

    if-nez v3, :cond_50

    .line 853
    :cond_52
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2InvalidateTokenURL:Ljava/lang/String;

    if-eqz v3, :cond_54

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2InvalidateTokenURL:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->oAuth2InvalidateTokenURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_55

    :cond_53
    move v1, v2

    .line 854
    goto/16 :goto_0

    .line 853
    :cond_54
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->oAuth2InvalidateTokenURL:Ljava/lang/String;

    if-nez v3, :cond_53

    .line 855
    :cond_55
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;

    if-eqz v3, :cond_57

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_58

    :cond_56
    move v1, v2

    .line 856
    goto/16 :goto_0

    .line 855
    :cond_57
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;

    if-nez v3, :cond_56

    .line 857
    :cond_58
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;

    if-eqz v3, :cond_5a

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5b

    :cond_59
    move v1, v2

    .line 858
    goto/16 :goto_0

    .line 857
    :cond_5a
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;

    if-nez v3, :cond_59

    .line 859
    :cond_5b
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;

    if-eqz v3, :cond_5d

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5e

    :cond_5c
    move v1, v2

    .line 860
    goto/16 :goto_0

    .line 859
    :cond_5d
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;

    if-nez v3, :cond_5c

    .line 861
    :cond_5e
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->password:Ljava/lang/String;

    if-eqz v3, :cond_60

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->password:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->password:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_61

    :cond_5f
    move v1, v2

    goto/16 :goto_0

    :cond_60
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->password:Ljava/lang/String;

    if-nez v3, :cond_5f

    .line 862
    :cond_61
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->requestHeaders:Ljava/util/Map;

    if-eqz v3, :cond_63

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->requestHeaders:Ljava/util/Map;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->requestHeaders:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_64

    :cond_62
    move v1, v2

    .line 863
    goto/16 :goto_0

    .line 862
    :cond_63
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->requestHeaders:Ljava/util/Map;

    if-nez v3, :cond_62

    .line 864
    :cond_64
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    if-eqz v3, :cond_66

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_67

    :cond_65
    move v1, v2

    goto/16 :goto_0

    :cond_66
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    if-nez v3, :cond_65

    .line 865
    :cond_67
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->siteStreamBaseURL:Ljava/lang/String;

    if-eqz v3, :cond_69

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->siteStreamBaseURL:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->siteStreamBaseURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6a

    :cond_68
    move v1, v2

    .line 866
    goto/16 :goto_0

    .line 865
    :cond_69
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->siteStreamBaseURL:Ljava/lang/String;

    if-nez v3, :cond_68

    .line 867
    :cond_6a
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->streamBaseURL:Ljava/lang/String;

    if-eqz v3, :cond_6c

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->streamBaseURL:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->streamBaseURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6d

    :cond_6b
    move v1, v2

    .line 868
    goto/16 :goto_0

    .line 867
    :cond_6c
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->streamBaseURL:Ljava/lang/String;

    if-nez v3, :cond_6b

    .line 869
    :cond_6d
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->user:Ljava/lang/String;

    if-eqz v3, :cond_6f

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->user:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->user:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_70

    :cond_6e
    move v1, v2

    goto/16 :goto_0

    :cond_6f
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->user:Ljava/lang/String;

    if-nez v3, :cond_6e

    .line 870
    :cond_70
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->userAgent:Ljava/lang/String;

    if-eqz v3, :cond_72

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->userAgent:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->userAgent:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_73

    :cond_71
    move v1, v2

    goto/16 :goto_0

    :cond_72
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->userAgent:Ljava/lang/String;

    if-nez v3, :cond_71

    .line 871
    :cond_73
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamBaseURL:Ljava/lang/String;

    if-eqz v3, :cond_74

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamBaseURL:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->userStreamBaseURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 872
    goto/16 :goto_0

    .line 871
    :cond_74
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->userStreamBaseURL:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public final getAsyncNumThreads()I
    .locals 1

    .prologue
    .line 496
    iget v0, p0, Ltwitter4j/conf/ConfigurationBase;->asyncNumThreads:I

    return v0
.end method

.method public final getClientURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->clientURL:Ljava/lang/String;

    return-object v0
.end method

.method public final getClientVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->clientVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getContributingTo()J
    .locals 2

    .prologue
    .line 505
    iget-wide v0, p0, Ltwitter4j/conf/ConfigurationBase;->contributingTo:J

    return-wide v0
.end method

.method public getDispatcherImpl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->dispatcherImpl:Ljava/lang/String;

    return-object v0
.end method

.method public final getHttpConnectionTimeout()I
    .locals 1

    .prologue
    .line 374
    iget v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConnectionTimeout:I

    return v0
.end method

.method public final getHttpDefaultMaxPerRoute()I
    .locals 1

    .prologue
    .line 429
    iget v0, p0, Ltwitter4j/conf/ConfigurationBase;->defaultMaxPerRoute:I

    return v0
.end method

.method public final getHttpMaxTotalConnections()I
    .locals 1

    .prologue
    .line 420
    iget v0, p0, Ltwitter4j/conf/ConfigurationBase;->maxTotalConnections:I

    return v0
.end method

.method public final getHttpProxyHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyHost:Ljava/lang/String;

    return-object v0
.end method

.method public final getHttpProxyPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyPassword:Ljava/lang/String;

    return-object v0
.end method

.method public final getHttpProxyPort()I
    .locals 1

    .prologue
    .line 365
    iget v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyPort:I

    return v0
.end method

.method public final getHttpProxyUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyUser:Ljava/lang/String;

    return-object v0
.end method

.method public final getHttpReadTimeout()I
    .locals 1

    .prologue
    .line 383
    iget v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpReadTimeout:I

    return v0
.end method

.method public final getHttpRetryCount()I
    .locals 1

    .prologue
    .line 402
    iget v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryCount:I

    return v0
.end method

.method public final getHttpRetryIntervalSeconds()I
    .locals 1

    .prologue
    .line 411
    iget v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryIntervalSeconds:I

    return v0
.end method

.method public getHttpStreamingReadTimeout()I
    .locals 1

    .prologue
    .line 392
    iget v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpStreamingReadTimeout:I

    return v0
.end method

.method public getLoggerFactory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->loggerFactory:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProvider:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaProviderAPIKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 754
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderAPIKey:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaProviderParameters()Ljava/util/Properties;
    .locals 1

    .prologue
    .line 763
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderParameters:Ljava/util/Properties;

    return-object v0
.end method

.method public getOAuth2AccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2AccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getOAuth2InvalidateTokenURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2InvalidateTokenURL:Ljava/lang/String;

    return-object v0
.end method

.method public getOAuth2TokenType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenType:Ljava/lang/String;

    return-object v0
.end method

.method public getOAuth2TokenURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenURL:Ljava/lang/String;

    return-object v0
.end method

.method public getOAuthAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getOAuthAccessTokenSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getOAuthAccessTokenURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;

    return-object v0
.end method

.method public getOAuthAuthenticationURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;

    return-object v0
.end method

.method public getOAuthAuthorizationURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;

    return-object v0
.end method

.method public final getOAuthConsumerKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getOAuthConsumerSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getOAuthRequestTokenURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;

    return-object v0
.end method

.method public final getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->password:Ljava/lang/String;

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
    .line 331
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->requestHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getRestBaseURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    return-object v0
.end method

.method public getSiteStreamBaseURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->siteStreamBaseURL:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamBaseURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->streamBaseURL:Ljava/lang/String;

    return-object v0
.end method

.method public final getUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->user:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public getUserStreamBaseURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamBaseURL:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 879
    iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->debug:Z

    if-eqz v3, :cond_1

    move v0, v1

    .line 880
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v4, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->userAgent:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->userAgent:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int v0, v4, v3

    .line 881
    mul-int/lit8 v4, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->user:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->user:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int v0, v4, v3

    .line 882
    mul-int/lit8 v4, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->password:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->password:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int v0, v4, v3

    .line 883
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->useSSL:Z

    if-eqz v3, :cond_5

    move v3, v1

    :goto_4
    add-int v0, v4, v3

    .line 884
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->prettyDebug:Z

    if-eqz v3, :cond_6

    move v3, v1

    :goto_5
    add-int v0, v4, v3

    .line 885
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->gzipEnabled:Z

    if-eqz v3, :cond_7

    move v3, v1

    :goto_6
    add-int v0, v4, v3

    .line 886
    mul-int/lit8 v4, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyHost:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyHost:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_7
    add-int v0, v4, v3

    .line 887
    mul-int/lit8 v4, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyUser:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyUser:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_8
    add-int v0, v4, v3

    .line 888
    mul-int/lit8 v4, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyPassword:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyPassword:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_9
    add-int v0, v4, v3

    .line 889
    mul-int/lit8 v3, v0, 0x1f

    iget v4, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyPort:I

    add-int v0, v3, v4

    .line 890
    mul-int/lit8 v3, v0, 0x1f

    iget v4, p0, Ltwitter4j/conf/ConfigurationBase;->httpConnectionTimeout:I

    add-int v0, v3, v4

    .line 891
    mul-int/lit8 v3, v0, 0x1f

    iget v4, p0, Ltwitter4j/conf/ConfigurationBase;->httpReadTimeout:I

    add-int v0, v3, v4

    .line 892
    mul-int/lit8 v3, v0, 0x1f

    iget v4, p0, Ltwitter4j/conf/ConfigurationBase;->httpStreamingReadTimeout:I

    add-int v0, v3, v4

    .line 893
    mul-int/lit8 v3, v0, 0x1f

    iget v4, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryCount:I

    add-int v0, v3, v4

    .line 894
    mul-int/lit8 v3, v0, 0x1f

    iget v4, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryIntervalSeconds:I

    add-int v0, v3, v4

    .line 895
    mul-int/lit8 v3, v0, 0x1f

    iget v4, p0, Ltwitter4j/conf/ConfigurationBase;->maxTotalConnections:I

    add-int v0, v3, v4

    .line 896
    mul-int/lit8 v3, v0, 0x1f

    iget v4, p0, Ltwitter4j/conf/ConfigurationBase;->defaultMaxPerRoute:I

    add-int v0, v3, v4

    .line 897
    mul-int/lit8 v4, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;

    if-eqz v3, :cond_b

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_a
    add-int v0, v4, v3

    .line 898
    mul-int/lit8 v4, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;

    if-eqz v3, :cond_c

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_b
    add-int v0, v4, v3

    .line 899
    mul-int/lit8 v4, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessToken:Ljava/lang/String;

    if-eqz v3, :cond_d

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessToken:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_c
    add-int v0, v4, v3

    .line 900
    mul-int/lit8 v4, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenSecret:Ljava/lang/String;

    if-eqz v3, :cond_e

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenSecret:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_d
    add-int v0, v4, v3

    .line 901
    mul-int/lit8 v4, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenType:Ljava/lang/String;

    if-eqz v3, :cond_f

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenType:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_e
    add-int v0, v4, v3

    .line 902
    mul-int/lit8 v4, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2AccessToken:Ljava/lang/String;

    if-eqz v3, :cond_10

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2AccessToken:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_f
    add-int v0, v4, v3

    .line 903
    mul-int/lit8 v4, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;

    if-eqz v3, :cond_11

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_10
    add-int v0, v4, v3

    .line 904
    mul-int/lit8 v4, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;

    if-eqz v3, :cond_12

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_11
    add-int v0, v4, v3

    .line 905
    mul-int/lit8 v4, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;

    if-eqz v3, :cond_13

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_12
    add-int v0, v4, v3

    .line 906
    mul-int/lit8 v4, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;

    if-eqz v3, :cond_14

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_13
    add-int v0, v4, v3

    .line 907
    mul-int/lit8 v4, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenURL:Ljava/lang/String;

    if-eqz v3, :cond_15

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenURL:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_14
    add-int v0, v4, v3

    .line 908
    mul-int/lit8 v4, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2InvalidateTokenURL:Ljava/lang/String;

    if-eqz v3, :cond_16

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2InvalidateTokenURL:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_15
    add-int v0, v4, v3

    .line 909
    mul-int/lit8 v4, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    if-eqz v3, :cond_17

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_16
    add-int v0, v4, v3

    .line 910
    mul-int/lit8 v4, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->streamBaseURL:Ljava/lang/String;

    if-eqz v3, :cond_18

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->streamBaseURL:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_17
    add-int v0, v4, v3

    .line 911
    mul-int/lit8 v4, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamBaseURL:Ljava/lang/String;

    if-eqz v3, :cond_19

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamBaseURL:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_18
    add-int v0, v4, v3

    .line 912
    mul-int/lit8 v4, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->siteStreamBaseURL:Ljava/lang/String;

    if-eqz v3, :cond_1a

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->siteStreamBaseURL:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_19
    add-int v0, v4, v3

    .line 913
    mul-int/lit8 v4, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->dispatcherImpl:Ljava/lang/String;

    if-eqz v3, :cond_1b

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->dispatcherImpl:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1a
    add-int v0, v4, v3

    .line 914
    mul-int/lit8 v4, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->loggerFactory:Ljava/lang/String;

    if-eqz v3, :cond_1c

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->loggerFactory:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1b
    add-int v0, v4, v3

    .line 915
    mul-int/lit8 v3, v0, 0x1f

    iget v4, p0, Ltwitter4j/conf/ConfigurationBase;->asyncNumThreads:I

    add-int v0, v3, v4

    .line 916
    mul-int/lit8 v3, v0, 0x1f

    iget-wide v4, p0, Ltwitter4j/conf/ConfigurationBase;->contributingTo:J

    iget-wide v6, p0, Ltwitter4j/conf/ConfigurationBase;->contributingTo:J

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v0, v3, v4

    .line 917
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->includeRTsEnabled:Z

    if-eqz v3, :cond_1d

    move v3, v1

    :goto_1c
    add-int v0, v4, v3

    .line 918
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->includeEntitiesEnabled:Z

    if-eqz v3, :cond_1e

    move v3, v1

    :goto_1d
    add-int v0, v4, v3

    .line 919
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->includeMyRetweetEnabled:Z

    if-eqz v3, :cond_1f

    move v3, v1

    :goto_1e
    add-int v0, v4, v3

    .line 920
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->trimUserEnabled:Z

    if-eqz v3, :cond_20

    move v3, v1

    :goto_1f
    add-int v0, v4, v3

    .line 921
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->jsonStoreEnabled:Z

    if-eqz v3, :cond_21

    move v3, v1

    :goto_20
    add-int v0, v4, v3

    .line 922
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->mbeanEnabled:Z

    if-eqz v3, :cond_22

    move v3, v1

    :goto_21
    add-int v0, v4, v3

    .line 923
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamRepliesAllEnabled:Z

    if-eqz v3, :cond_23

    move v3, v1

    :goto_22
    add-int v0, v4, v3

    .line 924
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->stallWarningsEnabled:Z

    if-eqz v3, :cond_24

    move v3, v1

    :goto_23
    add-int v0, v4, v3

    .line 925
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->applicationOnlyAuthEnabled:Z

    if-eqz v3, :cond_25

    move v3, v1

    :goto_24
    add-int v0, v4, v3

    .line 926
    mul-int/lit8 v4, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProvider:Ljava/lang/String;

    if-eqz v3, :cond_26

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProvider:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_25
    add-int v0, v4, v3

    .line 927
    mul-int/lit8 v4, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderAPIKey:Ljava/lang/String;

    if-eqz v3, :cond_27

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderAPIKey:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_26
    add-int v0, v4, v3

    .line 928
    mul-int/lit8 v4, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderParameters:Ljava/util/Properties;

    if-eqz v3, :cond_28

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderParameters:Ljava/util/Properties;

    invoke-virtual {v3}, Ljava/util/Properties;->hashCode()I

    move-result v3

    :goto_27
    add-int v0, v4, v3

    .line 929
    mul-int/lit8 v4, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->clientVersion:Ljava/lang/String;

    if-eqz v3, :cond_29

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->clientVersion:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_28
    add-int v0, v4, v3

    .line 930
    mul-int/lit8 v4, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->clientURL:Ljava/lang/String;

    if-eqz v3, :cond_2a

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->clientURL:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_29
    add-int v0, v4, v3

    .line 931
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->IS_DALVIK:Z

    if-eqz v3, :cond_2b

    move v3, v1

    :goto_2a
    add-int v0, v4, v3

    .line 932
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v4, p0, Ltwitter4j/conf/ConfigurationBase;->IS_GAE:Z

    if-eqz v4, :cond_2c

    :goto_2b
    add-int v0, v3, v1

    .line 933
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->requestHeaders:Ljava/util/Map;

    if-eqz v3, :cond_0

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->requestHeaders:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    :cond_0
    add-int/2addr v1, v2

    .line 934
    return v1

    .end local v0    # "result":I
    :cond_1
    move v0, v2

    .line 879
    goto/16 :goto_0

    .restart local v0    # "result":I
    :cond_2
    move v3, v2

    .line 880
    goto/16 :goto_1

    :cond_3
    move v3, v2

    .line 881
    goto/16 :goto_2

    :cond_4
    move v3, v2

    .line 882
    goto/16 :goto_3

    :cond_5
    move v3, v2

    .line 883
    goto/16 :goto_4

    :cond_6
    move v3, v2

    .line 884
    goto/16 :goto_5

    :cond_7
    move v3, v2

    .line 885
    goto/16 :goto_6

    :cond_8
    move v3, v2

    .line 886
    goto/16 :goto_7

    :cond_9
    move v3, v2

    .line 887
    goto/16 :goto_8

    :cond_a
    move v3, v2

    .line 888
    goto/16 :goto_9

    :cond_b
    move v3, v2

    .line 897
    goto/16 :goto_a

    :cond_c
    move v3, v2

    .line 898
    goto/16 :goto_b

    :cond_d
    move v3, v2

    .line 899
    goto/16 :goto_c

    :cond_e
    move v3, v2

    .line 900
    goto/16 :goto_d

    :cond_f
    move v3, v2

    .line 901
    goto/16 :goto_e

    :cond_10
    move v3, v2

    .line 902
    goto/16 :goto_f

    :cond_11
    move v3, v2

    .line 903
    goto/16 :goto_10

    :cond_12
    move v3, v2

    .line 904
    goto/16 :goto_11

    :cond_13
    move v3, v2

    .line 905
    goto/16 :goto_12

    :cond_14
    move v3, v2

    .line 906
    goto/16 :goto_13

    :cond_15
    move v3, v2

    .line 907
    goto/16 :goto_14

    :cond_16
    move v3, v2

    .line 908
    goto/16 :goto_15

    :cond_17
    move v3, v2

    .line 909
    goto/16 :goto_16

    :cond_18
    move v3, v2

    .line 910
    goto/16 :goto_17

    :cond_19
    move v3, v2

    .line 911
    goto/16 :goto_18

    :cond_1a
    move v3, v2

    .line 912
    goto/16 :goto_19

    :cond_1b
    move v3, v2

    .line 913
    goto/16 :goto_1a

    :cond_1c
    move v3, v2

    .line 914
    goto/16 :goto_1b

    :cond_1d
    move v3, v2

    .line 917
    goto/16 :goto_1c

    :cond_1e
    move v3, v2

    .line 918
    goto/16 :goto_1d

    :cond_1f
    move v3, v2

    .line 919
    goto/16 :goto_1e

    :cond_20
    move v3, v2

    .line 920
    goto/16 :goto_1f

    :cond_21
    move v3, v2

    .line 921
    goto/16 :goto_20

    :cond_22
    move v3, v2

    .line 922
    goto/16 :goto_21

    :cond_23
    move v3, v2

    .line 923
    goto/16 :goto_22

    :cond_24
    move v3, v2

    .line 924
    goto/16 :goto_23

    :cond_25
    move v3, v2

    .line 925
    goto/16 :goto_24

    :cond_26
    move v3, v2

    .line 926
    goto/16 :goto_25

    :cond_27
    move v3, v2

    .line 927
    goto/16 :goto_26

    :cond_28
    move v3, v2

    .line 928
    goto/16 :goto_27

    :cond_29
    move v3, v2

    .line 929
    goto/16 :goto_28

    :cond_2a
    move v3, v2

    .line 930
    goto/16 :goto_29

    :cond_2b
    move v3, v2

    .line 931
    goto/16 :goto_2a

    :cond_2c
    move v1, v2

    .line 932
    goto/16 :goto_2b
.end method

.method public isApplicationOnlyAuthEnabled()Z
    .locals 1

    .prologue
    .line 736
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->applicationOnlyAuthEnabled:Z

    return v0
.end method

.method public final isDalvik()Z
    .locals 1

    .prologue
    .line 243
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->IS_DALVIK:Z

    return v0
.end method

.method public final isDebugEnabled()Z
    .locals 1

    .prologue
    .line 252
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->debug:Z

    return v0
.end method

.method public isGAE()Z
    .locals 1

    .prologue
    .line 247
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->IS_GAE:Z

    return v0
.end method

.method public isGZIPEnabled()Z
    .locals 1

    .prologue
    .line 308
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->gzipEnabled:Z

    return v0
.end method

.method public isIncludeEntitiesEnabled()Z
    .locals 1

    .prologue
    .line 668
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->includeEntitiesEnabled:Z

    return v0
.end method

.method public isIncludeMyRetweetEnabled()Z
    .locals 1

    .prologue
    .line 684
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->includeMyRetweetEnabled:Z

    return v0
.end method

.method public isIncludeRTsEnabled()Z
    .locals 1

    .prologue
    .line 663
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->includeRTsEnabled:Z

    return v0
.end method

.method public isJSONStoreEnabled()Z
    .locals 1

    .prologue
    .line 700
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->jsonStoreEnabled:Z

    return v0
.end method

.method public isMBeanEnabled()Z
    .locals 1

    .prologue
    .line 709
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->mbeanEnabled:Z

    return v0
.end method

.method public isPrettyDebugEnabled()Z
    .locals 1

    .prologue
    .line 289
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->prettyDebug:Z

    return v0
.end method

.method public isStallWarningsEnabled()Z
    .locals 1

    .prologue
    .line 727
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->stallWarningsEnabled:Z

    return v0
.end method

.method public isTrimUserEnabled()Z
    .locals 1

    .prologue
    .line 692
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->trimUserEnabled:Z

    return v0
.end method

.method public isUserStreamRepliesAllEnabled()Z
    .locals 1

    .prologue
    .line 718
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamRepliesAllEnabled:Z

    return v0
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 1022
    invoke-static {p0}, Ltwitter4j/conf/ConfigurationBase;->getInstance(Ltwitter4j/conf/ConfigurationBase;)Ltwitter4j/conf/ConfigurationBase;

    move-result-object v0

    return-object v0
.end method

.method protected final setApplicationOnlyAuthEnabled(Z)V
    .locals 0
    .param p1, "applicationOnlyAuthEnabled"    # Z

    .prologue
    .line 740
    iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->applicationOnlyAuthEnabled:Z

    .line 741
    return-void
.end method

.method protected final setAsyncNumThreads(I)V
    .locals 0
    .param p1, "asyncNumThreads"    # I

    .prologue
    .line 500
    iput p1, p0, Ltwitter4j/conf/ConfigurationBase;->asyncNumThreads:I

    .line 501
    return-void
.end method

.method protected final setClientURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientURL"    # Ljava/lang/String;

    .prologue
    .line 528
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->clientURL:Ljava/lang/String;

    .line 529
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;->initRequestHeaders()V

    .line 530
    return-void
.end method

.method protected final setClientVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientVersion"    # Ljava/lang/String;

    .prologue
    .line 518
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->clientVersion:Ljava/lang/String;

    .line 519
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;->initRequestHeaders()V

    .line 520
    return-void
.end method

.method protected final setContributingTo(J)V
    .locals 1
    .param p1, "contributingTo"    # J

    .prologue
    .line 509
    iput-wide p1, p0, Ltwitter4j/conf/ConfigurationBase;->contributingTo:J

    .line 510
    return-void
.end method

.method protected final setDebug(Z)V
    .locals 0
    .param p1, "debug"    # Z

    .prologue
    .line 256
    iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->debug:Z

    .line 257
    return-void
.end method

.method protected final setDispatcherImpl(Ljava/lang/String;)V
    .locals 0
    .param p1, "dispatcherImpl"    # Ljava/lang/String;

    .prologue
    .line 653
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->dispatcherImpl:Ljava/lang/String;

    .line 654
    return-void
.end method

.method protected final setGZIPEnabled(Z)V
    .locals 0
    .param p1, "gzipEnabled"    # Z

    .prologue
    .line 302
    iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->gzipEnabled:Z

    .line 303
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;->initRequestHeaders()V

    .line 304
    return-void
.end method

.method protected final setHttpConnectionTimeout(I)V
    .locals 0
    .param p1, "connectionTimeout"    # I

    .prologue
    .line 378
    iput p1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConnectionTimeout:I

    .line 379
    return-void
.end method

.method protected final setHttpDefaultMaxPerRoute(I)V
    .locals 0
    .param p1, "defaultMaxPerRoute"    # I

    .prologue
    .line 433
    iput p1, p0, Ltwitter4j/conf/ConfigurationBase;->defaultMaxPerRoute:I

    .line 434
    return-void
.end method

.method protected final setHttpMaxTotalConnections(I)V
    .locals 0
    .param p1, "maxTotalConnections"    # I

    .prologue
    .line 424
    iput p1, p0, Ltwitter4j/conf/ConfigurationBase;->maxTotalConnections:I

    .line 425
    return-void
.end method

.method protected final setHttpProxyHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "proxyHost"    # Ljava/lang/String;

    .prologue
    .line 342
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyHost:Ljava/lang/String;

    .line 343
    return-void
.end method

.method protected final setHttpProxyPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "proxyPassword"    # Ljava/lang/String;

    .prologue
    .line 360
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyPassword:Ljava/lang/String;

    .line 361
    return-void
.end method

.method protected final setHttpProxyPort(I)V
    .locals 0
    .param p1, "proxyPort"    # I

    .prologue
    .line 369
    iput p1, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyPort:I

    .line 370
    return-void
.end method

.method protected final setHttpProxyUser(Ljava/lang/String;)V
    .locals 0
    .param p1, "proxyUser"    # Ljava/lang/String;

    .prologue
    .line 351
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyUser:Ljava/lang/String;

    .line 352
    return-void
.end method

.method protected final setHttpReadTimeout(I)V
    .locals 0
    .param p1, "readTimeout"    # I

    .prologue
    .line 387
    iput p1, p0, Ltwitter4j/conf/ConfigurationBase;->httpReadTimeout:I

    .line 388
    return-void
.end method

.method protected final setHttpRetryCount(I)V
    .locals 0
    .param p1, "retryCount"    # I

    .prologue
    .line 406
    iput p1, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryCount:I

    .line 407
    return-void
.end method

.method protected final setHttpRetryIntervalSeconds(I)V
    .locals 0
    .param p1, "retryIntervalSeconds"    # I

    .prologue
    .line 415
    iput p1, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryIntervalSeconds:I

    .line 416
    return-void
.end method

.method protected final setHttpStreamingReadTimeout(I)V
    .locals 0
    .param p1, "httpStreamingReadTimeout"    # I

    .prologue
    .line 396
    iput p1, p0, Ltwitter4j/conf/ConfigurationBase;->httpStreamingReadTimeout:I

    .line 397
    return-void
.end method

.method protected final setIncludeEntitiesEnbled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 680
    iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->includeEntitiesEnabled:Z

    .line 681
    return-void
.end method

.method public setIncludeMyRetweetEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 688
    iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->includeMyRetweetEnabled:Z

    .line 689
    return-void
.end method

.method protected final setIncludeRTsEnbled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 676
    iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->includeRTsEnabled:Z

    .line 677
    return-void
.end method

.method protected final setJSONStoreEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 704
    iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->jsonStoreEnabled:Z

    .line 705
    return-void
.end method

.method protected final setLoggerFactory(Ljava/lang/String;)V
    .locals 0
    .param p1, "loggerImpl"    # Ljava/lang/String;

    .prologue
    .line 672
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->loggerFactory:Ljava/lang/String;

    .line 673
    return-void
.end method

.method protected final setMBeanEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 713
    iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->mbeanEnabled:Z

    .line 714
    return-void
.end method

.method protected final setMediaProvider(Ljava/lang/String;)V
    .locals 0
    .param p1, "mediaProvider"    # Ljava/lang/String;

    .prologue
    .line 749
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProvider:Ljava/lang/String;

    .line 750
    return-void
.end method

.method protected final setMediaProviderAPIKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "mediaProviderAPIKey"    # Ljava/lang/String;

    .prologue
    .line 758
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderAPIKey:Ljava/lang/String;

    .line 759
    return-void
.end method

.method protected final setMediaProviderParameters(Ljava/util/Properties;)V
    .locals 0
    .param p1, "props"    # Ljava/util/Properties;

    .prologue
    .line 767
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderParameters:Ljava/util/Properties;

    .line 768
    return-void
.end method

.method protected final setOAuth2AccessToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "oAuth2AccessToken"    # Ljava/lang/String;

    .prologue
    .line 491
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2AccessToken:Ljava/lang/String;

    .line 492
    return-void
.end method

.method protected final setOAuth2InvalidateTokenURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "oAuth2InvalidateTokenURL"    # Ljava/lang/String;

    .prologue
    .line 643
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2InvalidateTokenURL:Ljava/lang/String;

    .line 644
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;->fixRestBaseURL()V

    .line 645
    return-void
.end method

.method protected final setOAuth2TokenType(Ljava/lang/String;)V
    .locals 0
    .param p1, "oAuth2TokenType"    # Ljava/lang/String;

    .prologue
    .line 482
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenType:Ljava/lang/String;

    .line 483
    return-void
.end method

.method protected final setOAuth2TokenURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "oAuth2TokenURL"    # Ljava/lang/String;

    .prologue
    .line 633
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenURL:Ljava/lang/String;

    .line 634
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;->fixRestBaseURL()V

    .line 635
    return-void
.end method

.method protected final setOAuthAccessToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "oAuthAccessToken"    # Ljava/lang/String;

    .prologue
    .line 464
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessToken:Ljava/lang/String;

    .line 465
    return-void
.end method

.method protected final setOAuthAccessTokenSecret(Ljava/lang/String;)V
    .locals 0
    .param p1, "oAuthAccessTokenSecret"    # Ljava/lang/String;

    .prologue
    .line 473
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenSecret:Ljava/lang/String;

    .line 474
    return-void
.end method

.method protected final setOAuthAccessTokenURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "oAuthAccessTokenURL"    # Ljava/lang/String;

    .prologue
    .line 613
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;

    .line 614
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;->fixRestBaseURL()V

    .line 615
    return-void
.end method

.method protected final setOAuthAuthenticationURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "oAuthAuthenticationURL"    # Ljava/lang/String;

    .prologue
    .line 623
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;

    .line 624
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;->fixRestBaseURL()V

    .line 625
    return-void
.end method

.method protected final setOAuthAuthorizationURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "oAuthAuthorizationURL"    # Ljava/lang/String;

    .prologue
    .line 603
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;

    .line 604
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;->fixRestBaseURL()V

    .line 605
    return-void
.end method

.method protected final setOAuthConsumerKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "oAuthConsumerKey"    # Ljava/lang/String;

    .prologue
    .line 444
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;

    .line 445
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;->fixRestBaseURL()V

    .line 446
    return-void
.end method

.method protected final setOAuthConsumerSecret(Ljava/lang/String;)V
    .locals 0
    .param p1, "oAuthConsumerSecret"    # Ljava/lang/String;

    .prologue
    .line 454
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;

    .line 455
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;->fixRestBaseURL()V

    .line 456
    return-void
.end method

.method protected final setOAuthRequestTokenURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "oAuthRequestTokenURL"    # Ljava/lang/String;

    .prologue
    .line 593
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;

    .line 594
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;->fixRestBaseURL()V

    .line 595
    return-void
.end method

.method protected final setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 284
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->password:Ljava/lang/String;

    .line 285
    return-void
.end method

.method protected final setPrettyDebugEnabled(Z)V
    .locals 0
    .param p1, "prettyDebug"    # Z

    .prologue
    .line 298
    iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->prettyDebug:Z

    .line 299
    return-void
.end method

.method protected final setRestBaseURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "restBaseURL"    # Ljava/lang/String;

    .prologue
    .line 538
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    .line 539
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;->fixRestBaseURL()V

    .line 540
    return-void
.end method

.method protected final setSiteStreamBaseURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "siteStreamBaseURL"    # Ljava/lang/String;

    .prologue
    .line 584
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->siteStreamBaseURL:Ljava/lang/String;

    .line 585
    return-void
.end method

.method protected final setStallWarningsEnabled(Z)V
    .locals 0
    .param p1, "stallWarningsEnabled"    # Z

    .prologue
    .line 731
    iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->stallWarningsEnabled:Z

    .line 732
    return-void
.end method

.method protected final setStreamBaseURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "streamBaseURL"    # Ljava/lang/String;

    .prologue
    .line 566
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->streamBaseURL:Ljava/lang/String;

    .line 567
    return-void
.end method

.method public setTrimUserEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 696
    iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->trimUserEnabled:Z

    .line 697
    return-void
.end method

.method protected final setUseSSL(Z)V
    .locals 0
    .param p1, "useSSL"    # Z

    .prologue
    .line 293
    iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->useSSL:Z

    .line 294
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;->fixRestBaseURL()V

    .line 295
    return-void
.end method

.method protected final setUser(Ljava/lang/String;)V
    .locals 0
    .param p1, "user"    # Ljava/lang/String;

    .prologue
    .line 275
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->user:Ljava/lang/String;

    .line 276
    return-void
.end method

.method protected final setUserAgent(Ljava/lang/String;)V
    .locals 0
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 265
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->userAgent:Ljava/lang/String;

    .line 266
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;->initRequestHeaders()V

    .line 267
    return-void
.end method

.method protected final setUserStreamBaseURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "siteStreamBaseURL"    # Ljava/lang/String;

    .prologue
    .line 575
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamBaseURL:Ljava/lang/String;

    .line 576
    return-void
.end method

.method protected final setUserStreamRepliesAllEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 722
    iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamRepliesAllEnabled:Z

    .line 723
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x27

    .line 939
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ConfigurationBase{debug="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->debug:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userAgent=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->userAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", user=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->user:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", password=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", useSSL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->useSSL:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", prettyDebug="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->prettyDebug:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gzipEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->gzipEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", httpProxyHost=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", httpProxyUser=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyUser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", httpProxyPassword=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", httpProxyPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", httpConnectionTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConnectionTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", httpReadTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpReadTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", httpStreamingReadTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpStreamingReadTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", httpRetryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", httpRetryIntervalSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryIntervalSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxTotalConnections="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/conf/ConfigurationBase;->maxTotalConnections:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", defaultMaxPerRoute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/conf/ConfigurationBase;->defaultMaxPerRoute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", oAuthConsumerKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", oAuthConsumerSecret=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", oAuthAccessToken=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", oAuthAccessTokenSecret=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenSecret:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", oAuth2TokenType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", oAuth2AccessToken=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2AccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", oAuthRequestTokenURL=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", oAuthAuthorizationURL=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", oAuthAccessTokenURL=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", oAuthAuthenticationURL=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", oAuth2TokenURL=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", oAuth2InvalidateTokenURL=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2InvalidateTokenURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", restBaseURL=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", streamBaseURL=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->streamBaseURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userStreamBaseURL=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamBaseURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", siteStreamBaseURL=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->siteStreamBaseURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dispatcherImpl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->dispatcherImpl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", loggerFactory=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->loggerFactory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", asyncNumThreads="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/conf/ConfigurationBase;->asyncNumThreads:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contributingTo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ltwitter4j/conf/ConfigurationBase;->contributingTo:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", includeRTsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->includeRTsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", includeEntitiesEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->includeEntitiesEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", includeMyRetweetEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->includeMyRetweetEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", trimUserEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->trimUserEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", jsonStoreEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->jsonStoreEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mbeanEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->mbeanEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userStreamRepliesAllEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamRepliesAllEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stallWarningsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->stallWarningsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", applicationOnlyAuthEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->applicationOnlyAuthEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mediaProvider=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mediaProviderAPIKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderAPIKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mediaProviderParameters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderParameters:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", clientVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->clientVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", clientURL=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->clientURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", IS_DALVIK="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->IS_DALVIK:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", IS_GAE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->IS_GAE:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requestHeaders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->requestHeaders:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
