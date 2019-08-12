.class public Lcom/nuance/sns/twitter/TwitterScraper;
.super Lcom/nuance/sns/ScraperService;
.source "TwitterScraper.java"


# static fields
.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private accessToken:Ljava/lang/String;

.field private scraperStatus:Lcom/nuance/sns/ScraperStatus;

.field private secretToken:Ljava/lang/String;

.field private twitterApi:Lcom/nuance/sns/twitter/TwitterApi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "TwitterScraper"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/sns/twitter/TwitterScraper;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "twitter_scraping_service"

    invoke-direct {p0, v0}, Lcom/nuance/sns/ScraperService;-><init>(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/nuance/sns/ScraperService;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method private extractTimeLine(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "statuses":Ljava/util/List;, "Ljava/util/List<Ltwitter4j/Status;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 67
    .local v4, "text":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ltwitter4j/Status;

    .line 68
    invoke-interface {v5}, Ltwitter4j/Status;->getText()Ljava/lang/String;

    move-result-object v3

    .line 69
    .local v3, "statusText":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 70
    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 74
    .end local v3    # "statusText":Ljava/lang/String;
    :cond_1
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 75
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    .line 76
    .local v2, "imeApp":Lcom/nuance/swype/input/IMEApplication;
    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getNewWordsBucketFactory()Lcom/nuance/swype/input/udb/NewWordsBucketFactory;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;->getTwitterWordsBucketInstance()Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    move-result-object v0

    .line 78
    .local v0, "bucket":Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;
    invoke-virtual {v0, v4}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->add(Ljava/util/Set;)V

    .line 79
    invoke-virtual {v2, v0}, Lcom/nuance/swype/input/IMEApplication;->notifyNewWordsForScanning(Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;)V

    .line 83
    .end local v0    # "bucket":Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;
    .end local v2    # "imeApp":Lcom/nuance/swype/input/IMEApplication;
    :cond_2
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 35
    invoke-super {p0}, Lcom/nuance/sns/ScraperService;->onCreate()V

    .line 37
    new-instance v0, Lcom/nuance/sns/twitter/TwitterApi;

    new-instance v1, Ltwitter4j/TwitterFactory;

    invoke-direct {v1}, Ltwitter4j/TwitterFactory;-><init>()V

    invoke-virtual {v1}, Ltwitter4j/TwitterFactory;->getInstance()Ltwitter4j/Twitter;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nuance/sns/twitter/TwitterApi;-><init>(Ltwitter4j/Twitter;)V

    iput-object v0, p0, Lcom/nuance/sns/twitter/TwitterScraper;->twitterApi:Lcom/nuance/sns/twitter/TwitterApi;

    .line 38
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getScraperStatusFactory()Lcom/nuance/sns/ScraperStatus$ScraperStatusFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/sns/ScraperStatus$ScraperStatusFactory;->getTwitterStatusPreference()Lcom/nuance/sns/ScraperStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/sns/twitter/TwitterScraper;->scraperStatus:Lcom/nuance/sns/ScraperStatus;

    .line 42
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 46
    iget-object v2, p0, Lcom/nuance/sns/twitter/TwitterScraper;->scraperStatus:Lcom/nuance/sns/ScraperStatus;

    invoke-virtual {p0}, Lcom/nuance/sns/twitter/TwitterScraper;->getStringDateNow()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/nuance/sns/twitter/TwitterScraper;->updateWorkingStatus(Lcom/nuance/sns/ScraperStatus;Ljava/lang/String;)V

    .line 48
    const-string v2, "extra_access_token"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/sns/twitter/TwitterScraper;->accessToken:Ljava/lang/String;

    .line 49
    const-string v2, "extra_secret_token"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/sns/twitter/TwitterScraper;->secretToken:Ljava/lang/String;

    .line 50
    iget-object v2, p0, Lcom/nuance/sns/twitter/TwitterScraper;->twitterApi:Lcom/nuance/sns/twitter/TwitterApi;

    iget-object v3, p0, Lcom/nuance/sns/twitter/TwitterScraper;->accessToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/nuance/sns/twitter/TwitterApi;->setAccessToken(Ljava/lang/String;)V

    .line 51
    iget-object v2, p0, Lcom/nuance/sns/twitter/TwitterScraper;->twitterApi:Lcom/nuance/sns/twitter/TwitterApi;

    iget-object v3, p0, Lcom/nuance/sns/twitter/TwitterScraper;->secretToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/nuance/sns/twitter/TwitterApi;->setSecretToken(Ljava/lang/String;)V

    .line 53
    :try_start_0
    iget-object v2, p0, Lcom/nuance/sns/twitter/TwitterScraper;->twitterApi:Lcom/nuance/sns/twitter/TwitterApi;

    invoke-virtual {v2}, Lcom/nuance/sns/twitter/TwitterApi;->getHomeTimeLine()Ljava/util/List;

    move-result-object v1

    .line 54
    .local v1, "status":Ljava/util/List;, "Ljava/util/List<Ltwitter4j/Status;>;"
    invoke-direct {p0, v1}, Lcom/nuance/sns/twitter/TwitterScraper;->extractTimeLine(Ljava/util/List;)V

    .line 55
    iget-object v2, p0, Lcom/nuance/sns/twitter/TwitterScraper;->scraperStatus:Lcom/nuance/sns/ScraperStatus;

    invoke-virtual {p0}, Lcom/nuance/sns/twitter/TwitterScraper;->getStringDateNow()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/nuance/sns/twitter/TwitterScraper;->updateFinishedStatus(Lcom/nuance/sns/ScraperStatus;Ljava/lang/String;)V
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v1    # "status":Ljava/util/List;, "Ljava/util/List<Ltwitter4j/Status;>;"
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ltwitter4j/TwitterException;
    sget-object v2, Lcom/nuance/sns/twitter/TwitterScraper;->log:Lcom/nuance/swype/util/LogManager$Log;

    invoke-virtual {v2, v0}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 61
    iget-object v2, p0, Lcom/nuance/sns/twitter/TwitterScraper;->scraperStatus:Lcom/nuance/sns/ScraperStatus;

    invoke-virtual {p0}, Lcom/nuance/sns/twitter/TwitterScraper;->getStringDateNow()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/nuance/sns/twitter/TwitterScraper;->updateErrorStatus(Lcom/nuance/sns/ScraperStatus;Ljava/lang/String;)V

    goto :goto_0
.end method
