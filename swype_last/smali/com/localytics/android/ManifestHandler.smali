.class Lcom/localytics/android/ManifestHandler;
.super Lcom/localytics/android/BaseHandler;
.source "ManifestHandler.java"

# interfaces
.implements Lcom/localytics/android/AnalyticsListener;
.implements Lcom/localytics/android/LocationListener;


# static fields
.field private static final MESSAGE_LOCATION_UPDATE:I = 0x1f5


# instance fields
.field private mIsRefreshing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mListeners:Lcom/localytics/android/ListenersSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/localytics/android/ListenersSet",
            "<",
            "Lcom/localytics/android/ManifestListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/localytics/android/LocalyticsDao;Landroid/os/Looper;)V
    .registers 5
    .param p1, "localyticsDao"    # Lcom/localytics/android/LocalyticsDao;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/localytics/android/BaseHandler;-><init>(Lcom/localytics/android/LocalyticsDao;Landroid/os/Looper;)V

    .line 36
    const-string/jumbo v0, "Manifest"

    iput-object v0, p0, Lcom/localytics/android/ManifestHandler;->siloName:Ljava/lang/String;

    .line 37
    new-instance v0, Lcom/localytics/android/ListenersSet;

    const-class v1, Lcom/localytics/android/ManifestListener;

    invoke-direct {v0, v1}, Lcom/localytics/android/ListenersSet;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/localytics/android/ManifestHandler;->mListeners:Lcom/localytics/android/ListenersSet;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/localytics/android/ManifestHandler;->doesRetry:Z

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/localytics/android/ManifestHandler;->mIsRefreshing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/localytics/android/ManifestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/ManifestHandler;->queueMessage(Landroid/os/Message;)Z

    .line 41
    return-void
.end method


# virtual methods
.method protected _deleteUploadedData(I)V
    .registers 2
    .param p1, "maxRowToDelete"    # I

    .prologue
    .line 149
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
    .line 193
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 194
    .local v0, "tree":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    return-object v0
.end method

.method protected _getMaxRowToUpload()I
    .registers 2

    .prologue
    .line 187
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
    .line 201
    .local p1, "data":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    new-instance v0, Lcom/localytics/android/MarketingDownloader;

    sget-object v1, Lcom/localytics/android/BaseUploadThread$UploadType;->MANIFEST:Lcom/localytics/android/BaseUploadThread$UploadType;

    iget-object v5, p0, Lcom/localytics/android/ManifestHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/localytics/android/MarketingDownloader;-><init>(Lcom/localytics/android/BaseUploadThread$UploadType;Lcom/localytics/android/BaseHandler;Ljava/util/TreeMap;Ljava/lang/String;Lcom/localytics/android/LocalyticsDao;)V

    return-object v0
.end method

.method protected _init()V
    .registers 4

    .prologue
    .line 61
    new-instance v0, Lcom/localytics/android/ManifestProvider;

    iget-object v1, p0, Lcom/localytics/android/ManifestHandler;->siloName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/localytics/android/ManifestHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-direct {v0, v1, v2}, Lcom/localytics/android/ManifestProvider;-><init>(Ljava/lang/String;Lcom/localytics/android/LocalyticsDao;)V

    iput-object v0, p0, Lcom/localytics/android/ManifestHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    .line 62
    invoke-virtual {p0}, Lcom/localytics/android/ManifestHandler;->_initializeInfo()V

    .line 63
    return-void
.end method

.method protected _initializeInfo()V
    .registers 9

    .prologue
    .line 67
    const/4 v6, 0x0

    .line 70
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_1
    iget-object v0, p0, Lcom/localytics/android/ManifestHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v1, "info"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 71
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_32

    .line 74
    const-string/jumbo v0, "Performing first-time initialization for MarketingProvider info table"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 76
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 77
    .local v7, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "last_campaign_download"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 78
    iget-object v0, p0, Lcom/localytics/android/ManifestHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v1, "info"

    invoke-virtual {v0, v1, v7}, Lcom/localytics/android/BaseProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_3d

    .line 83
    .end local v7    # "values":Landroid/content/ContentValues;
    :cond_32
    if-eqz v6, :cond_37

    .line 85
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 89
    :cond_37
    iget-object v0, p0, Lcom/localytics/android/ManifestHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    invoke-virtual {v0}, Lcom/localytics/android/BaseProvider;->vacuumIfNecessary()V

    .line 90
    return-void

    .line 83
    :catchall_3d
    move-exception v0

    if-eqz v6, :cond_43

    .line 85
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_43
    throw v0
