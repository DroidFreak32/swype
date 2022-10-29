.class Lcom/facebook/appevents/SessionEventsState;
.super Ljava/lang/Object;
.source "SessionEventsState.java"


# instance fields
.field private final MAX_ACCUMULATED_LOG_EVENTS:I

.field private accumulatedEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/appevents/AppEvent;",
            ">;"
        }
    .end annotation
.end field

.field private anonymousAppDeviceGUID:Ljava/lang/String;

.field private attributionIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;

.field private inFlightEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/appevents/AppEvent;",
            ">;"
        }
    .end annotation
.end field

.field private numSkippedEventsDueToFullBuffer:I


# direct methods
.method public constructor <init>(Lcom/facebook/internal/AttributionIdentifiers;Ljava/lang/String;)V
    .registers 4
    .param p1, "identifiers"    # Lcom/facebook/internal/AttributionIdentifiers;
    .param p2, "anonymousGUID"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/appevents/SessionEventsState;->accumulatedEvents:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/appevents/SessionEventsState;->inFlightEvents:Ljava/util/List;

    .line 46
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/facebook/appevents/SessionEventsState;->MAX_ACCUMULATED_LOG_EVENTS:I

    .line 51
    iput-object p1, p0, Lcom/facebook/appevents/SessionEventsState;->attributionIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;

    .line 52
    iput-object p2, p0, Lcom/facebook/appevents/SessionEventsState;->anonymousAppDeviceGUID:Ljava/lang/String;

    .line 53
    return-void
.end method

