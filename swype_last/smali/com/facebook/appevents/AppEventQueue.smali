.class Lcom/facebook/appevents/AppEventQueue;
.super Ljava/lang/Object;
.source "AppEventQueue.java"


# static fields
.field private static final FLUSH_PERIOD_IN_SECONDS:I = 0xf

.field private static final NUM_LOG_EVENTS_TO_TRY_TO_FLUSH_AFTER:I = 0x64

.field private static final TAG:Ljava/lang/String;

.field private static volatile appEventCollection:Lcom/facebook/appevents/AppEventCollection;

.field private static final flushRunnable:Ljava/lang/Runnable;

.field private static scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

.field private static final singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 50
    const-class v0, Lcom/facebook/appevents/AppEventQueue;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/AppEventQueue;->TAG:Ljava/lang/String;

    .line 55
    new-instance v0, Lcom/facebook/appevents/AppEventCollection;

    invoke-direct {v0}, Lcom/facebook/appevents/AppEventCollection;-><init>()V

    sput-object v0, Lcom/facebook/appevents/AppEventQueue;->appEventCollection:Lcom/facebook/appevents/AppEventCollection;

    .line 56
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/AppEventQueue;->singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 61
    new-instance v0, Lcom/facebook/appevents/AppEventQueue$1;

    invoke-direct {v0}, Lcom/facebook/appevents/AppEventQueue$1;-><init>()V

    sput-object v0, Lcom/facebook/appevents/AppEventQueue;->flushRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/ScheduledFuture;
    .registers 1

    .prologue
    .line 49
    sget-object v0, Lcom/facebook/appevents/AppEventQueue;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method

