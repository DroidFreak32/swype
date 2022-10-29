.class final Lcom/crashlytics/android/answers/AutoSessionAnalyticsManager;
.super Lcom/crashlytics/android/answers/SessionAnalyticsManager;
.source "AutoSessionAnalyticsManager.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private final activityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private final application:Landroid/app/Application;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/answers/SessionEventMetadata;Lcom/crashlytics/android/answers/SessionEventsHandler;Landroid/app/Application;)V
    .registers 5
    .param p1, "metadata"    # Lcom/crashlytics/android/answers/SessionEventMetadata;
    .param p2, "eventsHandler"    # Lcom/crashlytics/android/answers/SessionEventsHandler;
    .param p3, "application"    # Landroid/app/Application;

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/crashlytics/android/answers/SessionAnalyticsManager;-><init>(Lcom/crashlytics/android/answers/SessionEventMetadata;Lcom/crashlytics/android/answers/SessionEventsHandler;)V

    .line 24
    new-instance v0, Lcom/crashlytics/android/answers/AutoSessionAnalyticsManager$1;

    invoke-direct {v0, p0}, Lcom/crashlytics/android/answers/AutoSessionAnalyticsManager$1;-><init>(Lcom/crashlytics/android/answers/AutoSessionAnalyticsManager;)V

    iput-object v0, p0, Lcom/crashlytics/android/answers/AutoSessionAnalyticsManager;->activityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 77
    iput-object p3, p0, Lcom/crashlytics/android/answers/AutoSessionAnalyticsManager;->application:Landroid/app/Application;

    .line 78
    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object v0

    .line 1094
    iget-object v0, v0, Lio/fabric/sdk/android/Kit;->context:Landroid/content/Context;

    .line 78
    invoke-static {v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->logControlled$5ffc00fd(Landroid/content/Context;)V

    .line 80
    iget-object v0, p0, Lcom/crashlytics/android/answers/AutoSessionAnalyticsManager;->activityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p3, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 81
    return-void
.end method


# virtual methods
.method public final disable()V
    .registers 3

    .prologue
    .line 85
    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object v0

    .line 2094
    iget-object v0, v0, Lio/fabric/sdk/android/Kit;->context:Landroid/content/Context;

    .line 85
    invoke-static {v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->logControlled$5ffc00fd(Landroid/content/Context;)V

    .line 87
    iget-object v0, p0, Lcom/crashlytics/android/answers/AutoSessionAnalyticsManager;->application:Landroid/app/Application;

    iget-object v1, p0, Lcom/crashlytics/android/answers/AutoSessionAnalyticsManager;->activityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 88
    invoke-super {p0}, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->disable()V

    .line 89
    return-void
.end method
