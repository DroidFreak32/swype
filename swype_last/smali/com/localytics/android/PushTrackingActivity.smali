.class public Lcom/localytics/android/PushTrackingActivity;
.super Landroid/app/Activity;
.source "PushTrackingActivity.java"


# static fields
.field public static final LAUNCH_INTENT:Ljava/lang/String; = "ll_launch_intent"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0}, Lcom/localytics/android/PushTrackingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 28
    .local v4, "intent":Landroid/content/Intent;
    invoke-static {p0}, Lcom/localytics/android/DatapointHelper;->getLocalyticsAppKeyOrNull(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, "appKey":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_18

    .line 31
    invoke-virtual {p0}, Lcom/localytics/android/PushTrackingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/localytics/android/Localytics;->integrate(Landroid/content/Context;Ljava/lang/String;)V

    .line 34
    :cond_18
    invoke-static {}, Lcom/localytics/android/Localytics;->openSession()V

    .line 35
    invoke-static {v4}, Lcom/localytics/android/Localytics;->handlePushNotificationOpened(Landroid/content/Intent;)V

    .line 38
    invoke-virtual {p0}, Lcom/localytics/android/PushTrackingActivity;->finish()V

    .line 41
    const/4 v5, 0x0

    .line 44
    .local v5, "launchIntent":Landroid/content/Intent;
    const-string/jumbo v7, "ll_deep_link_url"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 45
    .local v3, "deepLinkUrlString":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4d

    .line 47
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v7, "android.intent.action.VIEW"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 48
    .local v2, "deepLinkIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/localytics/android/PushTrackingActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v2, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 49
    .local v6, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v6, :cond_4d

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_4d

    .line 52
    move-object v5, v2

    .line 57
    .end local v2    # "deepLinkIntent":Landroid/content/Intent;
    .end local v6    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_4d
    if-nez v5, :cond_61

    .line 60
    const-string/jumbo v7, "ll_launch_intent"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 61
    .local v1, "customIntent":Landroid/content/Intent;
    if-eqz v1, :cond_68

    .line 63
    move-object v5, v1

    .line 67
    const-string/jumbo v7, "ll_launch_intent"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 77
    .end local v1    # "customIntent":Landroid/content/Intent;
    :cond_61
    :goto_61
    invoke-virtual {v5, v4}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 78
    invoke-virtual {p0, v5}, Lcom/localytics/android/PushTrackingActivity;->startActivity(Landroid/content/Intent;)V

    .line 79
    return-void

    .line 72
    .restart local v1    # "customIntent":Landroid/content/Intent;
    :cond_68
    invoke-virtual {p0}, Lcom/localytics/android/PushTrackingActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {p0}, Lcom/localytics/android/PushTrackingActivity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 73
    const/high16 v7, 0x24000000

    invoke-virtual {v5, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_61
.end method
