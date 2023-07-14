.class public Lcom/nuance/sns/TwitterActivity;
.super Lcom/nuance/sns/SocialNetworkActivity;
.source "TwitterActivity.java"


# static fields
.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private accessToken:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private consumer_key:Ljava/lang/String;

.field private consumer_secret:Ljava/lang/String;

.field private requestToken:Ljava/lang/String;

.field private twitterCallback:Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string/jumbo v0, "TwitterActivity"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/sns/TwitterActivity;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/nuance/sns/SocialNetworkActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/sns/TwitterActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/sns/TwitterActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/nuance/sns/TwitterActivity;->requestToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Lcom/nuance/swype/util/LogManager$Log;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/nuance/sns/TwitterActivity;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/sns/TwitterActivity;)Landroid/util/Pair;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/sns/TwitterActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/nuance/sns/TwitterActivity;->accessToken:Landroid/util/Pair;

    return-object v0
.end method

.method static synthetic access$202(Lcom/nuance/sns/TwitterActivity;Landroid/util/Pair;)Landroid/util/Pair;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/sns/TwitterActivity;
    .param p1, "x1"    # Landroid/util/Pair;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/nuance/sns/TwitterActivity;->accessToken:Landroid/util/Pair;

    return-object p1
.end method

.method static synthetic access$300(Lcom/nuance/sns/TwitterActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/sns/TwitterActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/nuance/sns/TwitterActivity;->consumer_key:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/sns/TwitterActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/sns/TwitterActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/nuance/sns/TwitterActivity;->consumer_secret:Ljava/lang/String;

    return-object v0
.end method

.method private retrieveAccessToken(Ljava/lang/String;)V
    .locals 1
    .param p1, "verifier"    # Ljava/lang/String;

    .prologue
    .line 107
    new-instance v0, Lcom/nuance/sns/TwitterActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/nuance/sns/TwitterActivity$1;-><init>(Lcom/nuance/sns/TwitterActivity;Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0}, Lcom/nuance/sns/TwitterActivity$1;->start()V

    .line 125
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/nuance/sns/SocialNetworkActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/nuance/sns/TwitterActivity;->initWebView()V

    .line 47
    invoke-virtual {p0}, Lcom/nuance/sns/TwitterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getScraperStatusFactory()Lcom/nuance/sns/ScraperStatus$ScraperStatusFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/sns/ScraperStatus$ScraperStatusFactory;->getTwitterStatusPreference()Lcom/nuance/sns/ScraperStatus;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/sns/TwitterActivity;->scraperStatus:Lcom/nuance/sns/ScraperStatus;

    .line 48
    new-instance v1, Lcom/nuance/sns/SocialNetworkActivity$ScannerCallBack;

    invoke-direct {v1, p0}, Lcom/nuance/sns/SocialNetworkActivity$ScannerCallBack;-><init>(Lcom/nuance/sns/SocialNetworkActivity;)V

    iput-object v1, p0, Lcom/nuance/sns/TwitterActivity;->twitterCallback:Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;

    .line 50
    invoke-virtual {p0}, Lcom/nuance/sns/TwitterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/BuildInfo;->getTwitterAPIKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/sns/TwitterActivity;->consumer_key:Ljava/lang/String;

    .line 51
    invoke-virtual {p0}, Lcom/nuance/sns/TwitterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/BuildInfo;->getTwitterAPISecret()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/sns/TwitterActivity;->consumer_secret:Ljava/lang/String;

    .line 53
    iget-object v1, p0, Lcom/nuance/sns/TwitterActivity;->mScannerService:Lcom/nuance/swypeconnect/ac/ACScannerService;

    if-eqz v1, :cond_0

    .line 55
    :try_start_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/nuance/sns/TwitterActivity;->mScannerService:Lcom/nuance/swypeconnect/ac/ACScannerService;

    sget-object v3, Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;->TWITTER:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    invoke-virtual {v2, v3}, Lcom/nuance/swypeconnect/ac/ACScannerService;->getScanner(Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;)Lcom/nuance/swypeconnect/ac/ACScanner;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/nuance/sns/TwitterActivity;->mScanner:Ljava/lang/ref/WeakReference;

    .line 56
    iget-object v1, p0, Lcom/nuance/sns/TwitterActivity;->mScanner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/nuance/sns/TwitterActivity;->mScanner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;

    const/4 v2, 0x4

    new-array v2, v2, [Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;

    const/4 v3, 0x0

    sget-object v4, Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;->DIRECT_MESSAGES:Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;->FRIENDS:Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;->MEMBERSHIPS:Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;->STATUS:Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->setScanType([Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;)V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACScannerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Lcom/nuance/swypeconnect/ac/ACScannerException;
    sget-object v1, Lcom/nuance/sns/TwitterActivity;->log:Lcom/nuance/swype/util/LogManager$Log;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACScannerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 65
    iget-object v1, p0, Lcom/nuance/sns/TwitterActivity;->scraperStatus:Lcom/nuance/sns/ScraperStatus;

    invoke-virtual {p0}, Lcom/nuance/sns/TwitterActivity;->getStringDateNow()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/nuance/sns/TwitterActivity;->updateErrorStatus(Lcom/nuance/sns/ScraperStatus;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/nuance/sns/TwitterActivity;->closing()V

    goto :goto_0
.end method

.method public onHandleUrlCallback(Ljava/lang/String;)Z
    .locals 7
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 129
    sget-object v3, Lcom/nuance/sns/TwitterActivity;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v1, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "onHandleUrlCallback(): url: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 130
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "twitter://callback"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 131
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 132
    .local v0, "uri":Landroid/net/Uri;
    const-string/jumbo v3, "denied"

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 134
    iget-object v3, p0, Lcom/nuance/sns/TwitterActivity;->twitterCallback:Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;

    const-string/jumbo v4, "Twitter: access denied"

    invoke-interface {v3, v2, v4}, Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;->onFailure(ILjava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/nuance/sns/TwitterActivity;->closing()V

    .line 146
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return v1

    .line 136
    .restart local v0    # "uri":Landroid/net/Uri;
    :cond_1
    const-string/jumbo v2, "oauth_token"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 138
    const-string/jumbo v2, "oauth_verifier"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/nuance/sns/TwitterActivity;->retrieveAccessToken(Ljava/lang/String;)V

    goto :goto_0

    .line 141
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_2
    iget-boolean v3, p0, Lcom/nuance/sns/TwitterActivity;->sentAuthUrlRequest:Z

    if-nez v3, :cond_3

    .line 142
    iput-boolean v2, p0, Lcom/nuance/sns/TwitterActivity;->webViewLoaded:Z

    .line 143
    invoke-virtual {p0}, Lcom/nuance/sns/TwitterActivity;->sendAuthUrlRequest()V

    goto :goto_0

    :cond_3
    move v1, v2

    .line 146
    goto :goto_0
.end method

.method public onRequestAuthorizationUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 152
    sget-object v0, Lcom/nuance/sns/TwitterActivity;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onRequestAuthorizationUrl..."

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 153
    iget-object v0, p0, Lcom/nuance/sns/TwitterActivity;->consumer_key:Ljava/lang/String;

    iget-object v1, p0, Lcom/nuance/sns/TwitterActivity;->consumer_secret:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nuance/sns/HttpUtils;->getRequestToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/sns/TwitterActivity;->requestToken:Ljava/lang/String;

    .line 154
    iget-object v0, p0, Lcom/nuance/sns/TwitterActivity;->requestToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/nuance/sns/HttpUtils;->getAuthorizeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 73
    invoke-super {p0}, Lcom/nuance/sns/SocialNetworkActivity;->onResume()V

    .line 75
    invoke-virtual {p0}, Lcom/nuance/sns/TwitterActivity;->showAuthorizationLogin()V

    .line 76
    return-void
.end method

.method protected startScanningService()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 85
    invoke-super {p0}, Lcom/nuance/sns/SocialNetworkActivity;->startScanningService()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/sns/TwitterActivity;->mScanner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/nuance/sns/TwitterActivity;->mScanner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;

    iget-object v5, p0, Lcom/nuance/sns/TwitterActivity;->consumer_key:Ljava/lang/String;

    iget-object v6, p0, Lcom/nuance/sns/TwitterActivity;->consumer_secret:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/sns/TwitterActivity;->accessToken:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/nuance/sns/TwitterActivity;->accessToken:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v5, v6, v2, v3}, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->setTokens(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/nuance/sns/TwitterActivity;->mScanner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACScanner;

    iget-object v2, p0, Lcom/nuance/sns/TwitterActivity;->twitterCallback:Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;

    invoke-virtual {v1, v2}, Lcom/nuance/swypeconnect/ac/ACScanner;->start(Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;)V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACScannerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    const/4 v1, 0x1

    .line 98
    :goto_0
    return v1

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Lcom/nuance/swypeconnect/ac/ACScannerException;
    sget-object v1, Lcom/nuance/sns/TwitterActivity;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ACScannerException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACScannerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 93
    iget-object v1, p0, Lcom/nuance/sns/TwitterActivity;->scraperStatus:Lcom/nuance/sns/ScraperStatus;

    invoke-virtual {p0}, Lcom/nuance/sns/TwitterActivity;->getStringDateNow()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/nuance/sns/TwitterActivity;->updateErrorStatus(Lcom/nuance/sns/ScraperStatus;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/nuance/sns/TwitterActivity;->closing()V

    move v1, v4

    .line 95
    goto :goto_0

    .end local v0    # "e":Lcom/nuance/swypeconnect/ac/ACScannerException;
    :cond_0
    move v1, v4

    .line 98
    goto :goto_0
.end method
