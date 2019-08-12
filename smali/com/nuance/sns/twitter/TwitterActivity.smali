.class public Lcom/nuance/sns/twitter/TwitterActivity;
.super Lcom/nuance/sns/SocialNetworkActivity;
.source "TwitterActivity.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private handler:Landroid/os/Handler;

.field private twitterApi:Lcom/nuance/sns/twitter/TwitterApi;

.field private twitterPref:Lcom/nuance/sns/OAuthPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/nuance/sns/twitter/TwitterActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/nuance/sns/twitter/TwitterActivity;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/nuance/sns/SocialNetworkActivity;-><init>()V

    .line 21
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nuance/sns/twitter/TwitterActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/sns/twitter/TwitterActivity;)Lcom/nuance/sns/twitter/TwitterApi;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/sns/twitter/TwitterActivity;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/nuance/sns/twitter/TwitterActivity;->twitterApi:Lcom/nuance/sns/twitter/TwitterApi;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/sns/twitter/TwitterActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/sns/twitter/TwitterActivity;

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/nuance/sns/twitter/TwitterActivity;->closing()V

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/sns/twitter/TwitterActivity;Ltwitter4j/auth/AccessToken;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/sns/twitter/TwitterActivity;
    .param p1, "x1"    # Ltwitter4j/auth/AccessToken;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/nuance/sns/twitter/TwitterActivity;->saveAccessToken(Ltwitter4j/auth/AccessToken;)V

    return-void
.end method

