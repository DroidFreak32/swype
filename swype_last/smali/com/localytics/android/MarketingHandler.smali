.class Lcom/localytics/android/MarketingHandler;
.super Lcom/localytics/android/BaseHandler;
.source "MarketingHandler.java"

# interfaces
.implements Lcom/localytics/android/AnalyticsListener;
.implements Lcom/localytics/android/LocationListener;
.implements Lcom/localytics/android/ManifestListener;


# static fields
.field private static final MESSAGE_DOWNLOAD_INBOX_THUMBNAILS:I = 0xd1

.field private static final MESSAGE_GET_INBOX_CAMPAIGNS_ASYNC:I = 0xd3

.field private static final MESSAGE_HANDLE_PUSH_RECEIVED:I = 0xcb

.field private static final MESSAGE_IN_APP_MESSAGE_TRIGGER:I = 0xc9

.field private static final MESSAGE_MANIFEST_DOWNLOADED:I = 0xcf

.field private static final MESSAGE_PRIORITY_DOWNLOAD_CREATIVE:I = 0xd2

.field private static final MESSAGE_SET_INBOX_CAMPAIGN_READ:I = 0xd0

.field private static final MESSAGE_SET_IN_APP_MESSAGE_AS_NOT_DISPLAYED:I = 0xcc

.field private static final MESSAGE_SHOW_IN_APP_MESSAGES_TEST:I = 0xca

.field private static final MESSAGE_TAG_PUSH_RECEIVED_EVENT:I = 0xcd

.field private static final MESSAGE_TRIGGER_REGIONS:I = 0xd4

.field private static final MESSAGE_WILL_DOWNLOAD_MANIFEST:I = 0xce


# instance fields
.field private lastMarketingMessagesHash:I

.field private mHasRunSessionStartRunnable:Z

.field protected mInAppManager:Lcom/localytics/android/InAppManager;

.field protected mInboxManager:Lcom/localytics/android/InboxManager;

.field protected final mListeners:Lcom/localytics/android/ListenersSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/localytics/android/ListenersSet",
            "<",
            "Lcom/localytics/android/MessagingListener;",
            ">;"
        }
    .end annotation
.end field

.field mManifestToProcess:Lcom/localytics/android/InAppManager$ManifestHolder;

.field protected mPlacesManager:Lcom/localytics/android/PlacesManager;

.field protected mPushManager:Lcom/localytics/android/PushManager;

.field private mSessionStartRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/localytics/android/LocalyticsDao;Landroid/os/Looper;)V
    .registers 5
    .param p1, "localyticsDao"    # Lcom/localytics/android/LocalyticsDao;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Lcom/localytics/android/BaseHandler;-><init>(Lcom/localytics/android/LocalyticsDao;Landroid/os/Looper;)V

    .line 114
    const/4 v0, -0x1

    iput v0, p0, Lcom/localytics/android/MarketingHandler;->lastMarketingMessagesHash:I

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/localytics/android/MarketingHandler;->mSessionStartRunnable:Ljava/lang/Runnable;

    .line 124
    const-string/jumbo v0, "In-app"

    iput-object v0, p0, Lcom/localytics/android/MarketingHandler;->siloName:Ljava/lang/String;

    .line 125
    new-instance v0, Lcom/localytics/android/ListenersSet;

    const-class v1, Lcom/localytics/android/MessagingListener;

    invoke-direct {v0, v1}, Lcom/localytics/android/ListenersSet;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/localytics/android/MarketingHandler;->mListeners:Lcom/localytics/android/ListenersSet;

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/localytics/android/MarketingHandler;->doesRetry:Z

    .line 128
    new-instance v0, Lcom/localytics/android/InAppManager;

    invoke-direct {v0, p1, p0}, Lcom/localytics/android/InAppManager;-><init>(Lcom/localytics/android/LocalyticsDao;Lcom/localytics/android/MarketingHandler;)V

    iput-object v0, p0, Lcom/localytics/android/MarketingHandler;->mInAppManager:Lcom/localytics/android/InAppManager;

    .line 129
    new-instance v0, Lcom/localytics/android/PushManager;

    invoke-direct {v0, p1, p0}, Lcom/localytics/android/PushManager;-><init>(Lcom/localytics/android/LocalyticsDao;Lcom/localytics/android/MarketingHandler;)V

    iput-object v0, p0, Lcom/localytics/android/MarketingHandler;->mPushManager:Lcom/localytics/android/PushManager;

    .line 130
    new-instance v0, Lcom/localytics/android/InboxManager;

    invoke-direct {v0, p1, p0}, Lcom/localytics/android/InboxManager;-><init>(Lcom/localytics/android/LocalyticsDao;Lcom/localytics/android/MarketingHandler;)V

    iput-object v0, p0, Lcom/localytics/android/MarketingHandler;->mInboxManager:Lcom/localytics/android/InboxManager;

    .line 131
    new-instance v0, Lcom/localytics/android/PlacesManager;

    invoke-direct {v0, p1, p0}, Lcom/localytics/android/PlacesManager;-><init>(Lcom/localytics/android/LocalyticsDao;Lcom/localytics/android/MarketingHandler;)V

    iput-object v0, p0, Lcom/localytics/android/MarketingHandler;->mPlacesManager:Lcom/localytics/android/PlacesManager;

    .line 134
    invoke-interface {p1}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/localytics/android/MarketingHandler;->_createLocalyticsDirectory(Landroid/content/Context;)Z

    .line 136
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingHandler;->queueMessage(Landroid/os/Message;)Z

    .line 137
    return-void
