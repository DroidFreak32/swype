.class Lcom/localytics/android/PushManager;
.super Lcom/localytics/android/BasePushManager;
.source "PushManager.java"


# static fields
.field private static final PUSH_API_URL_TEMPLATE:Ljava/lang/String; = "https://pushapi.localytics.com/push_test?platform=android&type=prod&campaign=%s&creative=%s&token=%s&install_id=%s&client_ts=%s"

.field private static final PUSH_OPENED_EVENT:Ljava/lang/String; = "Localytics Push Opened"

.field private static final PUSH_RECEIVED_EVENT:Ljava/lang/String; = "Localytics Push Received"


# direct methods
.method constructor <init>(Lcom/localytics/android/LocalyticsDao;Lcom/localytics/android/MarketingHandler;)V
    .locals 0
    .param p1, "localyticsDao"    # Lcom/localytics/android/LocalyticsDao;
    .param p2, "marketingHandler"    # Lcom/localytics/android/MarketingHandler;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/localytics/android/BasePushManager;-><init>(Lcom/localytics/android/LocalyticsDao;Lcom/localytics/android/MarketingHandler;)V

    .line 39
    return-void
.end method


# virtual methods
.method _convertToPushCampaign(Landroid/os/Bundle;)Lcom/localytics/android/PushCampaign;
    .locals 3
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 302
    :try_start_0
    const-string/jumbo v2, "message"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "message":Ljava/lang/String;
    const-string/jumbo v2, "ll_sound_filename"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 304
    .local v1, "soundURI":Ljava/lang/String;
    new-instance v2, Lcom/localytics/android/PushCampaign;

    invoke-direct {v2, v0, v1, p1}, Lcom/localytics/android/PushCampaign;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    .end local v0    # "message":Ljava/lang/String;
    .end local v1    # "soundURI":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 308
    :catch_0
    move-exception v2

    const-string/jumbo v2, "Failed to parse push campaign from payload, ignoring message"

    invoke-static {v2}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 310
    const/4 v2, 0x0

    goto :goto_0
.end method

.method _handlePushReceived(Landroid/os/Bundle;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 48
    iget-object v3, p0, Lcom/localytics/android/PushManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v3}, Lcom/localytics/android/LocalyticsDao;->areNotificationsDisabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 50
    const-string/jumbo v3, "Got push notification while push is disabled."

    invoke-static {v3}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 78
    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 54
    :cond_1
    const/4 v0, 0x1

    .line 55
    .local v0, "allowedByListener":Z
    invoke-virtual {p0, p1}, Lcom/localytics/android/PushManager;->_convertToPushCampaign(Landroid/os/Bundle;)Lcom/localytics/android/PushCampaign;

    move-result-object v1

    .line 56
    .local v1, "campaign":Lcom/localytics/android/PushCampaign;
    if-eqz v1, :cond_0

    .line 58
    iget-object v4, p0, Lcom/localytics/android/PushManager;->mMarketingHandler:Lcom/localytics/android/MarketingHandler;

    monitor-enter v4

    .line 60
    :try_start_0
    iget-object v3, p0, Lcom/localytics/android/PushManager;->mMarketingHandler:Lcom/localytics/android/MarketingHandler;

    iget-object v3, v3, Lcom/localytics/android/MarketingHandler;->mListeners:Lcom/localytics/android/ListenersSet;

    invoke-virtual {v3}, Lcom/localytics/android/ListenersSet;->getDevListener()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/localytics/android/MessagingListener;

    .line 61
    .local v2, "devListener":Lcom/localytics/android/MessagingListener;
    if-eqz v2, :cond_2

    .line 63
    invoke-interface {v2, v1}, Lcom/localytics/android/MessagingListener;->localyticsShouldShowPushNotification(Lcom/localytics/android/PushCampaign;)Z

    move-result v0

    .line 65
    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0, v1}, Lcom/localytics/android/PushManager;->_tagPushReceivedEvent(Lcom/localytics/android/PushCampaign;)Z

    .line 69
    invoke-virtual {v1}, Lcom/localytics/android/PushCampaign;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/localytics/android/PushManager;->_hasMessage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/localytics/android/PushCampaign;->isControlGroup()Z

    move-result v3

    if-nez v3, :cond_0

    .line 71
    invoke-virtual {p0, v1, p1}, Lcom/localytics/android/PushManager;->_showPushNotification(Lcom/localytics/android/PushCampaign;Landroid/os/Bundle;)V

    .line 72
    const/4 v3, 0x1

    goto :goto_0

    .line 65
    .end local v2    # "devListener":Lcom/localytics/android/MessagingListener;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method _showPushNotification(Lcom/localytics/android/PushCampaign;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "campaign"    # Lcom/localytics/android/PushCampaign;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 106
    invoke-virtual {p1}, Lcom/localytics/android/PushCampaign;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, "message":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/localytics/android/PushCampaign;->getCampaignId()J

    move-result-wide v4

    .line 108
    .local v4, "campaignId":J
    invoke-virtual {p1}, Lcom/localytics/android/PushCampaign;->getSoundFilename()Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v1 .. v7}, Lcom/localytics/android/PushManager;->_showPushNotification(Ljava/lang/String;Ljava/lang/String;JLcom/localytics/android/Campaign;Landroid/os/Bundle;)V

    .line 109
    return-void
.end method