.method static synthetic access$300(Lcom/nuance/sns/twitter/TwitterActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/sns/twitter/TwitterActivity;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/nuance/sns/twitter/TwitterActivity;->startScapingService()V

    return-void
.end method

.method static synthetic access$400(Lcom/nuance/sns/twitter/TwitterActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/sns/twitter/TwitterActivity;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/nuance/sns/twitter/TwitterActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500()Lcom/nuance/swype/util/LogManager$Log;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/nuance/sns/twitter/TwitterActivity;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-object v0
.end method

.method static synthetic access$600(Lcom/nuance/sns/twitter/TwitterActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/sns/twitter/TwitterActivity;

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/nuance/sns/twitter/TwitterActivity;->closing()V

    return-void
.end method

.method private retrieveAccessToken(Ljava/lang/String;)V
    .locals 1
    .param p1, "verifier"    # Ljava/lang/String;

    .prologue
    .line 64
    new-instance v0, Lcom/nuance/sns/twitter/TwitterActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/nuance/sns/twitter/TwitterActivity$1;-><init>(Lcom/nuance/sns/twitter/TwitterActivity;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/sns/twitter/TwitterActivity$1;->start()V

    .line 83
    return-void
.end method

.method private saveAccessToken(Ltwitter4j/auth/AccessToken;)V
    .locals 4
    .param p1, "accessTokenObject"    # Ltwitter4j/auth/AccessToken;

    .prologue
    .line 46
    invoke-virtual {p1}, Ltwitter4j/auth/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "accessToken":Ljava/lang/String;
    invoke-virtual {p1}, Ltwitter4j/auth/AccessToken;->getTokenSecret()Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "secretToken":Ljava/lang/String;
    iget-object v2, p0, Lcom/nuance/sns/twitter/TwitterActivity;->twitterPref:Lcom/nuance/sns/OAuthPreference;

    const-string v3, "access_token"

    invoke-virtual {v2, p0, v3, v0}, Lcom/nuance/sns/OAuthPreference;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v2, p0, Lcom/nuance/sns/twitter/TwitterActivity;->twitterPref:Lcom/nuance/sns/OAuthPreference;

    const-string v3, "NmGb6lf7ODVO3ZTmJ8OFa9dhuZBuQBPSXPEDRtLmH4"

    invoke-virtual {v2, p0, v3, v1}, Lcom/nuance/sns/OAuthPreference;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v2, p0, Lcom/nuance/sns/twitter/TwitterActivity;->twitterApi:Lcom/nuance/sns/twitter/TwitterApi;

    invoke-virtual {v2, v0}, Lcom/nuance/sns/twitter/TwitterApi;->setAccessToken(Ljava/lang/String;)V

    .line 51
    iget-object v2, p0, Lcom/nuance/sns/twitter/TwitterActivity;->twitterApi:Lcom/nuance/sns/twitter/TwitterApi;

    invoke-virtual {v2, v1}, Lcom/nuance/sns/twitter/TwitterApi;->setSecretToken(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method private startScapingService()V
    .locals 3

    .prologue
    .line 55
    sget-boolean v1, Lcom/nuance/sns/twitter/TwitterActivity;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/nuance/sns/twitter/TwitterActivity;->twitterApi:Lcom/nuance/sns/twitter/TwitterApi;

    invoke-virtual {v1}, Lcom/nuance/sns/twitter/TwitterApi;->isSessionValid()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 57
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nuance/sns/twitter/TwitterScraper;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "extra_access_token"

    iget-object v2, p0, Lcom/nuance/sns/twitter/TwitterActivity;->twitterApi:Lcom/nuance/sns/twitter/TwitterApi;

    invoke-virtual {v2}, Lcom/nuance/sns/twitter/TwitterApi;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const-string v1, "extra_secret_token"

    iget-object v2, p0, Lcom/nuance/sns/twitter/TwitterActivity;->twitterApi:Lcom/nuance/sns/twitter/TwitterApi;

    invoke-virtual {v2}, Lcom/nuance/sns/twitter/TwitterApi;->getSecretToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    invoke-virtual {p0, v0}, Lcom/nuance/sns/twitter/TwitterActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 61
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/nuance/sns/SocialNetworkActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    new-instance v0, Lcom/nuance/sns/twitter/TwitterApi;

    new-instance v1, Ltwitter4j/TwitterFactory;

    invoke-direct {v1}, Ltwitter4j/TwitterFactory;-><init>()V

    invoke-virtual {v1}, Ltwitter4j/TwitterFactory;->getInstance()Ltwitter4j/Twitter;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nuance/sns/twitter/TwitterApi;-><init>(Ltwitter4j/Twitter;)V

    iput-object v0, p0, Lcom/nuance/sns/twitter/TwitterActivity;->twitterApi:Lcom/nuance/sns/twitter/TwitterApi;

    .line 27
    invoke-static {}, Lcom/nuance/sns/OAuthPreference;->getTwitterOAuthPreference()Lcom/nuance/sns/OAuthPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/sns/twitter/TwitterActivity;->twitterPref:Lcom/nuance/sns/OAuthPreference;

    .line 28
    iget-object v0, p0, Lcom/nuance/sns/twitter/TwitterActivity;->twitterApi:Lcom/nuance/sns/twitter/TwitterApi;

    iget-object v1, p0, Lcom/nuance/sns/twitter/TwitterActivity;->twitterPref:Lcom/nuance/sns/OAuthPreference;

    const-string v2, "access_token"

    invoke-virtual {v1, p0, v2}, Lcom/nuance/sns/OAuthPreference;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/sns/twitter/TwitterApi;->setAccessToken(Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/nuance/sns/twitter/TwitterActivity;->twitterApi:Lcom/nuance/sns/twitter/TwitterApi;

    iget-object v1, p0, Lcom/nuance/sns/twitter/TwitterActivity;->twitterPref:Lcom/nuance/sns/OAuthPreference;

    const-string v2, "secret_token"

    invoke-virtual {v1, p0, v2}, Lcom/nuance/sns/OAuthPreference;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/sns/twitter/TwitterApi;->setSecretToken(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public onHandleUrlCallback(Ljava/lang/String;)Z
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "twitter://callback"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 89
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 90
    .local v0, "uri":Landroid/net/Uri;
    const-string v1, "denied"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 92
    invoke-virtual {p0}, Lcom/nuance/sns/twitter/TwitterActivity;->closing()V

    .line 97
    :cond_0
    :goto_0
    const/4 v1, 0x1

    .line 99
    .end local v0    # "uri":Landroid/net/Uri;
    :goto_1
    return v1

    .line 93
    .restart local v0    # "uri":Landroid/net/Uri;
    :cond_1
    const-string v1, "oauth_token"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 95
    const-string v1, "oauth_verifier"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/nuance/sns/twitter/TwitterActivity;->retrieveAccessToken(Ljava/lang/String;)V

    goto :goto_0

    .line 99
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onRequestAuthorizationUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 106
    const/4 v1, 0x0

    .line 108
    .local v1, "url":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/nuance/sns/twitter/TwitterActivity;->twitterApi:Lcom/nuance/sns/twitter/TwitterApi;

    invoke-virtual {v2}, Lcom/nuance/sns/twitter/TwitterApi;->getAuthorizationURL()Ljava/lang/String;
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 113
    :goto_0
    return-object v1

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ltwitter4j/TwitterException;
    sget-object v2, Lcom/nuance/sns/twitter/TwitterActivity;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v3, "onRequestAuthorizationUrl(): failed to get auth url"

    invoke-virtual {v2, v3, v0}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Lcom/nuance/sns/SocialNetworkActivity;->onResume()V

    .line 36
    iget-object v0, p0, Lcom/nuance/sns/twitter/TwitterActivity;->twitterApi:Lcom/nuance/sns/twitter/TwitterApi;

    invoke-virtual {v0}, Lcom/nuance/sns/twitter/TwitterApi;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/nuance/sns/twitter/TwitterActivity;->closing()V

    .line 38
    invoke-direct {p0}, Lcom/nuance/sns/twitter/TwitterActivity;->startScapingService()V

    .line 43
    :goto_0
    return-void

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/sns/twitter/TwitterActivity;->showAuthorzationLogin()V

    goto :goto_0
.end method
