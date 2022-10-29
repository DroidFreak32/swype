.class public Lcom/localytics/android/GcmListenerService;
.super Lcom/google/android/gms/gcm/GcmListenerService;
.source "GcmListenerService.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/gcm/GcmListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/localytics/android/GcmListenerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 24
    .local v1, "context":Landroid/content/Context;
    :try_start_4
    invoke-static {v1}, Lcom/localytics/android/DatapointHelper;->getLocalyticsAppKeyOrNull(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, "appKey":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 27
    invoke-static {v1, v0}, Lcom/localytics/android/Localytics;->integrate(Landroid/content/Context;Ljava/lang/String;)V

    .line 30
    :cond_11
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 32
    invoke-static {p2}, Lcom/localytics/android/Localytics;->handleNotificationReceived(Landroid/os/Bundle;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1a} :catch_1b

    .line 39
    .end local v0    # "appKey":Ljava/lang/String;
    :cond_1a
    :goto_1a
    return-void

    .line 35
    :catch_1b
    move-exception v2

    .line 37
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "Something went wrong with GCM"

    invoke-static {v3, v2}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a
.end method
