.class Lcom/localytics/android/PlacesManager;
.super Lcom/localytics/android/BasePushManager;
.source "PlacesManager.java"


# static fields
.field private static final PLACES_PUSH_OPENED_EVENT:Ljava/lang/String; = "Localytics Places Push Opened"

.field private static final PLACES_PUSH_RECEIVED_EVENT:Ljava/lang/String; = "Localytics Places Push Received"


# direct methods
.method constructor <init>(Lcom/localytics/android/LocalyticsDao;Lcom/localytics/android/MarketingHandler;)V
    .registers 3
    .param p1, "localyticsDao"    # Lcom/localytics/android/LocalyticsDao;
    .param p2, "marketingHandler"    # Lcom/localytics/android/MarketingHandler;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/localytics/android/BasePushManager;-><init>(Lcom/localytics/android/LocalyticsDao;Lcom/localytics/android/MarketingHandler;)V

    .line 34
    return-void
.end method

.method private _circularRegionTrigger(Lcom/localytics/android/Region;Lcom/localytics/android/Region$Event;)Z
    .registers 13
    .param p1, "region"    # Lcom/localytics/android/Region;
    .param p2, "event"    # Lcom/localytics/android/Region$Event;

    .prologue
    .line 325
    instance-of v5, p1, Lcom/localytics/android/CircularRegion;

    if-eqz v5, :cond_83

    .line 329
    invoke-virtual {p1}, Lcom/localytics/android/Region;->getPlaceId()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/localytics/android/PlacesManager;->_getDisplayableCampaignIdsFromGeofencePlaceId(J)Ljava/util/List;

    move-result-object v5

    .line 330
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_10
    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_83

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 332
    .local v2, "campaignId":Ljava/lang/Long;
    invoke-virtual {p2}, Lcom/localytics/android/Region$Event;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {p0, v5, v6, v7}, Lcom/localytics/android/PlacesManager;->_triggerEventMatchesCampaign(Ljava/lang/String;J)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 334
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {p0, v6, v7, p1, p2}, Lcom/localytics/android/PlacesManager;->_placesCampaignForRegionEvent(JLcom/localytics/android/Region;Lcom/localytics/android/Region$Event;)Lcom/localytics/android/PlacesCampaign;

    move-result-object v1

    .line 335
    .local v1, "campaign":Lcom/localytics/android/PlacesCampaign;
    if-eqz v1, :cond_10

    .line 337
    iget-object v5, p0, Lcom/localytics/android/PlacesManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v5}, Lcom/localytics/android/LocalyticsDao;->areNotificationsDisabled()Z

    move-result v5

    if-eqz v5, :cond_43

    .line 339
    const-string/jumbo v5, "Got places push notification while push is disabled."

    invoke-static {v5}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    goto :goto_10

    .line 343
    :cond_43
    const/4 v0, 0x1

    .line 344
    .local v0, "allowedByListener":Z
    iget-object v6, p0, Lcom/localytics/android/PlacesManager;->mMarketingHandler:Lcom/localytics/android/MarketingHandler;

    monitor-enter v6

    .line 346
    :try_start_47
    iget-object v5, p0, Lcom/localytics/android/PlacesManager;->mMarketingHandler:Lcom/localytics/android/MarketingHandler;

    iget-object v5, v5, Lcom/localytics/android/MarketingHandler;->mListeners:Lcom/localytics/android/ListenersSet;

    invoke-virtual {v5}, Lcom/localytics/android/ListenersSet;->getDevListener()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/localytics/android/MessagingListener;

    .line 347
    .local v3, "devListener":Lcom/localytics/android/MessagingListener;
    if-eqz v3, :cond_57

    .line 349
    invoke-interface {v3, v1}, Lcom/localytics/android/MessagingListener;->localyticsShouldShowPlacesPushNotification(Lcom/localytics/android/PlacesCampaign;)Z

    move-result v0

    .line 351
    :cond_57
    monitor-exit v6
    :try_end_58
    .catchall {:try_start_47 .. :try_end_58} :catchall_80

    .line 352
    if-eqz v0, :cond_10

    .line 354
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/localytics/android/PlacesManager;->_setCampaignAsDisplayed(J)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_10

    .line 356
    invoke-direct {p0, v1}, Lcom/localytics/android/PlacesManager;->_tagPushReceived(Lcom/localytics/android/PlacesCampaign;)Z

    .line 357
    invoke-virtual {v1}, Lcom/localytics/android/PlacesCampaign;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/localytics/android/PlacesManager;->_hasMessage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-virtual {v1}, Lcom/localytics/android/PlacesCampaign;->isControlGroup()Z

    move-result v5

    if-nez v5, :cond_10

    .line 359
    invoke-direct {p0, v1}, Lcom/localytics/android/PlacesManager;->_showNotificationForCampaign(Lcom/localytics/android/PlacesCampaign;)V

    .line 360
    const/4 v5, 0x1

    .line 370
    .end local v0    # "allowedByListener":Z
    .end local v1    # "campaign":Lcom/localytics/android/PlacesCampaign;
    .end local v2    # "campaignId":Ljava/lang/Long;
    .end local v3    # "devListener":Lcom/localytics/android/MessagingListener;
    .end local v4    # "i$":Ljava/util/Iterator;
    :goto_7f
    return v5

    .line 351
    .restart local v0    # "allowedByListener":Z
    .restart local v1    # "campaign":Lcom/localytics/android/PlacesCampaign;
    .restart local v2    # "campaignId":Ljava/lang/Long;
    .restart local v4    # "i$":Ljava/util/Iterator;
    :catchall_80
    move-exception v5

    :try_start_81
    monitor-exit v6
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_80

    throw v5

    .line 370
    .end local v0    # "allowedByListener":Z
    .end local v1    # "campaign":Lcom/localytics/android/PlacesCampaign;
    .end local v2    # "campaignId":Ljava/lang/Long;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_83
    const/4 v5, 0x0

    goto :goto_7f
