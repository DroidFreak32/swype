.class Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;
.super Ljava/lang/Object;
.source "AutomaticAnalyticsLogger.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static logActivityTimeSpentEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "timeSpentInSeconds"    # J

    .prologue
    .line 37
    invoke-static {p0}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v0

    .line 38
    .local v0, "l":Lcom/facebook/appevents/AppEventsLogger;
    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/facebook/internal/Utility;->queryAppSettings(Ljava/lang/String;Z)Lcom/facebook/internal/Utility$FetchedAppSettings;

    move-result-object v2

    .line 39
    invoke-virtual {v2}, Lcom/facebook/internal/Utility$FetchedAppSettings;->getAutomaticLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_28

    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-lez v2, :cond_28

    .line 40
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 41
    .local v1, "params":Landroid/os/Bundle;
    const-string/jumbo v2, "fb_aa_time_spent_view_name"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 42
    const-string/jumbo v2, "fb_aa_time_spent_on_view"

    long-to-double v4, p3

    invoke-virtual {v0, v2, v4, v5, v1}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 44
    .end local v1    # "params":Landroid/os/Bundle;
    :cond_28
    return-void
.end method