.method static synthetic access$002(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .registers 1
    .param p0, "x0"    # Ljava/util/concurrent/ScheduledFuture;

    .prologue
    .line 49
    sput-object p0, Lcom/facebook/appevents/AppEventQueue;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method

.method static synthetic access$100()Lcom/facebook/appevents/AppEventCollection;
    .registers 1

    .prologue
    .line 49
    sget-object v0, Lcom/facebook/appevents/AppEventQueue;->appEventCollection:Lcom/facebook/appevents/AppEventCollection;

    return-object v0
.end method

.method static synthetic access$102(Lcom/facebook/appevents/AppEventCollection;)Lcom/facebook/appevents/AppEventCollection;
    .registers 1
    .param p0, "x0"    # Lcom/facebook/appevents/AppEventCollection;

    .prologue
    .line 49
    sput-object p0, Lcom/facebook/appevents/AppEventQueue;->appEventCollection:Lcom/facebook/appevents/AppEventCollection;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/Runnable;
    .registers 1

    .prologue
    .line 49
    sget-object v0, Lcom/facebook/appevents/AppEventQueue;->flushRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/concurrent/ScheduledExecutorService;
    .registers 1

    .prologue
    .line 49
    sget-object v0, Lcom/facebook/appevents/AppEventQueue;->singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$400(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/GraphRequest;Lcom/facebook/GraphResponse;Lcom/facebook/appevents/SessionEventsState;Lcom/facebook/appevents/FlushStatistics;)V
    .registers 5
    .param p0, "x0"    # Lcom/facebook/appevents/AccessTokenAppIdPair;
    .param p1, "x1"    # Lcom/facebook/GraphRequest;
    .param p2, "x2"    # Lcom/facebook/GraphResponse;
    .param p3, "x3"    # Lcom/facebook/appevents/SessionEventsState;
    .param p4, "x4"    # Lcom/facebook/appevents/FlushStatistics;

    .prologue
    .line 49
    invoke-static {p0, p1, p2, p3, p4}, Lcom/facebook/appevents/AppEventQueue;->handleResponse(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/GraphRequest;Lcom/facebook/GraphResponse;Lcom/facebook/appevents/SessionEventsState;Lcom/facebook/appevents/FlushStatistics;)V

    return-void
.end method

.method public static add(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/AppEvent;)V
    .registers 4
    .param p0, "accessTokenAppId"    # Lcom/facebook/appevents/AccessTokenAppIdPair;
    .param p1, "appEvent"    # Lcom/facebook/appevents/AppEvent;

    .prologue
    .line 96
    sget-object v0, Lcom/facebook/appevents/AppEventQueue;->singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/facebook/appevents/AppEventQueue$4;

    invoke-direct {v1, p0, p1}, Lcom/facebook/appevents/AppEventQueue$4;-><init>(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/AppEvent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 115
    return-void
.end method

.method private static buildRequestForSession(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/SessionEventsState;ZLcom/facebook/appevents/FlushStatistics;)Lcom/facebook/GraphRequest;
    .registers 14
    .param p0, "accessTokenAppId"    # Lcom/facebook/appevents/AccessTokenAppIdPair;
    .param p1, "appEvents"    # Lcom/facebook/appevents/SessionEventsState;
    .param p2, "limitEventUsage"    # Z
    .param p3, "flushState"    # Lcom/facebook/appevents/FlushStatistics;

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 195
    invoke-virtual {p0}, Lcom/facebook/appevents/AccessTokenAppIdPair;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "applicationId":Ljava/lang/String;
    invoke-static {v0, v9}, Lcom/facebook/internal/Utility;->queryAppSettings(Ljava/lang/String;Z)Lcom/facebook/internal/Utility$FetchedAppSettings;

    move-result-object v1

    .line 200
    .local v1, "fetchedAppSettings":Lcom/facebook/internal/Utility$FetchedAppSettings;
    const-string/jumbo v7, "%s/activities"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v0, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v6, v6}, Lcom/facebook/GraphRequest;->newPostRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v3

    .line 206
    .local v3, "postRequest":Lcom/facebook/GraphRequest;
    invoke-virtual {v3}, Lcom/facebook/GraphRequest;->getParameters()Landroid/os/Bundle;

    move-result-object v5

    .line 207
    .local v5, "requestParameters":Landroid/os/Bundle;
    if-nez v5, :cond_25

    .line 208
    new-instance v5, Landroid/os/Bundle;

    .end local v5    # "requestParameters":Landroid/os/Bundle;
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 210
    .restart local v5    # "requestParameters":Landroid/os/Bundle;
    :cond_25
    const-string/jumbo v7, "access_token"

    invoke-virtual {p0}, Lcom/facebook/appevents/AccessTokenAppIdPair;->getAccessTokenString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->getPushNotificationsRegistrationId()Ljava/lang/String;

    move-result-object v4

    .line 213
    .local v4, "pushNotificationsRegistrationId":Ljava/lang/String;
    if-eqz v4, :cond_3b

    .line 214
    const-string/jumbo v7, "device_token"

    invoke-virtual {v5, v7, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_3b
    invoke-virtual {v3, v5}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    .line 219
    if-nez v1, :cond_42

    move-object v3, v6

    .line 247
    .end local v3    # "postRequest":Lcom/facebook/GraphRequest;
    :goto_41
    return-object v3

    .line 223
    .restart local v3    # "postRequest":Lcom/facebook/GraphRequest;
    :cond_42
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v1}, Lcom/facebook/internal/Utility$FetchedAppSettings;->supportsImplicitLogging()Z

    move-result v8

    invoke-virtual {p1, v3, v7, v8, p2}, Lcom/facebook/appevents/SessionEventsState;->populateRequest(Lcom/facebook/GraphRequest;Landroid/content/Context;ZZ)I

    move-result v2

    .line 229
    .local v2, "numEvents":I
    if-nez v2, :cond_52

    move-object v3, v6

    .line 230
    goto :goto_41

    .line 233
    :cond_52
    iget v6, p3, Lcom/facebook/appevents/FlushStatistics;->numEvents:I

    add-int/2addr v6, v2

    iput v6, p3, Lcom/facebook/appevents/FlushStatistics;->numEvents:I

    .line 235
    new-instance v6, Lcom/facebook/appevents/AppEventQueue$5;

    invoke-direct {v6, p0, v3, p1, p3}, Lcom/facebook/appevents/AppEventQueue$5;-><init>(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/GraphRequest;Lcom/facebook/appevents/SessionEventsState;Lcom/facebook/appevents/FlushStatistics;)V

    invoke-virtual {v3, v6}, Lcom/facebook/GraphRequest;->setCallback(Lcom/facebook/GraphRequest$Callback;)V

    goto :goto_41
.end method

.method public static flush(Lcom/facebook/appevents/FlushReason;)V
    .registers 3
    .param p0, "reason"    # Lcom/facebook/appevents/FlushReason;

    .prologue
    .line 85
    sget-object v0, Lcom/facebook/appevents/AppEventQueue;->singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/facebook/appevents/AppEventQueue$3;

    invoke-direct {v1, p0}, Lcom/facebook/appevents/AppEventQueue$3;-><init>(Lcom/facebook/appevents/FlushReason;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 91
    return-void
.end method

.method static flushAndWait(Lcom/facebook/appevents/FlushReason;)V
    .registers 7
    .param p0, "reason"    # Lcom/facebook/appevents/FlushReason;

    .prologue
    .line 126
    invoke-static {}, Lcom/facebook/appevents/AppEventStore;->readAndClearStore()Lcom/facebook/appevents/PersistedEvents;

    move-result-object v3

    .line 128
    .local v3, "result":Lcom/facebook/appevents/PersistedEvents;
    sget-object v4, Lcom/facebook/appevents/AppEventQueue;->appEventCollection:Lcom/facebook/appevents/AppEventCollection;

    invoke-virtual {v4, v3}, Lcom/facebook/appevents/AppEventCollection;->addPersistedEvents(Lcom/facebook/appevents/PersistedEvents;)V

    .line 133
    :try_start_9
    sget-object v4, Lcom/facebook/appevents/AppEventQueue;->appEventCollection:Lcom/facebook/appevents/AppEventCollection;

    invoke-static {p0, v4}, Lcom/facebook/appevents/AppEventQueue;->sendEventsToServer(Lcom/facebook/appevents/FlushReason;Lcom/facebook/appevents/AppEventCollection;)Lcom/facebook/appevents/FlushStatistics;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_35

    move-result-object v1

    .line 141
    .local v1, "flushResults":Lcom/facebook/appevents/FlushStatistics;
    if-eqz v1, :cond_34

    .line 142
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "com.facebook.sdk.APP_EVENTS_FLUSHED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "com.facebook.sdk.APP_EVENTS_NUM_EVENTS_FLUSHED"

    iget v5, v1, Lcom/facebook/appevents/FlushStatistics;->numEvents:I

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 146
    const-string/jumbo v4, "com.facebook.sdk.APP_EVENTS_FLUSH_RESULT"

    iget-object v5, v1, Lcom/facebook/appevents/FlushStatistics;->result:Lcom/facebook/appevents/FlushResult;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 149
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 150
    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 152
    .end local v1    # "flushResults":Lcom/facebook/appevents/FlushStatistics;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_34
    :goto_34
    return-void

    .line 136
    :catch_35
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/facebook/appevents/AppEventQueue;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Caught unexpected exception while flushing app events: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_34
.end method

.method public static getKeySet()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/appevents/AccessTokenAppIdPair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    sget-object v0, Lcom/facebook/appevents/AppEventQueue;->appEventCollection:Lcom/facebook/appevents/AppEventCollection;

    invoke-virtual {v0}, Lcom/facebook/appevents/AppEventCollection;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private static handleResponse(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/GraphRequest;Lcom/facebook/GraphResponse;Lcom/facebook/appevents/SessionEventsState;Lcom/facebook/appevents/FlushStatistics;)V
    .registers 16
    .param p0, "accessTokenAppId"    # Lcom/facebook/appevents/AccessTokenAppIdPair;
    .param p1, "request"    # Lcom/facebook/GraphRequest;
    .param p2, "response"    # Lcom/facebook/GraphResponse;
    .param p3, "appEvents"    # Lcom/facebook/appevents/SessionEventsState;
    .param p4, "flushState"    # Lcom/facebook/appevents/FlushStatistics;

    .prologue
    .line 256
    invoke-virtual {p2}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    .line 257
    .local v0, "error":Lcom/facebook/FacebookRequestError;
    const-string/jumbo v4, "Success"

    .line 259
    .local v4, "resultDescription":Ljava/lang/String;
    sget-object v2, Lcom/facebook/appevents/FlushResult;->SUCCESS:Lcom/facebook/appevents/FlushResult;

    .line 261
    .local v2, "flushResult":Lcom/facebook/appevents/FlushResult;
    if-eqz v0, :cond_17

    .line 263
    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->getErrorCode()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_70

    .line 264
    const-string/jumbo v4, "Failed: No Connectivity"

    .line 265
    sget-object v2, Lcom/facebook/appevents/FlushResult;->NO_CONNECTIVITY:Lcom/facebook/appevents/FlushResult;

    .line 274
    :cond_17
    :goto_17
    sget-object v5, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    invoke-static {v5}, Lcom/facebook/FacebookSdk;->isLoggingBehaviorEnabled(Lcom/facebook/LoggingBehavior;)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 275
    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 279
    .local v1, "eventsJsonString":Ljava/lang/String;
    :try_start_25
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 280
    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;
    :try_end_2e
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_2e} :catch_8b

    move-result-object v3

    .line 285
    .local v3, "prettyPrintedEvents":Ljava/lang/String;
    :goto_2f
    sget-object v5, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    sget-object v6, Lcom/facebook/appevents/AppEventQueue;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Flush completed\nParams: %s\n  Result: %s\n  Events JSON: %s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->getGraphObject()Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v4, v8, v9

    const/4 v9, 0x2

    aput-object v3, v8, v9

    invoke-static {v5, v6, v7, v8}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    .end local v1    # "eventsJsonString":Ljava/lang/String;
    .end local v3    # "prettyPrintedEvents":Ljava/lang/String;
    :cond_4d
    if-eqz v0, :cond_90

    const/4 v5, 0x1

    :goto_50
    invoke-virtual {p3, v5}, Lcom/facebook/appevents/SessionEventsState;->clearInFlightAndStats(Z)V

    .line 294
    sget-object v5, Lcom/facebook/appevents/FlushResult;->NO_CONNECTIVITY:Lcom/facebook/appevents/FlushResult;

    if-ne v2, v5, :cond_63

    .line 300
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    new-instance v6, Lcom/facebook/appevents/AppEventQueue$6;

    invoke-direct {v6, p0, p3}, Lcom/facebook/appevents/AppEventQueue$6;-><init>(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/SessionEventsState;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 308
    :cond_63
    sget-object v5, Lcom/facebook/appevents/FlushResult;->SUCCESS:Lcom/facebook/appevents/FlushResult;

    if-eq v2, v5, :cond_6f

    .line 310
    iget-object v5, p4, Lcom/facebook/appevents/FlushStatistics;->result:Lcom/facebook/appevents/FlushResult;

    sget-object v6, Lcom/facebook/appevents/FlushResult;->NO_CONNECTIVITY:Lcom/facebook/appevents/FlushResult;

    if-eq v5, v6, :cond_6f

    .line 311
    iput-object v2, p4, Lcom/facebook/appevents/FlushStatistics;->result:Lcom/facebook/appevents/FlushResult;

    .line 314
    :cond_6f
    return-void

    .line 267
    :cond_70
    const-string/jumbo v5, "Failed:\n  Response: %s\n  Error %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p2}, Lcom/facebook/GraphResponse;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 270
    sget-object v2, Lcom/facebook/appevents/FlushResult;->SERVER_ERROR:Lcom/facebook/appevents/FlushResult;

    goto :goto_17

    .line 282
    .restart local v1    # "eventsJsonString":Ljava/lang/String;
    :catch_8b
    move-exception v5

    const-string/jumbo v3, "<Can\'t encode events for debug logging>"

    .restart local v3    # "prettyPrintedEvents":Ljava/lang/String;
    goto :goto_2f

    .line 292
    .end local v1    # "eventsJsonString":Ljava/lang/String;
    .end local v3    # "prettyPrintedEvents":Ljava/lang/String;
    :cond_90
    const/4 v5, 0x0

    goto :goto_50
.end method

.method public static persistToDisk()V
    .registers 2

    .prologue
    .line 74
    sget-object v0, Lcom/facebook/appevents/AppEventQueue;->singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/facebook/appevents/AppEventQueue$2;

    invoke-direct {v1}, Lcom/facebook/appevents/AppEventQueue$2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 81
    return-void
.end method

.method private static sendEventsToServer(Lcom/facebook/appevents/FlushReason;Lcom/facebook/appevents/AppEventCollection;)Lcom/facebook/appevents/FlushStatistics;
    .registers 14
    .param p0, "reason"    # Lcom/facebook/appevents/FlushReason;
    .param p1, "appEventCollection"    # Lcom/facebook/appevents/AppEventCollection;

    .prologue
    .line 157
    new-instance v1, Lcom/facebook/appevents/FlushStatistics;

    invoke-direct {v1}, Lcom/facebook/appevents/FlushStatistics;-><init>()V

    .line 159
    .local v1, "flushResults":Lcom/facebook/appevents/FlushStatistics;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 160
    invoke-static {v6}, Lcom/facebook/FacebookSdk;->getLimitEventAndDataUsage(Landroid/content/Context;)Z

    move-result v3

    .line 162
    .local v3, "limitEventUsage":Z
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v5, "requestsToExecute":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/GraphRequest;>;"
    invoke-virtual {p1}, Lcom/facebook/appevents/AppEventCollection;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1a
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/appevents/AccessTokenAppIdPair;

    .line 164
    .local v0, "accessTokenAppId":Lcom/facebook/appevents/AccessTokenAppIdPair;
    invoke-virtual {p1, v0}, Lcom/facebook/appevents/AppEventCollection;->get(Lcom/facebook/appevents/AccessTokenAppIdPair;)Lcom/facebook/appevents/SessionEventsState;

    move-result-object v6

    invoke-static {v0, v6, v3, v1}, Lcom/facebook/appevents/AppEventQueue;->buildRequestForSession(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/SessionEventsState;ZLcom/facebook/appevents/FlushStatistics;)Lcom/facebook/GraphRequest;

    move-result-object v4

    .line 169
    .local v4, "request":Lcom/facebook/GraphRequest;
    if-eqz v4, :cond_1a

    .line 170
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 174
    .end local v0    # "accessTokenAppId":Lcom/facebook/appevents/AccessTokenAppIdPair;
    .end local v4    # "request":Lcom/facebook/GraphRequest;
    :cond_34
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_6b

    .line 175
    sget-object v6, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    sget-object v7, Lcom/facebook/appevents/AppEventQueue;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Flushing %d events due to %s."

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, v1, Lcom/facebook/appevents/FlushStatistics;->numEvents:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {p0}, Lcom/facebook/appevents/FlushReason;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v6, v7, v8, v9}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/GraphRequest;

    .line 182
    invoke-virtual {v6}, Lcom/facebook/GraphRequest;->executeAndWait()Lcom/facebook/GraphResponse;

    goto :goto_5b

    .line 187
    :cond_6b
    const/4 v1, 0x0

    .end local v1    # "flushResults":Lcom/facebook/appevents/FlushStatistics;
    :cond_6c
    return-object v1
.end method
