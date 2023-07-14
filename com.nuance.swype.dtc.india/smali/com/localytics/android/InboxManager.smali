.class Lcom/localytics/android/InboxManager;
.super Lcom/localytics/android/BaseMarketingManager;
.source "InboxManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/InboxManager$ManifestHolder;
    }
.end annotation


# static fields
.field private static final INBOX_INFO_PROJECTION:[Ljava/lang/String;

.field private static final SELECTION_BY_CAMPAIGN_ROW_ID:Ljava/lang/String;


# instance fields
.field protected mCreativeManager:Lcom/localytics/android/CreativeManager;

.field private final mDisplayingInboxFragments:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mLastRefreshTimeMillis:J

.field private mManifestToProcess:Lcom/localytics/android/InboxManager$ManifestHolder;

.field private mMarketingHandler:Lcom/localytics/android/MarketingHandler;

.field private mRefreshCallback:Lcom/localytics/android/InboxRefreshListener;

.field private final mRefreshLock:Ljava/lang/Object;

.field private mThrottleMillis:J

.field protected mThumbnailManager:Lcom/localytics/android/ThumbnailManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 45
    const-string/jumbo v0, "%s = ?"

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "_id"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/localytics/android/InboxManager;->SELECTION_BY_CAMPAIGN_ROW_ID:Ljava/lang/String;

    .line 46
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "campaign_id"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string/jumbo v2, "version"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "creative_location"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "received_date"

    aput-object v2, v0, v1

    sput-object v0, Lcom/localytics/android/InboxManager;->INBOX_INFO_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/localytics/android/LocalyticsDao;Lcom/localytics/android/MarketingHandler;)V
    .locals 2
    .param p1, "localyticsDao"    # Lcom/localytics/android/LocalyticsDao;
    .param p2, "marketingHandler"    # Lcom/localytics/android/MarketingHandler;

    .prologue
    .line 57
    new-instance v0, Lcom/localytics/android/CreativeManager;

    invoke-direct {v0, p1, p2}, Lcom/localytics/android/CreativeManager;-><init>(Lcom/localytics/android/LocalyticsDao;Landroid/os/Handler;)V

    new-instance v1, Lcom/localytics/android/ThumbnailManager;

    invoke-direct {v1, p1, p2}, Lcom/localytics/android/ThumbnailManager;-><init>(Lcom/localytics/android/LocalyticsDao;Landroid/os/Handler;)V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/localytics/android/InboxManager;-><init>(Lcom/localytics/android/LocalyticsDao;Lcom/localytics/android/MarketingHandler;Lcom/localytics/android/CreativeManager;Lcom/localytics/android/ThumbnailManager;)V

    .line 61
    return-void
.end method

.method constructor <init>(Lcom/localytics/android/LocalyticsDao;Lcom/localytics/android/MarketingHandler;Lcom/localytics/android/CreativeManager;Lcom/localytics/android/ThumbnailManager;)V
    .locals 2
    .param p1, "localyticsDao"    # Lcom/localytics/android/LocalyticsDao;
    .param p2, "marketingHandler"    # Lcom/localytics/android/MarketingHandler;
    .param p3, "creativeManager"    # Lcom/localytics/android/CreativeManager;
    .param p4, "thumbnailManager"    # Lcom/localytics/android/ThumbnailManager;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/localytics/android/BaseMarketingManager;-><init>(Lcom/localytics/android/LocalyticsDao;)V

    .line 37
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/InboxManager;->mDisplayingInboxFragments:Ljava/util/Set;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/localytics/android/InboxManager;->mManifestToProcess:Lcom/localytics/android/InboxManager$ManifestHolder;

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/localytics/android/InboxManager;->mRefreshLock:Ljava/lang/Object;

    .line 43
    const-wide/32 v0, 0x3a980

    iput-wide v0, p0, Lcom/localytics/android/InboxManager;->mThrottleMillis:J

    .line 68
    iput-object p2, p0, Lcom/localytics/android/InboxManager;->mMarketingHandler:Lcom/localytics/android/MarketingHandler;

    .line 69
    iput-object p3, p0, Lcom/localytics/android/InboxManager;->mCreativeManager:Lcom/localytics/android/CreativeManager;

    .line 70
    iput-object p4, p0, Lcom/localytics/android/InboxManager;->mThumbnailManager:Lcom/localytics/android/ThumbnailManager;

    .line 71
    return-void
.end method

.method private _inboxOnlyMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 218
    .local p1, "marketingMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 219
    .local v0, "inboxOnly":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    .line 221
    const-string/jumbo v1, "inboxes"

    const-string/jumbo v2, "inboxes"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :cond_0
    return-object v0
.end method

