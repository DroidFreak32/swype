.class final Lcom/crashlytics/android/answers/AutoSessionAnalyticsManager$1;
.super Ljava/lang/Object;
.source "AutoSessionAnalyticsManager.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/answers/AutoSessionAnalyticsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/crashlytics/android/answers/AutoSessionAnalyticsManager;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/answers/AutoSessionAnalyticsManager;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/crashlytics/android/answers/AutoSessionAnalyticsManager$1;->this$0:Lcom/crashlytics/android/answers/AutoSessionAnalyticsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/crashlytics/android/answers/AutoSessionAnalyticsManager$1;->this$0:Lcom/crashlytics/android/answers/AutoSessionAnalyticsManager;

    .line 1072
    iget-object v1, v0, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->eventsHandler:Lcom/crashlytics/android/answers/SessionEventsHandler;

    iget-object v0, v0, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->metadata:Lcom/crashlytics/android/answers/SessionEventMetadata;

    sget-object v2, Lcom/crashlytics/android/answers/SessionEvent$Type;->CREATE:Lcom/crashlytics/android/answers/SessionEvent$Type;

    invoke-static {v0, v2, p1}, Lcom/crashlytics/android/answers/SessionEvent;->buildActivityLifecycleEvent(Lcom/crashlytics/android/answers/SessionEventMetadata;Lcom/crashlytics/android/answers/SessionEvent$Type;Landroid/app/Activity;)Lcom/crashlytics/android/answers/SessionEvent;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/crashlytics/android/answers/SessionEventsHandler;->recordEventAsync(Ljava/lang/Object;Z)V

    .line 29
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/crashlytics/android/answers/AutoSessionAnalyticsManager$1;->this$0:Lcom/crashlytics/android/answers/AutoSessionAnalyticsManager;

    .line 1077
    iget-object v1, v0, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->eventsHandler:Lcom/crashlytics/android/answers/SessionEventsHandler;

    iget-object v0, v0, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->metadata:Lcom/crashlytics/android/answers/SessionEventMetadata;

    sget-object v2, Lcom/crashlytics/android/answers/SessionEvent$Type;->DESTROY:Lcom/crashlytics/android/answers/SessionEvent$Type;

    invoke-static {v0, v2, p1}, Lcom/crashlytics/android/answers/SessionEvent;->buildActivityLifecycleEvent(Lcom/crashlytics/android/answers/SessionEventMetadata;Lcom/crashlytics/android/answers/SessionEvent$Type;Landroid/app/Activity;)Lcom/crashlytics/android/answers/SessionEvent;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/crashlytics/android/answers/SessionEventsHandler;->recordEventAsync(Ljava/lang/Object;Z)V

    .line 34
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/crashlytics/android/answers/AutoSessionAnalyticsManager$1;->this$0:Lcom/crashlytics/android/answers/AutoSessionAnalyticsManager;

    .line 1082
    iget-object v1, v0, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->eventsHandler:Lcom/crashlytics/android/answers/SessionEventsHandler;

    iget-object v0, v0, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->metadata:Lcom/crashlytics/android/answers/SessionEventMetadata;

    sget-object v2, Lcom/crashlytics/android/answers/SessionEvent$Type;->PAUSE:Lcom/crashlytics/android/answers/SessionEvent$Type;

    invoke-static {v0, v2, p1}, Lcom/crashlytics/android/answers/SessionEvent;->buildActivityLifecycleEvent(Lcom/crashlytics/android/answers/SessionEventMetadata;Lcom/crashlytics/android/answers/SessionEvent$Type;Landroid/app/Activity;)Lcom/crashlytics/android/answers/SessionEvent;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/crashlytics/android/answers/SessionEventsHandler;->recordEventAsync(Ljava/lang/Object;Z)V

    .line 39
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/crashlytics/android/answers/AutoSessionAnalyticsManager$1;->this$0:Lcom/crashlytics/android/answers/AutoSessionAnalyticsManager;

    .line 1087
    iget-object v1, v0, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->eventsHandler:Lcom/crashlytics/android/answers/SessionEventsHandler;

    iget-object v0, v0, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->metadata:Lcom/crashlytics/android/answers/SessionEventMetadata;

    sget-object v2, Lcom/crashlytics/android/answers/SessionEvent$Type;->RESUME:Lcom/crashlytics/android/answers/SessionEvent$Type;

    invoke-static {v0, v2, p1}, Lcom/crashlytics/android/answers/SessionEvent;->buildActivityLifecycleEvent(Lcom/crashlytics/android/answers/SessionEventMetadata;Lcom/crashlytics/android/answers/SessionEvent$Type;Landroid/app/Activity;)Lcom/crashlytics/android/answers/SessionEvent;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/crashlytics/android/answers/SessionEventsHandler;->recordEventAsync(Ljava/lang/Object;Z)V

    .line 44
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/crashlytics/android/answers/AutoSessionAnalyticsManager$1;->this$0:Lcom/crashlytics/android/answers/AutoSessionAnalyticsManager;

    .line 1092
    iget-object v1, v0, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->eventsHandler:Lcom/crashlytics/android/answers/SessionEventsHandler;

    iget-object v0, v0, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->metadata:Lcom/crashlytics/android/answers/SessionEventMetadata;

    sget-object v2, Lcom/crashlytics/android/answers/SessionEvent$Type;->SAVE_INSTANCE_STATE:Lcom/crashlytics/android/answers/SessionEvent$Type;

    invoke-static {v0, v2, p1}, Lcom/crashlytics/android/answers/SessionEvent;->buildActivityLifecycleEvent(Lcom/crashlytics/android/answers/SessionEventMetadata;Lcom/crashlytics/android/answers/SessionEvent$Type;Landroid/app/Activity;)Lcom/crashlytics/android/answers/SessionEvent;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/crashlytics/android/answers/SessionEventsHandler;->recordEventAsync(Ljava/lang/Object;Z)V

    .line 49
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/crashlytics/android/answers/AutoSessionAnalyticsManager$1;->this$0:Lcom/crashlytics/android/answers/AutoSessionAnalyticsManager;

    .line 1097
    iget-object v1, v0, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->eventsHandler:Lcom/crashlytics/android/answers/SessionEventsHandler;

    iget-object v0, v0, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->metadata:Lcom/crashlytics/android/answers/SessionEventMetadata;

    sget-object v2, Lcom/crashlytics/android/answers/SessionEvent$Type;->START:Lcom/crashlytics/android/answers/SessionEvent$Type;

    invoke-static {v0, v2, p1}, Lcom/crashlytics/android/answers/SessionEvent;->buildActivityLifecycleEvent(Lcom/crashlytics/android/answers/SessionEventMetadata;Lcom/crashlytics/android/answers/SessionEvent$Type;Landroid/app/Activity;)Lcom/crashlytics/android/answers/SessionEvent;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/crashlytics/android/answers/SessionEventsHandler;->recordEventAsync(Ljava/lang/Object;Z)V

    .line 54
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/crashlytics/android/answers/AutoSessionAnalyticsManager$1;->this$0:Lcom/crashlytics/android/answers/AutoSessionAnalyticsManager;

    .line 1102
    iget-object v1, v0, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->eventsHandler:Lcom/crashlytics/android/answers/SessionEventsHandler;

    iget-object v0, v0, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->metadata:Lcom/crashlytics/android/answers/SessionEventMetadata;

    sget-object v2, Lcom/crashlytics/android/answers/SessionEvent$Type;->STOP:Lcom/crashlytics/android/answers/SessionEvent$Type;

    invoke-static {v0, v2, p1}, Lcom/crashlytics/android/answers/SessionEvent;->buildActivityLifecycleEvent(Lcom/crashlytics/android/answers/SessionEventMetadata;Lcom/crashlytics/android/answers/SessionEvent$Type;Landroid/app/Activity;)Lcom/crashlytics/android/answers/SessionEvent;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/crashlytics/android/answers/SessionEventsHandler;->recordEventAsync(Ljava/lang/Object;Z)V

    .line 59
    return-void
.end method