.method _tagPushReceivedEvent(Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lcom/localytics/android/PushManager;->_convertToPushCampaign(Landroid/os/Bundle;)Lcom/localytics/android/PushCampaign;

    move-result-object v0

    .line 84
    .local v0, "campaign":Lcom/localytics/android/PushCampaign;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/localytics/android/PushManager;->_tagPushReceivedEvent(Lcom/localytics/android/PushCampaign;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method _tagPushReceivedEvent(Lcom/localytics/android/PushCampaign;)Z
    .locals 16
    .param p1, "campaign"    # Lcom/localytics/android/PushCampaign;

    .prologue
    .line 90
    invoke-virtual/range {p1 .. p1}, Lcom/localytics/android/PushCampaign;->getCampaignId()J

    move-result-wide v4

    .line 91
    .local v4, "campaignId":J
    invoke-virtual/range {p1 .. p1}, Lcom/localytics/android/PushCampaign;->getCreativeId()J

    move-result-wide v12

    .line 93
    .local v12, "creativeId":J
    invoke-virtual/range {p1 .. p1}, Lcom/localytics/android/PushCampaign;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 94
    .local v3, "message":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/localytics/android/PushCampaign;->getCreativeType()Ljava/lang/String;

    move-result-object v8

    .line 95
    .local v8, "creativeType":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/localytics/android/PushCampaign;->getSchemaVersion()J

    move-result-wide v14

    .line 96
    .local v14, "serverSchemaVersion":J
    invoke-virtual/range {p1 .. p1}, Lcom/localytics/android/PushCampaign;->getKillSwitch()I

    move-result v9

    .line 97
    .local v9, "killSwitch":I
    invoke-virtual/range {p1 .. p1}, Lcom/localytics/android/PushCampaign;->getTestMode()I

    move-result v10

    .line 99
    .local v10, "testMode":I
    const-string/jumbo v2, "Localytics Push Received"

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/localytics/android/PushManager;->_tagPushReceived(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;)Z

    move-result v0

    return v0
.end method

.method handlePushNotificationOpened(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 113
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    if-nez v8, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v9, "ll"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 120
    .local v5, "llString":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 124
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 125
    .local v4, "llObject":Lorg/json/JSONObject;
    const-string/jumbo v8, "ca"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "campaignId":Ljava/lang/String;
    const-string/jumbo v8, "cr"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "creativeId":Ljava/lang/String;
    const-string/jumbo v8, "v"

    const-string/jumbo v9, "1"

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 128
    .local v6, "serverSchemaVersion":Ljava/lang/String;
    const-string/jumbo v8, "test_mode"

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 130
    .local v7, "testMode":I
    const-string/jumbo v8, "t"

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 131
    .local v3, "creativeType":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 133
    const-string/jumbo v3, "Alert"

    .line 136
    :cond_2
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    if-nez v7, :cond_3

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 139
    .local v0, "attributes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v8, "Campaign ID"

    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string/jumbo v8, "Creative ID"

    invoke-virtual {v0, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string/jumbo v8, "Creative Type"

    invoke-virtual {v0, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string/jumbo v8, "Action"

    const-string/jumbo v9, "Click"

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string/jumbo v8, "Schema Version - Client"

    const-string/jumbo v9, "5"

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string/jumbo v8, "Schema Version - Server"

    invoke-virtual {v0, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v8, p0, Lcom/localytics/android/PushManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    const-string/jumbo v9, "Localytics Push Opened"

    invoke-interface {v8, v9, v0}, Lcom/localytics/android/LocalyticsDao;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 149
    .end local v0    # "attributes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    const-string/jumbo v8, "ll"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 153
    .end local v1    # "campaignId":Ljava/lang/String;
    .end local v2    # "creativeId":Ljava/lang/String;
    .end local v3    # "creativeType":Ljava/lang/String;
    .end local v4    # "llObject":Lorg/json/JSONObject;
    .end local v6    # "serverSchemaVersion":Ljava/lang/String;
    .end local v7    # "testMode":I
    :catch_0
    move-exception v8

    const-string/jumbo v8, "Failed to get campaign id or creative id from payload"

    invoke-static {v8}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method handlePushTestMode([Ljava/lang/String;)V
    .locals 7
    .param p1, "components"    # [Ljava/lang/String;

    .prologue
    .line 162
    const/4 v0, 0x2

    :try_start_0
    aget-object v3, p1, v0

    .line 163
    .local v3, "campaign":Ljava/lang/String;
    const/4 v0, 0x3

    aget-object v4, p1, v0

    .line 164
    .local v4, "creative":Ljava/lang/String;
    iget-object v0, p0, Lcom/localytics/android/PushManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v0}, Lcom/localytics/android/LocalyticsDao;->getCustomerIdFuture()Ljava/util/concurrent/Future;

    move-result-object v5

    .line 165
    .local v5, "customerIdFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/localytics/android/PushManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v0}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v2

    .line 167
    .local v2, "appContext":Landroid/content/Context;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Lcom/localytics/android/PushManager$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/localytics/android/PushManager$1;-><init>(Lcom/localytics/android/PushManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Future;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/localytics/android/PushManager$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    .end local v2    # "appContext":Landroid/content/Context;
    .end local v3    # "campaign":Ljava/lang/String;
    .end local v4    # "creative":Ljava/lang/String;
    .end local v5    # "customerIdFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 292
    :catch_0
    move-exception v6

    .line 294
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "Exception while handling test mode"

    invoke-static {v0, v6}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
