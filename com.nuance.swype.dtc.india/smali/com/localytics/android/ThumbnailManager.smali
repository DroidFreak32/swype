.class Lcom/localytics/android/ThumbnailManager;
.super Lcom/localytics/android/CreativeManager;
.source "ThumbnailManager.java"


# direct methods
.method constructor <init>(Lcom/localytics/android/LocalyticsDao;Landroid/os/Handler;)V
    .locals 1
    .param p1, "localyticsDao"    # Lcom/localytics/android/LocalyticsDao;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 16
    new-instance v0, Lcom/localytics/android/CreativeDownloadTaskFactory;

    invoke-direct {v0}, Lcom/localytics/android/CreativeDownloadTaskFactory;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/localytics/android/ThumbnailManager;-><init>(Lcom/localytics/android/LocalyticsDao;Landroid/os/Handler;Lcom/localytics/android/CreativeDownloadTaskFactory;)V

    .line 17
    return-void
.end method

.method constructor <init>(Lcom/localytics/android/LocalyticsDao;Landroid/os/Handler;Lcom/localytics/android/CreativeDownloadTaskFactory;)V
    .locals 0
    .param p1, "localyticsDao"    # Lcom/localytics/android/LocalyticsDao;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "creativeDownloadTaskFactory"    # Lcom/localytics/android/CreativeDownloadTaskFactory;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/localytics/android/CreativeManager;-><init>(Lcom/localytics/android/LocalyticsDao;Landroid/os/Handler;Lcom/localytics/android/CreativeDownloadTaskFactory;)V

    .line 22
    return-void
.end method

.method static getInboxLocalThumbnailLocation(JLcom/localytics/android/LocalyticsDao;)Ljava/lang/String;
    .locals 6
    .param p0, "inboxId"    # J
    .param p2, "localyticsDao"    # Lcom/localytics/android/LocalyticsDao;

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/localytics/android/ThumbnailManager;->getInboxThumbnailFileDirPath(Lcom/localytics/android/LocalyticsDao;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "inbox_%d.png"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getInboxThumbnailFileDirPath(Lcom/localytics/android/LocalyticsDao;)Ljava/lang/String;
    .locals 2
    .param p0, "localyticsDao"    # Lcom/localytics/android/LocalyticsDao;

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-static {p0}, Lcom/localytics/android/ThumbnailManager;->getZipFileDirPath(Lcom/localytics/android/LocalyticsDao;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    const-string/jumbo v1, "thumbnails"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-static {v1}, Lcom/localytics/android/ThumbnailManager;->createDir(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 54
    const/4 v1, 0x0

    .line 57
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method downloadThumbnails(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/MarketingMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, "campaigns":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/MarketingMessage;>;"
    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Lcom/localytics/android/CreativeManager;->downloadCreatives(Ljava/util/List;Lcom/localytics/android/CreativeManager$LastDownloadedCallback;)V

    .line 27
    return-void
.end method

.method protected handleCreativeForCampaign(Lcom/localytics/android/MarketingMessage;)V
    .locals 4
    .param p1, "campaign"    # Lcom/localytics/android/MarketingMessage;

    .prologue
    .line 32
    const-string/jumbo v3, "campaign_id"

    invoke-static {p1, v3}, Lcom/localytics/android/JsonHelper;->getSafeLongFromMap(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v0

    .line 33
    .local v0, "campaignId":J
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.localytics.intent.action.THUMBNAIL_DOWNLOADED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 34
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "campaign_id"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 35
    iget-object v3, p0, Lcom/localytics/android/ThumbnailManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v3}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 36
    return-void
.end method
