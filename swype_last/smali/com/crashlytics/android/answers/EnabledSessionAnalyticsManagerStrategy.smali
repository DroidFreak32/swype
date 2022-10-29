.class final Lcom/crashlytics/android/answers/EnabledSessionAnalyticsManagerStrategy;
.super Lio/fabric/sdk/android/services/events/EnabledEventsStrategy;
.source "EnabledSessionAnalyticsManagerStrategy.java"

# interfaces
.implements Lcom/crashlytics/android/answers/SessionAnalyticsManagerStrategy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/services/events/EnabledEventsStrategy",
        "<",
        "Lcom/crashlytics/android/answers/SessionEvent;",
        ">;",
        "Lcom/crashlytics/android/answers/SessionAnalyticsManagerStrategy",
        "<",
        "Lcom/crashlytics/android/answers/SessionEvent;",
        ">;"
    }
.end annotation


# instance fields
.field filesSender:Lio/fabric/sdk/android/services/events/FilesSender;

.field private final httpRequestFactory:Lio/fabric/sdk/android/services/network/HttpRequestFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/crashlytics/android/answers/SessionAnalyticsFilesManager;Lio/fabric/sdk/android/services/network/HttpRequestFactory;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "executorService"    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p3, "filesManager"    # Lcom/crashlytics/android/answers/SessionAnalyticsFilesManager;
    .param p4, "httpRequestFactory"    # Lio/fabric/sdk/android/services/network/HttpRequestFactory;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lio/fabric/sdk/android/services/events/EnabledEventsStrategy;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lio/fabric/sdk/android/services/events/EventsFilesManager;)V

    .line 29
    iput-object p4, p0, Lcom/crashlytics/android/answers/EnabledSessionAnalyticsManagerStrategy;->httpRequestFactory:Lio/fabric/sdk/android/services/network/HttpRequestFactory;

    .line 30
    return-void
.end method


# virtual methods
.method public final getFilesSender()Lio/fabric/sdk/android/services/events/FilesSender;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/crashlytics/android/answers/EnabledSessionAnalyticsManagerStrategy;->filesSender:Lio/fabric/sdk/android/services/events/FilesSender;

    return-object v0
.end method

.method public final setAnalyticsSettingsData(Lio/fabric/sdk/android/services/settings/AnalyticsSettingsData;Ljava/lang/String;)V
    .registers 9
    .param p1, "analyticsSettingsData"    # Lio/fabric/sdk/android/services/settings/AnalyticsSettingsData;
    .param p2, "protocolAndHostOverride"    # Ljava/lang/String;

    .prologue
    .line 40
    new-instance v0, Lcom/crashlytics/android/answers/DefaultSessionAnalyticsFilesSender;

    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object v1

    iget-object v3, p1, Lio/fabric/sdk/android/services/settings/AnalyticsSettingsData;->analyticsURL:Ljava/lang/String;

    iget-object v4, p0, Lcom/crashlytics/android/answers/EnabledSessionAnalyticsManagerStrategy;->httpRequestFactory:Lio/fabric/sdk/android/services/network/HttpRequestFactory;

    new-instance v2, Lio/fabric/sdk/android/services/common/ApiKey;

    invoke-direct {v2}, Lio/fabric/sdk/android/services/common/ApiKey;-><init>()V

    iget-object v2, p0, Lcom/crashlytics/android/answers/EnabledSessionAnalyticsManagerStrategy;->context:Landroid/content/Context;

    invoke-static {v2}, Lio/fabric/sdk/android/services/common/ApiKey;->getValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/crashlytics/android/answers/DefaultSessionAnalyticsFilesSender;-><init>(Lio/fabric/sdk/android/Kit;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/network/HttpRequestFactory;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/crashlytics/android/answers/EnabledSessionAnalyticsManagerStrategy;->filesSender:Lio/fabric/sdk/android/services/events/FilesSender;

    .line 44
    iget-object v0, p0, Lcom/crashlytics/android/answers/EnabledSessionAnalyticsManagerStrategy;->filesManager:Lio/fabric/sdk/android/services/events/EventsFilesManager;

    check-cast v0, Lcom/crashlytics/android/answers/SessionAnalyticsFilesManager;

    .line 1064
    iput-object p1, v0, Lcom/crashlytics/android/answers/SessionAnalyticsFilesManager;->analyticsSettingsData:Lio/fabric/sdk/android/services/settings/AnalyticsSettingsData;

    .line 46
    iget v0, p1, Lio/fabric/sdk/android/services/settings/AnalyticsSettingsData;->flushIntervalSeconds:I

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/answers/EnabledSessionAnalyticsManagerStrategy;->configureRollover(I)V

    .line 47
    return-void
.end method