.end method

.method protected _locationUpdated()V
    .registers 10

    .prologue
    .line 99
    const/4 v8, 0x0

    .line 102
    .local v8, "query":Landroid/database/Cursor;
    :try_start_1
    iget-object v0, p0, Lcom/localytics/android/ManifestHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v1, "info"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 103
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 105
    const-string/jumbo v0, "last_campaign_download"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 106
    .local v6, "lastUpdate":J
    iget-object v0, p0, Lcom/localytics/android/ManifestHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v0}, Lcom/localytics/android/LocalyticsDao;->getCurrentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v6

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_30

    .line 108
    invoke-virtual {p0}, Lcom/localytics/android/ManifestHandler;->refreshManifest()V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_36

    .line 114
    .end local v6    # "lastUpdate":J
    :cond_30
    if-eqz v8, :cond_35

    .line 116
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 119
    :cond_35
    return-void

    .line 114
    :catchall_36
    move-exception v0

    if-eqz v8, :cond_3c

    .line 116
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3c
    throw v0
.end method

.method protected _onUploadCompleted(ZLjava/lang/String;)V
    .registers 12
    .param p1, "successful"    # Z
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 156
    :try_start_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4e

    .line 158
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/localytics/android/JsonHelper;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    .line 159
    .local v2, "marketingMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v4, "config"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 160
    .local v0, "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v4, p0, Lcom/localytics/android/ManifestHandler;->mListeners:Lcom/localytics/android/ListenersSet;

    invoke-virtual {v4}, Lcom/localytics/android/ListenersSet;->getProxy()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/localytics/android/ManifestListener;

    invoke-interface {v4, v2, v0, p1}, Lcom/localytics/android/ManifestListener;->localyticsDidDownloadManifest(Ljava/util/Map;Ljava/util/Map;Z)V

    .line 168
    .end local v0    # "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "marketingMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_24
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 169
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "last_campaign_download"

    iget-object v5, p0, Lcom/localytics/android/ManifestHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v5}, Lcom/localytics/android/LocalyticsDao;->getCurrentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 170
    iget-object v4, p0, Lcom/localytics/android/ManifestHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v5, "info"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v3, v6, v7}, Lcom/localytics/android/BaseProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_43
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_43} :catch_5c
    .catchall {:try_start_1 .. :try_end_43} :catchall_69

    .line 178
    iget-object v4, p0, Lcom/localytics/android/ManifestHandler;->mIsRefreshing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 181
    .end local v3    # "values":Landroid/content/ContentValues;
    :goto_48
    iget-object v4, p0, Lcom/localytics/android/ManifestHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    invoke-virtual {v4}, Lcom/localytics/android/BaseProvider;->vacuumIfNecessary()V

    .line 182
    return-void

    .line 164
    :cond_4e
    :try_start_4e
    iget-object v4, p0, Lcom/localytics/android/ManifestHandler;->mListeners:Lcom/localytics/android/ListenersSet;

    invoke-virtual {v4}, Lcom/localytics/android/ListenersSet;->getProxy()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/localytics/android/ManifestListener;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6, p1}, Lcom/localytics/android/ManifestListener;->localyticsDidDownloadManifest(Ljava/util/Map;Ljava/util/Map;Z)V
    :try_end_5b
    .catch Lorg/json/JSONException; {:try_start_4e .. :try_end_5b} :catch_5c
    .catchall {:try_start_4e .. :try_end_5b} :catchall_69

    goto :goto_24

    .line 172
    :catch_5c
    move-exception v1

    .line 174
    .local v1, "e":Lorg/json/JSONException;
    :try_start_5d
    const-string/jumbo v4, "JSONException"

    invoke-static {v4, v1}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_63
    .catchall {:try_start_5d .. :try_end_63} :catchall_69

    .line 178
    iget-object v4, p0, Lcom/localytics/android/ManifestHandler;->mIsRefreshing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_48

    .end local v1    # "e":Lorg/json/JSONException;
    :catchall_69
    move-exception v4

    iget-object v5, p0, Lcom/localytics/android/ManifestHandler;->mIsRefreshing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v4
.end method

