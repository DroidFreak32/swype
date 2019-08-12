.class public Lcom/nuance/sns/facebook/FacebookActivity;
.super Lcom/nuance/sns/SocialNetworkActivity;
.source "FacebookActivity.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final APP_ID:Ljava/lang/String; = "301618349890446"

.field private static final READ_FRIENDS_LIST_PERMISSION:[Ljava/lang/String;

.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private faceBookPref:Lcom/nuance/sns/OAuthPreference;

.field private facebookApi:Lcom/nuance/sns/facebook/FacebookApi;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 12
    const-class v0, Lcom/nuance/sns/facebook/FacebookActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/nuance/sns/facebook/FacebookActivity;->$assertionsDisabled:Z

    .line 14
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "read_friendlists"

    aput-object v1, v0, v2

    sput-object v0, Lcom/nuance/sns/facebook/FacebookActivity;->READ_FRIENDS_LIST_PERMISSION:[Ljava/lang/String;

    .line 20
    const-string v0, "FacebookActivity"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/sns/facebook/FacebookActivity;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void

    :cond_0
    move v0, v2

    .line 12
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/nuance/sns/SocialNetworkActivity;-><init>()V

    return-void
.end method

.method private getAuthorizationUrl([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 47
    iget-object v1, p0, Lcom/nuance/sns/facebook/FacebookActivity;->facebookApi:Lcom/nuance/sns/facebook/FacebookApi;

    invoke-virtual {v1, p1}, Lcom/nuance/sns/facebook/FacebookApi;->getAuthorizationUrl([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "url":Ljava/lang/String;
    sget-object v1, Lcom/nuance/sns/facebook/FacebookActivity;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "facebook auth url: "

    invoke-virtual {v1, v2, v0}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 49
    return-object v0
.end method

.method private saveAccessToken(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    .line 53
    const-string v1, "access_token"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "accessToken":Ljava/lang/String;
    const-string v1, "expires_in"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/sns/facebook/FacebookUtil;->parseExpires(Ljava/lang/String;)J

    move-result-wide v2

    .line 55
    .local v2, "expires":J
    iget-object v1, p0, Lcom/nuance/sns/facebook/FacebookActivity;->facebookApi:Lcom/nuance/sns/facebook/FacebookApi;

    invoke-virtual {v1, v0}, Lcom/nuance/sns/facebook/FacebookApi;->setAccessToken(Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcom/nuance/sns/facebook/FacebookActivity;->facebookApi:Lcom/nuance/sns/facebook/FacebookApi;

    invoke-virtual {v1, v2, v3}, Lcom/nuance/sns/facebook/FacebookApi;->setAccessExpires(J)V

    .line 59
    iget-object v1, p0, Lcom/nuance/sns/facebook/FacebookActivity;->faceBookPref:Lcom/nuance/sns/OAuthPreference;

    const-string v4, "expires_in"

    invoke-virtual {v1, p0, v4, v2, v3}, Lcom/nuance/sns/OAuthPreference;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 60
    iget-object v1, p0, Lcom/nuance/sns/facebook/FacebookActivity;->faceBookPref:Lcom/nuance/sns/OAuthPreference;

    const-string v4, "access_token"

    invoke-virtual {v1, p0, v4, v0}, Lcom/nuance/sns/OAuthPreference;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method private startScrapingService()V
    .locals 4

    .prologue
    .line 67
    sget-boolean v1, Lcom/nuance/sns/facebook/FacebookActivity;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/nuance/sns/facebook/FacebookActivity;->facebookApi:Lcom/nuance/sns/facebook/FacebookApi;

    invoke-virtual {v1}, Lcom/nuance/sns/facebook/FacebookApi;->isSessionValid()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 69
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nuance/sns/facebook/FacebookScraper;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "extra_access_token"

    iget-object v2, p0, Lcom/nuance/sns/facebook/FacebookActivity;->facebookApi:Lcom/nuance/sns/facebook/FacebookApi;

    invoke-virtual {v2}, Lcom/nuance/sns/facebook/FacebookApi;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const-string v1, "extra_expiration"

    iget-object v2, p0, Lcom/nuance/sns/facebook/FacebookActivity;->facebookApi:Lcom/nuance/sns/facebook/FacebookApi;

    invoke-virtual {v2}, Lcom/nuance/sns/facebook/FacebookApi;->getAccessExpires()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 72
    const-string v1, "extra_app_id"

    const-string v2, "301618349890446"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    invoke-virtual {p0, v0}, Lcom/nuance/sns/facebook/FacebookActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 74
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/nuance/sns/SocialNetworkActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    new-instance v0, Lcom/nuance/sns/facebook/FacebookApi;

    const-string v1, "301618349890446"

    invoke-direct {v0, v1}, Lcom/nuance/sns/facebook/FacebookApi;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nuance/sns/facebook/FacebookActivity;->facebookApi:Lcom/nuance/sns/facebook/FacebookApi;

    .line 26
    invoke-static {}, Lcom/nuance/sns/OAuthPreference;->getFacebookOAuthPreference()Lcom/nuance/sns/OAuthPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/sns/facebook/FacebookActivity;->faceBookPref:Lcom/nuance/sns/OAuthPreference;

    .line 27
    iget-object v0, p0, Lcom/nuance/sns/facebook/FacebookActivity;->facebookApi:Lcom/nuance/sns/facebook/FacebookApi;

    iget-object v1, p0, Lcom/nuance/sns/facebook/FacebookActivity;->faceBookPref:Lcom/nuance/sns/OAuthPreference;

    const-string v2, "expires_in"

    invoke-virtual {v1, p0, v2}, Lcom/nuance/sns/OAuthPreference;->getLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/nuance/sns/facebook/FacebookApi;->setAccessExpires(J)V

    .line 28
    iget-object v0, p0, Lcom/nuance/sns/facebook/FacebookActivity;->facebookApi:Lcom/nuance/sns/facebook/FacebookApi;

    iget-object v1, p0, Lcom/nuance/sns/facebook/FacebookActivity;->faceBookPref:Lcom/nuance/sns/OAuthPreference;

    const-string v2, "access_token"

    invoke-virtual {v1, p0, v2}, Lcom/nuance/sns/OAuthPreference;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/sns/facebook/FacebookApi;->setAccessToken(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public onHandleUrlCallback(Ljava/lang/String;)Z
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 78
    sget-object v3, Lcom/nuance/sns/facebook/FacebookActivity;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v4, "onHandleUrlCallback() url = "

    invoke-virtual {v3, v4, p1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 80
    const/4 v1, 0x1

    .line 81
    .local v1, "handled":Z
    const-string v3, "fbconnect://cancel"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/nuance/sns/facebook/FacebookActivity;->closing()V

    .line 104
    :goto_0
    return v1

    .line 83
    :cond_0
    const-string v3, "fbconnect://success"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 84
    invoke-static {p1}, Lcom/nuance/sns/facebook/FacebookUtil;->parseUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 85
    .local v2, "values":Landroid/os/Bundle;
    const-string v3, "error"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "error":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 88
    const-string v3, "error_type"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 92
    invoke-direct {p0, v2}, Lcom/nuance/sns/facebook/FacebookActivity;->saveAccessToken(Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0}, Lcom/nuance/sns/facebook/FacebookActivity;->closing()V

    .line 94
    invoke-direct {p0}, Lcom/nuance/sns/facebook/FacebookActivity;->startScrapingService()V

    goto :goto_0

    .line 97
    :cond_2
    sget-object v3, Lcom/nuance/sns/facebook/FacebookActivity;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "redirect url error: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 98
    invoke-virtual {p0}, Lcom/nuance/sns/facebook/FacebookActivity;->closing()V

    goto :goto_0

    .line 101
    .end local v0    # "error":Ljava/lang/String;
    .end local v2    # "values":Landroid/os/Bundle;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onRequestAuthorizationUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/nuance/sns/facebook/FacebookActivity;->READ_FRIENDS_LIST_PERMISSION:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nuance/sns/facebook/FacebookActivity;->getAuthorizationUrl([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Lcom/nuance/sns/SocialNetworkActivity;->onResume()V

    .line 35
    iget-object v0, p0, Lcom/nuance/sns/facebook/FacebookActivity;->facebookApi:Lcom/nuance/sns/facebook/FacebookApi;

    invoke-virtual {v0}, Lcom/nuance/sns/facebook/FacebookApi;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-direct {p0}, Lcom/nuance/sns/facebook/FacebookActivity;->startScrapingService()V

    .line 38
    invoke-virtual {p0}, Lcom/nuance/sns/facebook/FacebookActivity;->closing()V

    .line 43
    :goto_0
    return-void

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/sns/facebook/FacebookActivity;->showAuthorzationLogin()V

    goto :goto_0
.end method
