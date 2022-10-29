.class Lcom/crashlytics/android/answers/SessionAnalyticsManager;
.super Ljava/lang/Object;
.source "SessionAnalyticsManager.java"


# instance fields
.field final eventsHandler:Lcom/crashlytics/android/answers/SessionEventsHandler;

.field final metadata:Lcom/crashlytics/android/answers/SessionEventMetadata;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/answers/SessionEventMetadata;Lcom/crashlytics/android/answers/SessionEventsHandler;)V
    .registers 3
    .param p1, "metadata"    # Lcom/crashlytics/android/answers/SessionEventMetadata;
    .param p2, "eventsHandler"    # Lcom/crashlytics/android/answers/SessionEventsHandler;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->metadata:Lcom/crashlytics/android/answers/SessionEventMetadata;

    .line 38
    iput-object p2, p0, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->eventsHandler:Lcom/crashlytics/android/answers/SessionEventsHandler;

    .line 39
    return-void
.end method


# virtual methods
.method public disable()V
    .registers 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->eventsHandler:Lcom/crashlytics/android/answers/SessionEventsHandler;

    .line 1075
    new-instance v1, Lio/fabric/sdk/android/services/events/EventsHandler$4;

    invoke-direct {v1, v0}, Lio/fabric/sdk/android/services/events/EventsHandler$4;-><init>(Lio/fabric/sdk/android/services/events/EventsHandler;)V

    invoke-virtual {v0, v1}, Lio/fabric/sdk/android/services/events/EventsHandler;->executeAsync(Ljava/lang/Runnable;)V

    .line 115
    return-void
.end method

.method public final setAnalyticsSettingsData(Lio/fabric/sdk/android/services/settings/AnalyticsSettingsData;Ljava/lang/String;)V
    .registers 4
    .param p1, "analyticsSettingsData"    # Lio/fabric/sdk/android/services/settings/AnalyticsSettingsData;
    .param p2, "protocolAndHostOverride"    # Ljava/lang/String;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->eventsHandler:Lcom/crashlytics/android/answers/SessionEventsHandler;

    invoke-virtual {v0, p1, p2}, Lcom/crashlytics/android/answers/SessionEventsHandler;->setAnalyticsSettingsData(Lio/fabric/sdk/android/services/settings/AnalyticsSettingsData;Ljava/lang/String;)V

    .line 111
    return-void
.end method