.method private _updateMessageWithSpecialKeys(Lcom/localytics/android/MarketingMessage;)V
    .locals 9
    .param p1, "message"    # Lcom/localytics/android/MarketingMessage;

    .prologue
    .line 228
    const-string/jumbo v4, "_id"

    invoke-static {p1, v4}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v0

    .line 229
    .local v0, "inboxId":I
    const-string/jumbo v4, "creative_location"

    invoke-static {p1, v4}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 230
    .local v3, "remoteFileLocation":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 232
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "file://"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-long v6, v0

    iget-object v5, p0, Lcom/localytics/android/InboxManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-static {v6, v7, v5}, Lcom/localytics/android/CreativeManager;->getInboxLocalHtmlLocation(JLcom/localytics/android/LocalyticsDao;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, "localHtmlURL":Ljava/lang/String;
    int-to-long v4, v0

    const-string/jumbo v6, ".zip"

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    iget-object v7, p0, Lcom/localytics/android/InboxManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-static {v4, v5, v6, v7}, Lcom/localytics/android/CreativeManager;->getInboxLocalFileURL(JZLcom/localytics/android/LocalyticsDao;)Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, "localFileLocation":Ljava/lang/String;
    const-string/jumbo v4, "creative_url"

    invoke-virtual {p1, v4, v3}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-string/jumbo v4, "html_url"

    invoke-virtual {p1, v4, v2}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string/jumbo v4, "base_path"

    int-to-long v6, v0

    iget-object v5, p0, Lcom/localytics/android/InboxManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-static {v6, v7, v5}, Lcom/localytics/android/CreativeManager;->getInboxUnzipFileDirPath(JLcom/localytics/android/LocalyticsDao;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const-string/jumbo v4, "zip_name"

    const-string/jumbo v5, "inbox_creative_assets_%d.zip"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string/jumbo v4, "local_file_location"

    invoke-virtual {p1, v4, v1}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string/jumbo v4, "download_url"

    invoke-virtual {p1, v4, v3}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .end local v1    # "localFileLocation":Ljava/lang/String;
    .end local v2    # "localHtmlURL":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/localytics/android/InboxManager;)Lcom/localytics/android/InboxManager$ManifestHolder;
    .locals 1
    .param p0, "x0"    # Lcom/localytics/android/InboxManager;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/localytics/android/InboxManager;->mManifestToProcess:Lcom/localytics/android/InboxManager$ManifestHolder;

    return-object v0
.end method

.method static synthetic access$100(Lcom/localytics/android/InboxManager;)Lcom/localytics/android/MarketingHandler;
    .locals 1
    .param p0, "x0"    # Lcom/localytics/android/InboxManager;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/localytics/android/InboxManager;->mMarketingHandler:Lcom/localytics/android/MarketingHandler;

    return-object v0
.end method


# virtual methods
.method _downloadInboxThumbnails(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/InboxCampaign;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 651
    .local p1, "campaigns":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/InboxCampaign;>;"
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 652
    .local v4, "thumbnailsToDownload":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/MarketingMessage;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/InboxCampaign;

    .line 654
    .local v0, "campaign":Lcom/localytics/android/InboxCampaign;
    invoke-virtual {v0}, Lcom/localytics/android/InboxCampaign;->hasThumbnail()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/localytics/android/InboxCampaign;->getLocalThumbnailUri()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 656
    invoke-virtual {v0}, Lcom/localytics/android/InboxCampaign;->getLocalThumbnailUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 657
    .local v2, "localThumbnailLocation":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 659
    new-instance v3, Lcom/localytics/android/MarketingMessage;

    invoke-virtual {v0}, Lcom/localytics/android/InboxCampaign;->getWebViewAttributes()Ljava/util/Map;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/localytics/android/MarketingMessage;-><init>(Ljava/util/Map;)V

    .line 660
    .local v3, "message":Lcom/localytics/android/MarketingMessage;
    const-string/jumbo v5, "campaign_id"

    invoke-virtual {v0}, Lcom/localytics/android/InboxCampaign;->getCampaignId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    const-string/jumbo v5, "download_url"

    invoke-virtual {v0}, Lcom/localytics/android/InboxCampaign;->getThumbnailUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    const-string/jumbo v5, "local_file_location"

    invoke-virtual {v3, v5, v2}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 667
    .end local v0    # "campaign":Lcom/localytics/android/InboxCampaign;
    .end local v2    # "localThumbnailLocation":Ljava/lang/String;
    .end local v3    # "message":Lcom/localytics/android/MarketingMessage;
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 669
    iget-object v5, p0, Lcom/localytics/android/InboxManager;->mThumbnailManager:Lcom/localytics/android/ThumbnailManager;

    invoke-virtual {v5, v4}, Lcom/localytics/android/ThumbnailManager;->downloadThumbnails(Ljava/util/List;)V

    .line 671
    :cond_2
    return-void
.end method

.method _getAttributes(J)Ljava/util/Map;
    .locals 9
    .param p1, "rowId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 549
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 550
    .local v6, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 553
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/InboxManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v1, "inbox_campaign_attributes"

    const/4 v2, 0x0

    const-string/jumbo v3, "%s = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v8, "inbox_id_ref"

    aput-object v8, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 559
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 561
    const-string/jumbo v0, "key"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "value"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 569
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_0

    .line 571
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 569
    :cond_1
    if-eqz v7, :cond_2

    .line 571
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 575
    :cond_2
    return-object v6
.end method

.method _getInboxCampaigns()Ljava/util/List;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/InboxCampaign;",
            ">;"
        }
    .end annotation

    .prologue
    .line 438
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 439
    .local v11, "campaigns":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/InboxCampaign;>;"
    const/16 v16, 0x0

    .line 442
    .local v16, "result":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/localytics/android/InboxManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v5, "inbox_campaigns"

    const/4 v6, 0x0

    const-string/jumbo v7, "%s > ?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v21, "expiration"

    aput-object v21, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/localytics/android/InboxManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/localytics/android/LocalyticsDao;->getCurrentTimeMillis()J

    move-result-wide v22

    const-wide/16 v24, 0x3e8

    div-long v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v8, v9

    const-string/jumbo v9, "%s DESC"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string/jumbo v23, "sort_order"

    aput-object v23, v21, v22

    move-object/from16 v0, v21

    invoke-static {v9, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v4 .. v9}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 449
    :goto_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 451
    const-string/jumbo v4, "_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 452
    .local v18, "rowId":J
    new-instance v4, Lcom/localytics/android/InboxCampaign$Builder;

    invoke-direct {v4}, Lcom/localytics/android/InboxCampaign$Builder;-><init>()V

    const-string/jumbo v5, "campaign_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/localytics/android/InboxCampaign$Builder;->setCampaignId(J)Lcom/localytics/android/InboxCampaign$Builder;

    move-result-object v4

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Lcom/localytics/android/InboxCampaign$Builder;->setInboxId(J)Lcom/localytics/android/InboxCampaign$Builder;

    move-result-object v4

    const-string/jumbo v5, "rule_name"

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/localytics/android/InboxCampaign$Builder;->setRuleName(Ljava/lang/String;)Lcom/localytics/android/InboxCampaign$Builder;

    move-result-object v4

    const-string/jumbo v5, "listing_title"

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/localytics/android/InboxCampaign$Builder;->setTitle(Ljava/lang/String;)Lcom/localytics/android/InboxCampaign$Builder;

    move-result-object v4

    const-string/jumbo v5, "listing_summary"

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/localytics/android/InboxCampaign$Builder;->setSummary(Ljava/lang/String;)Lcom/localytics/android/InboxCampaign$Builder;

    move-result-object v4

    const-string/jumbo v5, "sort_order"

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Lcom/localytics/android/InboxCampaign$Builder;->setSortOrder(J)Lcom/localytics/android/InboxCampaign$Builder;

    move-result-object v5

    const-string/jumbo v4, "read"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-lez v4, :cond_3

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v5, v4}, Lcom/localytics/android/InboxCampaign$Builder;->setRead(Z)Lcom/localytics/android/InboxCampaign$Builder;

    move-result-object v4

    const-string/jumbo v5, "ab_test"

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/localytics/android/InboxCampaign$Builder;->setAbTest(Ljava/lang/String;)Lcom/localytics/android/InboxCampaign$Builder;

    move-result-object v4

    const-string/jumbo v5, "version"

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Lcom/localytics/android/InboxCampaign$Builder;->setVersion(J)Lcom/localytics/android/InboxCampaign$Builder;

    move-result-object v4

    const-string/jumbo v5, "received_date"

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/localytics/android/InboxCampaign$Builder;->setReceivedDate(J)Lcom/localytics/android/InboxCampaign$Builder;

    move-result-object v4

    const-string/jumbo v5, "schema_version"

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Lcom/localytics/android/InboxCampaign$Builder;->setSchemaVersion(J)Lcom/localytics/android/InboxCampaign$Builder;

    move-result-object v4

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/localytics/android/InboxManager;->_getAttributes(J)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/localytics/android/InboxCampaign$Builder;->setAttributes(Ljava/util/Map;)Lcom/localytics/android/InboxCampaign$Builder;

    move-result-object v10

    .line 466
    .local v10, "builder":Lcom/localytics/android/InboxCampaign$Builder;
    const-string/jumbo v4, "thumbnail_location"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 467
    .local v17, "thumbnailLocation":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 469
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/localytics/android/InboxManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v4}, Lcom/localytics/android/ThumbnailManager;->getInboxLocalThumbnailLocation(JLcom/localytics/android/LocalyticsDao;)Ljava/lang/String;

    move-result-object v15

    .line 470
    .local v15, "localThumbnailLocation":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v10, v4}, Lcom/localytics/android/InboxCampaign$Builder;->setThumbnailUri(Landroid/net/Uri;)Lcom/localytics/android/InboxCampaign$Builder;

    .line 471
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v10, v4}, Lcom/localytics/android/InboxCampaign$Builder;->setLocalThumbnailUri(Landroid/net/Uri;)Lcom/localytics/android/InboxCampaign$Builder;

    .line 474
    .end local v15    # "localThumbnailLocation":Ljava/lang/String;
    :cond_0
    const-string/jumbo v4, "creative_location"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 475
    .local v12, "creativeLocation":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 477
    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v10, v4}, Lcom/localytics/android/InboxCampaign$Builder;->setCreativeUri(Landroid/net/Uri;)Lcom/localytics/android/InboxCampaign$Builder;

    .line 478
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "file://"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/localytics/android/InboxManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v5}, Lcom/localytics/android/CreativeManager;->getInboxLocalHtmlLocation(JLcom/localytics/android/LocalyticsDao;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v10, v4}, Lcom/localytics/android/InboxCampaign$Builder;->setLocalCreativeUri(Landroid/net/Uri;)Lcom/localytics/android/InboxCampaign$Builder;

    .line 480
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 482
    .local v20, "webViewAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "file://"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/localytics/android/InboxManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v5}, Lcom/localytics/android/CreativeManager;->getInboxLocalHtmlLocation(JLcom/localytics/android/LocalyticsDao;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 483
    .local v14, "localHtmlURL":Ljava/lang/String;
    const-string/jumbo v4, ".zip"

    invoke-virtual {v12, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/localytics/android/InboxManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v4, v5}, Lcom/localytics/android/CreativeManager;->getInboxLocalFileURL(JZLcom/localytics/android/LocalyticsDao;)Ljava/lang/String;

    move-result-object v13

    .line 484
    .local v13, "localFileLocation":Ljava/lang/String;
    const-string/jumbo v4, "creative_url"

    move-object/from16 v0, v20

    invoke-interface {v0, v4, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    const-string/jumbo v4, "html_url"

    move-object/from16 v0, v20

    invoke-interface {v0, v4, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    const-string/jumbo v4, "base_path"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/localytics/android/InboxManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v5}, Lcom/localytics/android/CreativeManager;->getInboxUnzipFileDirPath(JLcom/localytics/android/LocalyticsDao;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    const-string/jumbo v4, "zip_name"

    const-string/jumbo v5, "inbox_creative_assets_%d.zip"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    const-string/jumbo v4, "local_file_location"

    move-object/from16 v0, v20

    invoke-interface {v0, v4, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/localytics/android/InboxCampaign$Builder;->setWebViewAttributes(Ljava/util/Map;)Lcom/localytics/android/InboxCampaign$Builder;

    .line 492
    .end local v13    # "localFileLocation":Ljava/lang/String;
    .end local v14    # "localHtmlURL":Ljava/lang/String;
    .end local v20    # "webViewAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {v10}, Lcom/localytics/android/InboxCampaign$Builder;->build()Lcom/localytics/android/InboxCampaign;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 497
    .end local v10    # "builder":Lcom/localytics/android/InboxCampaign$Builder;
    .end local v12    # "creativeLocation":Ljava/lang/String;
    .end local v17    # "thumbnailLocation":Ljava/lang/String;
    .end local v18    # "rowId":J
    :catchall_0
    move-exception v4

    if-eqz v16, :cond_2

    .line 499
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v4

    .line 452
    .restart local v18    # "rowId":J
    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 497
    .end local v18    # "rowId":J
    :cond_4
    if-eqz v16, :cond_5

    .line 499
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 503
    :cond_5
    return-object v11
.end method

.method _getInboxCampaignsAsync(Lcom/localytics/android/InboxRefreshListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/localytics/android/InboxRefreshListener;

    .prologue
    .line 535
    invoke-virtual {p0}, Lcom/localytics/android/InboxManager;->_getInboxCampaigns()Ljava/util/List;

    move-result-object v0

    .line 536
    .local v0, "inboxCampaigns":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/InboxCampaign;>;"
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 537
    new-instance v2, Lcom/localytics/android/InboxManager$3;

    invoke-direct {v2, p0, p1, v0}, Lcom/localytics/android/InboxManager$3;-><init>(Lcom/localytics/android/InboxManager;Lcom/localytics/android/InboxRefreshListener;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 545
    return-void
.end method

.method _getInboxCampaignsUnreadCount()I
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 508
    const/4 v0, 0x0

    .line 511
    .local v0, "result":Landroid/database/Cursor;
    :try_start_0
    iget-object v2, p0, Lcom/localytics/android/InboxManager;->mProvider:Lcom/localytics/android/BaseProvider;

    iget-object v2, v2, Lcom/localytics/android/BaseProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v3, "SELECT COUNT(*) FROM %s WHERE %s > ? AND %s = 0"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "inbox_campaigns"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "expiration"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "read"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/localytics/android/InboxManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v6}, Lcom/localytics/android/LocalyticsDao;->getCurrentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 517
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 519
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 524
    if-eqz v0, :cond_0

    .line 526
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 530
    :cond_0
    :goto_0
    return v1

    .line 524
    :cond_1
    if-eqz v0, :cond_0

    .line 526
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 524
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    .line 526
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method _manifestProcessingAllowed()Z
    .locals 2

    .prologue
    .line 245
    iget-object v1, p0, Lcom/localytics/android/InboxManager;->mDisplayingInboxFragments:Ljava/util/Set;

    monitor-enter v1

    .line 247
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/InboxManager;->mDisplayingInboxFragments:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/localytics/android/InboxManager;->mCreativeManager:Lcom/localytics/android/CreativeManager;

    invoke-virtual {v0}, Lcom/localytics/android/CreativeManager;->hasPendingDownloads()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method _priorityDownloadCreative(Lcom/localytics/android/InboxCampaign;Lcom/localytics/android/CreativeManager$FirstDownloadedCallback;)V
    .locals 6
    .param p1, "campaign"    # Lcom/localytics/android/InboxCampaign;
    .param p2, "firstDownloadedCallback"    # Lcom/localytics/android/CreativeManager$FirstDownloadedCallback;

    .prologue
    .line 675
    new-instance v2, Lcom/localytics/android/MarketingMessage;

    invoke-direct {v2}, Lcom/localytics/android/MarketingMessage;-><init>()V

    .line 676
    .local v2, "message":Lcom/localytics/android/MarketingMessage;
    const-string/jumbo v3, "_id"

    invoke-virtual {p1}, Lcom/localytics/android/InboxCampaign;->getInboxId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    const-string/jumbo v3, "campaign_id"

    invoke-virtual {p1}, Lcom/localytics/android/InboxCampaign;->getCampaignId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    invoke-virtual {p1}, Lcom/localytics/android/InboxCampaign;->getCreativeUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 679
    .local v1, "creativeLocation":Ljava/lang/String;
    const-string/jumbo v3, "creative_location"

    invoke-virtual {v2, v3, v1}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    invoke-direct {p0, v2}, Lcom/localytics/android/InboxManager;->_updateMessageWithSpecialKeys(Lcom/localytics/android/MarketingMessage;)V

    .line 682
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 683
    .local v0, "campaigns":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/MarketingMessage;>;"
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 684
    iget-object v3, p0, Lcom/localytics/android/InboxManager;->mCreativeManager:Lcom/localytics/android/CreativeManager;

    invoke-virtual {v3, v0, p2}, Lcom/localytics/android/CreativeManager;->priorityDownloadCreatives(Ljava/util/List;Lcom/localytics/android/CreativeManager$FirstDownloadedCallback;)V

    .line 685
    return-void
.end method

.method _processMarketingObject(ZLjava/util/Map;Ljava/util/Map;)V
    .locals 28
    .param p1, "successful"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p2, "marketingMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/localytics/android/InboxManager;->_manifestProcessingAllowed()Z

    move-result v24

    if-eqz v24, :cond_e

    .line 95
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/localytics/android/InboxManager;->mManifestToProcess:Lcom/localytics/android/InboxManager$ManifestHolder;

    .line 98
    if-eqz p1, :cond_b

    .line 100
    if-eqz p3, :cond_0

    .line 102
    :try_start_0
    const-string/jumbo v24, "inbox_throttle"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/localytics/android/JsonHelper;->getSafeLongFromMap(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v22

    .line 103
    .local v22, "throttleSecs":J
    const-wide/16 v24, 0x0

    cmp-long v24, v22, v24

    if-lez v24, :cond_0

    .line 105
    const-wide/16 v24, 0x3e8

    mul-long v24, v24, v22

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/localytics/android/InboxManager;->mThrottleMillis:J

    .line 109
    .end local v22    # "throttleSecs":J
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/localytics/android/InboxManager;->_queryInboxCampaignInfo()Ljava/util/HashMap;

    move-result-object v14

    .line 110
    .local v14, "localInboxes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/content/ContentValues;>;"
    if-eqz p2, :cond_d

    .line 112
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v21, "remoteInboxes":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/MarketingMessage;>;"
    const-string/jumbo v24, "inboxes"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 114
    .local v6, "data":Ljava/lang/Object;
    if-eqz v6, :cond_2

    .line 117
    invoke-static {v6}, Lcom/localytics/android/JsonHelper;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/json/JSONArray;

    invoke-static/range {v24 .. v24}, Lcom/localytics/android/JsonHelper;->toList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v24

    .line 118
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map;

    .line 120
    .local v17, "obj":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v24, Lcom/localytics/android/MarketingMessage;

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/localytics/android/MarketingMessage;-><init>(Ljava/util/Map;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 182
    .end local v6    # "data":Ljava/lang/Object;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v14    # "localInboxes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/content/ContentValues;>;"
    .end local v17    # "obj":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v21    # "remoteInboxes":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/MarketingMessage;>;"
    :catch_0
    move-exception v7

    .line 184
    .local v7, "e":Lorg/json/JSONException;
    :try_start_1
    const-string/jumbo v24, "JSONException"

    move-object/from16 v0, v24

    invoke-static {v0, v7}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/localytics/android/InboxManager;->mRefreshLock:Ljava/lang/Object;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 190
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/localytics/android/InboxManager;->mRefreshCallback:Lcom/localytics/android/InboxRefreshListener;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1

    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/localytics/android/InboxManager;->_getInboxCampaigns()Ljava/util/List;

    move-result-object v10

    .line 193
    .local v10, "inboxCampaigns":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/InboxCampaign;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/localytics/android/InboxManager;->mRefreshCallback:Lcom/localytics/android/InboxRefreshListener;

    move-object/from16 v19, v0

    .line 194
    .local v19, "refreshListener":Lcom/localytics/android/InboxRefreshListener;
    new-instance v24, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 195
    new-instance v26, Lcom/localytics/android/InboxManager$2;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v10}, Lcom/localytics/android/InboxManager$2;-><init>(Lcom/localytics/android/InboxManager;Lcom/localytics/android/InboxRefreshListener;Ljava/util/List;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 203
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/localytics/android/InboxManager;->mRefreshCallback:Lcom/localytics/android/InboxRefreshListener;

    .line 205
    .end local v10    # "inboxCampaigns":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/InboxCampaign;>;"
    .end local v19    # "refreshListener":Lcom/localytics/android/InboxRefreshListener;
    :cond_1
    monitor-exit v25
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 213
    .end local v7    # "e":Lorg/json/JSONException;
    :goto_1
    return-void

    .line 125
    .restart local v6    # "data":Ljava/lang/Object;
    .restart local v14    # "localInboxes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/content/ContentValues;>;"
    .restart local v21    # "remoteInboxes":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/MarketingMessage;>;"
    :cond_2
    :try_start_3
    new-instance v24, Ljava/util/HashSet;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v14, v1}, Lcom/localytics/android/InboxManager;->_removeDeactivatedInbox(Ljava/util/Map;Ljava/util/Set;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/localytics/android/InboxManager;->mRefreshLock:Ljava/lang/Object;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 190
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/localytics/android/InboxManager;->mRefreshCallback:Lcom/localytics/android/InboxRefreshListener;

    move-object/from16 v24, v0

    if-eqz v24, :cond_3

    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/localytics/android/InboxManager;->_getInboxCampaigns()Ljava/util/List;

    move-result-object v10

    .line 193
    .restart local v10    # "inboxCampaigns":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/InboxCampaign;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/localytics/android/InboxManager;->mRefreshCallback:Lcom/localytics/android/InboxRefreshListener;

    move-object/from16 v19, v0

    .line 194
    .restart local v19    # "refreshListener":Lcom/localytics/android/InboxRefreshListener;
    new-instance v24, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 195
    new-instance v26, Lcom/localytics/android/InboxManager$2;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v10}, Lcom/localytics/android/InboxManager$2;-><init>(Lcom/localytics/android/InboxManager;Lcom/localytics/android/InboxRefreshListener;Ljava/util/List;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 203
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/localytics/android/InboxManager;->mRefreshCallback:Lcom/localytics/android/InboxRefreshListener;

    .line 205
    .end local v10    # "inboxCampaigns":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/InboxCampaign;>;"
    .end local v19    # "refreshListener":Lcom/localytics/android/InboxRefreshListener;
    :cond_3
    monitor-exit v25

    goto :goto_1

    :catchall_0
    move-exception v24

    monitor-exit v25
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v24

    .line 129
    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_4
    :try_start_5
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 130
    .local v4, "campaignIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    .line 132
    .local v9, "inbox":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v24, "campaign_id"

    move-object/from16 v0, v24

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 188
    .end local v4    # "campaignIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v6    # "data":Ljava/lang/Object;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "inbox":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v14    # "localInboxes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/content/ContentValues;>;"
    .end local v21    # "remoteInboxes":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/MarketingMessage;>;"
    :catchall_1
    move-exception v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/localytics/android/InboxManager;->mRefreshLock:Ljava/lang/Object;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 190
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/localytics/android/InboxManager;->mRefreshCallback:Lcom/localytics/android/InboxRefreshListener;

    move-object/from16 v26, v0

    if-eqz v26, :cond_5

    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/localytics/android/InboxManager;->_getInboxCampaigns()Ljava/util/List;

    move-result-object v10

    .line 193
    .restart local v10    # "inboxCampaigns":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/InboxCampaign;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/localytics/android/InboxManager;->mRefreshCallback:Lcom/localytics/android/InboxRefreshListener;

    move-object/from16 v19, v0

    .line 194
    .restart local v19    # "refreshListener":Lcom/localytics/android/InboxRefreshListener;
    new-instance v26, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 195
    new-instance v27, Lcom/localytics/android/InboxManager$2;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v10}, Lcom/localytics/android/InboxManager$2;-><init>(Lcom/localytics/android/InboxManager;Lcom/localytics/android/InboxRefreshListener;Ljava/util/List;)V

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 203
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/localytics/android/InboxManager;->mRefreshCallback:Lcom/localytics/android/InboxRefreshListener;

    .line 205
    .end local v10    # "inboxCampaigns":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/InboxCampaign;>;"
    .end local v19    # "refreshListener":Lcom/localytics/android/InboxRefreshListener;
    :cond_5
    monitor-exit v25
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v24

    .line 135
    .restart local v4    # "campaignIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v6    # "data":Ljava/lang/Object;
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v14    # "localInboxes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/content/ContentValues;>;"
    .restart local v21    # "remoteInboxes":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/MarketingMessage;>;"
    :cond_6
    :try_start_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v4}, Lcom/localytics/android/InboxManager;->_removeDeactivatedInbox(Ljava/util/Map;Ljava/util/Set;)V

    .line 137
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v5, "creativesToDownload":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/MarketingMessage;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_7
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Map;

    .line 142
    .local v20, "remoteInbox":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v14, v2}, Lcom/localytics/android/InboxManager;->_saveInboxCampaign(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)J

    move-result-wide v12

    .line 143
    .local v12, "inboxId":J
    const-wide/16 v24, 0x0

    cmp-long v24, v12, v24

    if-lez v24, :cond_7

    .line 145
    move-object/from16 v0, v20

    check-cast v0, Lcom/localytics/android/MarketingMessage;

    move-object v15, v0

    .line 146
    .local v15, "message":Lcom/localytics/android/MarketingMessage;
    const-string/jumbo v24, "campaign_id"

    move-object/from16 v0, v24

    invoke-static {v15, v0}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ContentValues;

    .line 147
    .local v11, "localInbox":Landroid/content/ContentValues;
    if-nez v11, :cond_8

    const/16 v18, 0x0

    .line 148
    .local v18, "oldCreativeLocation":Ljava/lang/String;
    :goto_4
    const-string/jumbo v24, "creative_location"

    move-object/from16 v0, v24

    invoke-static {v15, v0}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 149
    .local v16, "newCreativeLocation":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_7

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_7

    .line 151
    const-string/jumbo v24, "_id"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/localytics/android/InboxManager;->_updateMessageWithSpecialKeys(Lcom/localytics/android/MarketingMessage;)V

    .line 153
    invoke-interface {v5, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 147
    .end local v16    # "newCreativeLocation":Ljava/lang/String;
    .end local v18    # "oldCreativeLocation":Ljava/lang/String;
    :cond_8
    const-string/jumbo v24, "creative_location"

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    goto :goto_4

    .line 158
    .end local v11    # "localInbox":Landroid/content/ContentValues;
    .end local v12    # "inboxId":J
    .end local v15    # "message":Lcom/localytics/android/MarketingMessage;
    .end local v20    # "remoteInbox":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_9
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v24

    if-lez v24, :cond_a

    invoke-static {}, Lcom/localytics/android/Constants;->isTestModeEnabled()Z

    move-result v24

    if-nez v24, :cond_a

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/localytics/android/InboxManager;->mCreativeManager:Lcom/localytics/android/CreativeManager;

    move-object/from16 v24, v0

    new-instance v25, Lcom/localytics/android/InboxManager$1;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/localytics/android/InboxManager$1;-><init>(Lcom/localytics/android/InboxManager;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v5, v1}, Lcom/localytics/android/CreativeManager;->downloadCreatives(Ljava/util/List;Lcom/localytics/android/CreativeManager$LastDownloadedCallback;)V

    .line 179
    .end local v4    # "campaignIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v5    # "creativesToDownload":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/MarketingMessage;>;"
    .end local v6    # "data":Ljava/lang/Object;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v21    # "remoteInboxes":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/MarketingMessage;>;"
    :cond_a
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/localytics/android/InboxManager;->mProvider:Lcom/localytics/android/BaseProvider;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/localytics/android/BaseProvider;->vacuumIfNecessary()V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 188
    .end local v14    # "localInboxes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/content/ContentValues;>;"
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/localytics/android/InboxManager;->mRefreshLock:Ljava/lang/Object;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 190
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/localytics/android/InboxManager;->mRefreshCallback:Lcom/localytics/android/InboxRefreshListener;

    move-object/from16 v24, v0

    if-eqz v24, :cond_c

    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/localytics/android/InboxManager;->_getInboxCampaigns()Ljava/util/List;

    move-result-object v10

    .line 193
    .restart local v10    # "inboxCampaigns":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/InboxCampaign;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/localytics/android/InboxManager;->mRefreshCallback:Lcom/localytics/android/InboxRefreshListener;

    move-object/from16 v19, v0

    .line 194
    .restart local v19    # "refreshListener":Lcom/localytics/android/InboxRefreshListener;
    new-instance v24, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 195
    new-instance v26, Lcom/localytics/android/InboxManager$2;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v10}, Lcom/localytics/android/InboxManager$2;-><init>(Lcom/localytics/android/InboxManager;Lcom/localytics/android/InboxRefreshListener;Ljava/util/List;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 203
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/localytics/android/InboxManager;->mRefreshCallback:Lcom/localytics/android/InboxRefreshListener;

    .line 205
    .end local v10    # "inboxCampaigns":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/InboxCampaign;>;"
    .end local v19    # "refreshListener":Lcom/localytics/android/InboxRefreshListener;
    :cond_c
    monitor-exit v25

    goto/16 :goto_1

    :catchall_2
    move-exception v24

    monitor-exit v25
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v24

    .line 176
    .restart local v14    # "localInboxes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/content/ContentValues;>;"
    :cond_d
    :try_start_9
    new-instance v24, Ljava/util/HashSet;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v14, v1}, Lcom/localytics/android/InboxManager;->_removeDeactivatedInbox(Ljava/util/Map;Ljava/util/Set;)V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_5

    .line 205
    .end local v14    # "localInboxes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/content/ContentValues;>;"
    .restart local v7    # "e":Lorg/json/JSONException;
    :catchall_3
    move-exception v24

    :try_start_a
    monitor-exit v25
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v24

    .end local v7    # "e":Lorg/json/JSONException;
    :catchall_4
    move-exception v24

    :try_start_b
    monitor-exit v25
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v24

    .line 211
    :cond_e
    new-instance v24, Lcom/localytics/android/InboxManager$ManifestHolder;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/localytics/android/InboxManager;->_inboxOnlyMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v25

    move-object/from16 v0, v24

    move/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/localytics/android/InboxManager$ManifestHolder;-><init>(ZLjava/util/Map;Ljava/util/Map;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/localytics/android/InboxManager;->mManifestToProcess:Lcom/localytics/android/InboxManager$ManifestHolder;

    goto/16 :goto_1
.end method

.method _queryInboxCampaignInfo()Ljava/util/HashMap;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 288
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 289
    .local v11, "inboxInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/content/ContentValues;>;"
    const/4 v10, 0x0

    .line 292
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/localytics/android/InboxManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v3, "inbox_campaigns"

    sget-object v4, Lcom/localytics/android/InboxManager;->INBOX_INFO_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 293
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 297
    const-string/jumbo v2, "_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 298
    .local v13, "rowId":I
    const-string/jumbo v2, "campaign_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 299
    .local v8, "campaignId":I
    const-string/jumbo v2, "version"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 300
    .local v17, "version":I
    const-string/jumbo v2, "read"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 301
    .local v12, "read":I
    const-string/jumbo v2, "received_date"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 302
    .local v14, "receivedDate":J
    const-string/jumbo v2, "creative_location"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 304
    .local v9, "creativeLocation":Ljava/lang/String;
    new-instance v16, Landroid/content/ContentValues;

    invoke-interface {v10}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 305
    .local v16, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "_id"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 306
    const-string/jumbo v2, "campaign_id"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 307
    const-string/jumbo v2, "version"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 308
    const-string/jumbo v2, "read"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 309
    const-string/jumbo v2, "received_date"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 310
    const-string/jumbo v2, "creative_location"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v11, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 316
    .end local v8    # "campaignId":I
    .end local v9    # "creativeLocation":Ljava/lang/String;
    .end local v12    # "read":I
    .end local v13    # "rowId":I
    .end local v14    # "receivedDate":J
    .end local v16    # "values":Landroid/content/ContentValues;
    .end local v17    # "version":I
    :catchall_0
    move-exception v2

    if-eqz v10, :cond_0

    .line 318
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v2

    .line 316
    :cond_1
    if-eqz v10, :cond_2

    .line 318
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 322
    :cond_2
    return-object v11
.end method

.method _removeDeactivatedInbox(Ljava/util/Map;Ljava/util/Set;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 253
    .local p1, "localInboxes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/content/ContentValues;>;"
    .local p2, "remoteCampaignIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 254
    .local v3, "removing":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 255
    .local v1, "existing":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v3, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 256
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 258
    .local v0, "campaignId":Ljava/lang/Integer;
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    const-string/jumbo v6, "_id"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 259
    .local v4, "rowId":I
    iget-object v5, p0, Lcom/localytics/android/InboxManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v6, "inbox_campaigns"

    sget-object v7, Lcom/localytics/android/InboxManager;->SELECTION_BY_CAMPAIGN_ROW_ID:Ljava/lang/String;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7, v8}, Lcom/localytics/android/BaseProvider;->remove(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 260
    int-to-long v6, v4

    invoke-virtual {p0, v6, v7}, Lcom/localytics/android/InboxManager;->_removeInboxAssetFiles(J)V

    goto :goto_0

    .line 262
    .end local v0    # "campaignId":Ljava/lang/Integer;
    .end local v4    # "rowId":I
    :cond_0
    return-void
.end method

.method _removeInboxAssetFiles(J)V
    .locals 7
    .param p1, "rowId"    # J

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 266
    iget-object v3, p0, Lcom/localytics/android/InboxManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-static {p1, p2, v5, v3}, Lcom/localytics/android/CreativeManager;->getInboxLocalFileURL(JZLcom/localytics/android/LocalyticsDao;)Ljava/lang/String;

    move-result-object v2

    .line 267
    .local v2, "zippedFilePath":Ljava/lang/String;
    iget-object v3, p0, Lcom/localytics/android/InboxManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-static {p1, p2, v3}, Lcom/localytics/android/CreativeManager;->getInboxUnzipFileDirPath(JLcom/localytics/android/LocalyticsDao;)Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, "unzippedDirPath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/localytics/android/Utils;->deleteFile(Ljava/io/File;)V

    .line 273
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_0

    .line 275
    const-string/jumbo v3, "Delete %s failed."

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v2, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 279
    :cond_0
    iget-object v3, p0, Lcom/localytics/android/InboxManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-static {p1, p2, v3}, Lcom/localytics/android/ThumbnailManager;->getInboxLocalThumbnailLocation(JLcom/localytics/android/LocalyticsDao;)Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "thumbnailFilePath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 282
    const-string/jumbo v3, "Delete %s successfully."

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 284
    :cond_1
    return-void
.end method

.method _saveInboxCampaign(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)J
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 327
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, "localInboxes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/content/ContentValues;>;"
    .local p3, "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v4, Landroid/content/ContentValues;

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v13

    invoke-direct {v4, v13}, Landroid/content/ContentValues;-><init>(I)V

    .line 328
    .local v4, "newValues":Landroid/content/ContentValues;
    const-string/jumbo v13, "campaign_id"

    const-string/jumbo v14, "campaign_id"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v4, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 329
    const-string/jumbo v13, "expiration"

    const-string/jumbo v14, "expiration"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v4, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 330
    const-string/jumbo v13, "version"

    const-string/jumbo v14, "version"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v4, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 331
    const-string/jumbo v13, "ab_test"

    const-string/jumbo v14, "ab"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string/jumbo v13, "rule_name"

    const-string/jumbo v14, "rule_name"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string/jumbo v13, "listing_title"

    const-string/jumbo v14, "listing_title"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string/jumbo v13, "listing_summary"

    const-string/jumbo v14, "listing_summary"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string/jumbo v13, "sort_order"

    const-string/jumbo v14, "sort_order"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v4, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 336
    const-string/jumbo v13, "thumbnail_location"

    const-string/jumbo v14, "thumbnail_location"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string/jumbo v13, "creative_location"

    const-string/jumbo v14, "creative_location"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string/jumbo v13, "received_date"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/localytics/android/InboxManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v14}, Lcom/localytics/android/LocalyticsDao;->getCurrentTimeMillis()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v4, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 340
    if-eqz p3, :cond_0

    .line 342
    const-string/jumbo v13, "schema_version"

    move-object/from16 v0, p3

    invoke-static {v0, v13}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v12

    .line 343
    .local v12, "schemaVersion":I
    if-lez v12, :cond_0

    .line 345
    const-string/jumbo v13, "schema_version"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v4, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 349
    .end local v12    # "schemaVersion":I
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/localytics/android/InboxManager;->_validateInboxData(Landroid/content/ContentValues;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 351
    const-string/jumbo v13, "Inbox data is invalid:\n%s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v4}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;)I

    .line 352
    const-wide/16 v10, -0x1

    .line 391
    :goto_0
    return-wide v10

    .line 355
    :cond_1
    const-string/jumbo v13, "campaign_id"

    invoke-virtual {v4, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    int-to-long v2, v13

    .line 357
    .local v2, "campaignId":J
    long-to-int v13, v2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    .line 358
    .local v5, "oldValues":Landroid/content/ContentValues;
    if-eqz v5, :cond_3

    .line 360
    const-string/jumbo v13, "Existing inbox already exists for this campaign\n\t campaignID = %d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 362
    const-string/jumbo v13, "version"

    invoke-virtual {v5, v13}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 363
    .local v8, "oldVersion":J
    const-string/jumbo v13, "version"

    invoke-virtual {v4, v13}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 364
    .local v6, "newVersion":J
    cmp-long v13, v8, v6

    if-ltz v13, :cond_2

    .line 366
    const-string/jumbo v13, "No update needed. Campaign version has not been updated\n\t version: %d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 367
    const-wide/16 v10, 0x0

    goto :goto_0

    .line 371
    :cond_2
    const-string/jumbo v13, "_id"

    invoke-virtual {v5, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    int-to-long v10, v13

    .line 374
    .local v10, "rowId":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/localytics/android/InboxManager;->_removeInboxAssetFiles(J)V

    .line 377
    const-string/jumbo v13, "read"

    const-string/jumbo v14, "read"

    invoke-virtual {v5, v14}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v4, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 378
    const-string/jumbo v13, "received_date"

    const-string/jumbo v14, "received_date"

    invoke-virtual {v5, v14}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v4, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 382
    .end local v6    # "newVersion":J
    .end local v8    # "oldVersion":J
    .end local v10    # "rowId":J
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/localytics/android/InboxManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v14, "inbox_campaigns"

    invoke-virtual {v13, v14, v4}, Lcom/localytics/android/BaseProvider;->replace(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v10

    .restart local v10    # "rowId":J
    const-wide/16 v14, -0x1

    cmp-long v13, v10, v14

    if-nez v13, :cond_4

    .line 384
    const-string/jumbo v13, "Failed to replace inbox campaign %d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;)I

    .line 385
    const-wide/16 v10, -0x1

    goto/16 :goto_0

    .line 389
    :cond_4
    const-string/jumbo v13, "attributes"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/localytics/android/JsonHelper;->getSafeMapFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11, v13}, Lcom/localytics/android/InboxManager;->_saveInboxCampaignAttributes(JLjava/util/Map;)V

    goto/16 :goto_0
.end method

.method _saveInboxCampaignAttributes(JLjava/util/Map;)V
    .locals 11
    .param p1, "rowId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 396
    if-eqz p3, :cond_1

    .line 400
    :try_start_0
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 402
    .local v1, "key":Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 403
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "key"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const-string/jumbo v3, "value"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const-string/jumbo v3, "inbox_id_ref"

    long-to-int v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 406
    iget-object v3, p0, Lcom/localytics/android/InboxManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v4, "inbox_campaign_attributes"

    invoke-virtual {v3, v4, v2}, Lcom/localytics/android/BaseProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gtz v3, :cond_0

    .line 408
    const-string/jumbo v3, "Failed to insert attributes for inbox campaign row id %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 414
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v3

    const-string/jumbo v3, "Cannot parse inbox attributes data: %s"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;)I

    .line 417
    :cond_1
    return-void
.end method

.method _setInboxCampaignRead(JZ)Z
    .locals 9
    .param p1, "campaignId"    # J
    .param p3, "read"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 580
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 581
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "read"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 582
    iget-object v3, p0, Lcom/localytics/android/InboxManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v4, "inbox_campaigns"

    const-string/jumbo v5, "%s = ?"

    new-array v6, v1, [Ljava/lang/Object;

    const-string/jumbo v7, "campaign_id"

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v3, v4, v0, v5, v6}, Lcom/localytics/android/BaseProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 589
    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method _validateInboxData(Landroid/content/ContentValues;)Z
    .locals 14
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    const-wide/16 v12, 0x0

    .line 421
    const-string/jumbo v8, "campaign_id"

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 422
    .local v0, "campaignId":Ljava/lang/Long;
    const-string/jumbo v8, "expiration"

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 423
    .local v1, "expiration":Ljava/lang/Long;
    const-string/jumbo v8, "version"

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    .line 424
    .local v7, "version":Ljava/lang/Long;
    const-string/jumbo v8, "sort_order"

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    .line 425
    .local v5, "sortOrder":Ljava/lang/Long;
    const-string/jumbo v8, "rule_name"

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 426
    .local v4, "ruleName":Ljava/lang/String;
    const-string/jumbo v8, "listing_title"

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 427
    .local v6, "title":Ljava/lang/String;
    iget-object v8, p0, Lcom/localytics/android/InboxManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v8}, Lcom/localytics/android/LocalyticsDao;->getCurrentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long v2, v8, v10

    .line 429
    .local v2, "now":J
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v8, v8, v12

    if-lez v8, :cond_2

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v8, v8, v12

    if-lez v8, :cond_2

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v8, v8, v12

    if-ltz v8, :cond_2

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v8, v8, v2

    if-gtz v8, :cond_1

    :cond_0
    invoke-static {}, Lcom/localytics/android/Constants;->isTestModeEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    const/4 v8, 0x1

    :goto_0
    return v8

    :cond_2
    const/4 v8, 0x0

    goto :goto_0
.end method

.method canRefresh()Z
    .locals 4

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/localytics/android/InboxManager;->mLastRefreshTimeMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/localytics/android/InboxManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v0}, Lcom/localytics/android/LocalyticsDao;->getCurrentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/localytics/android/InboxManager;->mLastRefreshTimeMillis:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/localytics/android/InboxManager;->mThrottleMillis:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setInboxDetailFragmentDisplaying(Ljava/lang/Object;Z)V
    .locals 3
    .param p1, "fragment"    # Ljava/lang/Object;
    .param p2, "displaying"    # Z

    .prologue
    .line 594
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    instance-of v0, p1, Lcom/localytics/android/InboxDetailFragment;

    if-nez v0, :cond_1

    :cond_0
    instance-of v0, p1, Lcom/localytics/android/InboxDetailSupportFragment;

    if-eqz v0, :cond_3

    .line 597
    :cond_1
    iget-object v1, p0, Lcom/localytics/android/InboxManager;->mDisplayingInboxFragments:Ljava/util/Set;

    monitor-enter v1

    .line 599
    if-eqz p2, :cond_4

    .line 601
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/InboxManager;->mDisplayingInboxFragments:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 621
    :cond_2
    :goto_0
    monitor-exit v1

    .line 623
    :cond_3
    return-void

    .line 605
    :cond_4
    iget-object v0, p0, Lcom/localytics/android/InboxManager;->mDisplayingInboxFragments:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 606
    iget-object v0, p0, Lcom/localytics/android/InboxManager;->mDisplayingInboxFragments:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 608
    iget-object v0, p0, Lcom/localytics/android/InboxManager;->mMarketingHandler:Lcom/localytics/android/MarketingHandler;

    new-instance v2, Lcom/localytics/android/InboxManager$4;

    invoke-direct {v2, p0}, Lcom/localytics/android/InboxManager$4;-><init>(Lcom/localytics/android/InboxManager;)V

    invoke-virtual {v0, v2}, Lcom/localytics/android/MarketingHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 621
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setInboxRefreshCallback(Lcom/localytics/android/InboxRefreshListener;)V
    .locals 2
    .param p1, "callback"    # Lcom/localytics/android/InboxRefreshListener;

    .prologue
    .line 85
    iget-object v1, p0, Lcom/localytics/android/InboxManager;->mRefreshLock:Ljava/lang/Object;

    monitor-enter v1

    .line 87
    :try_start_0
    iput-object p1, p0, Lcom/localytics/android/InboxManager;->mRefreshCallback:Lcom/localytics/android/InboxRefreshListener;

    .line 88
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setLastRefreshTimeMillis(J)V
    .locals 1
    .param p1, "millis"    # J

    .prologue
    .line 80
    iput-wide p1, p0, Lcom/localytics/android/InboxManager;->mLastRefreshTimeMillis:J

    .line 81
    return-void
.end method

.method tagDismissForInboxDetailFragments()V
    .locals 6

    .prologue
    .line 627
    iget-object v4, p0, Lcom/localytics/android/InboxManager;->mDisplayingInboxFragments:Ljava/util/Set;

    monitor-enter v4

    .line 629
    :try_start_0
    iget-object v3, p0, Lcom/localytics/android/InboxManager;->mDisplayingInboxFragments:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 631
    .local v0, "fragment":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 632
    .local v2, "webViewManager":Lcom/localytics/android/MarketingWebViewManager;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v3, v5, :cond_2

    instance-of v3, v0, Lcom/localytics/android/InboxDetailFragment;

    if-eqz v3, :cond_2

    .line 634
    check-cast v0, Lcom/localytics/android/InboxDetailFragment;

    .end local v0    # "fragment":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/localytics/android/InboxDetailFragment;->getWebViewManager()Lcom/localytics/android/MarketingWebViewManager;

    move-result-object v2

    .line 641
    :cond_1
    :goto_1
    if-eqz v2, :cond_0

    .line 643
    const-string/jumbo v3, "X"

    invoke-virtual {v2, v3}, Lcom/localytics/android/MarketingWebViewManager;->tagMarketingActionEventWithAction(Ljava/lang/String;)V

    goto :goto_0

    .line 646
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "webViewManager":Lcom/localytics/android/MarketingWebViewManager;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 636
    .restart local v0    # "fragment":Ljava/lang/Object;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "webViewManager":Lcom/localytics/android/MarketingWebViewManager;
    :cond_2
    :try_start_1
    instance-of v3, v0, Lcom/localytics/android/InboxDetailSupportFragment;

    if-eqz v3, :cond_1

    .line 638
    check-cast v0, Lcom/localytics/android/InboxDetailSupportFragment;

    .end local v0    # "fragment":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/localytics/android/InboxDetailSupportFragment;->getWebViewManager()Lcom/localytics/android/MarketingWebViewManager;

    move-result-object v2

    goto :goto_1

    .line 646
    .end local v2    # "webViewManager":Lcom/localytics/android/MarketingWebViewManager;
    :cond_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
