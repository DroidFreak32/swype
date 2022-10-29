.class Lcom/localytics/android/BasePushManager;
.super Lcom/localytics/android/BaseMarketingManager;
.source "BasePushManager.java"


# static fields
.field protected static final ACTION_ATTRIBUTE:Ljava/lang/String; = "Action"

.field protected static final APP_CONTEXT_ATTRIBUTE:Ljava/lang/String; = "App Context"

.field protected static final CAMPAIGN_ID_ATTRIBUTE:Ljava/lang/String; = "Campaign ID"

.field protected static final CREATIVE_DISPLAYED_ATTRIBUTE:Ljava/lang/String; = "Creative Displayed"

.field protected static final CREATIVE_ID_ATTRIBUTE:Ljava/lang/String; = "Creative ID"

.field protected static final CREATIVE_TYPE_ATTRIBUTE:Ljava/lang/String; = "Creative Type"

.field protected static final PUSH_NOTIFICATIONS_ENABLED_ATTRIBUTE:Ljava/lang/String; = "Push Notifications Enabled"


# instance fields
.field protected final mMarketingHandler:Lcom/localytics/android/MarketingHandler;


# direct methods
.method public constructor <init>(Lcom/localytics/android/LocalyticsDao;Lcom/localytics/android/MarketingHandler;)V
    .registers 3
    .param p1, "localyticsDao"    # Lcom/localytics/android/LocalyticsDao;
    .param p2, "marketingHandler"    # Lcom/localytics/android/MarketingHandler;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/localytics/android/BaseMarketingManager;-><init>(Lcom/localytics/android/LocalyticsDao;)V

    .line 35
    iput-object p2, p0, Lcom/localytics/android/BasePushManager;->mMarketingHandler:Lcom/localytics/android/MarketingHandler;

    .line 36
    return-void
.end method

.method private _getSoundUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 4
    .param p1, "soundFilename"    # Ljava/lang/String;

    .prologue
    .line 120
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 122
    const/4 v0, 0x0

    .line 130
    :goto_7
    return-object v0

    .line 126
    :cond_8
    const-string/jumbo v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 128
    const/4 v0, 0x0

    const-string/jumbo v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 130
    :cond_1d
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "android.resource"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/localytics/android/BasePushManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "raw"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_7
.end method

.method private logNotification(Landroid/app/Notification;Landroid/app/PendingIntent;)V
    .registers 7
    .param p1, "notification"    # Landroid/app/Notification;
    .param p2, "contentIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 217
    const-string/jumbo v1, "The notification returned by the user contains %s content intent"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v0, p1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {p2, v0}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string/jumbo v0, "the same"

    :goto_12
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 219
    invoke-virtual {p1}, Landroid/app/Notification;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 220
    return-void

    .line 217
    :cond_23
    const-string/jumbo v0, "a different"

    goto :goto_12
.end method


# virtual methods
.method _creativeTypeForMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "creativeType"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 42
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 44
    const-string/jumbo p1, "Alert"

    .line 52
    .end local p1    # "creativeType":Ljava/lang/String;
    :cond_f
    :goto_f
    return-object p1

    .line 48
    .restart local p1    # "creativeType":Ljava/lang/String;
    :cond_10
    const-string/jumbo p1, "Silent"

    goto :goto_f
.end method

