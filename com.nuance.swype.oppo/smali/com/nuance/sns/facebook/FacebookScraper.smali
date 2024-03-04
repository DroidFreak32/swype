.class public Lcom/nuance/sns/facebook/FacebookScraper;
.super Lcom/nuance/sns/ScraperService;
.source "FacebookScraper.java"


# static fields
.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private accessToken:Ljava/lang/String;

.field private appId:Ljava/lang/String;

.field private expires:Ljava/lang/Long;

.field private facebookApi:Lcom/nuance/sns/facebook/FacebookApi;

.field private scraperStatus:Lcom/nuance/sns/ScraperStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "FacebookScraper"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/sns/facebook/FacebookScraper;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "facebook_scraping_service"

    invoke-direct {p0, v0}, Lcom/nuance/sns/ScraperService;-><init>(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/nuance/sns/ScraperService;-><init>(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method private extractNames(Lorg/json/JSONArray;)V
    .locals 7
    .param p1, "data"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    .line 121
    .local v2, "imeApp":Lcom/nuance/swype/input/IMEApplication;
    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getNewWordsBucketFactory()Lcom/nuance/swype/input/udb/NewWordsBucketFactory;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;->getFacebookWordsBucketInstance()Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    move-result-object v0

    .line 122
    .local v0, "bucket":Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 124
    .local v4, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 125
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 126
    const-string v6, "name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 127
    .local v3, "name":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 128
    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    .end local v3    # "name":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, v4}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->add(Ljava/util/Set;)V

    .line 133
    invoke-virtual {v2, v0}, Lcom/nuance/swype/input/IMEApplication;->notifyNewWordsForScanning(Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;)V

    .line 134
    return-void
.end method

.method private logException(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 115
    sget-object v0, Lcom/nuance/sns/facebook/FacebookScraper;->log:Lcom/nuance/swype/util/LogManager$Log;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 116
    return-void
.end method

.method private scrapingFriendNames(Ljava/lang/String;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 85
    iget-object v3, p0, Lcom/nuance/sns/facebook/FacebookScraper;->scraperStatus:Lcom/nuance/sns/ScraperStatus;

    invoke-virtual {p0}, Lcom/nuance/sns/facebook/FacebookScraper;->getStringDateNow()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/nuance/sns/facebook/FacebookScraper;->updateWorkingStatus(Lcom/nuance/sns/ScraperStatus;Ljava/lang/String;)V

    .line 92
    :try_start_0
    iget-object v3, p0, Lcom/nuance/sns/facebook/FacebookScraper;->facebookApi:Lcom/nuance/sns/facebook/FacebookApi;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "GET"

    invoke-virtual {v3, p1, v4, v5}, Lcom/nuance/sns/facebook/FacebookApi;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "response":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 94
    const-string v4, "data"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 95
    .local v0, "data":Lorg/json/JSONArray;
    invoke-direct {p0, v0}, Lcom/nuance/sns/facebook/FacebookScraper;->extractNames(Lorg/json/JSONArray;)V

    .line 96
    iget-object v3, p0, Lcom/nuance/sns/facebook/FacebookScraper;->scraperStatus:Lcom/nuance/sns/ScraperStatus;

    invoke-virtual {p0}, Lcom/nuance/sns/facebook/FacebookScraper;->getStringDateNow()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/nuance/sns/facebook/FacebookScraper;->updateFinishedStatus(Lcom/nuance/sns/ScraperStatus;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    .line 112
    .end local v0    # "data":Lorg/json/JSONArray;
    .end local v2    # "response":Ljava/lang/String;
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v1

    .line 100
    .local v1, "ex":Ljava/io/FileNotFoundException;
    invoke-direct {p0, v1}, Lcom/nuance/sns/facebook/FacebookScraper;->logException(Ljava/lang/Exception;)V

    .line 110
    .end local v1    # "ex":Ljava/io/FileNotFoundException;
    :goto_1
    invoke-static {}, Lcom/nuance/sns/OAuthPreference;->getFacebookOAuthPreference()Lcom/nuance/sns/OAuthPreference;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/nuance/sns/OAuthPreference;->clear(Landroid/content/Context;)V

    .line 111
    iget-object v3, p0, Lcom/nuance/sns/facebook/FacebookScraper;->scraperStatus:Lcom/nuance/sns/ScraperStatus;

    invoke-virtual {p0}, Lcom/nuance/sns/facebook/FacebookScraper;->getStringDateNow()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/nuance/sns/facebook/FacebookScraper;->updateErrorStatus(Lcom/nuance/sns/ScraperStatus;Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :catch_1
    move-exception v1

    .line 102
    .local v1, "ex":Ljava/net/MalformedURLException;
    invoke-direct {p0, v1}, Lcom/nuance/sns/facebook/FacebookScraper;->logException(Ljava/lang/Exception;)V

    goto :goto_1

    .line 103
    .end local v1    # "ex":Ljava/net/MalformedURLException;
    :catch_2
    move-exception v1

    .line 104
    .local v1, "ex":Ljava/io/IOException;
    invoke-direct {p0, v1}, Lcom/nuance/sns/facebook/FacebookScraper;->logException(Ljava/lang/Exception;)V

    goto :goto_1

    .line 105
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 106
    .local v1, "ex":Lorg/json/JSONException;
    invoke-direct {p0, v1}, Lcom/nuance/sns/facebook/FacebookScraper;->logException(Ljava/lang/Exception;)V

    goto :goto_1
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/nuance/sns/ScraperService;->onCreate()V

    .line 51
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getScraperStatusFactory()Lcom/nuance/sns/ScraperStatus$ScraperStatusFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/sns/ScraperStatus$ScraperStatusFactory;->getFacebookStatusPreference()Lcom/nuance/sns/ScraperStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/sns/facebook/FacebookScraper;->scraperStatus:Lcom/nuance/sns/ScraperStatus;

    .line 53
    new-instance v0, Lcom/nuance/sns/facebook/FacebookApi;

    invoke-direct {v0}, Lcom/nuance/sns/facebook/FacebookApi;-><init>()V

    iput-object v0, p0, Lcom/nuance/sns/facebook/FacebookScraper;->facebookApi:Lcom/nuance/sns/facebook/FacebookApi;

    .line 56
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 60
    invoke-super {p0}, Lcom/nuance/sns/ScraperService;->onDestroy()V

    .line 63
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 67
    const-string v0, "extra_access_token"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/sns/facebook/FacebookScraper;->accessToken:Ljava/lang/String;

    .line 68
    const-string v0, "extra_app_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/sns/facebook/FacebookScraper;->appId:Ljava/lang/String;

    .line 69
    const-string v0, "extra_expiration"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/sns/facebook/FacebookScraper;->expires:Ljava/lang/Long;

    .line 71
    iget-object v0, p0, Lcom/nuance/sns/facebook/FacebookScraper;->facebookApi:Lcom/nuance/sns/facebook/FacebookApi;

    iget-object v1, p0, Lcom/nuance/sns/facebook/FacebookScraper;->accessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/sns/facebook/FacebookApi;->setAccessToken(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/nuance/sns/facebook/FacebookScraper;->facebookApi:Lcom/nuance/sns/facebook/FacebookApi;

    iget-object v1, p0, Lcom/nuance/sns/facebook/FacebookScraper;->expires:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/nuance/sns/facebook/FacebookApi;->setAccessExpires(J)V

    .line 73
    iget-object v0, p0, Lcom/nuance/sns/facebook/FacebookScraper;->facebookApi:Lcom/nuance/sns/facebook/FacebookApi;

    iget-object v1, p0, Lcom/nuance/sns/facebook/FacebookScraper;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/sns/facebook/FacebookApi;->setAppId(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/nuance/sns/facebook/FacebookScraper;->facebookApi:Lcom/nuance/sns/facebook/FacebookApi;

    invoke-virtual {v0}, Lcom/nuance/sns/facebook/FacebookApi;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    sget-object v0, Lcom/nuance/sns/facebook/FacebookScraper;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "facebook access token not valid"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lcom/nuance/sns/facebook/FacebookScraper;->scraperStatus:Lcom/nuance/sns/ScraperStatus;

    invoke-virtual {p0}, Lcom/nuance/sns/facebook/FacebookScraper;->getStringDateNow()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/sns/facebook/FacebookScraper;->updateErrorStatus(Lcom/nuance/sns/ScraperStatus;Ljava/lang/String;)V

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    const-string v0, "me/friends"

    invoke-direct {p0, v0}, Lcom/nuance/sns/facebook/FacebookScraper;->scrapingFriendNames(Ljava/lang/String;)V

    goto :goto_0
.end method