.end method

.method private _getCampaignAttributes(J)Ljava/util/Map;
    .registers 14
    .param p1, "campaignId"    # J
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
    .line 512
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 513
    .local v6, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_5c

    .line 515
    const/4 v7, 0x0

    .line 518
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_c
    iget-object v0, p0, Lcom/localytics/android/PlacesManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v1, "places_campaign_attributes"

    const/4 v2, 0x0

    const-string/jumbo v3, "%s = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v9, "campaign_id"

    aput-object v9, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 523
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_32
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v8, v0, :cond_57

    .line 525
    invoke-interface {v7, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 527
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
    :try_end_54
    .catchall {:try_start_c .. :try_end_54} :catchall_5d

    .line 523
    add-int/lit8 v8, v8, 0x1

    goto :goto_32

    .line 535
    :cond_57
    if-eqz v7, :cond_5c

    .line 537
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 542
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "i":I
    :cond_5c
    return-object v6

    .line 535
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :catchall_5d
    move-exception v0

    if-eqz v7, :cond_63

    .line 537
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_63
    throw v0
.end method

.method private _getTriggeringEventsFromCampaignId(J)Ljava/util/List;
    .registers 14
    .param p1, "campaignId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 437
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 439
    .local v7, "events":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 442
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_6
    iget-object v0, p0, Lcom/localytics/android/PlacesManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v1, "places_campaigns_events"

    const/4 v2, 0x0

    const-string/jumbo v3, "%s = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v9, "campaign_id"

    aput-object v9, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 448
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2c
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v8, v0, :cond_46

    .line 450
    invoke-interface {v6, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 451
    const-string/jumbo v0, "event"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_43
    .catchall {:try_start_6 .. :try_end_43} :catchall_4c

    .line 448
    add-int/lit8 v8, v8, 0x1

    goto :goto_2c

    .line 456
    :cond_46
    if-eqz v6, :cond_4b

    .line 458
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 462
    :cond_4b
    return-object v7

    .line 456
    .end local v8    # "i":I
    :catchall_4c
    move-exception v0

    if-eqz v6, :cond_52

    .line 458
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_52
    throw v0
.end method

.method private _hasMessageBeenDisplayed(J)Z
    .registers 12
    .param p1, "campaignId"    # J

    .prologue
    .line 176
    const/4 v6, 0x0

    .line 179
    .local v6, "cursorDisplayed":Landroid/database/Cursor;
    :try_start_1
    iget-object v0, p0, Lcom/localytics/android/PlacesManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v1, "places_campaigns_displayed"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "campaign_id"

    aput-object v4, v2, v3

    const-string/jumbo v3, "%s = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v8, "campaign_id"

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

    move-result-object v6

    .line 185
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_38

    move-result v7

    .line 189
    .local v7, "displayed":Z
    if-eqz v6, :cond_37

    .line 191
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 195
    :cond_37
    return v7

    .line 189
    .end local v7    # "displayed":Z
    :catchall_38
    move-exception v0

    if-eqz v6, :cond_3e

    .line 191
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3e
    throw v0
.end method

.method private _parsePlacesMarketingMessage(Lcom/localytics/android/MarketingMessage;Ljava/util/Map;)Landroid/content/ContentValues;
    .registers 9
    .param p1, "marketingMessage"    # Lcom/localytics/android/MarketingMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/localytics/android/MarketingMessage;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .prologue
    .line 200
    .local p2, "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 202
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "campaign_id"

    const-string/jumbo v3, "campaign_id"

    invoke-static {p1, v3}, Lcom/localytics/android/JsonHelper;->getSafeLongFromMap(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 204
    const-string/jumbo v2, "creative_id"

    const-string/jumbo v3, "ab"

    invoke-static {p1, v3}, Lcom/localytics/android/JsonHelper;->getSafeLongFromMap(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 205
    const-string/jumbo v2, "creative_type"

    const-string/jumbo v3, "creative_type"

    invoke-static {p1, v3}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string/jumbo v2, "expiration"

    const-string/jumbo v3, "expiration"

    invoke-static {p1, v3}, Lcom/localytics/android/JsonHelper;->getSafeLongFromMap(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 207
    const-string/jumbo v2, "version"

    const-string/jumbo v3, "version"

    invoke-static {p1, v3}, Lcom/localytics/android/JsonHelper;->getSafeLongFromMap(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 208
    const-string/jumbo v2, "ab_test"

    const-string/jumbo v3, "ab"

    invoke-static {p1, v3}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string/jumbo v2, "rule_name"

    const-string/jumbo v3, "rule_name"

    invoke-static {p1, v3}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string/jumbo v2, "control_group"

    const-string/jumbo v3, "control_group"

    invoke-static {p1, v3}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 211
    const-string/jumbo v2, "message"

    const-string/jumbo v3, "message"

    invoke-static {p1, v3}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string/jumbo v2, "sound_filename"

    const-string/jumbo v3, "sound_filename"

    invoke-static {p1, v3}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    if-eqz p2, :cond_b0

    .line 215
    const-string/jumbo v2, "schema_version"

    invoke-static {p2, v2}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v0

    .line 216
    .local v0, "schemaVersion":I
    if-lez v0, :cond_b0

    .line 218
    const-string/jumbo v2, "schema_version"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 222
    .end local v0    # "schemaVersion":I
    :cond_b0
    return-object v1
.end method

.method private _placesCampaignForRegionEvent(JLcom/localytics/android/Region;Lcom/localytics/android/Region$Event;)Lcom/localytics/android/PlacesCampaign;
    .registers 16
    .param p1, "campaignId"    # J
    .param p3, "region"    # Lcom/localytics/android/Region;
    .param p4, "event"    # Lcom/localytics/android/Region$Event;

    .prologue
    .line 468
    const/4 v6, 0x0

    .line 471
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_1
    iget-object v0, p0, Lcom/localytics/android/PlacesManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v0}, Lcom/localytics/android/LocalyticsDao;->getCurrentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v8, v0, v2

    .line 472
    .local v8, "now":J
    iget-object v0, p0, Lcom/localytics/android/PlacesManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v1, "places_campaigns"

    const/4 v2, 0x0

    const-string/jumbo v3, "%s = ? AND %s > ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v7, "campaign_id"

    aput-object v7, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v7, "expiration"

    aput-object v7, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 477
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_fe

    .line 479
    new-instance v0, Lcom/localytics/android/PlacesCampaign$Builder;

    invoke-direct {v0}, Lcom/localytics/android/PlacesCampaign$Builder;-><init>()V

    const-string/jumbo v1, "campaign_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/localytics/android/PlacesCampaign$Builder;->setCampaignId(J)Lcom/localytics/android/PlacesCampaign$Builder;

    move-result-object v0

    const-string/jumbo v1, "rule_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/localytics/android/PlacesCampaign$Builder;->setRuleName(Ljava/lang/String;)Lcom/localytics/android/PlacesCampaign$Builder;

    move-result-object v0

    const-string/jumbo v1, "creative_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/localytics/android/PlacesCampaign$Builder;->setCreativeId(J)Lcom/localytics/android/PlacesCampaign$Builder;

    move-result-object v0

    const-string/jumbo v1, "creative_type"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/localytics/android/PlacesCampaign$Builder;->setCreativeType(Ljava/lang/String;)Lcom/localytics/android/PlacesCampaign$Builder;

    move-result-object v0

    const-string/jumbo v1, "message"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/localytics/android/PlacesCampaign$Builder;->setMessage(Ljava/lang/String;)Lcom/localytics/android/PlacesCampaign$Builder;

    move-result-object v0

    const-string/jumbo v1, "sound_filename"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/localytics/android/PlacesCampaign$Builder;->setSoundFilename(Ljava/lang/String;)Lcom/localytics/android/PlacesCampaign$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/localytics/android/PlacesCampaign$Builder;->setRegion(Lcom/localytics/android/Region;)Lcom/localytics/android/PlacesCampaign$Builder;

    move-result-object v1

    const-string/jumbo v0, "control_group"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_fc

    const/4 v0, 0x1

    :goto_b4
    invoke-virtual {v1, v0}, Lcom/localytics/android/PlacesCampaign$Builder;->setControlGroup(Z)Lcom/localytics/android/PlacesCampaign$Builder;

    move-result-object v0

    const-string/jumbo v1, "ab_test"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/localytics/android/PlacesCampaign$Builder;->setAbTest(Ljava/lang/String;)Lcom/localytics/android/PlacesCampaign$Builder;

    move-result-object v0

    const-string/jumbo v1, "version"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/localytics/android/PlacesCampaign$Builder;->setVersion(J)Lcom/localytics/android/PlacesCampaign$Builder;

    move-result-object v0

    const-string/jumbo v1, "schema_version"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/localytics/android/PlacesCampaign$Builder;->setSchemaVersion(J)Lcom/localytics/android/PlacesCampaign$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/localytics/android/PlacesCampaign$Builder;->setTriggerEvent(Lcom/localytics/android/Region$Event;)Lcom/localytics/android/PlacesCampaign$Builder;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/localytics/android/PlacesManager;->_getCampaignAttributes(J)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/localytics/android/PlacesCampaign$Builder;->setAttributes(Ljava/util/Map;)Lcom/localytics/android/PlacesCampaign$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/PlacesCampaign$Builder;->build()Lcom/localytics/android/PlacesCampaign;
    :try_end_f5
    .catchall {:try_start_1 .. :try_end_f5} :catchall_105

    move-result-object v0

    .line 502
    if-eqz v6, :cond_fb

    .line 504
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_fb
    :goto_fb
    return-object v0

    .line 479
    :cond_fc
    const/4 v0, 0x0

    goto :goto_b4

    .line 502
    :cond_fe
    if-eqz v6, :cond_103

    .line 504
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_103
    const/4 v0, 0x0

    goto :goto_fb

    .line 502
    .end local v8    # "now":J
    :catchall_105
    move-exception v0

    if-eqz v6, :cond_10b

    .line 504
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_10b
    throw v0
.end method

.method private _removeDeactivatedCampaigns(Ljava/util/List;)V
    .registers 10
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
    .local p1, "marketingMessages":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/MarketingMessage;>;"
    const/4 v7, 0x0

    .line 292
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2c

    .line 294
    new-instance v1, Lcom/localytics/android/PlacesManager$1;

    invoke-direct {v1, p0}, Lcom/localytics/android/PlacesManager$1;-><init>(Lcom/localytics/android/PlacesManager;)V

    invoke-static {p1, v1}, Lcom/localytics/android/BaseProvider;->buildSqlInClause(Ljava/util/List;Lcom/localytics/android/BaseProvider$InClauseBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "inClause":Ljava/lang/String;
    iget-object v1, p0, Lcom/localytics/android/PlacesManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v2, "places_campaigns"

    const-string/jumbo v3, "%s NOT IN %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "campaign_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v7}, Lcom/localytics/android/BaseProvider;->remove(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 308
    .end local v0    # "inClause":Ljava/lang/String;
    :goto_2b
    return-void

    .line 306
    :cond_2c
    iget-object v1, p0, Lcom/localytics/android/PlacesManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v2, "places_campaigns"

    invoke-virtual {v1, v2, v7, v7}, Lcom/localytics/android/BaseProvider;->remove(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2b
.end method

.method private _saveCampaignAttributes(JLjava/util/Map;)V
    .registers 15
    .param p1, "campaignId"    # J
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

    .line 267
    if-eqz p3, :cond_78

    .line 271
    :try_start_4
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_78

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 273
    .local v1, "key":Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 274
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "key"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string/jumbo v3, "value"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string/jumbo v3, "campaign_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 277
    iget-object v3, p0, Lcom/localytics/android/PlacesManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v4, "places_campaign_attributes"

    invoke-virtual {v3, v4, v2}, Lcom/localytics/android/BaseProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gtz v3, :cond_c

    .line 279
    const-string/jumbo v3, "Failed to insert attributes for places campaign id %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;)I
    :try_end_64
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_64} :catch_65

    goto :goto_c

    .line 285
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "values":Landroid/content/ContentValues;
    :catch_65
    move-exception v3

    const-string/jumbo v3, "Cannot parse places attributes data: %s"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;)I

    .line 288
    :cond_78
    return-void
.end method

.method private _saveGeofenceTriggers(JLjava/util/List;)V
    .registers 15
    .param p1, "campaignId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "triggeringPlaceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 228
    iget-object v3, p0, Lcom/localytics/android/PlacesManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v4, "places_campaigns_geofence_triggers"

    const-string/jumbo v5, "%s = ?"

    new-array v6, v9, [Ljava/lang/Object;

    const-string/jumbo v7, "campaign_id"

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v5, v6}, Lcom/localytics/android/BaseProvider;->remove(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 233
    if-eqz p3, :cond_56

    .line 235
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_56

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 237
    .local v1, "obj":Ljava/lang/Object;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 238
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "place_id"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 239
    const-string/jumbo v3, "campaign_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 240
    iget-object v3, p0, Lcom/localytics/android/PlacesManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v4, "places_campaigns_geofence_triggers"

    invoke-virtual {v3, v4, v2}, Lcom/localytics/android/BaseProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_26

    .line 243
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "obj":Ljava/lang/Object;
    .end local v2    # "values":Landroid/content/ContentValues;
    :cond_56
    return-void
.end method

.method private _savePlacesCampaign(Lcom/localytics/android/MarketingMessage;Ljava/util/Map;)J
    .registers 20
    .param p1, "marketingMessage"    # Lcom/localytics/android/MarketingMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/localytics/android/MarketingMessage;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 80
    .local p2, "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct/range {p0 .. p1}, Lcom/localytics/android/PlacesManager;->_validatePlacesMarketingMessage(Lcom/localytics/android/MarketingMessage;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 82
    const-string/jumbo v2, "places campaign is invalid:\n%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/localytics/android/MarketingMessage;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;)I

    .line 83
    const-wide/16 v8, 0x0

    .line 148
    :cond_1c
    :goto_1c
    return-wide v8

    .line 86
    :cond_1d
    const-string/jumbo v2, "campaign_id"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/localytics/android/JsonHelper;->getSafeLongFromMap(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v8

    .line 89
    .local v8, "campaignId":J
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/localytics/android/PlacesManager;->_hasMessageBeenDisplayed(J)Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-static {}, Lcom/localytics/android/Constants;->isTestModeEnabled()Z

    move-result v2

    if-nez v2, :cond_4b

    .line 91
    const-string/jumbo v2, "No update needed. Places campaign has already displayed\n\t campaignID = %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;)I

    .line 92
    const-wide/16 v8, 0x0

    goto :goto_1c

    .line 95
    :cond_4b
    const-wide/16 v12, 0x0

    .line 96
    .local v12, "localVersion":J
    const/4 v10, 0x0

    .line 99
    .local v10, "cursorCampaign":Landroid/database/Cursor;
    :try_start_4e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/localytics/android/PlacesManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v3, "places_campaigns"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "version"

    aput-object v6, v4, v5

    const-string/jumbo v5, "%s = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v16, "campaign_id"

    aput-object v16, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 105
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_8e

    .line 107
    const-string/jumbo v2, "version"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_8d
    .catchall {:try_start_4e .. :try_end_8d} :catchall_d2

    move-result-wide v12

    .line 112
    :cond_8e
    if-eqz v10, :cond_93

    .line 114
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 118
    :cond_93
    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-lez v2, :cond_d9

    .line 120
    const-string/jumbo v2, "Places campaign already exists for this campaign\n\t campaignID = %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 122
    const-string/jumbo v2, "version"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/localytics/android/JsonHelper;->getSafeLongFromMap(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v14

    .line 123
    .local v14, "remoteVersion":J
    cmp-long v2, v12, v14

    if-ltz v2, :cond_df

    .line 125
    const-string/jumbo v2, "No update needed. Campaign version has not been updated\n\t version: %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 126
    const-wide/16 v8, 0x0

    goto/16 :goto_1c

    .line 112
    .end local v14    # "remoteVersion":J
    :catchall_d2
    move-exception v2

    if-eqz v10, :cond_d8

    .line 114
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_d8
    throw v2

    .line 131
    :cond_d9
    const-string/jumbo v2, "Places campaign not found. Creating a new one."

    invoke-static {v2}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 134
    :cond_df
    invoke-direct/range {p0 .. p2}, Lcom/localytics/android/PlacesManager;->_parsePlacesMarketingMessage(Lcom/localytics/android/MarketingMessage;Ljava/util/Map;)Landroid/content/ContentValues;

    move-result-object v11

    .line 135
    .local v11, "values":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/localytics/android/PlacesManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v3, "places_campaigns"

    invoke-virtual {v2, v3, v11}, Lcom/localytics/android/BaseProvider;->replace(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    const-wide/16 v2, -0x1

    cmp-long v2, v8, v2

    if-nez v2, :cond_10c

    .line 137
    const-string/jumbo v2, "Failed to replace places campaign %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;)I

    .line 138
    const-wide/16 v8, -0x1

    goto/16 :goto_1c

    .line 141
    :cond_10c
    const-wide/16 v2, 0x0

    cmp-long v2, v8, v2

    if-lez v2, :cond_1c

    .line 143
    const-string/jumbo v2, "triggering_geofences"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/localytics/android/JsonHelper;->getSafeListFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v2}, Lcom/localytics/android/PlacesManager;->_saveGeofenceTriggers(JLjava/util/List;)V

    .line 144
    const-string/jumbo v2, "triggering_events"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/localytics/android/JsonHelper;->getSafeListFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v2}, Lcom/localytics/android/PlacesManager;->_saveTriggerEvents(JLjava/util/List;)V

    .line 145
    const-string/jumbo v2, "attributes"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/localytics/android/JsonHelper;->getSafeMapFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v2}, Lcom/localytics/android/PlacesManager;->_saveCampaignAttributes(JLjava/util/Map;)V

    goto/16 :goto_1c
.end method

.method private _saveTriggerEvents(JLjava/util/List;)V
    .registers 15
    .param p1, "campaignId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "triggeringEvents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 248
    iget-object v3, p0, Lcom/localytics/android/PlacesManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v4, "places_campaigns_events"

    const-string/jumbo v5, "%s = ?"

    new-array v6, v9, [Ljava/lang/Object;

    const-string/jumbo v7, "campaign_id"

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v5, v6}, Lcom/localytics/android/BaseProvider;->remove(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 253
    if-eqz p3, :cond_52

    .line 255
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 257
    .local v1, "obj":Ljava/lang/Object;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 258
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "event"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string/jumbo v3, "campaign_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 260
    iget-object v3, p0, Lcom/localytics/android/PlacesManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v4, "places_campaigns_events"

    invoke-virtual {v3, v4, v2}, Lcom/localytics/android/BaseProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_26

    .line 263
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "obj":Ljava/lang/Object;
    .end local v2    # "values":Landroid/content/ContentValues;
    :cond_52
    return-void
.end method

.method private _setCampaignAsDisplayed(J)J
    .registers 8
    .param p1, "campaignId"    # J

    .prologue
    .line 581
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 582
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "campaign_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 583
    iget-object v1, p0, Lcom/localytics/android/PlacesManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v2, "places_campaigns_displayed"

    invoke-virtual {v1, v2, v0}, Lcom/localytics/android/BaseProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method private _showNotificationForCampaign(Lcom/localytics/android/PlacesCampaign;)V
    .registers 10
    .param p1, "campaign"    # Lcom/localytics/android/PlacesCampaign;

    .prologue
    .line 570
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 571
    .local v7, "extras":Landroid/os/Bundle;
    const-string/jumbo v0, "places_campaign"

    invoke-virtual {v7, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 573
    invoke-virtual {p1}, Lcom/localytics/android/PlacesCampaign;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/localytics/android/PlacesCampaign;->getSoundFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/localytics/android/PlacesCampaign;->getCampaignId()J

    move-result-wide v4

    move-object v1, p0

    move-object v6, p1

    invoke-virtual/range {v1 .. v7}, Lcom/localytics/android/PlacesManager;->_showPushNotification(Ljava/lang/String;Ljava/lang/String;JLcom/localytics/android/Campaign;Landroid/os/Bundle;)V

    .line 577
    return-void
.end method

.method private _tagPushReceived(Lcom/localytics/android/PlacesCampaign;)Z
    .registers 16
    .param p1, "campaign"    # Lcom/localytics/android/PlacesCampaign;

    .prologue
    const/4 v9, 0x0

    .line 547
    invoke-virtual {p1}, Lcom/localytics/android/PlacesCampaign;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 548
    .local v3, "message":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/localytics/android/PlacesCampaign;->getCreativeType()Ljava/lang/String;

    move-result-object v8

    .line 551
    .local v8, "creativeType":Ljava/lang/String;
    invoke-virtual {p0, v8, v3}, Lcom/localytics/android/PlacesManager;->_creativeTypeForMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/localytics/android/PlacesCampaign;->setCreativeType(Ljava/lang/String;)V

    .line 553
    new-instance v11, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v11, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 554
    .local v11, "extraAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/localytics/android/PlacesCampaign;->getRegion()Lcom/localytics/android/Region;

    move-result-object v0

    .line 555
    .local v0, "region":Lcom/localytics/android/Region;
    if-eqz v0, :cond_45

    .line 557
    const-string/jumbo v1, "Localytics Place ID"

    invoke-virtual {v0}, Lcom/localytics/android/Region;->getPlaceId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    const-string/jumbo v1, "Region Identifier"

    invoke-virtual {v0}, Lcom/localytics/android/Region;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    const-string/jumbo v1, "Region Type"

    invoke-virtual {v0}, Lcom/localytics/android/Region;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    invoke-virtual {v0}, Lcom/localytics/android/Region;->getAttributes()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 563
    :cond_45
    const-string/jumbo v2, "Localytics Places Push Received"

    invoke-virtual {p1}, Lcom/localytics/android/PlacesCampaign;->getCampaignId()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/localytics/android/PlacesCampaign;->getCreativeId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/localytics/android/PlacesCampaign;->getSchemaVersion()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    move v10, v9

    invoke-virtual/range {v1 .. v11}, Lcom/localytics/android/PlacesManager;->_tagPushReceived(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;)Z

    move-result v1

    return v1
.end method

.method private _triggerEventMatchesCampaign(Ljava/lang/String;J)Z
    .registers 8
    .param p1, "triggerEvent"    # Ljava/lang/String;
    .param p2, "campaignId"    # J

    .prologue
    .line 422
    invoke-direct {p0, p2, p3}, Lcom/localytics/android/PlacesManager;->_getTriggeringEventsFromCampaignId(J)Ljava/util/List;

    move-result-object v2

    .line 423
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 425
    .local v0, "event":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 427
    const/4 v2, 0x1

    .line 431
    .end local v0    # "event":Ljava/lang/String;
    :goto_1b
    return v2

    :cond_1c
    const/4 v2, 0x0

    goto :goto_1b
.end method

.method private _validatePlacesMarketingMessage(Lcom/localytics/android/MarketingMessage;)Z
    .registers 22
    .param p1, "marketingMessage"    # Lcom/localytics/android/MarketingMessage;

    .prologue
    .line 153
    const-string/jumbo v13, "campaign_id"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/localytics/android/JsonHelper;->getSafeLongFromMap(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    .line 155
    .local v2, "campaignId":J
    const-string/jumbo v13, "ab"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/localytics/android/JsonHelper;->getSafeLongFromMap(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v4

    .line 156
    .local v4, "creativeId":J
    const-string/jumbo v13, "version"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/localytics/android/JsonHelper;->getSafeLongFromMap(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v14

    .line 157
    .local v14, "version":J
    const-string/jumbo v13, "expiration"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/localytics/android/JsonHelper;->getSafeLongFromMap(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v6

    .line 158
    .local v6, "expiration":J
    const-string/jumbo v13, "rule_name"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 159
    .local v10, "ruleName":Ljava/lang/String;
    const-string/jumbo v13, "triggering_geofences"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/localytics/android/JsonHelper;->getSafeListFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 160
    .local v12, "triggeringGeofences":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const-string/jumbo v13, "triggering_events"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/localytics/android/JsonHelper;->getSafeListFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 162
    .local v11, "triggeringEvents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/localytics/android/PlacesManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v13}, Lcom/localytics/android/LocalyticsDao;->getCurrentTimeMillis()J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    div-long v8, v16, v18

    .line 164
    .local v8, "now":J
    const-wide/16 v16, 0x0

    cmp-long v13, v2, v16

    if-lez v13, :cond_7b

    const-wide/16 v16, 0x0

    cmp-long v13, v4, v16

    if-lez v13, :cond_7b

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-lez v13, :cond_7b

    if-eqz v10, :cond_7b

    if-eqz v12, :cond_7b

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_7b

    if-eqz v11, :cond_7b

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_7b

    cmp-long v13, v6, v8

    if-gtz v13, :cond_79

    invoke-static {}, Lcom/localytics/android/Constants;->isTestModeEnabled()Z

    move-result v13

    if-eqz v13, :cond_7b

    :cond_79
    const/4 v13, 0x1

    :goto_7a
    return v13

    :cond_7b
    const/4 v13, 0x0

    goto :goto_7a
.end method


# virtual methods
.method _getDisplayableCampaignIdsFromGeofencePlaceId(J)Ljava/util/List;
    .registers 16
    .param p1, "placeId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 376
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 377
    .local v1, "campaignIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v2, 0x0

    .line 387
    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_6
    const-string/jumbo v5, "%s.%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "places_campaigns_displayed"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "campaign_id"

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 388
    .local v3, "displayColumn":Ljava/lang/String;
    const-string/jumbo v5, "%s.%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "places_campaigns_geofence_triggers"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "campaign_id"

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 389
    .local v0, "campaignIdValue":Ljava/lang/String;
    const-string/jumbo v5, "SELECT %s FROM %s WHERE %s > ? AND %s IN (SELECT %s FROM %s NATURAL LEFT OUTER JOIN %s WHERE %s IS NULL AND %s = ? ORDER BY %s);"

    const/16 v6, 0xa

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "campaign_id"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "places_campaigns"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "expiration"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string/jumbo v8, "campaign_id"

    aput-object v8, v6, v7

    const/4 v7, 0x4

    aput-object v0, v6, v7

    const/4 v7, 0x5

    const-string/jumbo v8, "places_campaigns_geofence_triggers"

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string/jumbo v8, "places_campaigns_displayed"

    aput-object v8, v6, v7

    const/4 v7, 0x7

    aput-object v3, v6, v7

    const/16 v7, 0x8

    const-string/jumbo v8, "place_id"

    aput-object v8, v6, v7

    const/16 v7, 0x9

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 403
    .local v4, "rawSql":Ljava/lang/String;
    iget-object v5, p0, Lcom/localytics/android/PlacesManager;->mProvider:Lcom/localytics/android/BaseProvider;

    iget-object v5, v5, Lcom/localytics/android/BaseProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/localytics/android/PlacesManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v8}, Lcom/localytics/android/LocalyticsDao;->getCurrentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v5, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 404
    :goto_94
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_b4

    .line 406
    const-string/jumbo v5, "campaign_id"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_ac
    .catchall {:try_start_6 .. :try_end_ac} :catchall_ad

    goto :goto_94

    .line 411
    .end local v0    # "campaignIdValue":Ljava/lang/String;
    .end local v3    # "displayColumn":Ljava/lang/String;
    .end local v4    # "rawSql":Ljava/lang/String;
    :catchall_ad
    move-exception v5

    if-eqz v2, :cond_b3

    .line 413
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_b3
    throw v5

    .line 411
    .restart local v0    # "campaignIdValue":Ljava/lang/String;
    .restart local v3    # "displayColumn":Ljava/lang/String;
    .restart local v4    # "rawSql":Ljava/lang/String;
    :cond_b4
    if-eqz v2, :cond_b9

    .line 413
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 417
    :cond_b9
    return-object v1
.end method

.method _processMarketingObject(ZLjava/util/Map;Ljava/util/Map;)V
    .registers 11
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
    .line 40
    .local p2, "marketingMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_3c

    .line 42
    if-eqz p2, :cond_54

    .line 44
    :try_start_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v3, "marketingMessages":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/MarketingMessage;>;"
    const-string/jumbo v6, "places"

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 47
    .local v5, "placesObject":Ljava/lang/Object;
    if-eqz v5, :cond_3d

    .line 50
    invoke-static {v5}, Lcom/localytics/android/JsonHelper;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONArray;

    invoke-static {v6}, Lcom/localytics/android/JsonHelper;->toList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v6

    .line 53
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 55
    .local v4, "obj":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v6, Lcom/localytics/android/MarketingMessage;

    invoke-direct {v6, v4}, Lcom/localytics/android/MarketingMessage;-><init>(Ljava/util/Map;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_34
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_34} :catch_35

    goto :goto_20

    .line 72
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "marketingMessages":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/MarketingMessage;>;"
    .end local v4    # "obj":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "placesObject":Ljava/lang/Object;
    :catch_35
    move-exception v0

    .line 74
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v6, "JSONException"

    invoke-static {v6, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_3c
    :goto_3c
    return-void

    .line 59
    .restart local v3    # "marketingMessages":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/MarketingMessage;>;"
    .restart local v5    # "placesObject":Ljava/lang/Object;
    :cond_3d
    :try_start_3d
    invoke-direct {p0, v3}, Lcom/localytics/android/PlacesManager;->_removeDeactivatedCampaigns(Ljava/util/List;)V

    .line 61
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_44
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/localytics/android/MarketingMessage;

    .line 63
    .local v2, "marketingMessage":Lcom/localytics/android/MarketingMessage;
    invoke-direct {p0, v2, p3}, Lcom/localytics/android/PlacesManager;->_savePlacesCampaign(Lcom/localytics/android/MarketingMessage;Ljava/util/Map;)J

    goto :goto_44

    .line 68
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "marketingMessage":Lcom/localytics/android/MarketingMessage;
    .end local v3    # "marketingMessages":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/MarketingMessage;>;"
    .end local v5    # "placesObject":Ljava/lang/Object;
    :cond_54
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    invoke-direct {p0, v6}, Lcom/localytics/android/PlacesManager;->_removeDeactivatedCampaigns(Ljava/util/List;)V
    :try_end_5c
    .catch Lorg/json/JSONException; {:try_start_3d .. :try_end_5c} :catch_35

    goto :goto_3c
.end method

.method _triggerRegions(Ljava/util/List;Lcom/localytics/android/Region$Event;)Z
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
            ")Z"
        }
    .end annotation

    .prologue
    .line 312
    .local p1, "regions":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/Region;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/localytics/android/Region;

    .line 314
    .local v1, "region":Lcom/localytics/android/Region;
    invoke-direct {p0, v1, p2}, Lcom/localytics/android/PlacesManager;->_circularRegionTrigger(Lcom/localytics/android/Region;Lcom/localytics/android/Region$Event;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 316
    const/4 v2, 0x1

    .line 320
    .end local v1    # "region":Lcom/localytics/android/Region;
    :goto_17
    return v2

    :cond_18
    const/4 v2, 0x0

    goto :goto_17
.end method

.method handlePushNotificationOpened(Landroid/content/Intent;)V
    .registers 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v10, 0x0

    .line 588
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    if-nez v7, :cond_b

    .line 623
    :cond_a
    :goto_a
    return-void

    .line 594
    :cond_b
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "places_campaign"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/localytics/android/PlacesCampaign;

    .line 595
    .local v1, "campaign":Lcom/localytics/android/PlacesCampaign;
    if-eqz v1, :cond_a

    .line 597
    invoke-virtual {v1}, Lcom/localytics/android/PlacesCampaign;->getCampaignId()J

    move-result-wide v2

    .line 598
    .local v2, "campaignId":J
    invoke-virtual {v1}, Lcom/localytics/android/PlacesCampaign;->getCreativeId()J

    move-result-wide v4

    .line 599
    .local v4, "creativeId":J
    cmp-long v7, v2, v10

    if-lez v7, :cond_a9

    cmp-long v7, v4, v10

    if-lez v7, :cond_a9

    .line 601
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 602
    .local v0, "attributes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v7, "Campaign ID"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    const-string/jumbo v7, "Creative ID"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    const-string/jumbo v7, "Creative Type"

    invoke-virtual {v1}, Lcom/localytics/android/PlacesCampaign;->getCreativeType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    const-string/jumbo v7, "Action"

    const-string/jumbo v8, "Click"

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    const-string/jumbo v7, "Schema Version - Client"

    const-string/jumbo v8, "5"

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    const-string/jumbo v7, "Schema Version - Server"

    invoke-virtual {v1}, Lcom/localytics/android/PlacesCampaign;->getSchemaVersion()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    invoke-virtual {v1}, Lcom/localytics/android/PlacesCampaign;->getRegion()Lcom/localytics/android/Region;

    move-result-object v6

    .line 609
    .local v6, "region":Lcom/localytics/android/Region;
    if-eqz v6, :cond_9c

    .line 611
    const-string/jumbo v7, "Localytics Place ID"

    invoke-virtual {v6}, Lcom/localytics/android/Region;->getPlaceId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    const-string/jumbo v7, "Region Identifier"

    invoke-virtual {v6}, Lcom/localytics/android/Region;->getUniqueId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    const-string/jumbo v7, "Region Type"

    invoke-virtual {v6}, Lcom/localytics/android/Region;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    invoke-virtual {v6}, Lcom/localytics/android/Region;->getAttributes()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 616
    :cond_9c
    iget-object v7, p0, Lcom/localytics/android/PlacesManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    const-string/jumbo v8, "Localytics Places Push Opened"

    invoke-interface {v7, v8, v0}, Lcom/localytics/android/LocalyticsDao;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 617
    iget-object v7, p0, Lcom/localytics/android/PlacesManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v7}, Lcom/localytics/android/LocalyticsDao;->upload()V

    .line 621
    .end local v0    # "attributes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "region":Lcom/localytics/android/Region;
    :cond_a9
    const-string/jumbo v7, "places_campaign"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto/16 :goto_a
.end method