.end method

.method private _createLocalyticsDirectory(Landroid/content/Context;)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/localytics/android/MarketingHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v2}, Lcom/localytics/android/LocalyticsDao;->isUsingNewCreativeLocation()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 168
    invoke-virtual {p1}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    :goto_18
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    const-string/jumbo v2, ".localytics"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 180
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_38

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_46

    :cond_38
    const/4 v2, 0x1

    :goto_39
    return v2

    .line 172
    .end local v1    # "dir":Ljava/io/File;
    :cond_3a
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18

    .line 180
    .restart local v1    # "dir":Ljava/io/File;
    :cond_46
    const/4 v2, 0x0

    goto :goto_39
.end method

.method static synthetic access$002(Lcom/localytics/android/MarketingHandler;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/localytics/android/MarketingHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/localytics/android/MarketingHandler;->mHasRunSessionStartRunnable:Z

    return p1
.end method


# virtual methods
.method protected _deleteUploadedData(I)V
    .registers 2
    .param p1, "maxRowToDelete"    # I

    .prologue
    .line 438
    return-void
.end method

.method protected _getDataToUpload()Ljava/util/TreeMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 417
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 418
    .local v0, "tree":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    return-object v0
.end method

.method protected _getMaxRowToUpload()I
    .registers 2

    .prologue
    .line 411
    const/4 v0, 0x1

    return v0
.end method

.method protected _getUploadThread(Ljava/util/TreeMap;Ljava/lang/String;)Lcom/localytics/android/BaseUploadThread;
    .registers 9
    .param p2, "customerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/localytics/android/BaseUploadThread;"
        }
    .end annotation

    .prologue
    .line 425
    .local p1, "data":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_13

    .line 427
    new-instance v0, Lcom/localytics/android/MarketingDownloader;

    sget-object v1, Lcom/localytics/android/BaseUploadThread$UploadType;->MARKETING:Lcom/localytics/android/BaseUploadThread$UploadType;

    iget-object v5, p0, Lcom/localytics/android/MarketingHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/localytics/android/MarketingDownloader;-><init>(Lcom/localytics/android/BaseUploadThread$UploadType;Lcom/localytics/android/BaseHandler;Ljava/util/TreeMap;Ljava/lang/String;Lcom/localytics/android/LocalyticsDao;)V

    .line 431
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method protected _init()V
    .registers 4

    .prologue
    .line 185
    new-instance v0, Lcom/localytics/android/MarketingProvider;

    iget-object v1, p0, Lcom/localytics/android/MarketingHandler;->siloName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/localytics/android/MarketingHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-direct {v0, v1, v2}, Lcom/localytics/android/MarketingProvider;-><init>(Ljava/lang/String;Lcom/localytics/android/LocalyticsDao;)V

    iput-object v0, p0, Lcom/localytics/android/MarketingHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    .line 186
    invoke-virtual {p0}, Lcom/localytics/android/MarketingHandler;->_setProviderForManagers()V

    .line 187
    return-void
.end method

.method protected _onUploadCompleted(ZLjava/lang/String;)V
    .registers 10
    .param p1, "successful"    # Z
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 443
    iget-object v4, p0, Lcom/localytics/android/MarketingHandler;->mInAppManager:Lcom/localytics/android/InAppManager;

    invoke-virtual {v4}, Lcom/localytics/android/InAppManager;->_manifestProcessingAllowed()Z

    move-result v4

    if-eqz v4, :cond_66

    .line 445
    iput-object v5, p0, Lcom/localytics/android/MarketingHandler;->mManifestToProcess:Lcom/localytics/android/InAppManager$ManifestHolder;

    .line 448
    if-eqz p1, :cond_34

    .line 450
    :try_start_d
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4f

    .line 452
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    .line 453
    .local v3, "responseBodyHash":I
    iget v4, p0, Lcom/localytics/android/MarketingHandler;->lastMarketingMessagesHash:I

    if-eq v3, v4, :cond_34

    .line 456
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/localytics/android/JsonHelper;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    .line 457
    .local v2, "marketingMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v4, "config"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 458
    .local v0, "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v4, p0, Lcom/localytics/android/MarketingHandler;->mInAppManager:Lcom/localytics/android/InAppManager;

    invoke-virtual {v4, v2, v0}, Lcom/localytics/android/InAppManager;->_processMarketingObject(Ljava/util/Map;Ljava/util/Map;)V

    .line 460
    iput v3, p0, Lcom/localytics/android/MarketingHandler;->lastMarketingMessagesHash:I
    :try_end_34
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_34} :catch_5e

    .line 477
    .end local v0    # "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "marketingMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "responseBodyHash":I
    :cond_34
    :goto_34
    iget-object v4, p0, Lcom/localytics/android/MarketingHandler;->mInAppManager:Lcom/localytics/android/InAppManager;

    invoke-virtual {v4}, Lcom/localytics/android/InAppManager;->_handleTestCampaigns()Z

    move-result v4

    if-nez v4, :cond_4e

    iget-boolean v4, p0, Lcom/localytics/android/MarketingHandler;->mHasRunSessionStartRunnable:Z

    if-nez v4, :cond_4e

    iget-object v4, p0, Lcom/localytics/android/MarketingHandler;->mSessionStartRunnable:Ljava/lang/Runnable;

    if-eqz v4, :cond_4e

    .line 479
    iget-object v4, p0, Lcom/localytics/android/MarketingHandler;->mSessionStartRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/localytics/android/MarketingHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 480
    iget-object v4, p0, Lcom/localytics/android/MarketingHandler;->mSessionStartRunnable:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 487
    :cond_4e
    :goto_4e
    return-void

    .line 466
    :cond_4f
    :try_start_4f
    iget-object v4, p0, Lcom/localytics/android/MarketingHandler;->mInAppManager:Lcom/localytics/android/InAppManager;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/localytics/android/InAppManager;->_processMarketingObject(Ljava/util/Map;Ljava/util/Map;)V

    .line 468
    const/4 v4, -0x1

    iput v4, p0, Lcom/localytics/android/MarketingHandler;->lastMarketingMessagesHash:I
    :try_end_5d
    .catch Lorg/json/JSONException; {:try_start_4f .. :try_end_5d} :catch_5e

    goto :goto_34

    .line 472
    :catch_5e
    move-exception v1

    .line 474
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v4, "JSONException"

    invoke-static {v4, v1}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_34

    .line 485
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_66
    new-instance v4, Lcom/localytics/android/InAppManager$ManifestHolder;

    invoke-direct {v4, p1, p2}, Lcom/localytics/android/InAppManager$ManifestHolder;-><init>(ZLjava/lang/String;)V

    iput-object v4, p0, Lcom/localytics/android/MarketingHandler;->mManifestToProcess:Lcom/localytics/android/InAppManager$ManifestHolder;

    goto :goto_4e