.method addListener(Lcom/localytics/android/ManifestListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/localytics/android/ManifestListener;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/localytics/android/ManifestHandler;->mListeners:Lcom/localytics/android/ListenersSet;

    invoke-virtual {v0, p1}, Lcom/localytics/android/ListenersSet;->add(Ljava/lang/Object;)V

    .line 46
    return-void
.end method

.method protected handleMessageExtended(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 124
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1a

    .line 140
    invoke-super {p0, p1}, Lcom/localytics/android/BaseHandler;->handleMessageExtended(Landroid/os/Message;)V

    .line 144
    :goto_8
    return-void

    .line 128
    :pswitch_9
    const-string/jumbo v0, "Marketing handler received MESSAGE_LOCATION_UPDATE"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/localytics/android/ManifestHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    new-instance v1, Lcom/localytics/android/ManifestHandler$1;

    invoke-direct {v1, p0}, Lcom/localytics/android/ManifestHandler$1;-><init>(Lcom/localytics/android/ManifestHandler;)V

    invoke-virtual {v0, v1}, Lcom/localytics/android/BaseProvider;->runBatchTransaction(Ljava/lang/Runnable;)V

    goto :goto_8

    .line 124
    :pswitch_data_1a
    .packed-switch 0x1f5
        :pswitch_9
    .end packed-switch
.end method

.method public localyticsDidTagEvent(Ljava/lang/String;Ljava/util/Map;J)V
    .registers 5
    .param p1, "eventName"    # Ljava/lang/String;
    .param p3, "customerValueIncrease"    # J
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
    .line 227
    .local p2, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public localyticsDidTriggerRegions(Ljava/util/List;Lcom/localytics/android/Region$Event;)V
    .registers 3
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
    .line 238
    .local p1, "regions":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/Region;>;"
    return-void
.end method

.method public localyticsDidUpdateLocation(Landroid/location/Location;)V
    .registers 2
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/localytics/android/ManifestHandler;->locationUpdated()V

    .line 233
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
    .line 243
    .local p1, "added":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/CircularRegion;>;"
    .local p2, "removed":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/CircularRegion;>;"
    return-void
.end method

.method public localyticsSessionDidOpen(ZZZ)V
    .registers 4
    .param p1, "isFirst"    # Z
    .param p2, "isUpgrade"    # Z
    .param p3, "isResume"    # Z

    .prologue
    .line 217
    return-void
.end method

.method public localyticsSessionWillClose()V
    .registers 1

    .prologue
    .line 222
    return-void
.end method

.method public localyticsSessionWillOpen(ZZZ)V
    .registers 5
    .param p1, "isFirst"    # Z
    .param p2, "isUpgrade"    # Z
    .param p3, "isResume"    # Z

    .prologue
    .line 207
    if-nez p3, :cond_16

    .line 209
    iget-object v0, p0, Lcom/localytics/android/ManifestHandler;->mListeners:Lcom/localytics/android/ListenersSet;

    invoke-virtual {v0}, Lcom/localytics/android/ListenersSet;->getProxy()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/ManifestListener;

    invoke-interface {v0}, Lcom/localytics/android/ManifestListener;->localyticsWillDownloadManifest()V

    .line 210
    iget-object v0, p0, Lcom/localytics/android/ManifestHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v0}, Lcom/localytics/android/LocalyticsDao;->getCustomerIdFuture()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/ManifestHandler;->upload(Ljava/util/concurrent/Future;)V

    .line 212
    :cond_16
    return-void
.end method

.method protected locationUpdated()V
    .registers 2

    .prologue
    .line 94
    const/16 v0, 0x1f5

    invoke-virtual {p0, v0}, Lcom/localytics/android/ManifestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/ManifestHandler;->queueMessage(Landroid/os/Message;)Z

    .line 95
    return-void
.end method

.method refreshManifest()V
    .registers 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/localytics/android/ManifestHandler;->mIsRefreshing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 52
    iget-object v0, p0, Lcom/localytics/android/ManifestHandler;->mListeners:Lcom/localytics/android/ListenersSet;

    invoke-virtual {v0}, Lcom/localytics/android/ListenersSet;->getProxy()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/ManifestListener;

    invoke-interface {v0}, Lcom/localytics/android/ManifestListener;->localyticsWillDownloadManifest()V

    .line 53
    invoke-virtual {p0}, Lcom/localytics/android/ManifestHandler;->upload()V

    .line 54
    const-string/jumbo v0, "Manifest upload called"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;)I

    .line 56
    :cond_1d
    return-void
.end method
