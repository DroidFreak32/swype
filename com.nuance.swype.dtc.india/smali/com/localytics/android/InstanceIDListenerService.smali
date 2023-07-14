.class public Lcom/localytics/android/InstanceIDListenerService;
.super Lcom/google/android/gms/iid/InstanceIDListenerService;
.source "InstanceIDListenerService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/iid/InstanceIDListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public onTokenRefresh()V
    .locals 3

    .prologue
    .line 19
    :try_start_0
    invoke-virtual {p0}, Lcom/localytics/android/InstanceIDListenerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 20
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Lcom/localytics/android/DatapointHelper;->getLocalyticsAppKeyOrNull(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, "appKey":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 23
    invoke-static {v1, v0}, Lcom/localytics/android/Localytics;->integrate(Landroid/content/Context;Ljava/lang/String;)V

    .line 26
    :cond_0
    const-string/jumbo v2, "InstanceID token is updated"

    invoke-static {v2}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 27
    invoke-static {}, Lcom/localytics/android/Localytics;->retrieveTokenFromInstanceId()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .end local v0    # "appKey":Ljava/lang/String;
    .end local v1    # "context":Landroid/content/Context;
    :goto_0
    return-void

    .line 31
    :catch_0
    move-exception v2

    const-string/jumbo v2, "Something went wrong with GCM token refresh"

    invoke-static {v2}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    goto :goto_0
.end method