.end method

.method protected _processPendingManifest()V
    .registers 3

    .prologue
    .line 397
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mManifestToProcess:Lcom/localytics/android/InAppManager$ManifestHolder;

    if-eqz v0, :cond_f

    .line 399
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mManifestToProcess:Lcom/localytics/android/InAppManager$ManifestHolder;

    iget-boolean v0, v0, Lcom/localytics/android/InAppManager$ManifestHolder;->successful:Z

    iget-object v1, p0, Lcom/localytics/android/MarketingHandler;->mManifestToProcess:Lcom/localytics/android/InAppManager$ManifestHolder;

    iget-object v1, v1, Lcom/localytics/android/InAppManager$ManifestHolder;->manifest:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/localytics/android/MarketingHandler;->_onUploadCompleted(ZLjava/lang/String;)V

    .line 401
    :cond_f
    return-void
.end method

.method protected _setProviderForManagers()V
    .registers 3

    .prologue
    .line 191
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mInAppManager:Lcom/localytics/android/InAppManager;

    iget-object v1, p0, Lcom/localytics/android/MarketingHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    invoke-virtual {v0, v1}, Lcom/localytics/android/InAppManager;->setProvider(Lcom/localytics/android/BaseProvider;)V

    .line 192
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mInboxManager:Lcom/localytics/android/InboxManager;

    iget-object v1, p0, Lcom/localytics/android/MarketingHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    invoke-virtual {v0, v1}, Lcom/localytics/android/InboxManager;->setProvider(Lcom/localytics/android/BaseProvider;)V

    .line 193
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mPushManager:Lcom/localytics/android/PushManager;

    iget-object v1, p0, Lcom/localytics/android/MarketingHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    invoke-virtual {v0, v1}, Lcom/localytics/android/PushManager;->setProvider(Lcom/localytics/android/BaseProvider;)V

    .line 194
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mPlacesManager:Lcom/localytics/android/PlacesManager;

    iget-object v1, p0, Lcom/localytics/android/MarketingHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    invoke-virtual {v0, v1}, Lcom/localytics/android/PlacesManager;->setProvider(Lcom/localytics/android/BaseProvider;)V

    .line 195
    return-void
.end method