.method _hasMessage(Ljava/lang/String;)Z
    .registers 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method _showPushNotification(Ljava/lang/String;Ljava/lang/String;JLcom/localytics/android/Campaign;Landroid/os/Bundle;)V
    .registers 24
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "soundFilename"    # Ljava/lang/String;
    .param p3, "campaignId"    # J
    .param p5, "campaign"    # Lcom/localytics/android/Campaign;
    .param p6, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 144
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/localytics/android/BasePushManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v14}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v2

    .line 145
    .local v2, "appContext":Landroid/content/Context;
    const-string/jumbo v4, ""

    .line 146
    .local v4, "appName":Ljava/lang/CharSequence;
    invoke-static {v2}, Lcom/localytics/android/DatapointHelper;->getLocalyticsNotificationIcon(Landroid/content/Context;)I

    move-result v3

    .line 149
    .local v3, "appIcon":I
    :try_start_f
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 150
    .local v5, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v14, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    :try_end_24
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_24} :catch_d2

    move-result-object v4

    .line 158
    .end local v5    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :goto_25
    new-instance v13, Landroid/content/Intent;

    const-class v14, Lcom/localytics/android/PushTrackingActivity;

    invoke-direct {v13, v2, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 159
    .local v13, "trackingIntent":Landroid/content/Intent;
    move-object/from16 v0, p6

    invoke-virtual {v13, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 160
    move-wide/from16 v0, p3

    long-to-int v14, v0

    const/high16 v15, 0x8000000

    invoke-static {v2, v14, v13, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 162
    .local v7, "contentIntent":Landroid/app/PendingIntent;
    new-instance v14, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v14, v2}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v14, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v14

    invoke-virtual {v14, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v14

    invoke-virtual {v14, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel$7abcb88d()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    .line 168
    .local v6, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/localytics/android/BasePushManager;->_getSoundUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 169
    .local v12, "soundUri":Landroid/net/Uri;
    if-eqz v12, :cond_db

    .line 171
    invoke-virtual {v6, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 172
    const/4 v14, 0x6

    invoke-virtual {v6, v14}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 178
    :goto_60
    const-string/jumbo v14, "ll_public_message"

    move-object/from16 v0, p6

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 179
    .local v11, "publicMessage":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_87

    .line 181
    invoke-virtual {v6, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v14

    new-instance v15, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v15}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-virtual {v15, v11}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v14

    invoke-virtual {v6, v14}, Landroid/support/v4/app/NotificationCompat$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 186
    :cond_87
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v14

    new-instance v15, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v15}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 190
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/localytics/android/BasePushManager;->mMarketingHandler:Lcom/localytics/android/MarketingHandler;

    iget-object v14, v14, Lcom/localytics/android/MarketingHandler;->mListeners:Lcom/localytics/android/ListenersSet;

    invoke-virtual {v14}, Lcom/localytics/android/ListenersSet;->getDevListener()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/localytics/android/MessagingListener;

    .line 191
    .local v8, "devListener":Lcom/localytics/android/MessagingListener;
    if-eqz v8, :cond_b7

    .line 193
    move-object/from16 v0, p5

    instance-of v14, v0, Lcom/localytics/android/PlacesCampaign;

    if-eqz v14, :cond_e0

    .line 195
    check-cast p5, Lcom/localytics/android/PlacesCampaign;

    .end local p5    # "campaign":Lcom/localytics/android/Campaign;
    move-object/from16 v0, p5

    invoke-interface {v8, v6, v0}, Lcom/localytics/android/MessagingListener;->localyticsWillShowPlacesPushNotification(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/localytics/android/PlacesCampaign;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    .line 204
    :cond_b7
    :goto_b7
    const-string/jumbo v14, "notification"

    invoke-virtual {v2, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    .line 205
    .local v10, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v6}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    .line 208
    .local v9, "notification":Landroid/app/Notification;
    if-eqz v8, :cond_cb

    .line 210
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v7}, Lcom/localytics/android/BasePushManager;->logNotification(Landroid/app/Notification;Landroid/app/PendingIntent;)V

    .line 212
    :cond_cb
    move-wide/from16 v0, p3

    long-to-int v14, v0

    invoke-virtual {v10, v14, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 213
    return-void

    .line 154
    .end local v6    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v7    # "contentIntent":Landroid/app/PendingIntent;
    .end local v8    # "devListener":Lcom/localytics/android/MessagingListener;
    .end local v9    # "notification":Landroid/app/Notification;
    .end local v10    # "notificationManager":Landroid/app/NotificationManager;
    .end local v11    # "publicMessage":Ljava/lang/String;
    .end local v12    # "soundUri":Landroid/net/Uri;
    .end local v13    # "trackingIntent":Landroid/content/Intent;
    .restart local p5    # "campaign":Lcom/localytics/android/Campaign;
    :catch_d2
    move-exception v14

    const-string/jumbo v14, "Failed to get application name"

    invoke-static {v14}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    goto/16 :goto_25

    .line 176
    .restart local v6    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    .restart local v7    # "contentIntent":Landroid/app/PendingIntent;
    .restart local v12    # "soundUri":Landroid/net/Uri;
    .restart local v13    # "trackingIntent":Landroid/content/Intent;
    :cond_db
    const/4 v14, -0x1

    invoke-virtual {v6, v14}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_60

    .line 197
    .restart local v8    # "devListener":Lcom/localytics/android/MessagingListener;
    .restart local v11    # "publicMessage":Ljava/lang/String;
    :cond_e0
    move-object/from16 v0, p5

    instance-of v14, v0, Lcom/localytics/android/PushCampaign;

    if-eqz v14, :cond_b7

    .line 199
    check-cast p5, Lcom/localytics/android/PushCampaign;

    .end local p5    # "campaign":Lcom/localytics/android/Campaign;
    move-object/from16 v0, p5

    invoke-interface {v8, v6, v0}, Lcom/localytics/android/MessagingListener;->localyticsWillShowPushNotification(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/localytics/android/PushCampaign;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    goto :goto_b7
.end method

.method _tagPushReceived(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;)Z
    .registers 20
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "campaignId"    # J
    .param p5, "creativeId"    # Ljava/lang/String;
    .param p6, "serverSchemaVersion"    # Ljava/lang/String;
    .param p7, "creativeType"    # Ljava/lang/String;
    .param p8, "killSwitch"    # I
    .param p9, "testMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 66
    .local p10, "extraAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/localytics/android/BasePushManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v6}, Lcom/localytics/android/LocalyticsDao;->areNotificationsDisabled()Z

    move-result v5

    .line 67
    .local v5, "notificationsDisabled":Z
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8a

    const/4 v4, 0x1

    .line 69
    .local v4, "hasMessage":Z
    :goto_d
    move-object/from16 v0, p7

    invoke-virtual {p0, v0, p2}, Lcom/localytics/android/BasePushManager;->_creativeTypeForMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p7

    .line 70
    const-string/jumbo v1, "Not Available"

    .line 71
    .local v1, "appContext":Ljava/lang/String;
    iget-object v6, p0, Lcom/localytics/android/BasePushManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v6}, Lcom/localytics/android/LocalyticsDao;->isAutoIntegrate()Z

    move-result v6

    if-eqz v6, :cond_29

    .line 73
    iget-object v6, p0, Lcom/localytics/android/BasePushManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v6}, Lcom/localytics/android/LocalyticsDao;->isAppInForeground()Z

    move-result v6

    if-eqz v6, :cond_8c

    .line 75
    const-string/jumbo v1, "Foreground"

    .line 84
    :cond_29
    :goto_29
    if-eqz v4, :cond_94

    .line 86
    if-eqz v5, :cond_90

    const-string/jumbo v3, "No"

    .line 93
    .local v3, "creativeDisplayed":Ljava/lang/String;
    :goto_30
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 94
    .local v2, "attributes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v6, "Campaign ID"

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string/jumbo v6, "Creative ID"

    invoke-virtual {v2, v6, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string/jumbo v6, "Creative Type"

    move-object/from16 v0, p7

    invoke-virtual {v2, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string/jumbo v6, "Creative Displayed"

    invoke-virtual {v2, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string/jumbo v7, "Push Notifications Enabled"

    if-eqz v5, :cond_98

    const-string/jumbo v6, "No"

    :goto_5b
    invoke-virtual {v2, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string/jumbo v6, "App Context"

    invoke-virtual {v2, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string/jumbo v6, "Schema Version - Client"

    const-string/jumbo v7, "5"

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string/jumbo v6, "Schema Version - Server"

    invoke-virtual {v2, v6, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    if-eqz p10, :cond_7a

    .line 104
    move-object/from16 v0, p10

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 107
    :cond_7a
    if-nez p8, :cond_9c

    if-nez p9, :cond_9c

    .line 109
    iget-object v6, p0, Lcom/localytics/android/BasePushManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v6, p1, v2}, Lcom/localytics/android/LocalyticsDao;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 110
    iget-object v6, p0, Lcom/localytics/android/BasePushManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v6}, Lcom/localytics/android/LocalyticsDao;->upload()V

    .line 111
    const/4 v6, 0x1

    .line 114
    :goto_89
    return v6

    .line 67
    .end local v1    # "appContext":Ljava/lang/String;
    .end local v2    # "attributes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "creativeDisplayed":Ljava/lang/String;
    .end local v4    # "hasMessage":Z
    :cond_8a
    const/4 v4, 0x0

    goto :goto_d

    .line 79
    .restart local v1    # "appContext":Ljava/lang/String;
    .restart local v4    # "hasMessage":Z
    :cond_8c
    const-string/jumbo v1, "Background"

    goto :goto_29

    .line 86
    :cond_90
    const-string/jumbo v3, "Yes"

    goto :goto_30

    .line 90
    :cond_94
    const-string/jumbo v3, "Not Applicable"

    .restart local v3    # "creativeDisplayed":Ljava/lang/String;
    goto :goto_30

    .line 98
    .restart local v2    # "attributes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_98
    const-string/jumbo v6, "Yes"

    goto :goto_5b

    .line 114
    :cond_9c
    const/4 v6, 0x0

    goto :goto_89
.end method
