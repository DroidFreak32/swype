.class abstract Lcom/crashlytics/android/answers/AnswersKit;
.super Lio/fabric/sdk/android/Kit;
.source "AnswersKit.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/Kit",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private installedAt:J

.field private preferenceStore:Lio/fabric/sdk/android/services/persistence/PreferenceStore;

.field sessionAnalyticsManager:Lcom/crashlytics/android/answers/SessionAnalyticsManager;

.field private versionCode:Ljava/lang/String;

.field private versionName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lio/fabric/sdk/android/Kit;-><init>()V

    return-void
.end method

.method private doInBackground()Ljava/lang/Boolean;
    .locals 18

    .prologue
    .line 87
    .line 2094
    move-object/from16 v0, p0

    iget-object v14, v0, Lio/fabric/sdk/android/Kit;->context:Landroid/content/Context;

    .line 2128
    .local v14, "context":Landroid/content/Context;
    :try_start_0
    new-instance v2, Lcom/crashlytics/android/answers/SessionEventTransform;

    invoke-direct {v2}, Lcom/crashlytics/android/answers/SessionEventTransform;-><init>()V

    .line 2129
    new-instance v3, Lio/fabric/sdk/android/services/common/SystemCurrentTimeProvider;

    invoke-direct {v3}, Lio/fabric/sdk/android/services/common/SystemCurrentTimeProvider;-><init>()V

    .line 2130
    new-instance v4, Lio/fabric/sdk/android/services/events/GZIPQueueFileEventStorage;

    .line 3094
    move-object/from16 v0, p0

    iget-object v5, v0, Lio/fabric/sdk/android/Kit;->context:Landroid/content/Context;

    .line 3244
    new-instance v6, Lio/fabric/sdk/android/services/persistence/FileStoreImpl;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lio/fabric/sdk/android/services/persistence/FileStoreImpl;-><init>(Lio/fabric/sdk/android/Kit;)V

    invoke-virtual {v6}, Lio/fabric/sdk/android/services/persistence/FileStoreImpl;->getFilesDir()Ljava/io/File;

    move-result-object v6

    .line 2130
    const-string/jumbo v7, "session_analytics.tap"

    const-string/jumbo v8, "session_analytics_to_send"

    invoke-direct {v4, v5, v6, v7, v8}, Lio/fabric/sdk/android/services/events/GZIPQueueFileEventStorage;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 2133
    new-instance v17, Lcom/crashlytics/android/answers/SessionAnalyticsFilesManager;

    move-object/from16 v0, v17

    invoke-direct {v0, v14, v2, v3, v4}, Lcom/crashlytics/android/answers/SessionAnalyticsFilesManager;-><init>(Landroid/content/Context;Lcom/crashlytics/android/answers/SessionEventTransform;Lio/fabric/sdk/android/services/common/CurrentTimeProvider;Lio/fabric/sdk/android/services/events/EventsStorage;)V

    .line 4087
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/fabric/sdk/android/Kit;->idManager:Lio/fabric/sdk/android/services/common/IdManager;

    .line 2138
    invoke-virtual {v2}, Lio/fabric/sdk/android/services/common/IdManager;->getDeviceIdentifiers()Ljava/util/Map;

    move-result-object v4

    .line 2141
    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2142
    invoke-virtual {v2}, Lio/fabric/sdk/android/services/common/IdManager;->getAppInstallIdentifier()Ljava/lang/String;

    move-result-object v5

    .line 2143
    sget-object v2, Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;->ANDROID_ID:Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2145
    sget-object v2, Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;->ANDROID_ADVERTISING_ID:Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2147
    sget-object v2, Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;->FONT_TOKEN:Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2149
    invoke-static {v14}, Lio/fabric/sdk/android/services/common/CommonUtils;->resolveBuildId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 2150
    invoke-static {}, Lio/fabric/sdk/android/services/common/IdManager;->getOsVersionString()Ljava/lang/String;

    move-result-object v10

    .line 2151
    invoke-static {}, Lio/fabric/sdk/android/services/common/IdManager;->getModelName()Ljava/lang/String;

    move-result-object v11

    .line 2152
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2154
    new-instance v2, Lcom/crashlytics/android/answers/SessionEventMetadata;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/crashlytics/android/answers/AnswersKit;->versionCode:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/crashlytics/android/answers/AnswersKit;->versionName:Ljava/lang/String;

    invoke-direct/range {v2 .. v13}, Lcom/crashlytics/android/answers/SessionEventMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4094
    move-object/from16 v0, p0

    iget-object v3, v0, Lio/fabric/sdk/android/Kit;->context:Landroid/content/Context;

    .line 2161
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Application;

    .line 2162
    if-eqz v3, :cond_1

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-lt v4, v5, :cond_1

    .line 2164
    new-instance v4, Lio/fabric/sdk/android/services/network/DefaultHttpRequestFactory;

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v5

    invoke-direct {v4, v5}, Lio/fabric/sdk/android/services/network/DefaultHttpRequestFactory;-><init>(Lio/fabric/sdk/android/Logger;)V

    .line 5065
    const-string/jumbo v5, "Crashlytics Trace Manager"

    invoke-static {v5}, Lio/fabric/sdk/android/services/common/ExecutorUtils;->buildSingleThreadScheduledExecutorService(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v5

    .line 5067
    new-instance v6, Lcom/crashlytics/android/answers/EnabledSessionAnalyticsManagerStrategy;

    move-object/from16 v0, v17

    invoke-direct {v6, v3, v5, v0, v4}, Lcom/crashlytics/android/answers/EnabledSessionAnalyticsManagerStrategy;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/crashlytics/android/answers/SessionAnalyticsFilesManager;Lio/fabric/sdk/android/services/network/HttpRequestFactory;)V

    .line 5069
    new-instance v4, Lcom/crashlytics/android/answers/SessionEventsHandler;

    move-object/from16 v0, v17

    invoke-direct {v4, v3, v6, v0, v5}, Lcom/crashlytics/android/answers/SessionEventsHandler;-><init>(Landroid/content/Context;Lio/fabric/sdk/android/services/events/EventsStrategy;Lcom/crashlytics/android/answers/SessionAnalyticsFilesManager;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 5071
    new-instance v5, Lcom/crashlytics/android/answers/AutoSessionAnalyticsManager;

    invoke-direct {v5, v2, v4, v3}, Lcom/crashlytics/android/answers/AutoSessionAnalyticsManager;-><init>(Lcom/crashlytics/android/answers/SessionEventMetadata;Lcom/crashlytics/android/answers/SessionEventsHandler;Landroid/app/Application;)V

    .line 2164
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/crashlytics/android/answers/AnswersKit;->sessionAnalyticsManager:Lcom/crashlytics/android/answers/SessionAnalyticsManager;

    .line 2173
    :goto_0
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/crashlytics/android/answers/AnswersKit;->installedAt:J

    .line 7216
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/crashlytics/android/answers/AnswersKit;->preferenceStore:Lio/fabric/sdk/android/services/persistence/PreferenceStore;

    invoke-interface {v4}, Lio/fabric/sdk/android/services/persistence/PreferenceStore;->get()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string/jumbo v5, "analytics_launched"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 6229
    if-nez v4, :cond_3

    .line 7239
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 7240
    const-wide/32 v4, 0x36ee80

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    const/4 v2, 0x1

    .line 6229
    :goto_1
    if-eqz v2, :cond_3

    const/4 v2, 0x1

    .line 2173
    :goto_2
    if-eqz v2, :cond_0

    .line 2174
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    .line 2175
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crashlytics/android/answers/AnswersKit;->sessionAnalyticsManager:Lcom/crashlytics/android/answers/SessionAnalyticsManager;

    .line 8068
    iget-object v3, v2, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->eventsHandler:Lcom/crashlytics/android/answers/SessionEventsHandler;

    iget-object v2, v2, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->metadata:Lcom/crashlytics/android/answers/SessionEventMetadata;

    .line 9044
    sget-object v4, Lcom/crashlytics/android/answers/SessionEvent$Type;->INSTALL:Lcom/crashlytics/android/answers/SessionEvent$Type;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/crashlytics/android/answers/SessionEvent;->buildEvent(Lcom/crashlytics/android/answers/SessionEventMetadata;Lcom/crashlytics/android/answers/SessionEvent$Type;Ljava/util/Map;)Lcom/crashlytics/android/answers/SessionEvent;

    move-result-object v2

    .line 8068
    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/crashlytics/android/answers/SessionEventsHandler;->recordEventAsync(Ljava/lang/Object;Z)V

    .line 2176
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crashlytics/android/answers/AnswersKit;->preferenceStore:Lio/fabric/sdk/android/services/persistence/PreferenceStore;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/crashlytics/android/answers/AnswersKit;->preferenceStore:Lio/fabric/sdk/android/services/persistence/PreferenceStore;

    invoke-interface {v3}, Lio/fabric/sdk/android/services/persistence/PreferenceStore;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "analytics_launched"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/fabric/sdk/android/services/persistence/PreferenceStore;->save(Landroid/content/SharedPreferences$Editor;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10038
    :cond_0
    :goto_3
    :try_start_1
    invoke-static {}, Lio/fabric/sdk/android/services/settings/Settings$LazyHolder;->access$100()Lio/fabric/sdk/android/services/settings/Settings;

    move-result-object v2

    .line 92
    invoke-virtual {v2}, Lio/fabric/sdk/android/services/settings/Settings;->awaitSettingsData()Lio/fabric/sdk/android/services/settings/SettingsData;

    move-result-object v16

    .line 93
    .local v16, "settingsData":Lio/fabric/sdk/android/services/settings/SettingsData;
    if-nez v16, :cond_4

    .line 94
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 111
    .end local v16    # "settingsData":Lio/fabric/sdk/android/services/settings/SettingsData;
    :goto_4
    return-object v2

    .line 2168
    :cond_1
    :try_start_2
    new-instance v3, Lio/fabric/sdk/android/services/network/DefaultHttpRequestFactory;

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v4

    invoke-direct {v3, v4}, Lio/fabric/sdk/android/services/network/DefaultHttpRequestFactory;-><init>(Lio/fabric/sdk/android/Logger;)V

    .line 6027
    const-string/jumbo v4, "Crashlytics SAM"

    invoke-static {v4}, Lio/fabric/sdk/android/services/common/ExecutorUtils;->buildSingleThreadScheduledExecutorService(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v4

    .line 6029
    new-instance v5, Lcom/crashlytics/android/answers/EnabledSessionAnalyticsManagerStrategy;

    move-object/from16 v0, v17

    invoke-direct {v5, v14, v4, v0, v3}, Lcom/crashlytics/android/answers/EnabledSessionAnalyticsManagerStrategy;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/crashlytics/android/answers/SessionAnalyticsFilesManager;Lio/fabric/sdk/android/services/network/HttpRequestFactory;)V

    .line 6031
    new-instance v3, Lcom/crashlytics/android/answers/SessionEventsHandler;

    move-object/from16 v0, v17

    invoke-direct {v3, v14, v5, v0, v4}, Lcom/crashlytics/android/answers/SessionEventsHandler;-><init>(Landroid/content/Context;Lio/fabric/sdk/android/services/events/EventsStrategy;Lcom/crashlytics/android/answers/SessionAnalyticsFilesManager;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 6033
    new-instance v4, Lcom/crashlytics/android/answers/SessionAnalyticsManager;

    invoke-direct {v4, v2, v3}, Lcom/crashlytics/android/answers/SessionAnalyticsManager;-><init>(Lcom/crashlytics/android/answers/SessionEventMetadata;Lcom/crashlytics/android/answers/SessionEventsHandler;)V

    .line 2168
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/crashlytics/android/answers/AnswersKit;->sessionAnalyticsManager:Lcom/crashlytics/android/answers/SessionAnalyticsManager;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 2180
    :catch_0
    move-exception v2

    const-string/jumbo v2, "Crashlytics failed to initialize session analytics."

    invoke-static {v14, v2}, Lio/fabric/sdk/android/services/common/CommonUtils;->logControlledError$43da9ce8(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    .line 7240
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 6229
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 97
    .restart local v16    # "settingsData":Lio/fabric/sdk/android/services/settings/SettingsData;
    :cond_4
    :try_start_3
    move-object/from16 v0, v16

    iget-object v2, v0, Lio/fabric/sdk/android/services/settings/SettingsData;->featuresData:Lio/fabric/sdk/android/services/settings/FeaturesSettingsData;

    iget-boolean v2, v2, Lio/fabric/sdk/android/services/settings/FeaturesSettingsData;->collectAnalytics:Z

    if-eqz v2, :cond_5

    .line 98
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crashlytics/android/answers/AnswersKit;->sessionAnalyticsManager:Lcom/crashlytics/android/answers/SessionAnalyticsManager;

    move-object/from16 v0, v16

    iget-object v3, v0, Lio/fabric/sdk/android/services/settings/SettingsData;->analyticsSettingsData:Lio/fabric/sdk/android/services/settings/AnalyticsSettingsData;

    .line 11094
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/fabric/sdk/android/Kit;->context:Landroid/content/Context;

    .line 10188
    const-string/jumbo v5, "com.crashlytics.ApiEndpoint"

    invoke-static {v4, v5}, Lio/fabric/sdk/android/services/common/CommonUtils;->getStringsFileValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 98
    invoke-virtual {v2, v3, v4}, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->setAnalyticsSettingsData(Lio/fabric/sdk/android/services/settings/AnalyticsSettingsData;Ljava/lang/String;)V

    .line 101
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_4

    .line 103
    :cond_5
    invoke-static {v14}, Lio/fabric/sdk/android/services/common/CommonUtils;->logControlled$5ffc00fd(Landroid/content/Context;)V

    .line 105
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crashlytics/android/answers/AnswersKit;->sessionAnalyticsManager:Lcom/crashlytics/android/answers/SessionAnalyticsManager;

    invoke-virtual {v2}, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->disable()V

    .line 106
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v2

    goto :goto_4

    .line 108
    .end local v16    # "settingsData":Lio/fabric/sdk/android/services/settings/SettingsData;
    :catch_1
    move-exception v15

    .line 109
    .local v15, "e":Ljava/lang/Exception;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v2

    const-string/jumbo v3, "Answers"

    const-string/jumbo v4, "Error dealing with settings"

    invoke-interface {v2, v3, v4, v15}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_4
.end method


# virtual methods
.method protected final bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/crashlytics/android/answers/AnswersKit;->doInBackground()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    const-string/jumbo v0, "com.crashlytics.sdk.android:answers"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    const-string/jumbo v0, "1.1.2.37"

    return-object v0
.end method

.method public onException(Lio/fabric/sdk/android/services/common/Crash$FatalException;)V
    .locals 4
    .param p1, "exception"    # Lio/fabric/sdk/android/services/common/Crash$FatalException;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/crashlytics/android/answers/AnswersKit;->sessionAnalyticsManager:Lcom/crashlytics/android/answers/SessionAnalyticsManager;

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/crashlytics/android/answers/AnswersKit;->sessionAnalyticsManager:Lcom/crashlytics/android/answers/SessionAnalyticsManager;

    .line 12012
    iget-object v1, p1, Lio/fabric/sdk/android/services/common/Crash;->sessionId:Ljava/lang/String;

    .line 12048
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 12049
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "onCrash called from main thread!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12055
    :cond_0
    iget-object v2, v0, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->eventsHandler:Lcom/crashlytics/android/answers/SessionEventsHandler;

    iget-object v0, v0, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->metadata:Lcom/crashlytics/android/answers/SessionEventMetadata;

    .line 13053
    const-string/jumbo v3, "sessionId"

    invoke-static {v3, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 13054
    sget-object v3, Lcom/crashlytics/android/answers/SessionEvent$Type;->CRASH:Lcom/crashlytics/android/answers/SessionEvent$Type;

    invoke-static {v0, v3, v1}, Lcom/crashlytics/android/answers/SessionEvent;->buildEvent(Lcom/crashlytics/android/answers/SessionEventMetadata;Lcom/crashlytics/android/answers/SessionEvent$Type;Ljava/util/Map;)Lcom/crashlytics/android/answers/SessionEvent;

    move-result-object v0

    .line 12055
    invoke-virtual {v2, v0}, Lcom/crashlytics/android/answers/SessionEventsHandler;->recordEventSync(Ljava/lang/Object;)V

    .line 201
    :cond_1
    return-void
.end method

.method protected final onPreExecute()Z
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 59
    :try_start_0
    new-instance v7, Lio/fabric/sdk/android/services/persistence/PreferenceStoreImpl;

    invoke-direct {v7, p0}, Lio/fabric/sdk/android/services/persistence/PreferenceStoreImpl;-><init>(Lio/fabric/sdk/android/Kit;)V

    iput-object v7, p0, Lcom/crashlytics/android/answers/AnswersKit;->preferenceStore:Lio/fabric/sdk/android/services/persistence/PreferenceStore;

    .line 1094
    iget-object v1, p0, Lio/fabric/sdk/android/Kit;->context:Landroid/content/Context;

    .line 62
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 63
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 65
    .local v5, "packageName":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 67
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    iget v7, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/crashlytics/android/answers/AnswersKit;->versionCode:Ljava/lang/String;

    .line 68
    iget-object v7, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v7, :cond_0

    const-string/jumbo v7, "0.0"

    :goto_0
    iput-object v7, p0, Lcom/crashlytics/android/answers/AnswersKit;->versionName:Ljava/lang/String;

    .line 71
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x9

    if-lt v7, v8, :cond_1

    .line 72
    iget-wide v8, v3, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iput-wide v8, p0, Lcom/crashlytics/android/answers/AnswersKit;->installedAt:J

    .line 78
    :goto_1
    const/4 v6, 0x1

    .line 82
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v5    # "packageName":Ljava/lang/String;
    :goto_2
    return v6

    .line 68
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v4    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v5    # "packageName":Ljava/lang/String;
    :cond_0
    iget-object v7, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 76
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v7, Ljava/io/File;

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/crashlytics/android/answers/AnswersKit;->installedAt:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 79
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v5    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 80
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v7

    const-string/jumbo v8, "Answers"

    const-string/jumbo v9, "Error setting up app properties"

    invoke-interface {v7, v8, v9, v2}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