.method private getStringAsByteArray(Ljava/lang/String;)[B
    .registers 5
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 173
    const/4 v1, 0x0

    .line 175
    .local v1, "jsonUtf8":[B
    :try_start_1
    const-string/jumbo v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_7} :catch_9

    move-result-object v1

    .line 180
    :goto_8
    return-object v1

    .line 176
    :catch_9
    move-exception v0

    .line 178
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v2, "Encoding exception: "

    invoke-static {v2, v0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_8
.end method

.method private populateRequest(Lcom/facebook/GraphRequest;Landroid/content/Context;ILorg/json/JSONArray;Z)V
    .registers 12
    .param p1, "request"    # Lcom/facebook/GraphRequest;
    .param p2, "applicationContext"    # Landroid/content/Context;
    .param p3, "numSkipped"    # I
    .param p4, "events"    # Lorg/json/JSONArray;
    .param p5, "limitEventUsage"    # Z

    .prologue
    .line 141
    :try_start_0
    sget-object v3, Lcom/facebook/internal/AppEventsLoggerUtility$GraphAPIActivityType;->CUSTOM_APP_EVENTS:Lcom/facebook/internal/AppEventsLoggerUtility$GraphAPIActivityType;

    iget-object v4, p0, Lcom/facebook/appevents/SessionEventsState;->attributionIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;

    iget-object v5, p0, Lcom/facebook/appevents/SessionEventsState;->anonymousAppDeviceGUID:Ljava/lang/String;

    invoke-static {v3, v4, v5, p5, p2}, Lcom/facebook/internal/AppEventsLoggerUtility;->getJSONObjectForGraphAPICall(Lcom/facebook/internal/AppEventsLoggerUtility$GraphAPIActivityType;Lcom/facebook/internal/AttributionIdentifiers;Ljava/lang/String;ZLandroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    .line 148
    .local v1, "publishParams":Lorg/json/JSONObject;
    iget v3, p0, Lcom/facebook/appevents/SessionEventsState;->numSkippedEventsDueToFullBuffer:I

    if-lez v3, :cond_14

    .line 149
    const-string/jumbo v3, "num_skipped_events"

    invoke-virtual {v1, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_14} :catch_39

    .line 155
    :cond_14
    :goto_14
    invoke-virtual {p1, v1}, Lcom/facebook/GraphRequest;->setGraphObject(Lorg/json/JSONObject;)V

    .line 157
    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->getParameters()Landroid/os/Bundle;

    move-result-object v2

    .line 158
    .local v2, "requestParameters":Landroid/os/Bundle;
    if-nez v2, :cond_22

    .line 159
    new-instance v2, Landroid/os/Bundle;

    .end local v2    # "requestParameters":Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 162
    .restart local v2    # "requestParameters":Landroid/os/Bundle;
    :cond_22
    invoke-virtual {p4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "jsonString":Ljava/lang/String;
    if-eqz v0, :cond_35

    .line 164
    const-string/jumbo v3, "custom_events_file"

    invoke-direct {p0, v0}, Lcom/facebook/appevents/SessionEventsState;->getStringAsByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 167
    invoke-virtual {p1, v0}, Lcom/facebook/GraphRequest;->setTag(Ljava/lang/Object;)V

    .line 169
    :cond_35
    invoke-virtual {p1, v2}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    .line 170
    return-void

    .line 153
    .end local v0    # "jsonString":Ljava/lang/String;
    .end local v1    # "publishParams":Lorg/json/JSONObject;
    .end local v2    # "requestParameters":Landroid/os/Bundle;
    :catch_39
    move-exception v3

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .restart local v1    # "publishParams":Lorg/json/JSONObject;
    goto :goto_14
.end method


# virtual methods
.method public declared-synchronized accumulatePersistedEvents(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/appevents/AppEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/appevents/AppEvent;>;"
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/facebook/appevents/SessionEventsState;->accumulatedEvents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 131
    monitor-exit p0

    return-void

    .line 130
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addEvent(Lcom/facebook/appevents/AppEvent;)V
    .registers 4
    .param p1, "event"    # Lcom/facebook/appevents/AppEvent;

    .prologue
    .line 58
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/facebook/appevents/SessionEventsState;->accumulatedEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/appevents/SessionEventsState;->inFlightEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_1a

    .line 59
    iget v0, p0, Lcom/facebook/appevents/SessionEventsState;->numSkippedEventsDueToFullBuffer:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/appevents/SessionEventsState;->numSkippedEventsDueToFullBuffer:I
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_20

    .line 63
    :goto_18
    monitor-exit p0

    return-void

    .line 61
    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lcom/facebook/appevents/SessionEventsState;->accumulatedEvents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_20

    goto :goto_18

    .line 58
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearInFlightAndStats(Z)V
    .registers 4
    .param p1, "moveToAccumulated"    # Z

    .prologue
    .line 70
    monitor-enter p0

    if-eqz p1, :cond_a

    .line 71
    :try_start_3
    iget-object v0, p0, Lcom/facebook/appevents/SessionEventsState;->accumulatedEvents:Ljava/util/List;

    iget-object v1, p0, Lcom/facebook/appevents/SessionEventsState;->inFlightEvents:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 73
    :cond_a
    iget-object v0, p0, Lcom/facebook/appevents/SessionEventsState;->inFlightEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/appevents/SessionEventsState;->numSkippedEventsDueToFullBuffer:I
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    .line 75
    monitor-exit p0

    return-void

    .line 70
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAccumulatedEventCount()I
    .registers 2

    .prologue
    .line 66
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/facebook/appevents/SessionEventsState;->accumulatedEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEventsToPersist()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/appevents/AppEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/facebook/appevents/SessionEventsState;->accumulatedEvents:Ljava/util/List;

    .line 122
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/appevents/AppEvent;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/facebook/appevents/SessionEventsState;->accumulatedEvents:Ljava/util/List;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 123
    monitor-exit p0

    return-object v0

    .line 121
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/appevents/AppEvent;>;"
    :catchall_c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public populateRequest(Lcom/facebook/GraphRequest;Landroid/content/Context;ZZ)I
    .registers 13
    .param p1, "request"    # Lcom/facebook/GraphRequest;
    .param p2, "applicationContext"    # Landroid/content/Context;
    .param p3, "includeImplicitEvents"    # Z
    .param p4, "limitEventUsage"    # Z

    .prologue
    .line 85
    monitor-enter p0

    .line 86
    :try_start_1
    iget v3, p0, Lcom/facebook/appevents/SessionEventsState;->numSkippedEventsDueToFullBuffer:I

    .line 89
    .local v3, "numSkipped":I
    iget-object v0, p0, Lcom/facebook/appevents/SessionEventsState;->inFlightEvents:Ljava/util/List;

    iget-object v1, p0, Lcom/facebook/appevents/SessionEventsState;->accumulatedEvents:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 90
    iget-object v0, p0, Lcom/facebook/appevents/SessionEventsState;->accumulatedEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 92
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 93
    .local v4, "jsonArray":Lorg/json/JSONArray;
    iget-object v0, p0, Lcom/facebook/appevents/SessionEventsState;->inFlightEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_1a
    :goto_1a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/appevents/AppEvent;

    .line 94
    .local v6, "event":Lcom/facebook/appevents/AppEvent;
    invoke-virtual {v6}, Lcom/facebook/appevents/AppEvent;->isChecksumValid()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 95
    if-nez p3, :cond_34

    invoke-virtual {v6}, Lcom/facebook/appevents/AppEvent;->getIsImplicit()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 96
    :cond_34
    invoke-virtual {v6}, Lcom/facebook/appevents/AppEvent;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1a

    .line 106
    .end local v3    # "numSkipped":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .end local v6    # "event":Lcom/facebook/appevents/AppEvent;
    .end local v7    # "i$":Ljava/util/Iterator;
    :catchall_3c
    move-exception v0

    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_3c

    throw v0

    .line 99
    .restart local v3    # "numSkipped":I
    .restart local v4    # "jsonArray":Lorg/json/JSONArray;
    .restart local v6    # "event":Lcom/facebook/appevents/AppEvent;
    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_3f
    :try_start_3f
    const-string/jumbo v0, "Event with invalid checksum: %s"

    invoke-virtual {v6}, Lcom/facebook/appevents/AppEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    .line 103
    .end local v6    # "event":Lcom/facebook/appevents/AppEvent;
    :cond_4a
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_53

    .line 104
    const/4 v0, 0x0

    monitor-exit p0

    .line 114
    :goto_52
    return v0

    .line 106
    :cond_53
    monitor-exit p0
    :try_end_54
    .catchall {:try_start_3f .. :try_end_54} :catchall_3c

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p4

    .line 108
    invoke-direct/range {v0 .. v5}, Lcom/facebook/appevents/SessionEventsState;->populateRequest(Lcom/facebook/GraphRequest;Landroid/content/Context;ILorg/json/JSONArray;Z)V

    .line 114
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    goto :goto_52
.end method