.method addListener(Lcom/localytics/android/MessagingListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/localytics/android/MessagingListener;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mListeners:Lcom/localytics/android/ListenersSet;

    invoke-virtual {v0, p1}, Lcom/localytics/android/ListenersSet;->add(Ljava/lang/Object;)V

    .line 147
    return-void
.end method

.method canRefreshInbox()Z
    .registers 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mInboxManager:Lcom/localytics/android/InboxManager;

    invoke-virtual {v0}, Lcom/localytics/android/InboxManager;->canRefresh()Z

    move-result v0

    return v0
.end method

.method dismissCurrentInAppMessage()V
    .registers 3

    .prologue
    .line 209
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_b

    .line 211
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mInAppManager:Lcom/localytics/android/InAppManager;

    invoke-virtual {v0}, Lcom/localytics/android/InAppManager;->dismissCurrentInAppMessage()V

    .line 213
    :cond_b
    return-void
.end method

.method displayInAppMessage(Ljava/lang/String;Ljava/util/Map;)V
    .registers 9
    .param p1, "eventName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v5, 0xc9

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 240
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_22

    .line 242
    const-string/jumbo v0, "open"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 244
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const/4 v1, 0x0

    aput-object v1, v0, v3

    invoke-virtual {p0, v5, v0}, Lcom/localytics/android/MarketingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingHandler;->queueMessage(Landroid/os/Message;)Z

    .line 251
    :cond_22
    :goto_22
    return-void

    .line 248
    :cond_23
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object p2, v0, v3

    invoke-virtual {p0, v5, v0}, Lcom/localytics/android/MarketingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingHandler;->queueMessage(Landroid/os/Message;)Z

    goto :goto_22
.end method

.method downloadInboxThumbnails(Ljava/util/List;)V
    .registers 3
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
    .line 387
    .local p1, "campaigns":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/InboxCampaign;>;"
    const/16 v0, 0xd1

    invoke-virtual {p0, v0, p1}, Lcom/localytics/android/MarketingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingHandler;->queueMessage(Landroid/os/Message;)Z

    .line 388
    return-void
.end method

.method getInAppDismissButtonLocation()Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;
    .registers 3

    .prologue
    .line 306
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_b

    .line 308
    invoke-static {}, Lcom/localytics/android/InAppDialogFragment;->getInAppDismissButtonLocation()Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;

    move-result-object v0

    .line 310
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method getInboxCampaigns()Ljava/util/List;
    .registers 3
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
    .line 338
    new-instance v0, Lcom/localytics/android/MarketingHandler$2;

    invoke-direct {v0, p0}, Lcom/localytics/android/MarketingHandler$2;-><init>(Lcom/localytics/android/MarketingHandler;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/localytics/android/MarketingHandler;->getType(Ljava/util/concurrent/Callable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method getInboxCampaignsAsync(Lcom/localytics/android/InboxRefreshListener;)V
    .registers 3
    .param p1, "callback"    # Lcom/localytics/android/InboxRefreshListener;

    .prologue
    .line 362
    const/16 v0, 0xd3

    invoke-virtual {p0, v0, p1}, Lcom/localytics/android/MarketingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingHandler;->queueMessage(Landroid/os/Message;)Z

    .line 363
    return-void
.end method

.method getInboxCampaignsUnreadCount()I
    .registers 2

    .prologue
    .line 350
    new-instance v0, Lcom/localytics/android/MarketingHandler$3;

    invoke-direct {v0, p0}, Lcom/localytics/android/MarketingHandler$3;-><init>(Lcom/localytics/android/MarketingHandler;)V

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingHandler;->getInt(Ljava/util/concurrent/Callable;)I

    move-result v0

    return v0
.end method

.method protected handleMessageExtended(Landroid/os/Message;)V
    .registers 28
    .param p1, "msg"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 492
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_222

    .line 720
    invoke-super/range {p0 .. p1}, Lcom/localytics/android/BaseHandler;->handleMessageExtended(Landroid/os/Message;)V

    .line 724
    :goto_c
    return-void

    .line 496
    :pswitch_d
    const-string/jumbo v22, "In-app handler received MESSAGE_INAPP_TRIGGER"

    invoke-static/range {v22 .. v22}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 498
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [Ljava/lang/Object;

    move-object/from16 v18, v22

    check-cast v18, [Ljava/lang/Object;

    .line 500
    .local v18, "params":[Ljava/lang/Object;
    const/16 v22, 0x0

    aget-object v14, v18, v22

    check-cast v14, Ljava/lang/String;

    .line 502
    .local v14, "event":Ljava/lang/String;
    const/16 v22, 0x1

    aget-object v4, v18, v22

    check-cast v4, Ljava/util/Map;

    .line 504
    .local v4, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v22, Lcom/localytics/android/MarketingHandler$4;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14, v4}, Lcom/localytics/android/MarketingHandler$4;-><init>(Lcom/localytics/android/MarketingHandler;Ljava/lang/String;Ljava/util/Map;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/localytics/android/MarketingHandler;->_runBatchTransactionOnProvider(Ljava/lang/Runnable;)V

    goto :goto_c

    .line 516
    .end local v4    # "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14    # "event":Ljava/lang/String;
    .end local v18    # "params":[Ljava/lang/Object;
    :pswitch_3c
    const-string/jumbo v22, "In-app handler received MESSAGE_SHOW_INAPP_TEST"

    invoke-static/range {v22 .. v22}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 522
    const/16 v23, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/util/concurrent/Future;

    invoke-interface/range {v22 .. v22}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/localytics/android/MarketingHandler;->_upload(ZLjava/lang/String;)V

    .line 523
    new-instance v22, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v23, Lcom/localytics/android/MarketingHandler$5;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/localytics/android/MarketingHandler$5;-><init>(Lcom/localytics/android/MarketingHandler;)V

    const-wide/16 v24, 0x3e8

    invoke-virtual/range {v22 .. v25}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_c

    .line 542
    :pswitch_73
    const-string/jumbo v22, "In-app handler received MESSAGE_HANDLE_PUSH_RECEIVED"

    invoke-static/range {v22 .. v22}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 544
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/Bundle;

    .line 546
    .local v11, "data":Landroid/os/Bundle;
    new-instance v22, Lcom/localytics/android/MarketingHandler$6;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcom/localytics/android/MarketingHandler$6;-><init>(Lcom/localytics/android/MarketingHandler;Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/localytics/android/MarketingHandler;->_runBatchTransactionOnProvider(Ljava/lang/Runnable;)V

    goto/16 :goto_c

    .line 558
    .end local v11    # "data":Landroid/os/Bundle;
    :pswitch_91
    const-string/jumbo v22, "Marketing handler received MESSAGE_SET_IN_APP_MESSAGE_AS_NOT_DISPLAYED"

    invoke-static/range {v22 .. v22}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 560
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 562
    .local v8, "campaignId":I
    new-instance v22, Lcom/localytics/android/MarketingHandler$7;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8}, Lcom/localytics/android/MarketingHandler$7;-><init>(Lcom/localytics/android/MarketingHandler;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/localytics/android/MarketingHandler;->_runBatchTransactionOnProvider(Ljava/lang/Runnable;)V

    goto/16 :goto_c

    .line 574
    .end local v8    # "campaignId":I
    :pswitch_b5
    const-string/jumbo v22, "Marketing handler received MESSAGE_TAG_PUSH_RECEIVED_EVENT"

    invoke-static/range {v22 .. v22}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 576
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/Bundle;

    .line 578
    .restart local v11    # "data":Landroid/os/Bundle;
    new-instance v22, Lcom/localytics/android/MarketingHandler$8;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcom/localytics/android/MarketingHandler$8;-><init>(Lcom/localytics/android/MarketingHandler;Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/localytics/android/MarketingHandler;->_runBatchTransactionOnProvider(Ljava/lang/Runnable;)V

    goto/16 :goto_c

    .line 590
    .end local v11    # "data":Landroid/os/Bundle;
    :pswitch_d3
    const-string/jumbo v22, "Marketing handler received MESSAGE_WILL_DOWNLOAD_MANIFEST"

    invoke-static/range {v22 .. v22}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 592
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/lang/Long;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 594
    .local v12, "currentTimeInMillis":J
    new-instance v22, Lcom/localytics/android/MarketingHandler$9;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12, v13}, Lcom/localytics/android/MarketingHandler$9;-><init>(Lcom/localytics/android/MarketingHandler;J)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/localytics/android/MarketingHandler;->_runBatchTransactionOnProvider(Ljava/lang/Runnable;)V

    goto/16 :goto_c

    .line 606
    .end local v12    # "currentTimeInMillis":J
    :pswitch_f7
    const-string/jumbo v22, "Marketing handler received MESSAGE_MANIFEST_DOWNLOADED"

    invoke-static/range {v22 .. v22}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 608
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [Ljava/lang/Object;

    move-object/from16 v17, v22

    check-cast v17, [Ljava/lang/Object;

    .line 609
    .local v17, "objects":[Ljava/lang/Object;
    const/16 v22, 0x0

    aget-object v16, v17, v22

    check-cast v16, Ljava/util/Map;

    .line 610
    .local v16, "marketingMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/16 v22, 0x1

    aget-object v10, v17, v22

    check-cast v10, Ljava/util/Map;

    .line 611
    .local v10, "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/16 v22, 0x2

    aget-object v21, v17, v22

    check-cast v21, Ljava/lang/Boolean;

    .line 613
    .local v21, "successful":Ljava/lang/Boolean;
    new-instance v22, Lcom/localytics/android/MarketingHandler$10;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v2, v3, v10}, Lcom/localytics/android/MarketingHandler$10;-><init>(Lcom/localytics/android/MarketingHandler;Ljava/lang/Boolean;Ljava/util/Map;Ljava/util/Map;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/localytics/android/MarketingHandler;->_runBatchTransactionOnProvider(Ljava/lang/Runnable;)V

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/localytics/android/MarketingHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    move-object/from16 v22, v0

    new-instance v23, Lcom/localytics/android/MarketingHandler$11;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v2, v3, v10}, Lcom/localytics/android/MarketingHandler$11;-><init>(Lcom/localytics/android/MarketingHandler;Ljava/lang/Boolean;Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual/range {v22 .. v23}, Lcom/localytics/android/BaseProvider;->runBatchTransaction(Ljava/lang/Runnable;)V

    goto/16 :goto_c

    .line 635
    .end local v10    # "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v16    # "marketingMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v17    # "objects":[Ljava/lang/Object;
    .end local v21    # "successful":Ljava/lang/Boolean;
    :pswitch_147
    const-string/jumbo v22, "Marketing handler received MESSAGE_SET_INBOX_CAMPAIGN_READ"

    invoke-static/range {v22 .. v22}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 637
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [Ljava/lang/Object;

    move-object/from16 v18, v22

    check-cast v18, [Ljava/lang/Object;

    .line 638
    .restart local v18    # "params":[Ljava/lang/Object;
    const/16 v22, 0x0

    aget-object v22, v18, v22

    check-cast v22, Ljava/lang/Long;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 639
    .local v8, "campaignId":J
    const/16 v22, 0x1

    aget-object v22, v18, v22

    check-cast v22, Ljava/lang/Boolean;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    .line 641
    .local v19, "read":Z
    new-instance v22, Lcom/localytics/android/MarketingHandler$12;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move/from16 v2, v19

    invoke-direct {v0, v1, v8, v9, v2}, Lcom/localytics/android/MarketingHandler$12;-><init>(Lcom/localytics/android/MarketingHandler;JZ)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/localytics/android/MarketingHandler;->_runBatchTransactionOnProvider(Ljava/lang/Runnable;)V

    goto/16 :goto_c

    .line 653
    .end local v8    # "campaignId":J
    .end local v18    # "params":[Ljava/lang/Object;
    .end local v19    # "read":Z
    :pswitch_181
    const-string/jumbo v22, "Marketing handler received MESSAGE_DOWNLOAD_INBOX_THUMBNAILS"

    invoke-static/range {v22 .. v22}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 655
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    .line 656
    .local v7, "campaigns":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/InboxCampaign;>;"
    new-instance v22, Lcom/localytics/android/MarketingHandler$13;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lcom/localytics/android/MarketingHandler$13;-><init>(Lcom/localytics/android/MarketingHandler;Ljava/util/List;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/localytics/android/MarketingHandler;->_runBatchTransactionOnProvider(Ljava/lang/Runnable;)V

    goto/16 :goto_c

    .line 668
    .end local v7    # "campaigns":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/InboxCampaign;>;"
    :pswitch_19f
    const-string/jumbo v22, "Marketing handler received MESSAGE_PRIORITY_DOWNLOAD_CREATIVE"

    invoke-static/range {v22 .. v22}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 670
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [Ljava/lang/Object;

    move-object/from16 v18, v22

    check-cast v18, [Ljava/lang/Object;

    .line 671
    .restart local v18    # "params":[Ljava/lang/Object;
    const/16 v22, 0x0

    aget-object v6, v18, v22

    check-cast v6, Lcom/localytics/android/InboxCampaign;

    .line 672
    .local v6, "campaign":Lcom/localytics/android/InboxCampaign;
    const/16 v22, 0x1

    aget-object v5, v18, v22

    check-cast v5, Lcom/localytics/android/CreativeManager$FirstDownloadedCallback;

    .line 674
    .local v5, "callback":Lcom/localytics/android/CreativeManager$FirstDownloadedCallback;
    new-instance v22, Lcom/localytics/android/MarketingHandler$14;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6, v5}, Lcom/localytics/android/MarketingHandler$14;-><init>(Lcom/localytics/android/MarketingHandler;Lcom/localytics/android/InboxCampaign;Lcom/localytics/android/CreativeManager$FirstDownloadedCallback;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/localytics/android/MarketingHandler;->_runBatchTransactionOnProvider(Ljava/lang/Runnable;)V

    goto/16 :goto_c

    .line 686
    .end local v5    # "callback":Lcom/localytics/android/CreativeManager$FirstDownloadedCallback;
    .end local v6    # "campaign":Lcom/localytics/android/InboxCampaign;
    .end local v18    # "params":[Ljava/lang/Object;
    :pswitch_1cf
    const-string/jumbo v22, "Marketing handler received MESSAGE_GET_INBOX_CAMPAIGNS_ASYNC"

    invoke-static/range {v22 .. v22}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 688
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Lcom/localytics/android/InboxRefreshListener;

    .line 690
    .local v15, "listener":Lcom/localytics/android/InboxRefreshListener;
    new-instance v22, Lcom/localytics/android/MarketingHandler$15;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15}, Lcom/localytics/android/MarketingHandler$15;-><init>(Lcom/localytics/android/MarketingHandler;Lcom/localytics/android/InboxRefreshListener;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/localytics/android/MarketingHandler;->_runBatchTransactionOnProvider(Ljava/lang/Runnable;)V

    goto/16 :goto_c

    .line 702
    .end local v15    # "listener":Lcom/localytics/android/InboxRefreshListener;
    :pswitch_1ed
    const-string/jumbo v22, "Marketing handler received MESSAGE_TRIGGER_REGIONS"

    invoke-static/range {v22 .. v22}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 704
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [Ljava/lang/Object;

    move-object/from16 v18, v22

    check-cast v18, [Ljava/lang/Object;

    .line 705
    .restart local v18    # "params":[Ljava/lang/Object;
    const/16 v22, 0x0

    aget-object v20, v18, v22

    check-cast v20, Ljava/util/List;

    .line 706
    .local v20, "regions":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/Region;>;"
    const/16 v22, 0x1

    aget-object v14, v18, v22

    check-cast v14, Lcom/localytics/android/Region$Event;

    .line 708
    .local v14, "event":Lcom/localytics/android/Region$Event;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/localytics/android/MarketingHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    move-object/from16 v22, v0

    new-instance v23, Lcom/localytics/android/MarketingHandler$16;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v14}, Lcom/localytics/android/MarketingHandler$16;-><init>(Lcom/localytics/android/MarketingHandler;Ljava/util/List;Lcom/localytics/android/Region$Event;)V

    invoke-virtual/range {v22 .. v23}, Lcom/localytics/android/BaseProvider;->runBatchTransaction(Ljava/lang/Runnable;)V

    goto/16 :goto_c

    .line 492
    nop

    :pswitch_data_222
    .packed-switch 0xc9
        :pswitch_d
        :pswitch_3c
        :pswitch_73
        :pswitch_91
        :pswitch_b5
        :pswitch_d3
        :pswitch_f7
        :pswitch_147
        :pswitch_181
        :pswitch_19f
        :pswitch_1cf
        :pswitch_1ed
    .end packed-switch
.end method

.method handleNotificationReceived(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 255
    const/16 v0, 0xcb

    invoke-virtual {p0, v0, p1}, Lcom/localytics/android/MarketingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingHandler;->queueMessage(Landroid/os/Message;)Z

    .line 256
    return-void
.end method

.method handlePushNotificationOpened(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mPushManager:Lcom/localytics/android/PushManager;

    invoke-virtual {v0, p1}, Lcom/localytics/android/PushManager;->handlePushNotificationOpened(Landroid/content/Intent;)V

    .line 218
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mPlacesManager:Lcom/localytics/android/PlacesManager;

    invoke-virtual {v0, p1}, Lcom/localytics/android/PlacesManager;->handlePushNotificationOpened(Landroid/content/Intent;)V

    .line 219
    return-void
.end method

.method handleTestModeIntent(Landroid/content/Intent;)V
    .registers 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 267
    if-eqz p1, :cond_2e

    .line 269
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 271
    .local v4, "uri":Landroid/net/Uri;
    if-eqz v4, :cond_2e

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2e

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "amp"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/localytics/android/MarketingHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v7}, Lcom/localytics/android/LocalyticsDao;->getAppKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2f

    .line 302
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_2e
    :goto_2e
    return-void

    .line 276
    .restart local v4    # "uri":Landroid/net/Uri;
    :cond_2f
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 277
    .local v3, "path":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 278
    .local v2, "host":Ljava/lang/String;
    const-string/jumbo v5, "[/]"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "components":[Ljava/lang/String;
    array-length v5, v0

    if-eqz v5, :cond_2e

    .line 285
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2e

    const-string/jumbo v5, "testMode"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 287
    const/4 v5, 0x0

    aget-object v5, v0, v5

    const-string/jumbo v6, "enabled"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_70

    .line 289
    iget-object v5, p0, Lcom/localytics/android/MarketingHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Lcom/localytics/android/LocalyticsDao;->setTestModeEnabled(Z)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_67} :catch_68

    goto :goto_2e

    .line 298
    .end local v0    # "components":[Ljava/lang/String;
    .end local v2    # "host":Ljava/lang/String;
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "uri":Landroid/net/Uri;
    :catch_68
    move-exception v1

    .line 300
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "Exception while handling test mode"

    invoke-static {v5, v1}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2e

    .line 291
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "components":[Ljava/lang/String;
    .restart local v2    # "host":Ljava/lang/String;
    .restart local v3    # "path":Ljava/lang/String;
    .restart local v4    # "uri":Landroid/net/Uri;
    :cond_70
    const/4 v5, 0x0

    :try_start_71
    aget-object v5, v0, v5

    const-string/jumbo v6, "launch"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2e

    const/4 v5, 0x1

    aget-object v5, v0, v5

    const-string/jumbo v6, "push"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 293
    iget-object v5, p0, Lcom/localytics/android/MarketingHandler;->mPushManager:Lcom/localytics/android/PushManager;

    invoke-virtual {v5, v0}, Lcom/localytics/android/PushManager;->handlePushTestMode([Ljava/lang/String;)V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_8d} :catch_68

    goto :goto_2e
.end method

.method public localyticsDidDownloadManifest(Ljava/util/Map;Ljava/util/Map;Z)V
    .registers 8
    .param p3, "successful"    # Z
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
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 793
    .local p1, "marketingMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/16 v0, 0xcf

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/localytics/android/MarketingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingHandler;->queueMessage(Landroid/os/Message;)Z

    .line 794
    return-void
.end method

.method public localyticsDidTagEvent(Ljava/lang/String;Ljava/util/Map;J)V
    .registers 5
    .param p1, "eventName"    # Ljava/lang/String;
    .param p3, "clv"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 781
    .local p2, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2}, Lcom/localytics/android/MarketingHandler;->displayInAppMessage(Ljava/lang/String;Ljava/util/Map;)V

    .line 782
    return-void
.end method

.method public localyticsDidTriggerRegions(Ljava/util/List;Lcom/localytics/android/Region$Event;)V
    .registers 6
    .param p2, "event"    # Lcom/localytics/android/Region$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/Region;",
            ">;",
            "Lcom/localytics/android/Region$Event;",
            ")V"
        }
    .end annotation

    .prologue
    .line 804
    .local p1, "regions":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/Region;>;"
    const/16 v0, 0xd4

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/localytics/android/MarketingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingHandler;->queueMessage(Landroid/os/Message;)Z

    .line 805
    return-void
.end method

.method public localyticsDidUpdateLocation(Landroid/location/Location;)V
    .registers 2
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 799
    return-void
.end method

.method public localyticsDidUpdateMonitoredGeofences(Ljava/util/List;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/CircularRegion;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/CircularRegion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 810
    .local p1, "added":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/CircularRegion;>;"
    .local p2, "removed":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/CircularRegion;>;"
    return-void
.end method

.method public localyticsSessionDidOpen(ZZZ)V
    .registers 8
    .param p1, "isFirstEverSession"    # Z
    .param p2, "isFirstSessionSinceUpgrade"    # Z
    .param p3, "didResumeOldSession"    # Z

    .prologue
    .line 735
    if-nez p3, :cond_5

    .line 737
    invoke-virtual {p0}, Lcom/localytics/android/MarketingHandler;->upload()V

    .line 740
    :cond_5
    invoke-static {}, Lcom/localytics/android/Constants;->isTestModeEnabled()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 742
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/localytics/android/MarketingHandler;->mHasRunSessionStartRunnable:Z

    .line 743
    new-instance v0, Lcom/localytics/android/MarketingHandler$17;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/localytics/android/MarketingHandler$17;-><init>(Lcom/localytics/android/MarketingHandler;ZZZ)V

    iput-object v0, p0, Lcom/localytics/android/MarketingHandler;->mSessionStartRunnable:Ljava/lang/Runnable;

    .line 768
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mSessionStartRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v0, v2, v3}, Lcom/localytics/android/MarketingHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 770
    :cond_1c
    return-void
.end method

.method public localyticsSessionWillClose()V
    .registers 1

    .prologue
    .line 776
    return-void
.end method

.method public localyticsSessionWillOpen(ZZZ)V
    .registers 4
    .param p1, "isFirstEverSession"    # Z
    .param p2, "isFirstSessionSinceUpgrade"    # Z
    .param p3, "willResumeOldSession"    # Z

    .prologue
    .line 730
    return-void
.end method

.method public localyticsWillDownloadManifest()V
    .registers 5

    .prologue
    .line 787
    const/16 v0, 0xce

    iget-object v1, p0, Lcom/localytics/android/MarketingHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1}, Lcom/localytics/android/LocalyticsDao;->getCurrentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/localytics/android/MarketingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingHandler;->queueMessage(Landroid/os/Message;)Z

    .line 788
    return-void
.end method

.method priorityDownloadCreative(Lcom/localytics/android/InboxCampaign;Lcom/localytics/android/CreativeManager$FirstDownloadedCallback;)V
    .registers 6
    .param p1, "campaign"    # Lcom/localytics/android/InboxCampaign;
    .param p2, "firstDownloadedCallback"    # Lcom/localytics/android/CreativeManager$FirstDownloadedCallback;

    .prologue
    .line 392
    const/16 v0, 0xd2

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/localytics/android/MarketingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingHandler;->queueMessage(Landroid/os/Message;)Z

    .line 393
    return-void
.end method

.method setDeveloperListener(Lcom/localytics/android/MessagingListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/localytics/android/MessagingListener;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mListeners:Lcom/localytics/android/ListenersSet;

    invoke-virtual {v0, p1}, Lcom/localytics/android/ListenersSet;->setDevListener(Ljava/lang/Object;)V

    .line 142
    return-void
.end method

.method setDismissButtonImage(Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 331
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_9

    .line 332
    invoke-static {p1}, Lcom/localytics/android/InAppDialogFragment;->setDismissButtonImage(Landroid/graphics/Bitmap;)V

    .line 334
    :cond_9
    return-void
.end method

.method setFragmentManager(Landroid/app/FragmentManager;)V
    .registers 3
    .param p1, "fragmentManager"    # Landroid/app/FragmentManager;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mInAppManager:Lcom/localytics/android/InAppManager;

    invoke-virtual {v0, p1}, Lcom/localytics/android/InAppManager;->setFragmentManager(Landroid/app/FragmentManager;)V

    .line 205
    return-void
.end method

.method setInAppAsDisplayed(I)Z
    .registers 3
    .param p1, "campaignId"    # I

    .prologue
    .line 223
    new-instance v0, Lcom/localytics/android/MarketingHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/localytics/android/MarketingHandler$1;-><init>(Lcom/localytics/android/MarketingHandler;I)V

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingHandler;->getBool(Ljava/util/concurrent/Callable;)Z

    move-result v0

    return v0
.end method

.method setInAppDismissButtonLocation(Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;)V
    .registers 4
    .param p1, "buttonLocation"    # Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;

    .prologue
    .line 315
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_9

    .line 317
    invoke-static {p1}, Lcom/localytics/android/InAppDialogFragment;->setInAppDismissButtonLocation(Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;)V

    .line 319
    :cond_9
    return-void
.end method

.method setInAppMessageAsNotDisplayed(I)V
    .registers 4
    .param p1, "campaignId"    # I

    .prologue
    .line 235
    const/16 v0, 0xcc

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/localytics/android/MarketingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingHandler;->queueMessage(Landroid/os/Message;)Z

    .line 236
    return-void
.end method

.method setInboxCampaignRead(JZ)V
    .registers 9
    .param p1, "campaignId"    # J
    .param p3, "read"    # Z

    .prologue
    .line 377
    const/16 v0, 0xd0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/localytics/android/MarketingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingHandler;->queueMessage(Landroid/os/Message;)Z

    .line 378
    return-void
.end method

.method setInboxDetailFragmentDisplaying(Ljava/lang/Object;Z)V
    .registers 4
    .param p1, "fragment"    # Ljava/lang/Object;
    .param p2, "displaying"    # Z

    .prologue
    .line 382
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mInboxManager:Lcom/localytics/android/InboxManager;

    invoke-virtual {v0, p1, p2}, Lcom/localytics/android/InboxManager;->setInboxDetailFragmentDisplaying(Ljava/lang/Object;Z)V

    .line 383
    return-void
.end method

.method setInboxRefreshCallback(Lcom/localytics/android/InboxRefreshListener;)V
    .registers 3
    .param p1, "callback"    # Lcom/localytics/android/InboxRefreshListener;

    .prologue
    .line 372
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mInboxManager:Lcom/localytics/android/InboxManager;

    invoke-virtual {v0, p1}, Lcom/localytics/android/InboxManager;->setInboxRefreshCallback(Lcom/localytics/android/InboxRefreshListener;)V

    .line 373
    return-void
.end method

.method showMarketingTest()V
    .registers 3

    .prologue
    .line 323
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_15

    .line 325
    const/16 v0, 0xca

    iget-object v1, p0, Lcom/localytics/android/MarketingHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1}, Lcom/localytics/android/LocalyticsDao;->getCustomerIdFuture()Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/localytics/android/MarketingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingHandler;->queueMessage(Landroid/os/Message;)Z

    .line 327
    :cond_15
    return-void
.end method

.method tagDismissForInboxDetailFragments()V
    .registers 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mInboxManager:Lcom/localytics/android/InboxManager;

    invoke-virtual {v0}, Lcom/localytics/android/InboxManager;->tagDismissForInboxDetailFragments()V

    .line 406
    return-void
.end method

.method tagPushReceivedEvent(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 260
    const/16 v0, 0xcd

    invoke-virtual {p0, v0, p1}, Lcom/localytics/android/MarketingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingHandler;->queueMessage(Landroid/os/Message;)Z

    .line 261
    return-void
.end method
