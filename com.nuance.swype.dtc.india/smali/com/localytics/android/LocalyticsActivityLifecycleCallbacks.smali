.class public Lcom/localytics/android/LocalyticsActivityLifecycleCallbacks;
.super Ljava/lang/Object;
.source "LocalyticsActivityLifecycleCallbacks.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/localytics/android/LocalyticsActivityLifecycleCallbacks;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "localyticsKey"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1, p2}, Lcom/localytics/android/Localytics;->integrate(Landroid/content/Context;Ljava/lang/String;)V

    .line 37
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/localytics/android/Localytics;->setIsAutoIntegrate(Z)V

    .line 38
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 90
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 67
    invoke-static {}, Lcom/localytics/android/Localytics;->dismissCurrentInAppMessage()V

    .line 68
    invoke-static {}, Lcom/localytics/android/Localytics;->clearInAppMessageDisplayActivity()V

    .line 69
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 59
    invoke-static {p1}, Lcom/localytics/android/Localytics;->setInAppMessageDisplayActivity(Landroid/app/Activity;)V

    .line 60
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics;->handleTestMode(Landroid/content/Intent;)V

    .line 61
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics;->handlePushNotificationOpened(Landroid/content/Intent;)V

    .line 62
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 85
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 48
    invoke-static {}, Lcom/localytics/android/Localytics;->isAppInForeground()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    invoke-static {}, Lcom/localytics/android/Localytics;->openSession()V

    .line 51
    invoke-static {}, Lcom/localytics/android/Localytics;->upload()V

    .line 53
    :cond_0
    invoke-static {}, Lcom/localytics/android/Localytics;->incrementActivityCounter()V

    .line 54
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 74
    invoke-static {}, Lcom/localytics/android/Localytics;->decrementActivityCounter()V

    .line 75
    invoke-static {}, Lcom/localytics/android/Localytics;->isAppInForeground()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    invoke-static {}, Lcom/localytics/android/Localytics;->closeSession()V

    .line 78
    invoke-static {}, Lcom/localytics/android/Localytics;->upload()V

    .line 80
    :cond_0
    return-void
.end method
