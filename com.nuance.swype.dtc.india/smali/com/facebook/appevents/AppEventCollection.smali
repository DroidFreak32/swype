.class Lcom/facebook/appevents/AppEventCollection;
.super Ljava/lang/Object;
.source "AppEventCollection.java"


# instance fields
.field private final stateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/facebook/appevents/AccessTokenAppIdPair;",
            "Lcom/facebook/appevents/SessionEventsState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/appevents/AppEventCollection;->stateMap:Ljava/util/HashMap;

    .line 36
    return-void
.end method

.method private declared-synchronized getSessionEventsState(Lcom/facebook/appevents/AccessTokenAppIdPair;)Lcom/facebook/appevents/SessionEventsState;
    .locals 4
    .param p1, "accessTokenAppId"    # Lcom/facebook/appevents/AccessTokenAppIdPair;

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/facebook/appevents/AppEventCollection;->stateMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/appevents/SessionEventsState;

    .line 79
    .local v1, "eventsState":Lcom/facebook/appevents/SessionEventsState;
    if-nez v1, :cond_0

    .line 80
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 84
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/facebook/appevents/SessionEventsState;

    .end local v1    # "eventsState":Lcom/facebook/appevents/SessionEventsState;
    invoke-static {v0}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionIdentifiers(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v2

    invoke-static {v0}, Lcom/facebook/appevents/AppEventsLogger;->getAnonymousAppDeviceGUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/facebook/appevents/SessionEventsState;-><init>(Lcom/facebook/internal/AttributionIdentifiers;Ljava/lang/String;)V

    .line 89
    .end local v0    # "context":Landroid/content/Context;
    .restart local v1    # "eventsState":Lcom/facebook/appevents/SessionEventsState;
    :cond_0
    iget-object v2, p0, Lcom/facebook/appevents/AppEventCollection;->stateMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit p0

    return-object v1

    .line 78
    .end local v1    # "eventsState":Lcom/facebook/appevents/SessionEventsState;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public declared-synchronized addEvent(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/AppEvent;)V
    .locals 1
    .param p1, "accessTokenAppIdPair"    # Lcom/facebook/appevents/AccessTokenAppIdPair;
    .param p2, "appEvent"    # Lcom/facebook/appevents/AppEvent;

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/appevents/AppEventCollection;->getSessionEventsState(Lcom/facebook/appevents/AccessTokenAppIdPair;)Lcom/facebook/appevents/SessionEventsState;

    move-result-object v0

    .line 56
    invoke-virtual {v0, p2}, Lcom/facebook/appevents/SessionEventsState;->addEvent(Lcom/facebook/appevents/AppEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit p0

    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addPersistedEvents(Lcom/facebook/appevents/PersistedEvents;)V
    .locals 6
    .param p1, "persistedEvents"    # Lcom/facebook/appevents/PersistedEvents;

    .prologue
    .line 39
    monitor-enter p0

    if-nez p1, :cond_1

    .line 50
    :cond_0
    monitor-exit p0

    return-void

    .line 43
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/appevents/PersistedEvents;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/appevents/AccessTokenAppIdPair;

    .line 44
    .local v0, "accessTokenAppIdPair":Lcom/facebook/appevents/AccessTokenAppIdPair;
    invoke-direct {p0, v0}, Lcom/facebook/appevents/AppEventCollection;->getSessionEventsState(Lcom/facebook/appevents/AccessTokenAppIdPair;)Lcom/facebook/appevents/SessionEventsState;

    move-result-object v4

    .line 46
    .local v4, "sessionEventsState":Lcom/facebook/appevents/SessionEventsState;
    invoke-virtual {p1, v0}, Lcom/facebook/appevents/PersistedEvents;->get(Lcom/facebook/appevents/AccessTokenAppIdPair;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/appevents/AppEvent;

    .line 47
    .local v1, "appEvent":Lcom/facebook/appevents/AppEvent;
    invoke-virtual {v4, v1}, Lcom/facebook/appevents/SessionEventsState;->addEvent(Lcom/facebook/appevents/AppEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 39
    .end local v0    # "accessTokenAppIdPair":Lcom/facebook/appevents/AccessTokenAppIdPair;
    .end local v1    # "appEvent":Lcom/facebook/appevents/AppEvent;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "sessionEventsState":Lcom/facebook/appevents/SessionEventsState;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized get(Lcom/facebook/appevents/AccessTokenAppIdPair;)Lcom/facebook/appevents/SessionEventsState;
    .locals 1
    .param p1, "accessTokenAppIdPair"    # Lcom/facebook/appevents/AccessTokenAppIdPair;

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/appevents/AppEventCollection;->stateMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/appevents/SessionEventsState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEventCount()I
    .locals 4

    .prologue
    .line 68
    monitor-enter p0

    const/4 v0, 0x0

    .line 69
    .local v0, "count":I
    :try_start_0
    iget-object v3, p0, Lcom/facebook/appevents/AppEventCollection;->stateMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/appevents/SessionEventsState;

    .line 70
    .local v2, "sessionEventsState":Lcom/facebook/appevents/SessionEventsState;
    invoke-virtual {v2}, Lcom/facebook/appevents/SessionEventsState;->getAccumulatedEventCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    add-int/2addr v0, v3

    .line 71
    goto :goto_0

    .line 73
    .end local v2    # "sessionEventsState":Lcom/facebook/appevents/SessionEventsState;
    :cond_0
    monitor-exit p0

    return v0

    .line 68
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized keySet()Ljava/util/Set;
    .locals 1
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
    .line 60
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/appevents/AppEventCollection;->stateMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
